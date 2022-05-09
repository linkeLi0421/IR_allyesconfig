; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-desc.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-desc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.102 }
%union.anon.102 = type { i32 }
%struct.xgbe_desc_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_i2c_if = type { ptr, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.xgbe_mmc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgbe_ext_stats = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], i64, i64, i64, i64 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.xgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xgbe_phy = type { %struct.ethtool_link_ksettings, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.115, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.115 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xgbe_i2c = type { i32, i32, i32, i32, %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { ptr, i32, ptr, i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.123, i32 }
%union.anon.123 = type { ptr }
%struct.xgbe_channel = type { [16 x i8], ptr, i32, ptr, i32, [48 x i8], %struct.napi_struct, i32, i32, i32, %struct.timer_list, ptr, ptr, i32, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.xgbe_ring = type { %struct.spinlock, %struct.xgbe_packet_data, ptr, i32, i32, ptr, %struct.xgbe_page_alloc, %struct.xgbe_page_alloc, i32, i32, i32, i32, %union.anon.118, [68 x i8] }
%struct.xgbe_packet_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, i64, i32, i32, i32, i32 }
%struct.xgbe_page_alloc = type { ptr, i32, i32, i32 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i32, i32, i16, i16 }
%struct.xgbe_ring_data = type { ptr, i32, ptr, i32, i32, %struct.xgbe_tx_ring_data, %struct.xgbe_rx_ring_data, i32, i32, %struct.anon.117 }
%struct.xgbe_tx_ring_data = type { i32, i32 }
%struct.xgbe_rx_ring_data = type { %struct.xgbe_buffer_data, %struct.xgbe_buffer_data, i16, i16 }
%struct.xgbe_buffer_data = type { %struct.xgbe_page_alloc, %struct.xgbe_page_alloc, i32, i32, i32 }
%struct.anon.117 = type { ptr, i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.3, [48 x i8], %union.anon.4, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.6, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.3 = type { i64 }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { i32, ptr }
%union.anon.6 = type { %struct.anon.7 }
%struct.anon.7 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.8, i32, i32, i32, i16, i16, %union.anon.10, i32, %union.anon.11, %union.anon.12, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.8 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.12 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.26, %union.anon.100, %struct.atomic_t, i32 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.100 = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xgbe_ring_desc = type { i32, i32, i32, i32 }

@xgbe_alloc_ring_resources.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xgbe_alloc_ring_resources\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-desc.c\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - Tx ring:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error initializing Tx ring\0A\00", [36 x i8] zeroinitializer }, align 32
@xgbe_alloc_ring_resources.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s - Rx ring:\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error initializing Rx ring\0A\00", [36 x i8] zeroinitializer }, align 32
@xgbe_init_ring.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgbe_init_ring\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rdesc=%p, rdesc_dma=%pad, rdata=%p, node=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma_map_single failed\0A\00", [41 x i8] zeroinitializer }, align 32
@xgbe_map_tx_skb.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgbe_map_tx_skb\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"skb header: index=%u, dma=%pad, len=%u\0A\00", [56 x i8] zeroinitializer }, align 32
@xgbe_map_tx_skb.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"skb data: index=%u, dma=%pad, len=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@xgbe_map_tx_skb.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mapping frag %u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"skb_frag_dma_map failed\0A\00", [39 x i8] zeroinitializer }, align 32
@xgbe_map_tx_skb.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"skb frag: index=%u, dma=%pad, len=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.20 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 254, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 261, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 265, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 272, i32 10 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 239, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 717, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 561, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 566, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 590, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 604, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 618, i32 11 }
@___asan_gen_.70 = private constant [45 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 624, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 326, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1160, i32 2 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xgbe_init_function_ptrs_desc(ptr nocapture noundef writeonly %desc_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc_if to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgbe_alloc_ring_resources, ptr %desc_if, align 4
  %free_ring_resources = getelementptr inbounds %struct.xgbe_desc_if, ptr %desc_if, i32 0, i32 1
  %1 = ptrtoint ptr %free_ring_resources to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xgbe_free_ring_resources, ptr %free_ring_resources, align 4
  %map_tx_skb = getelementptr inbounds %struct.xgbe_desc_if, ptr %desc_if, i32 0, i32 2
  %2 = ptrtoint ptr %map_tx_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xgbe_map_tx_skb, ptr %map_tx_skb, align 4
  %map_rx_buffer = getelementptr inbounds %struct.xgbe_desc_if, ptr %desc_if, i32 0, i32 3
  %3 = ptrtoint ptr %map_rx_buffer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgbe_map_rx_buffer, ptr %map_rx_buffer, align 4
  %unmap_rdata = getelementptr inbounds %struct.xgbe_desc_if, ptr %desc_if, i32 0, i32 4
  %4 = ptrtoint ptr %unmap_rdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xgbe_unmap_rdata, ptr %unmap_rdata, align 4
  %wrapper_tx_desc_init = getelementptr inbounds %struct.xgbe_desc_if, ptr %desc_if, i32 0, i32 5
  %5 = ptrtoint ptr %wrapper_tx_desc_init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xgbe_wrapper_tx_descriptor_init, ptr %wrapper_tx_desc_init, align 4
  %wrapper_rx_desc_init = getelementptr inbounds %struct.xgbe_desc_if, ptr %desc_if, i32 0, i32 6
  %6 = ptrtoint ptr %wrapper_rx_desc_init to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xgbe_wrapper_rx_descriptor_init, ptr %wrapper_rx_desc_init, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_alloc_ring_resources(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp79.not = icmp eq i32 %1, 0
  br i1 %cmp79.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %tx_desc_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 67
  %rx_desc_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 69
  br label %for.body

for.cond:                                         ; preds = %do.end41
  %inc = add nuw i32 %i.080, 1
  %2 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.080 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.080
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %msg_enable, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.do.end9_crit_edge, label %do.body2

for.body.do.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.body2:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_alloc_ring_resources.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_alloc_ring_resources, %if.then6)) #8
          to label %do.end9 [label %if.then6], !srcloc !54

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_alloc_ring_resources.__UNIQUE_ID_ddebug352, ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %5) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %for.body.do.end9_crit_edge
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_ring, align 4
  %12 = ptrtoint ptr %tx_desc_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_desc_count, align 8
  %call10 = tail call fastcc i32 @xgbe_init_ring(ptr noundef %pdata, ptr noundef %11, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body15, label %do.end9.err_ring_crit_edge

do.end9.err_ring_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ring

do.body15:                                        ; preds = %do.end9
  %14 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %msg_enable, align 4
  %and17 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.body15.do.end41_crit_edge, label %do.body20

do.body15.do.end41_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

do.body20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_alloc_ring_resources.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_alloc_ring_resources, %if.then32)) #8
          to label %do.end41 [label %if.then32], !srcloc !54

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_alloc_ring_resources.__UNIQUE_ID_ddebug353, ptr noundef %17, ptr noundef nonnull @.str.5, ptr noundef %5) #8
  br label %do.end41

do.end41:                                         ; preds = %if.then32, %do.body20, %do.body15.do.end41_crit_edge
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %5, i32 0, i32 12
  %18 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_ring, align 16
  %20 = ptrtoint ptr %rx_desc_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rx_desc_count, align 8
  %call42 = tail call fastcc i32 @xgbe_init_ring(ptr noundef %pdata, ptr noundef %19, i32 noundef %21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %for.cond, label %do.end41.err_ring_crit_edge

do.end41.err_ring_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_ring

err_ring:                                         ; preds = %do.end41.err_ring_crit_edge, %do.end9.err_ring_crit_edge
  %.str.6.sink = phi ptr [ @.str.4, %do.end9.err_ring_crit_edge ], [ @.str.6, %do.end41.err_ring_crit_edge ]
  %ret.0 = phi i32 [ %call10, %do.end9.err_ring_crit_edge ], [ %call42, %do.end41.err_ring_crit_edge ]
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %23, ptr noundef nonnull %.str.6.sink) #11
  %24 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp11.not.i = icmp eq i32 %25, 0
  br i1 %cmp11.not.i, label %err_ring.cleanup_crit_edge, label %err_ring.for.body.i_crit_edge

err_ring.for.body.i_crit_edge:                    ; preds = %err_ring
  br label %for.body.i

err_ring.cleanup_crit_edge:                       ; preds = %err_ring
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err_ring.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %err_ring.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.012.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %27, i32 0, i32 11
  %28 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_ring.i, align 4
  tail call fastcc void @xgbe_free_ring(ptr noundef %pdata, ptr noundef %29) #8
  %rx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %27, i32 0, i32 12
  %30 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_ring.i, align 16
  tail call fastcc void @xgbe_free_ring(ptr noundef %pdata, ptr noundef %31) #8
  %inc.i = add nuw i32 %i.012.i, 1
  %32 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel_count, align 8
  %cmp.i = icmp ult i32 %inc.i, %33
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %err_ring.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_ring.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %for.body.i.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_free_ring_resources(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp11.not = icmp eq i32 %1, 0
  br i1 %cmp11.not, label %entry.do.end4_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.012
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  tail call fastcc void @xgbe_free_ring(ptr noundef %pdata, ptr noundef %5)
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_ring, align 16
  tail call fastcc void @xgbe_free_ring(ptr noundef %pdata, ptr noundef %7)
  %inc = add nuw i32 %i.012, 1
  %8 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.end4_crit_edge

for.body.do.end4_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end4:                                          ; preds = %for.body.do.end4_crit_edge, %entry.do.end4_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_map_tx_skb(ptr nocapture noundef readonly %channel, ptr noundef %skb) #1 align 64 {
entry:
  %skb_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 11
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb_dma) #8
  %4 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %skb_dma, align 4, !annotation !55
  %cur = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 9
  %5 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cur, align 4
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %rdesc_count, align 4
  %length = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %length, align 8
  %attributes = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %attributes, align 4
  %11 = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %mss = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 8
  %12 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mss, align 8
  %cur_mss = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 12, i32 0, i32 2
  %14 = ptrtoint ptr %cur_mss to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cur_mss, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.not = icmp eq i16 %13, %15
  br i1 %cmp.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %16 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true9

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %vlan_ctag = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 9
  %17 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vlan_ctag, align 2
  %cur_vlan_ctag = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 12, i32 0, i32 3
  %19 = ptrtoint ptr %cur_vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cur_vlan_ctag, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %20)
  %cmp12.not = icmp eq i16 %18, %20
  br i1 %cmp12.not, label %land.lhs.true9.if.end_crit_edge, label %land.lhs.true9.if.then_crit_edge

land.lhs.true9.if.then_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true9.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %inc = add i32 %6, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true9.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %cur_index.0 = phi i32 [ %inc, %if.then ], [ %6, %land.lhs.true9.if.end_crit_edge ], [ %6, %lor.lhs.false.if.end_crit_edge ]
  %rdata14 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %rdata14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rdata14, align 4
  %rdesc_count15 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 4
  %23 = ptrtoint ptr %rdesc_count15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rdesc_count15, align 8
  %sub = add i32 %24, -1
  %and16 = and i32 %sub, %cur_index.0
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %22, i32 %and16
  br i1 %tobool.not, label %if.end.if.end53_crit_edge, label %if.then18

if.end.if.end53_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then18:                                        ; preds = %if.end
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 4
  %header_len = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %header_len, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %28) #8
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then18
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !56

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %26) #8
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %26, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %34, %if.end.i.i ], [ %32, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %26, ptr noundef %28, i32 noundef %30) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %28 to i32
  %sub.i = add i32 %36, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %35, i32 %shr.i
  %and.i = and i32 %36, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %26, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %30, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i350 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %37 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i350, ptr %skb_dma, align 4
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %39, i32 noundef %retval.0.i350) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i350)
  %cmp.i = icmp eq i32 %retval.0.i350, -1
  br i1 %cmp.i, label %if.then22, label %if.end23

if.then22:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %41, ptr noundef nonnull @.str.10) #11
  br label %err_out

if.end23:                                         ; preds = %dma_map_single_attrs.exit
  %42 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %skb_dma, align 4
  %skb_dma24 = getelementptr %struct.xgbe_ring_data, ptr %22, i32 %and16, i32 3
  %44 = ptrtoint ptr %skb_dma24 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %skb_dma24, align 4
  %45 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %header_len, align 4
  %skb_dma_len = getelementptr %struct.xgbe_ring_data, ptr %22, i32 %and16, i32 4
  %47 = ptrtoint ptr %skb_dma_len to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %skb_dma_len, align 4
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 134
  %48 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_enable, align 4
  %and27 = and i32 %49, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end23.do.end43_crit_edge, label %do.body30

if.end23.do.end43_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end43

do.body30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_map_tx_skb.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_map_tx_skb, %if.then35)) #8
          to label %do.end43 [label %if.then35], !srcloc !54

if.then35:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %52 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %header_len, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_map_tx_skb.__UNIQUE_ID_ddebug354, ptr noundef %51, ptr noundef nonnull @.str.12, i32 noundef %cur_index.0, ptr noundef nonnull %skb_dma, i32 noundef %53) #8
  br label %do.end43

do.end43:                                         ; preds = %if.then35, %do.body30, %if.end23.do.end43_crit_edge
  %54 = ptrtoint ptr %header_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %header_len, align 4
  %56 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %length, align 8
  %add = add i32 %57, %55
  store i32 %add, ptr %length, align 8
  %inc47 = add i32 %cur_index.0, 1
  %58 = ptrtoint ptr %rdata14 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rdata14, align 4
  %60 = ptrtoint ptr %rdesc_count15 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rdesc_count15, align 8
  %sub50 = add i32 %61, -1
  %and51 = and i32 %sub50, %inc47
  %add.ptr52 = getelementptr %struct.xgbe_ring_data, ptr %59, i32 %and51
  br label %if.end53

if.end53:                                         ; preds = %do.end43, %if.end.if.end53_crit_edge
  %offset.0 = phi i32 [ %55, %do.end43 ], [ 0, %if.end.if.end53_crit_edge ]
  %cur_index.1 = phi i32 [ %inc47, %do.end43 ], [ %cur_index.0, %if.end.if.end53_crit_edge ]
  %rdata.0 = phi ptr [ %add.ptr52, %do.end43 ], [ %add.ptr, %if.end.if.end53_crit_edge ]
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %62 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %64 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data_len.i, align 8
  %66 = add i32 %offset.0, %65
  %sub55 = sub i32 %63, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub55)
  %tobool56.not388 = icmp eq i32 %sub55, 0
  br i1 %tobool56.not388, label %if.end53.for.cond107.preheader_crit_edge, label %for.body.lr.ph

if.end53.for.cond107.preheader_crit_edge:         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond107.preheader

for.body.lr.ph:                                   ; preds = %if.end53
  %dev60 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 4
  %data61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %msg_enable73 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 134
  br label %for.body

for.cond107.preheader:                            ; preds = %do.end96.for.cond107.preheader_crit_edge, %if.end53.for.cond107.preheader_crit_edge
  %cur_index.2.lcssa = phi i32 [ %cur_index.1, %if.end53.for.cond107.preheader_crit_edge ], [ %inc101, %do.end96.for.cond107.preheader_crit_edge ]
  %rdata.1.lcssa = phi ptr [ %rdata.0, %if.end53.for.cond107.preheader_crit_edge ], [ %add.ptr106, %do.end96.for.cond107.preheader_crit_edge ]
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %67 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i, align 4
  %nr_frags401 = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %nr_frags401 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %nr_frags401, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %cmp110403.not = icmp eq i8 %70, 0
  br i1 %cmp110403.not, label %for.cond107.preheader.for.end197_crit_edge, label %do.body113.lr.ph

for.cond107.preheader.for.end197_crit_edge:       ; preds = %for.cond107.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end197

do.body113.lr.ph:                                 ; preds = %for.cond107.preheader
  %msg_enable114 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 134
  %dev150 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 4
  br label %do.body113

for.body:                                         ; preds = %do.end96.for.body_crit_edge, %for.body.lr.ph
  %rdata.1392 = phi ptr [ %rdata.0, %for.body.lr.ph ], [ %add.ptr106, %do.end96.for.body_crit_edge ]
  %cur_index.2391 = phi i32 [ %cur_index.1, %for.body.lr.ph ], [ %inc101, %do.end96.for.body_crit_edge ]
  %offset.1390 = phi i32 [ %offset.0, %for.body.lr.ph ], [ %add98, %do.end96.for.body_crit_edge ]
  %datalen.0389 = phi i32 [ %sub55, %for.body.lr.ph ], [ %sub97, %do.end96.for.body_crit_edge ]
  %71 = call i32 @llvm.umin.i32(i32 %datalen.0389, i32 16320)
  %72 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev60, align 8
  %74 = ptrtoint ptr %data61 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data61, align 4
  %add.ptr62 = getelementptr i8, ptr %75, i32 %offset.1390
  %call.i352 = call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr62) #8
  br i1 %call.i352, label %land.rhs.i354, label %if.end39.i367

land.rhs.i354:                                    ; preds = %for.body
  %.b1.i353 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i353, label %land.rhs.i354.dma_map_single_attrs.exit369_crit_edge, label %if.then.i358, !prof !56

land.rhs.i354.dma_map_single_attrs.exit369_crit_edge: ; preds = %land.rhs.i354
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit369

if.then.i358:                                     ; preds = %land.rhs.i354
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i355 = call ptr @dev_driver_string(ptr noundef %73) #8
  %init_name.i.i356 = getelementptr inbounds %struct.device, ptr %73, i32 0, i32 3
  %76 = ptrtoint ptr %init_name.i.i356 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %init_name.i.i356, align 8
  %tobool.not.i.i357 = icmp eq ptr %77, null
  br i1 %tobool.not.i.i357, label %if.end.i.i359, label %if.then.i358.dev_name.exit.i361_crit_edge

if.then.i358.dev_name.exit.i361_crit_edge:        ; preds = %if.then.i358
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i361

if.end.i.i359:                                    ; preds = %if.then.i358
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %73, align 4
  br label %dev_name.exit.i361

dev_name.exit.i361:                               ; preds = %if.end.i.i359, %if.then.i358.dev_name.exit.i361_crit_edge
  %retval.0.i.i360 = phi ptr [ %79, %if.end.i.i359 ], [ %77, %if.then.i358.dev_name.exit.i361_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.18, ptr noundef %call16.i355, ptr noundef %retval.0.i.i360) #8
  br label %dma_map_single_attrs.exit369

if.end39.i367:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @debug_dma_map_single(ptr noundef %73, ptr noundef %add.ptr62, i32 noundef %71) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %80 = load ptr, ptr @mem_map, align 4
  %81 = ptrtoint ptr %add.ptr62 to i32
  %sub.i362 = add i32 %81, 1073741824
  %shr.i363 = lshr i32 %sub.i362, 12
  %add.ptr.i364 = getelementptr %struct.page, ptr %80, i32 %shr.i363
  %and.i365 = and i32 %81, 4095
  %call41.i366 = call i32 @dma_map_page_attrs(ptr noundef %73, ptr noundef %add.ptr.i364, i32 noundef %and.i365, i32 noundef %71, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit369

dma_map_single_attrs.exit369:                     ; preds = %if.end39.i367, %dev_name.exit.i361, %land.rhs.i354.dma_map_single_attrs.exit369_crit_edge
  %retval.0.i368 = phi i32 [ %call41.i366, %if.end39.i367 ], [ -1, %dev_name.exit.i361 ], [ -1, %land.rhs.i354.dma_map_single_attrs.exit369_crit_edge ]
  %82 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %retval.0.i368, ptr %skb_dma, align 4
  %83 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev60, align 8
  call void @debug_dma_mapping_error(ptr noundef %84, i32 noundef %retval.0.i368) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i368)
  %cmp.i370 = icmp eq i32 %retval.0.i368, -1
  br i1 %cmp.i370, label %if.then67, label %if.end69

if.then67:                                        ; preds = %dma_map_single_attrs.exit369
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @netdev_alert(ptr noundef %86, ptr noundef nonnull @.str.10) #11
  br label %err_out

if.end69:                                         ; preds = %dma_map_single_attrs.exit369
  %87 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %skb_dma, align 4
  %skb_dma70 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.1392, i32 0, i32 3
  %89 = ptrtoint ptr %skb_dma70 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %skb_dma70, align 4
  %skb_dma_len71 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.1392, i32 0, i32 4
  %90 = ptrtoint ptr %skb_dma_len71 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %71, ptr %skb_dma_len71, align 4
  %91 = ptrtoint ptr %msg_enable73 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %msg_enable73, align 4
  %and74 = and i32 %92, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end69.do.end96_crit_edge, label %do.body77

if.end69.do.end96_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end96

do.body77:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_map_tx_skb.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_map_tx_skb, %if.then89)) #8
          to label %do.end96 [label %if.then89], !srcloc !54

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_map_tx_skb.__UNIQUE_ID_ddebug357, ptr noundef %94, ptr noundef nonnull @.str.13, i32 noundef %cur_index.2391, ptr noundef nonnull %skb_dma, i32 noundef %71) #8
  br label %do.end96

do.end96:                                         ; preds = %if.then89, %do.body77, %if.end69.do.end96_crit_edge
  %sub97 = sub i32 %datalen.0389, %71
  %add98 = add i32 %offset.1390, %71
  %95 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %length, align 8
  %add100 = add i32 %96, %71
  store i32 %add100, ptr %length, align 8
  %inc101 = add i32 %cur_index.2391, 1
  %97 = ptrtoint ptr %rdata14 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rdata14, align 4
  %99 = ptrtoint ptr %rdesc_count15 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rdesc_count15, align 8
  %sub104 = add i32 %100, -1
  %and105 = and i32 %sub104, %inc101
  %add.ptr106 = getelementptr %struct.xgbe_ring_data, ptr %98, i32 %and105
  %tobool56.not = icmp eq i32 %sub97, 0
  br i1 %tobool56.not, label %do.end96.for.cond107.preheader_crit_edge, label %do.end96.for.body_crit_edge

do.end96.for.body_crit_edge:                      ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end96.for.cond107.preheader_crit_edge:         ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond107.preheader

do.body113:                                       ; preds = %for.inc.do.body113_crit_edge, %do.body113.lr.ph
  %rdata.2407 = phi ptr [ %rdata.1.lcssa, %do.body113.lr.ph ], [ %rdata.3.lcssa, %for.inc.do.body113_crit_edge ]
  %cur_index.3406 = phi i32 [ %cur_index.2.lcssa, %do.body113.lr.ph ], [ %cur_index.4.lcssa, %for.inc.do.body113_crit_edge ]
  %i.0404 = phi i32 [ 0, %do.body113.lr.ph ], [ %inc196, %for.inc.do.body113_crit_edge ]
  %101 = ptrtoint ptr %msg_enable114 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %msg_enable114, align 4
  %and115 = and i32 %102, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %do.body113.do.end137_crit_edge, label %do.body118

do.body113.do.end137_crit_edge:                   ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end137

do.body118:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_map_tx_skb.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_map_tx_skb, %if.then130)) #8
          to label %do.end137 [label %if.then130], !srcloc !54

if.then130:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_map_tx_skb.__UNIQUE_ID_ddebug358, ptr noundef %104, ptr noundef nonnull @.str.14, i32 noundef %i.0404) #8
  br label %do.end137

do.end137:                                        ; preds = %if.then130, %do.body118, %do.body113.do.end137_crit_edge
  %105 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %end.i, align 4
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %106, i32 0, i32 12, i32 %i.0404
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %106, i32 0, i32 12, i32 %i.0404, i32 1
  %107 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %bv_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool141.not394 = icmp eq i32 %108, 0
  br i1 %tobool141.not394, label %do.end137.for.inc_crit_edge, label %for.body142.lr.ph

do.end137.for.inc_crit_edge:                      ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body142.lr.ph:                                ; preds = %do.end137
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %106, i32 0, i32 12, i32 %i.0404, i32 2
  br label %for.body142

for.body142:                                      ; preds = %do.end184.for.body142_crit_edge, %for.body142.lr.ph
  %rdata.3398 = phi ptr [ %rdata.2407, %for.body142.lr.ph ], [ %add.ptr194, %do.end184.for.body142_crit_edge ]
  %cur_index.4397 = phi i32 [ %cur_index.3406, %for.body142.lr.ph ], [ %inc189, %do.end184.for.body142_crit_edge ]
  %offset.2396 = phi i32 [ 0, %for.body142.lr.ph ], [ %add186, %do.end184.for.body142_crit_edge ]
  %datalen.1395 = phi i32 [ %108, %for.body142.lr.ph ], [ %sub185, %do.end184.for.body142_crit_edge ]
  %109 = call i32 @llvm.umin.i32(i32 %datalen.1395, i32 16320)
  %110 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev150, align 8
  %112 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %arrayidx, align 4
  %114 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %bv_offset.i.i, align 4
  %add.i = add i32 %115, %offset.2396
  %call2.i = call i32 @dma_map_page_attrs(ptr noundef %111, ptr noundef %113, i32 noundef %add.i, i32 noundef %109, i32 noundef 1, i32 noundef 0) #8
  %116 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %call2.i, ptr %skb_dma, align 4
  %117 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev150, align 8
  call void @debug_dma_mapping_error(ptr noundef %118, i32 noundef %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp.i373.not = icmp eq i32 %call2.i, -1
  br i1 %cmp.i373.not, label %if.then155, label %if.end157

if.then155:                                       ; preds = %for.body142
  call void @__sanitizer_cov_trace_pc() #10
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @netdev_alert(ptr noundef %120, ptr noundef nonnull @.str.15) #11
  br label %err_out

if.end157:                                        ; preds = %for.body142
  %121 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %skb_dma, align 4
  %skb_dma158 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.3398, i32 0, i32 3
  %123 = ptrtoint ptr %skb_dma158 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %skb_dma158, align 4
  %skb_dma_len159 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.3398, i32 0, i32 4
  %124 = ptrtoint ptr %skb_dma_len159 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %109, ptr %skb_dma_len159, align 4
  %mapped_as_page = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.3398, i32 0, i32 7
  %125 = ptrtoint ptr %mapped_as_page to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %mapped_as_page, align 4
  %126 = ptrtoint ptr %msg_enable114 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %msg_enable114, align 4
  %and162 = and i32 %127, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162)
  %tobool163.not = icmp eq i32 %and162, 0
  br i1 %tobool163.not, label %if.end157.do.end184_crit_edge, label %do.body165

if.end157.do.end184_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end184

do.body165:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_map_tx_skb.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_map_tx_skb, %if.then177)) #8
          to label %do.end184 [label %if.then177], !srcloc !54

if.then177:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_map_tx_skb.__UNIQUE_ID_ddebug361, ptr noundef %129, ptr noundef nonnull @.str.16, i32 noundef %cur_index.4397, ptr noundef nonnull %skb_dma, i32 noundef %109) #8
  br label %do.end184

do.end184:                                        ; preds = %if.then177, %do.body165, %if.end157.do.end184_crit_edge
  %sub185 = sub i32 %datalen.1395, %109
  %add186 = add i32 %offset.2396, %109
  %130 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %length, align 8
  %add188 = add i32 %131, %109
  store i32 %add188, ptr %length, align 8
  %inc189 = add i32 %cur_index.4397, 1
  %132 = ptrtoint ptr %rdata14 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rdata14, align 4
  %134 = ptrtoint ptr %rdesc_count15 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %rdesc_count15, align 8
  %sub192 = add i32 %135, -1
  %and193 = and i32 %sub192, %inc189
  %add.ptr194 = getelementptr %struct.xgbe_ring_data, ptr %133, i32 %and193
  %tobool141.not = icmp eq i32 %sub185, 0
  br i1 %tobool141.not, label %do.end184.for.inc_crit_edge, label %do.end184.for.body142_crit_edge

do.end184.for.body142_crit_edge:                  ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body142

do.end184.for.inc_crit_edge:                      ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %do.end184.for.inc_crit_edge, %do.end137.for.inc_crit_edge
  %cur_index.4.lcssa = phi i32 [ %cur_index.3406, %do.end137.for.inc_crit_edge ], [ %inc189, %do.end184.for.inc_crit_edge ]
  %rdata.3.lcssa = phi ptr [ %rdata.2407, %do.end137.for.inc_crit_edge ], [ %add.ptr194, %do.end184.for.inc_crit_edge ]
  %inc196 = add nuw nsw i32 %i.0404, 1
  %136 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %nr_frags, align 2
  %conv109 = zext i8 %139 to i32
  %cmp110 = icmp ult i32 %inc196, %conv109
  br i1 %cmp110, label %for.inc.do.body113_crit_edge, label %for.inc.for.end197_crit_edge

for.inc.for.end197_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end197

for.inc.do.body113_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body113

for.end197:                                       ; preds = %for.inc.for.end197_crit_edge, %for.cond107.preheader.for.end197_crit_edge
  %cur_index.3.lcssa = phi i32 [ %cur_index.2.lcssa, %for.cond107.preheader.for.end197_crit_edge ], [ %cur_index.4.lcssa, %for.inc.for.end197_crit_edge ]
  %140 = ptrtoint ptr %rdata14 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rdata14, align 4
  %sub199 = add i32 %cur_index.3.lcssa, -1
  %142 = ptrtoint ptr %rdesc_count15 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %rdesc_count15, align 8
  %sub201 = add i32 %143, -1
  %and202 = and i32 %sub201, %sub199
  %skb204 = getelementptr %struct.xgbe_ring_data, ptr %141, i32 %and202, i32 2
  %144 = ptrtoint ptr %skb204 to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %skb, ptr %skb204, align 4
  %sub205 = sub i32 %cur_index.3.lcssa, %6
  %145 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub205, ptr %rdesc_count, align 4
  br label %cleanup

err_out:                                          ; preds = %if.then155, %if.then67, %if.then22
  %cur_index.5 = phi i32 [ %cur_index.0, %if.then22 ], [ %cur_index.2391, %if.then67 ], [ %cur_index.4397, %if.then155 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %cur_index.5)
  %cmp211409 = icmp ult i32 %6, %cur_index.5
  br i1 %cmp211409, label %err_out.while.body_crit_edge, label %err_out.cleanup_crit_edge

err_out.cleanup_crit_edge:                        ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_out.while.body_crit_edge:                     ; preds = %err_out
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err_out.while.body_crit_edge
  %start_index.0410 = phi i32 [ %inc214, %while.body.while.body_crit_edge ], [ %6, %err_out.while.body_crit_edge ]
  %146 = ptrtoint ptr %rdata14 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rdata14, align 4
  %inc214 = add i32 %start_index.0410, 1
  %148 = ptrtoint ptr %rdesc_count15 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rdesc_count15, align 8
  %sub216 = add i32 %149, -1
  %and217 = and i32 %sub216, %start_index.0410
  %add.ptr218 = getelementptr %struct.xgbe_ring_data, ptr %147, i32 %and217
  call void @xgbe_unmap_rdata(ptr noundef %1, ptr noundef %add.ptr218)
  %exitcond.not = icmp eq i32 %inc214, %cur_index.5
  br i1 %exitcond.not, label %while.body.cleanup_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %err_out.cleanup_crit_edge, %for.end197
  %retval.0 = phi i32 [ %sub205, %for.end197 ], [ 0, %err_out.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb_dma) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_map_rx_buffer(ptr nocapture noundef readonly %pdata, ptr nocapture noundef %ring, ptr nocapture noundef writeonly %rdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_hdr_pa = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 6
  %0 = ptrtoint ptr %rx_hdr_pa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_hdr_pa, align 128
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %node = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 8
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node, align 32
  %call = tail call fastcc i32 @xgbe_alloc_pages(ptr noundef %pdata, ptr noundef %rx_hdr_pa, i32 noundef 0, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %rx_buf_pa = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %rx_buf_pa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_buf_pa, align 16
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.then7, label %if.end4.if.end14_crit_edge

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7:                                         ; preds = %if.end4
  %node9 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 8
  %6 = ptrtoint ptr %node9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node9, align 32
  %call10 = tail call fastcc i32 @xgbe_alloc_pages(ptr noundef %pdata, ptr noundef %rx_buf_pa, i32 noundef 3, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then7.if.end14_crit_edge, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.then7.if.end14_crit_edge, %if.end4.if.end14_crit_edge
  %rx = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6
  tail call fastcc void @xgbe_set_buffer_data(ptr noundef %rx, ptr noundef %rx_hdr_pa, i32 noundef 256)
  %buf = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 1
  %rx_buf_size = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 93
  %8 = ptrtoint ptr %rx_buf_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_buf_size, align 8
  tail call fastcc void @xgbe_set_buffer_data(ptr noundef %buf, ptr noundef %rx_buf_pa, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %if.then.cleanup_crit_edge ], [ %call10, %if.then7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_unmap_rdata(ptr nocapture noundef readonly %pdata, ptr nocapture noundef %rdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skb_dma = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 3
  %0 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %skb_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev4, align 8
  %skb_dma_len6 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 4
  %4 = ptrtoint ptr %skb_dma_len6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skb_dma_len6, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %1, i32 noundef %5, i32 noundef 1, i32 noundef 0) #8
  %6 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %skb_dma, align 4
  %skb_dma_len8 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 4
  %7 = ptrtoint ptr %skb_dma_len8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %skb_dma_len8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %skb = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 2
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %skb, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__dev_kfree_skb_any(ptr noundef nonnull %9, i32 noundef 1) #8
  %10 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %skb, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %rx = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6
  %11 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %if.end14.if.end21_crit_edge, label %if.then16

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then16:                                        ; preds = %if.end14
  %13 = getelementptr inbounds %struct.page, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %13, align 4
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !56

if.then.i.i:                                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %12 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %17, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %20, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xgbe_unmap_rdata, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !54

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %17, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.if.end21_crit_edge

folio_put_testzero.exit.i.i.if.end21_crit_edge:   ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %17) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %pa_unmap = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 0, i32 1
  %21 = ptrtoint ptr %pa_unmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pa_unmap, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %if.end21.if.end38_crit_edge, label %if.then26

if.end21.if.end38_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then26:                                        ; preds = %if.end21
  %dev27 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %23 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev27, align 8
  %pages_dma = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %pages_dma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pages_dma, align 4
  %pages_len = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %pages_len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pages_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef 2, i32 noundef 0) #8
  %29 = ptrtoint ptr %pa_unmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pa_unmap, align 4
  %31 = getelementptr inbounds %struct.page, ptr %30, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %31, align 4
  %and.i.i114 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i114)
  %tobool.not.i.i115 = icmp eq i32 %and.i.i114, 0
  br i1 %tobool.not.i.i115, label %if.end.i.i118, label %if.then.i.i117, !prof !56

if.then.i.i117:                                   ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i116 = add i32 %33, -1
  br label %_compound_head.exit.i123

if.end.i.i118:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %30 to i32
  br label %_compound_head.exit.i123

_compound_head.exit.i123:                         ; preds = %if.end.i.i118, %if.then.i.i117
  %retval.0.i.i119 = phi i32 [ %sub.i.i116, %if.then.i.i117 ], [ %34, %if.end.i.i118 ]
  %35 = inttoptr i32 %retval.0.i.i119 to ptr
  %_refcount.i.i.i.i.i120 = getelementptr inbounds %struct.page, ptr %35, i32 0, i32 3
  %call.i.i.i.i.i.i.i121 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i120, i32 noundef 4) #8
  %36 = ptrtoint ptr %_refcount.i.i.i.i.i120 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %_refcount.i.i.i.i.i120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i.i.i.i122 = icmp eq i32 %37, 0
  br i1 %cmp.i.i.i.i122, label %if.then.i.i.i.i124, label %do.end5.i.i.i.i128, !prof !57

if.then.i.i.i.i124:                               ; preds = %_compound_head.exit.i123
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %35, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i.i128:                               ; preds = %_compound_head.exit.i123
  %call.i.i.i10.i.i.i.i125 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i120, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i120, i32 1, i32 3, i32 1) #8
  %38 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i120, ptr %_refcount.i.i.i.i.i120, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i120) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i126 = extractvalue { i32, i32 } %38, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i126)
  %cmp.i.i.i.i.i.i.i127 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i126, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xgbe_unmap_rdata, %if.then.i.i.i.i.i130)) #8
          to label %folio_put_testzero.exit.i.i131 [label %if.then.i.i.i.i.i130], !srcloc !54

if.then.i.i.i.i.i130:                             ; preds = %do.end5.i.i.i.i128
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i129 = zext i1 %cmp.i.i.i.i.i.i.i127 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %35, i32 noundef -1, i32 noundef %conv.i.i.i.i.i129) #8
  br label %folio_put_testzero.exit.i.i131

folio_put_testzero.exit.i.i131:                   ; preds = %if.then.i.i.i.i.i130, %do.end5.i.i.i.i128
  br i1 %cmp.i.i.i.i.i.i.i127, label %if.then.i4.i132, label %folio_put_testzero.exit.i.i131.if.end38_crit_edge

folio_put_testzero.exit.i.i131.if.end38_crit_edge: ; preds = %folio_put_testzero.exit.i.i131
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then.i4.i132:                                  ; preds = %folio_put_testzero.exit.i.i131
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %35) #8
  br label %if.end38

if.end38:                                         ; preds = %if.then.i4.i132, %folio_put_testzero.exit.i.i131.if.end38_crit_edge, %if.end21.if.end38_crit_edge
  %buf = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buf, align 4
  %tobool42.not = icmp eq ptr %40, null
  br i1 %tobool42.not, label %if.end38.if.end48_crit_edge, label %if.then43

if.end38.if.end48_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then43:                                        ; preds = %if.end38
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i134 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i134)
  %tobool.not.i.i135 = icmp eq i32 %and.i.i134, 0
  br i1 %tobool.not.i.i135, label %if.end.i.i138, label %if.then.i.i137, !prof !56

if.then.i.i137:                                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i136 = add i32 %43, -1
  br label %_compound_head.exit.i143

if.end.i.i138:                                    ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i143

_compound_head.exit.i143:                         ; preds = %if.end.i.i138, %if.then.i.i137
  %retval.0.i.i139 = phi i32 [ %sub.i.i136, %if.then.i.i137 ], [ %44, %if.end.i.i138 ]
  %45 = inttoptr i32 %retval.0.i.i139 to ptr
  %_refcount.i.i.i.i.i140 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  %call.i.i.i.i.i.i.i141 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i140, i32 noundef 4) #8
  %46 = ptrtoint ptr %_refcount.i.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_refcount.i.i.i.i.i140, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i.i.i142 = icmp eq i32 %47, 0
  br i1 %cmp.i.i.i.i142, label %if.then.i.i.i.i144, label %do.end5.i.i.i.i148, !prof !57

if.then.i.i.i.i144:                               ; preds = %_compound_head.exit.i143
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i.i148:                               ; preds = %_compound_head.exit.i143
  %call.i.i.i10.i.i.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i140, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i140, i32 1, i32 3, i32 1) #8
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i140, ptr %_refcount.i.i.i.i.i140, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i140) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i146 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i146)
  %cmp.i.i.i.i.i.i.i147 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i146, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xgbe_unmap_rdata, %if.then.i.i.i.i.i150)) #8
          to label %folio_put_testzero.exit.i.i151 [label %if.then.i.i.i.i.i150], !srcloc !54

if.then.i.i.i.i.i150:                             ; preds = %do.end5.i.i.i.i148
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i149 = zext i1 %cmp.i.i.i.i.i.i.i147 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %45, i32 noundef -1, i32 noundef %conv.i.i.i.i.i149) #8
  br label %folio_put_testzero.exit.i.i151

folio_put_testzero.exit.i.i151:                   ; preds = %if.then.i.i.i.i.i150, %do.end5.i.i.i.i148
  br i1 %cmp.i.i.i.i.i.i.i147, label %if.then.i4.i152, label %folio_put_testzero.exit.i.i151.if.end48_crit_edge

folio_put_testzero.exit.i.i151.if.end48_crit_edge: ; preds = %folio_put_testzero.exit.i.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then.i4.i152:                                  ; preds = %folio_put_testzero.exit.i.i151
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %45) #8
  br label %if.end48

if.end48:                                         ; preds = %if.then.i4.i152, %folio_put_testzero.exit.i.i151.if.end48_crit_edge, %if.end38.if.end48_crit_edge
  %pa_unmap51 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 1, i32 1
  %49 = ptrtoint ptr %pa_unmap51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pa_unmap51, align 4
  %tobool53.not = icmp eq ptr %50, null
  br i1 %tobool53.not, label %if.end48.if.end68_crit_edge, label %if.then54

if.end48.if.end68_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then54:                                        ; preds = %if.end48
  %dev55 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %51 = ptrtoint ptr %dev55 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev55, align 8
  %pages_dma59 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 1, i32 1, i32 3
  %53 = ptrtoint ptr %pages_dma59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pages_dma59, align 4
  %pages_len63 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 1, i32 1, i32 1
  %55 = ptrtoint ptr %pages_len63 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pages_len63, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef 2, i32 noundef 0) #8
  %57 = ptrtoint ptr %pa_unmap51 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pa_unmap51, align 4
  %59 = getelementptr inbounds %struct.page, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %59, align 4
  %and.i.i154 = and i32 %61, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i154)
  %tobool.not.i.i155 = icmp eq i32 %and.i.i154, 0
  br i1 %tobool.not.i.i155, label %if.end.i.i158, label %if.then.i.i157, !prof !56

if.then.i.i157:                                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i156 = add i32 %61, -1
  br label %_compound_head.exit.i163

if.end.i.i158:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %58 to i32
  br label %_compound_head.exit.i163

_compound_head.exit.i163:                         ; preds = %if.end.i.i158, %if.then.i.i157
  %retval.0.i.i159 = phi i32 [ %sub.i.i156, %if.then.i.i157 ], [ %62, %if.end.i.i158 ]
  %63 = inttoptr i32 %retval.0.i.i159 to ptr
  %_refcount.i.i.i.i.i160 = getelementptr inbounds %struct.page, ptr %63, i32 0, i32 3
  %call.i.i.i.i.i.i.i161 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i160, i32 noundef 4) #8
  %64 = ptrtoint ptr %_refcount.i.i.i.i.i160 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %_refcount.i.i.i.i.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i.i.i.i162 = icmp eq i32 %65, 0
  br i1 %cmp.i.i.i.i162, label %if.then.i.i.i.i164, label %do.end5.i.i.i.i168, !prof !57

if.then.i.i.i.i164:                               ; preds = %_compound_head.exit.i163
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %63, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i.i168:                               ; preds = %_compound_head.exit.i163
  %call.i.i.i10.i.i.i.i165 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i160, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i160, i32 1, i32 3, i32 1) #8
  %66 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i160, ptr %_refcount.i.i.i.i.i160, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i160) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i166 = extractvalue { i32, i32 } %66, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i166)
  %cmp.i.i.i.i.i.i.i167 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i166, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xgbe_unmap_rdata, %if.then.i.i.i.i.i170)) #8
          to label %folio_put_testzero.exit.i.i171 [label %if.then.i.i.i.i.i170], !srcloc !54

if.then.i.i.i.i.i170:                             ; preds = %do.end5.i.i.i.i168
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i169 = zext i1 %cmp.i.i.i.i.i.i.i167 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %63, i32 noundef -1, i32 noundef %conv.i.i.i.i.i169) #8
  br label %folio_put_testzero.exit.i.i171

folio_put_testzero.exit.i.i171:                   ; preds = %if.then.i.i.i.i.i170, %do.end5.i.i.i.i168
  br i1 %cmp.i.i.i.i.i.i.i167, label %if.then.i4.i172, label %folio_put_testzero.exit.i.i171.if.end68_crit_edge

folio_put_testzero.exit.i.i171.if.end68_crit_edge: ; preds = %folio_put_testzero.exit.i.i171
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.then.i4.i172:                                  ; preds = %folio_put_testzero.exit.i.i171
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %63) #8
  br label %if.end68

if.end68:                                         ; preds = %if.then.i4.i172, %folio_put_testzero.exit.i.i171.if.end68_crit_edge, %if.end48.if.end68_crit_edge
  %tx = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 5
  %state_saved = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 8
  %67 = call ptr @memset(ptr %tx, i32 0, i32 104)
  %68 = ptrtoint ptr %state_saved to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %state_saved, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool71.not = icmp eq i32 %69, 0
  br i1 %tobool71.not, label %if.end68.if.end77_crit_edge, label %if.then72

if.end68.if.end77_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %70 = call ptr @memset(ptr %state_saved, i32 0, i32 16)
  br label %if.end77

if.end77:                                         ; preds = %if.then72, %if.end68.if.end77_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_wrapper_tx_descriptor_init(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp41.not = icmp eq i32 %1, 0
  br i1 %cmp41.not, label %entry.do.end17_crit_edge, label %for.body.lr.ph

entry.do.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

for.body.lr.ph:                                   ; preds = %entry
  %tx_desc_init = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 32
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc13, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.042
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.do.end17_crit_edge, label %if.end

for.body.do.end17_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

if.end:                                           ; preds = %for.body
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdesc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp637.not = icmp eq i32 %7, 0
  br i1 %cmp637.not, label %if.end.for.end_crit_edge, label %for.body7.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body7.lr.ph:                                  ; preds = %if.end
  %rdesc_dma4 = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %rdesc_dma4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdesc_dma4, align 4
  %rdesc3 = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %rdesc3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdesc3, align 16
  %rdata8 = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 5
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.lr.ph
  %12 = phi i32 [ %7, %for.body7.lr.ph ], [ %18, %for.body7.for.body7_crit_edge ]
  %j.040 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %for.body7.for.body7_crit_edge ]
  %rdesc_dma.039 = phi i32 [ %9, %for.body7.lr.ph ], [ %add, %for.body7.for.body7_crit_edge ]
  %rdesc.038 = phi ptr [ %11, %for.body7.lr.ph ], [ %incdec.ptr, %for.body7.for.body7_crit_edge ]
  %13 = ptrtoint ptr %rdata8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdata8, align 4
  %sub = add i32 %12, -1
  %and = and i32 %sub, %j.040
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %14, i32 %and
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rdesc.038, ptr %add.ptr, align 4
  %rdesc_dma11 = getelementptr %struct.xgbe_ring_data, ptr %14, i32 %and, i32 1
  %16 = ptrtoint ptr %rdesc_dma11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rdesc_dma.039, ptr %rdesc_dma11, align 4
  %incdec.ptr = getelementptr %struct.xgbe_ring_desc, ptr %rdesc.038, i32 1
  %add = add i32 %rdesc_dma.039, 16
  %inc = add nuw i32 %j.040, 1
  %17 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rdesc_count, align 8
  %cmp6 = icmp ult i32 %inc, %18
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end_crit_edge

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.end:                                          ; preds = %for.body7.for.end_crit_edge, %if.end.for.end_crit_edge
  %cur = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 9
  %19 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cur, align 4
  %dirty = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %dirty, align 8
  %21 = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 12
  %22 = call ptr @memset(ptr %21, i32 0, i32 12)
  %23 = ptrtoint ptr %tx_desc_init to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_desc_init, align 4
  tail call void %24(ptr noundef %3) #8
  %inc13 = add nuw i32 %i.042, 1
  %25 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc13, %26
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.do.end17_crit_edge

for.end.do.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end17

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end17:                                         ; preds = %for.end.do.end17_crit_edge, %for.body.do.end17_crit_edge, %entry.do.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_wrapper_rx_descriptor_init(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp48.not = icmp eq i32 %1, 0
  br i1 %cmp48.not, label %entry.do.end20_crit_edge, label %for.body.lr.ph

entry.do.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

for.body.lr.ph:                                   ; preds = %entry
  %rx_buf_size.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 93
  %rx_desc_init = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 33
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc16, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.049
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.do.end20_crit_edge, label %if.end

for.body.do.end20_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

if.end:                                           ; preds = %for.body
  %node.i = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 8
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdesc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp644.not = icmp eq i32 %7, 0
  br i1 %cmp644.not, label %if.end.for.end_crit_edge, label %for.body7.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body7.lr.ph:                                  ; preds = %if.end
  %rdesc_dma4 = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %rdesc_dma4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdesc_dma4, align 4
  %rdesc3 = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %rdesc3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdesc3, align 16
  %rdata8 = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 5
  %rx_hdr_pa.i = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 6
  %rx_buf_pa.i = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 7
  br label %for.body7

for.body7:                                        ; preds = %if.end14.for.body7_crit_edge, %for.body7.lr.ph
  %12 = phi i32 [ %7, %for.body7.lr.ph ], [ %28, %if.end14.for.body7_crit_edge ]
  %j.047 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %if.end14.for.body7_crit_edge ]
  %rdesc_dma.046 = phi i32 [ %9, %for.body7.lr.ph ], [ %add, %if.end14.for.body7_crit_edge ]
  %rdesc.045 = phi ptr [ %11, %for.body7.lr.ph ], [ %incdec.ptr, %if.end14.for.body7_crit_edge ]
  %13 = ptrtoint ptr %rdata8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdata8, align 4
  %sub = add i32 %12, -1
  %and = and i32 %sub, %j.047
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %14, i32 %and
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rdesc.045, ptr %add.ptr, align 4
  %rdesc_dma11 = getelementptr %struct.xgbe_ring_data, ptr %14, i32 %and, i32 1
  %16 = ptrtoint ptr %rdesc_dma11 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rdesc_dma.046, ptr %rdesc_dma11, align 4
  %17 = ptrtoint ptr %rx_hdr_pa.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_hdr_pa.i, align 128
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.then.i, label %for.body7.if.end4.i_crit_edge

for.body7.if.end4.i_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i:                                        ; preds = %for.body7
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %node.i, align 32
  %call.i = tail call fastcc i32 @xgbe_alloc_pages(ptr noundef %pdata, ptr noundef %rx_hdr_pa.i, i32 noundef 0, i32 noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.then.i.if.end4.i_crit_edge, label %if.then.i.for.end_crit_edge

if.then.i.for.end_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then.i.if.end4.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i.if.end4.i_crit_edge, %for.body7.if.end4.i_crit_edge
  %21 = ptrtoint ptr %rx_buf_pa.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_buf_pa.i, align 16
  %tobool6.not.i = icmp eq ptr %22, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end4.i.if.end14_crit_edge

if.end4.i.if.end14_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then7.i:                                       ; preds = %if.end4.i
  %23 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node.i, align 32
  %call10.i = tail call fastcc i32 @xgbe_alloc_pages(ptr noundef %pdata, ptr noundef %rx_buf_pa.i, i32 noundef 3, i32 noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.then7.i.if.end14_crit_edge, label %if.then7.i.for.end_crit_edge

if.then7.i.for.end_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then7.i.if.end14_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.end14:                                         ; preds = %if.then7.i.if.end14_crit_edge, %if.end4.i.if.end14_crit_edge
  %rx.i = getelementptr %struct.xgbe_ring_data, ptr %14, i32 %and, i32 6
  tail call fastcc void @xgbe_set_buffer_data(ptr noundef %rx.i, ptr noundef %rx_hdr_pa.i, i32 noundef 256) #8
  %buf.i = getelementptr %struct.xgbe_ring_data, ptr %14, i32 %and, i32 6, i32 1
  %25 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_buf_size.i, align 8
  tail call fastcc void @xgbe_set_buffer_data(ptr noundef %buf.i, ptr noundef %rx_buf_pa.i, i32 noundef %26) #8
  %incdec.ptr = getelementptr %struct.xgbe_ring_desc, ptr %rdesc.045, i32 1
  %add = add i32 %rdesc_dma.046, 16
  %inc = add nuw i32 %j.047, 1
  %27 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rdesc_count, align 8
  %cmp6 = icmp ult i32 %inc, %28
  br i1 %cmp6, label %if.end14.for.body7_crit_edge, label %if.end14.for.end_crit_edge

if.end14.for.end_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end14.for.body7_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7

for.end:                                          ; preds = %if.end14.for.end_crit_edge, %if.then7.i.for.end_crit_edge, %if.then.i.for.end_crit_edge, %if.end.for.end_crit_edge
  %cur = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 9
  %29 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cur, align 4
  %dirty = getelementptr inbounds %struct.xgbe_ring, ptr %5, i32 0, i32 10
  %30 = ptrtoint ptr %dirty to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %dirty, align 8
  %31 = ptrtoint ptr %rx_desc_init to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_desc_init, align 4
  tail call void %32(ptr noundef %3) #8
  %inc16 = add nuw i32 %i.049, 1
  %33 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc16, %34
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.do.end20_crit_edge

for.end.do.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end20

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.end20:                                         ; preds = %for.end.do.end20_crit_edge, %for.body.do.end20_crit_edge, %entry.do.end20_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_init_ring(ptr nocapture noundef readonly %pdata, ptr noundef %ring, i32 noundef %rdesc_count) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %rdesc_count, 4
  %rdesc_count1 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 4
  %0 = ptrtoint ptr %rdesc_count1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %rdesc_count, ptr %rdesc_count1, align 8
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %rdesc_dma = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 3
  %node = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 8
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %mul, ptr noundef %rdesc_dma, i32 noundef 3264, i32 noundef 0) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %xgbe_dma_alloc_node.exit, label %xgbe_dma_alloc_node.exit.thread

xgbe_dma_alloc_node.exit.thread:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %rdesc50 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 2
  %3 = ptrtoint ptr %rdesc50 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %rdesc50, align 16
  br label %if.end5

xgbe_dma_alloc_node.exit:                         ; preds = %if.end
  %call.i1.i = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef %mul, ptr noundef %rdesc_dma, i32 noundef 3264, i32 noundef 0) #8
  %rdesc = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 2
  %4 = ptrtoint ptr %rdesc to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i1.i, ptr %rdesc, align 16
  %tobool3.not = icmp eq ptr %call.i1.i, null
  br i1 %tobool3.not, label %xgbe_dma_alloc_node.exit.cleanup_crit_edge, label %xgbe_dma_alloc_node.exit.if.end5_crit_edge

xgbe_dma_alloc_node.exit.if.end5_crit_edge:       ; preds = %xgbe_dma_alloc_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

xgbe_dma_alloc_node.exit.cleanup_crit_edge:       ; preds = %xgbe_dma_alloc_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %xgbe_dma_alloc_node.exit.if.end5_crit_edge, %xgbe_dma_alloc_node.exit.thread
  %rdesc52 = phi ptr [ %rdesc50, %xgbe_dma_alloc_node.exit.thread ], [ %rdesc, %xgbe_dma_alloc_node.exit.if.end5_crit_edge ]
  %mul6 = mul i32 %rdesc_count, 140
  %call.i1.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul6, i32 noundef 3520) #12
  %tobool.not.i46 = icmp eq ptr %call.i1.i.i.i, null
  br i1 %tobool.not.i46, label %if.end8.i.i.i, label %xgbe_alloc_node.exit.thread

if.end8.i.i.i:                                    ; preds = %if.end5
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul6, i32 noundef 3520) #12
  %rdata = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 5
  %5 = ptrtoint ptr %rdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9.i.i.i, ptr %rdata, align 4
  %tobool10.not = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool10.not, label %if.end8.i.i.i.cleanup_crit_edge, label %if.end8.i.i.i.do.body_crit_edge

if.end8.i.i.i.do.body_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end8.i.i.i.cleanup_crit_edge:                  ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

xgbe_alloc_node.exit.thread:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %rdata54 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 5
  %6 = ptrtoint ptr %rdata54 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i1.i.i.i, ptr %rdata54, align 4
  br label %do.body

do.body:                                          ; preds = %xgbe_alloc_node.exit.thread, %if.end8.i.i.i.do.body_crit_edge
  %rdata56 = phi ptr [ %rdata54, %xgbe_alloc_node.exit.thread ], [ %rdata, %if.end8.i.i.i.do.body_crit_edge ]
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %7 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_enable, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %do.body15

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_init_ring.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_init_ring, %if.then20)) #8
          to label %cleanup [label %if.then20], !srcloc !54

if.then20:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 8
  %11 = ptrtoint ptr %rdesc52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rdesc52, align 16
  %13 = ptrtoint ptr %rdata56 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rdata56, align 4
  %15 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %node, align 32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_init_ring.__UNIQUE_ID_ddebug351, ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef %12, ptr noundef %rdesc_dma, ptr noundef %14, i32 noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body15, %do.body.cleanup_crit_edge, %if.end8.i.i.i.cleanup_crit_edge, %xgbe_dma_alloc_node.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %xgbe_dma_alloc_node.exit.cleanup_crit_edge ], [ -12, %if.end8.i.i.i.cleanup_crit_edge ], [ 0, %if.then20 ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_free_ring(ptr nocapture noundef readonly %pdata, ptr noundef %ring) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ring, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %rdata1 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 5
  %0 = ptrtoint ptr %rdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata1, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %for.cond.preheader

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

for.cond.preheader:                               ; preds = %if.end
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 4
  %2 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rdesc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp103.not = icmp eq i32 %3, 0
  br i1 %cmp103.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %4 = phi i32 [ %8, %for.body.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %i.0104 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %rdata1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rdata1, align 4
  %sub = add i32 %4, -1
  %and = and i32 %sub, %i.0104
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %6, i32 %and
  tail call void @xgbe_unmap_rdata(ptr noundef %pdata, ptr noundef %add.ptr)
  %inc = add nuw i32 %i.0104, 1
  %7 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rdesc_count, align 8
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %9 = ptrtoint ptr %rdata1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdata1, align 4
  tail call void @kfree(ptr noundef %10) #8
  %11 = ptrtoint ptr %rdata1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %rdata1, align 4
  br label %if.end8

if.end8:                                          ; preds = %for.end, %if.end.if.end8_crit_edge
  %rx_hdr_pa = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 6
  %12 = ptrtoint ptr %rx_hdr_pa to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_hdr_pa, align 128
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %if.end8.if.end22_crit_edge, label %if.then10

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then10:                                        ; preds = %if.end8
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %pages_dma = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %pages_dma to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pages_dma, align 4
  %pages_len = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %pages_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pages_len, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef 2, i32 noundef 0) #8
  %20 = ptrtoint ptr %rx_hdr_pa to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_hdr_pa, align 128
  %22 = getelementptr inbounds %struct.page, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %22, align 4
  %and.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !56

if.then.i.i:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %24, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %21 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %25, %if.end.i.i ]
  %26 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %26, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %27 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp.i.i.i.i = icmp eq i32 %28, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %26, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xgbe_free_ring, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !54

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %26, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %26) #8
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %30 = call ptr @memset(ptr %rx_hdr_pa, i32 0, i32 16)
  br label %if.end22

if.end22:                                         ; preds = %put_page.exit, %if.end8.if.end22_crit_edge
  %rx_buf_pa = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 7
  %31 = ptrtoint ptr %rx_buf_pa to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_buf_pa, align 16
  %tobool24.not = icmp eq ptr %32, null
  br i1 %tobool24.not, label %if.end22.if.end41_crit_edge, label %if.then25

if.end22.if.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then25:                                        ; preds = %if.end22
  %dev26 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %33 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev26, align 8
  %pages_dma28 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 7, i32 3
  %35 = ptrtoint ptr %pages_dma28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pages_dma28, align 4
  %pages_len30 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %pages_len30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pages_len30, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef 2, i32 noundef 0) #8
  %39 = ptrtoint ptr %rx_buf_pa to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_buf_pa, align 16
  %41 = getelementptr inbounds %struct.page, ptr %40, i32 0, i32 1
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %41, align 4
  %and.i.i83 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i83)
  %tobool.not.i.i84 = icmp eq i32 %and.i.i83, 0
  br i1 %tobool.not.i.i84, label %if.end.i.i87, label %if.then.i.i86, !prof !56

if.then.i.i86:                                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i85 = add i32 %43, -1
  br label %_compound_head.exit.i92

if.end.i.i87:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %40 to i32
  br label %_compound_head.exit.i92

_compound_head.exit.i92:                          ; preds = %if.end.i.i87, %if.then.i.i86
  %retval.0.i.i88 = phi i32 [ %sub.i.i85, %if.then.i.i86 ], [ %44, %if.end.i.i87 ]
  %45 = inttoptr i32 %retval.0.i.i88 to ptr
  %_refcount.i.i.i.i.i89 = getelementptr inbounds %struct.page, ptr %45, i32 0, i32 3
  %call.i.i.i.i.i.i.i90 = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i89, i32 noundef 4) #8
  %46 = ptrtoint ptr %_refcount.i.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %_refcount.i.i.i.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i.i.i.i91 = icmp eq i32 %47, 0
  br i1 %cmp.i.i.i.i91, label %if.then.i.i.i.i93, label %do.end5.i.i.i.i97, !prof !57

if.then.i.i.i.i93:                                ; preds = %_compound_head.exit.i92
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %45, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i.i97:                                ; preds = %_compound_head.exit.i92
  %call.i.i.i10.i.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i89, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i89, i32 1, i32 3, i32 1) #8
  %48 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i89, ptr %_refcount.i.i.i.i.i89, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i89) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i95 = extractvalue { i32, i32 } %48, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i95)
  %cmp.i.i.i.i.i.i.i96 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i95, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xgbe_free_ring, %if.then.i.i.i.i.i99)) #8
          to label %folio_put_testzero.exit.i.i100 [label %if.then.i.i.i.i.i99], !srcloc !54

if.then.i.i.i.i.i99:                              ; preds = %do.end5.i.i.i.i97
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i98 = zext i1 %cmp.i.i.i.i.i.i.i96 to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %45, i32 noundef -1, i32 noundef %conv.i.i.i.i.i98) #8
  br label %folio_put_testzero.exit.i.i100

folio_put_testzero.exit.i.i100:                   ; preds = %if.then.i.i.i.i.i99, %do.end5.i.i.i.i97
  br i1 %cmp.i.i.i.i.i.i.i96, label %if.then.i4.i101, label %folio_put_testzero.exit.i.i100.put_page.exit102_crit_edge

folio_put_testzero.exit.i.i100.put_page.exit102_crit_edge: ; preds = %folio_put_testzero.exit.i.i100
  call void @__sanitizer_cov_trace_pc() #10
  br label %put_page.exit102

if.then.i4.i101:                                  ; preds = %folio_put_testzero.exit.i.i100
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %45) #8
  br label %put_page.exit102

put_page.exit102:                                 ; preds = %if.then.i4.i101, %folio_put_testzero.exit.i.i100.put_page.exit102_crit_edge
  %49 = call ptr @memset(ptr %rx_buf_pa, i32 0, i32 16)
  br label %if.end41

if.end41:                                         ; preds = %put_page.exit102, %if.end22.if.end41_crit_edge
  %rdesc = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 2
  %50 = ptrtoint ptr %rdesc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rdesc, align 16
  %tobool42.not = icmp eq ptr %51, null
  br i1 %tobool42.not, label %if.end41.cleanup_crit_edge, label %if.then43

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %dev44 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %52 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev44, align 8
  %rdesc_count45 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 4
  %54 = ptrtoint ptr %rdesc_count45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rdesc_count45, align 8
  %mul = shl i32 %55, 4
  %rdesc_dma = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 3
  %56 = ptrtoint ptr %rdesc_dma to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rdesc_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %53, i32 noundef %mul, ptr noundef nonnull %51, i32 noundef %57, i32 noundef 0) #8
  %58 = ptrtoint ptr %rdesc to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %rdesc, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end41.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_alloc_pages(ptr nocapture noundef readonly %pdata, ptr nocapture noundef writeonly %pa, i32 noundef %alloc_order, i32 noundef %node) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %alloc_order)
  %cmp45 = icmp sgt i32 %alloc_order, -1
  br label %again

again:                                            ; preds = %while.end.again_crit_edge, %entry
  %node.addr.0 = phi i32 [ %node, %entry ], [ -1, %while.end.again_crit_edge ]
  br i1 %cmp45, label %while.body.lr.ph, label %again.while.end_crit_edge

again.while.end_crit_edge:                        ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %again
  %0 = zext i32 %node.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %node.addr.0, label %do.body3.i.i [
    i32 -1, label %while.body.lr.ph.while.body.preheader_crit_edge
    i32 0, label %while.body.lr.ph.while.body.preheader_crit_edge57
  ], !prof !62

while.body.lr.ph.while.body.preheader_crit_edge57: ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

while.body.lr.ph.while.body.preheader_crit_edge:  ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.preheader

while.body.preheader:                             ; preds = %while.body.lr.ph.while.body.preheader_crit_edge, %while.body.lr.ph.while.body.preheader_crit_edge57
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.preheader
  %order.046 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ %alloc_order, %while.body.preheader ]
  %call38.i.i = tail call ptr @__alloc_pages(i32 noundef 272928, i32 noundef %order.046, i32 noundef 0, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call38.i.i, null
  br i1 %tobool.not, label %if.end, label %if.end7

do.body3.i.i:                                     ; preds = %while.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/gfp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #8, !srcloc !63
  unreachable

if.end:                                           ; preds = %while.body
  %dec = add nsw i32 %order.046, -1
  %cmp = icmp sgt i32 %order.046, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %again.while.end_crit_edge
  %cmp2.not = icmp eq i32 %node.addr.0, -1
  br i1 %cmp2.not, label %while.end.cleanup_crit_edge, label %while.end.again_crit_edge

while.end.again_crit_edge:                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %again

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %dev = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %shl = shl i32 4096, %order.046
  %call8 = tail call i32 @dma_map_page_attrs(ptr noundef %2, ptr noundef nonnull %call38.i.i, i32 noundef 0, i32 noundef %shl, i32 noundef 2, i32 noundef 0) #8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %4, i32 noundef %call8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp.i.not = icmp eq i32 %call8, -1
  br i1 %cmp.i.not, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  %5 = getelementptr inbounds %struct.page, ptr %call38.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !56

if.then.i.i:                                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %7, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call38.i.i to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %8, %if.end.i.i ]
  %9 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %9, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  %10 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.i.i = icmp eq i32 %11, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !57

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %9, ptr noundef nonnull @.str.9) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !58
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #8, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@xgbe_alloc_pages, %if.then.i.i.i.i.i)) #8
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !54

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %9, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #8
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef %9) #8
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %pa to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call38.i.i, ptr %pa, align 4
  %pages_len = getelementptr inbounds %struct.xgbe_page_alloc, ptr %pa, i32 0, i32 1
  %14 = ptrtoint ptr %pages_len to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shl, ptr %pages_len, align 4
  %pages_offset = getelementptr inbounds %struct.xgbe_page_alloc, ptr %pa, i32 0, i32 2
  %15 = ptrtoint ptr %pages_offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pages_offset, align 4
  %pages_dma16 = getelementptr inbounds %struct.xgbe_page_alloc, ptr %pa, i32 0, i32 3
  %16 = ptrtoint ptr %pages_dma16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call8, ptr %pages_dma16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -12, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ -12, %if.then.i4.i ], [ -12, %while.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_set_buffer_data(ptr nocapture noundef writeonly %bd, ptr nocapture noundef %pa, i32 noundef %len) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pa, align 4
  %2 = getelementptr inbounds %struct.page, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %2, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !56

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i = add i32 %4, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %1 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %5, %if.end.i.i ]
  %6 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %6, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %7 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %8, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !57

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %6, ptr noundef nonnull @.str.20) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !64
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !65
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@xgbe_set_buffer_data, %if.then.i.i.i.i)) #8
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !54

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %6, i32 noundef 1) #8
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %10 = call ptr @memcpy(ptr %bd, ptr %pa, i32 16)
  %pages_dma = getelementptr inbounds %struct.xgbe_page_alloc, ptr %pa, i32 0, i32 3
  %11 = ptrtoint ptr %pages_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pages_dma, align 4
  %dma_base = getelementptr inbounds %struct.xgbe_buffer_data, ptr %bd, i32 0, i32 2
  %13 = ptrtoint ptr %dma_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %dma_base, align 4
  %pages_offset = getelementptr inbounds %struct.xgbe_page_alloc, ptr %pa, i32 0, i32 2
  %14 = ptrtoint ptr %pages_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pages_offset, align 4
  %dma_off = getelementptr inbounds %struct.xgbe_buffer_data, ptr %bd, i32 0, i32 3
  %16 = ptrtoint ptr %dma_off to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dma_off, align 4
  %dma_len = getelementptr inbounds %struct.xgbe_buffer_data, ptr %bd, i32 0, i32 4
  %17 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %dma_len, align 4
  %18 = load i32, ptr %pages_offset, align 4
  %add = add i32 %18, %len
  store i32 %add, ptr %pages_offset, align 4
  %add4 = add i32 %add, %len
  %pages_len = getelementptr inbounds %struct.xgbe_page_alloc, ptr %pa, i32 0, i32 1
  %19 = ptrtoint ptr %pages_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pages_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4, i32 %20)
  %cmp = icmp ugt i32 %add4, %20
  br i1 %cmp, label %if.then, label %get_page.exit.if.end_crit_edge

get_page.exit.if.end_crit_edge:                   ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #10
  %pa_unmap = getelementptr inbounds %struct.xgbe_buffer_data, ptr %bd, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %pa_unmap, ptr %pa, i32 16)
  %22 = call ptr @memset(ptr %pa, i32 0, i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %get_page.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !16, !17, !19, !21, !23, !24, !25, !27, !28, !30, !31, !33, !35, !36, !38, !39, !40, !42}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 254, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xgbe_alloc_ring_resources.__UNIQUE_ID_ddebug352, !1, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 261, i32 10}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 265, i32 3}
!10 = !{ptr @xgbe_alloc_ring_resources.__UNIQUE_ID_ddebug353, !9, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 272, i32 10}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 239, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @xgbe_init_ring.__UNIQUE_ID_ddebug351, !14, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/mm.h", i32 717, i32 2}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 561, i32 32}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 566, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xgbe_map_tx_skb.__UNIQUE_ID_ddebug354, !22, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 590, i32 3}
!27 = !{ptr @xgbe_map_tx_skb.__UNIQUE_ID_ddebug357, !26, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 604, i32 3}
!30 = !{ptr @xgbe_map_tx_skb.__UNIQUE_ID_ddebug358, !29, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 618, i32 11}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-desc.c", i32 624, i32 4}
!35 = !{ptr @xgbe_map_tx_skb.__UNIQUE_ID_ddebug361, !34, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2148380476, i64 2148380481, i64 2148380494, i64 2148380538, i64 2148380572, i64 2148380593}
!55 = !{!"auto-init"}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 2153620765, i64 2153621248, i64 2153620802, i64 2153620858, i64 2153620892, i64 2153620916, i64 2153620957, i64 2153620978, i64 2153621006, i64 2153621040}
!59 = !{i64 2148655535}
!60 = !{i64 2148570268, i64 2148570300, i64 2148570329, i64 2148570363, i64 2148570394, i64 2148570417}
!61 = !{i64 2148655764}
!62 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!63 = !{i64 2151867636, i64 2151868120, i64 2151867673, i64 2151867729, i64 2151867763, i64 2151867787, i64 2151867828, i64 2151867849, i64 2151867877, i64 2151867911}
!64 = !{i64 2153640677, i64 2153641161, i64 2153640714, i64 2153640770, i64 2153640804, i64 2153640828, i64 2153640869, i64 2153640890, i64 2153640918, i64 2153640952}
!65 = !{i64 2148567083, i64 2148567109, i64 2148567138, i64 2148567172, i64 2148567203, i64 2148567226}
