; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/tx_common.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/tx_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.efx_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.efx_msi_context], [2 x ptr], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.efx_rss_context, %struct.mutex, i32, i32, i32, i8, i8, %struct.efx_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, i16, %struct.efx_buffer, i64, i64, i8, i32, ptr, %struct.mdio_if_info, i32, i32, [3 x i32], i32, %struct.efx_link_state, i32, i8, %union.efx_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, ptr, %struct.rw_semaphore, ptr, %struct.mutex, i32, [8 x %struct.efx_async_filter_insertion], %struct.spinlock, ptr, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, ptr, i8, ptr, i8, %struct.notifier_block, i32, i32, %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.efx_msi_context = type { ptr, i32, [22 x i8] }
%struct.efx_rss_context = type { %struct.list_head, i32, i32, i8, [40 x i8], [128 x i32] }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.efx_buffer = type { ptr, i32, i32 }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.efx_link_state = type { i8, i8, i8, i32 }
%union.efx_multicast_hash = type { [2 x %union.efx_oword] }
%union.efx_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.efx_async_filter_insertion = type { ptr, %struct.efx_filter_spec, %struct.work_struct, i16, i32 }
%struct.efx_filter_spec = type { i32, i32, i16, i16, [6 x i8], [6 x i8], i16, i8, [4 x i32], [4 x i32], i16, i16, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.efx_tx_queue = type { ptr, i32, i32, i32, i32, i8, ptr, ptr, ptr, ptr, %struct.efx_special_buffer, i32, ptr, i32, i8, i8, i8, [53 x i8], i32, i32, i32, i32, i32, i32, i32, [100 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, [72 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.efx_special_buffer = type { %struct.efx_buffer, i32, i32 }
%struct.efx_nic_type = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i64, i32, i32, i32, i32 }
%struct.efx_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.efx_special_buffer, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.efx_rx_queue, [4 x %struct.efx_tx_queue], [8 x ptr], i32, i32, i32, [84 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.efx_rx_queue = type { ptr, i32, ptr, %struct.efx_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, [92 x i8], %struct.xdp_rxq_info, i8, [127 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.efx_tx_buffer = type { %union.anon.147, %union.anon.148, i16, i16, i16, i16 }
%union.anon.147 = type { ptr }
%union.anon.148 = type { %union.efx_qword }
%union.efx_qword = type { [1 x i64] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.127 = type { ptr }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.128, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.128 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }

@efx_probe_tx_queue.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfc\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"efx_probe_tx_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/sfc/tx_common.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"creating TX queue %d size %#x mask %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@efx_init_tx_queue.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_init_tx_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"initialising TX queue %d\0A\00", [38 x i8] zeroinitializer }, align 32
@efx_fini_tx_queue.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"efx_fini_tx_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shutting down TX queue %d\0A\00", [37 x i8] zeroinitializer }, align 32
@efx_remove_tx_queue.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"efx_remove_tx_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"destroying TX queue %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TX queue %d spurious TX completion id %d\0A\00", [54 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 33, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 71, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 101, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 127, i32 2 }
@___asan_gen_.44 = private constant [40 x i8] c"../drivers/net/ethernet/sfc/tx_common.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 212, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 326, i32 6 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_probe_tx_queue(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %txq_entries = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 32
  %2 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txq_entries, align 64
  %sub.i98 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i98)
  %tobool.not.i.i.i = icmp eq i32 %sub.i98, 0
  br i1 %tobool.not.i.i.i, label %entry.cond.end24.thread_crit_edge, label %cond.end24

entry.cond.end24.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end24.thread

cond.end24:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i98, i1 true) #8, !range !33
  %sub.i.i.i = sub nuw nsw i32 32, %4
  %cond25 = shl nuw i32 1, %sub.i.i.i
  %5 = tail call i32 @llvm.umax.i32(i32 %cond25, i32 512)
  br label %cond.end24.thread

cond.end24.thread:                                ; preds = %cond.end24, %entry.cond.end24.thread_crit_edge
  %6 = phi i32 [ 512, %entry.cond.end24.thread_crit_edge ], [ %5, %cond.end24 ]
  %sub32 = add i32 %6, -1
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub32, ptr %ptr_mask, align 4
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 4
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end24.thread.do.end47_crit_edge, label %do.body34

cond.end24.thread.do.end47_crit_edge:             ; preds = %cond.end24.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.body34:                                        ; preds = %cond.end24.thread
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_probe_tx_queue.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_probe_tx_queue, %if.then40)) #8
          to label %do.end47 [label %if.then40], !srcloc !34

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue, align 4
  %14 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txq_entries, align 64
  %16 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptr_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_probe_tx_queue.__UNIQUE_ID_ddebug526, ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %do.body34, %cond.end24.thread.do.end47_crit_edge
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 24) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !35

kcalloc.exit.thread:                              ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %buffer140 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %20 = ptrtoint ptr %buffer140 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %buffer140, align 32
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end47
  %21 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #11
  %buffer = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %22 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call8.i.i, ptr %buffer, align 32
  %tobool50.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool50.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i133

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i133:                                   ; preds = %if.end7.i.i
  %23 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask, align 4
  %sub.i99 = add i32 %24, 32
  %div2.i = lshr i32 %sub.i99, 5
  %25 = mul nuw nsw i32 %div2.i, 12
  %call8.i.i132 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef 3520) #11
  %cb_page = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 9
  %26 = ptrtoint ptr %cb_page to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call8.i.i132, ptr %cb_page, align 4
  %tobool56.not = icmp eq ptr %call8.i.i132, null
  br i1 %tobool56.not, label %if.end7.i.i133.fail1_crit_edge, label %if.end58

if.end7.i.i133.fail1_crit_edge:                   ; preds = %if.end7.i.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end58:                                         ; preds = %if.end7.i.i133
  %27 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %type.i, align 4
  %tx_probe.i = getelementptr inbounds %struct.efx_nic_type, ptr %30, i32 0, i32 48
  %31 = ptrtoint ptr %tx_probe.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_probe.i, align 8
  %call.i = tail call i32 %32(ptr noundef %tx_queue) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %if.end62, label %fail2

if.end62:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %33 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %channel, align 8
  %type = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 3
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type, align 4
  %arrayidx = getelementptr %struct.efx_channel, ptr %34, i32 0, i32 47, i32 %36
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tx_queue, ptr %arrayidx, align 4
  br label %cleanup

fail2:                                            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %cb_page to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cb_page, align 4
  tail call void @kfree(ptr noundef %39) #8
  %40 = ptrtoint ptr %cb_page to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %cb_page, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end7.i.i133.fail1_crit_edge
  %rc.0 = phi i32 [ %call.i, %fail2 ], [ -12, %if.end7.i.i133.fail1_crit_edge ]
  %41 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %buffer, align 32
  tail call void @kfree(ptr noundef %42) #8
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %buffer, align 32
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end62, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ %rc.0, %fail1 ], [ 0, %if.end62 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_init_tx_queue(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_init_tx_queue.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_init_tx_queue, %if.then6)) #8
          to label %do.end9 [label %if.then6], !srcloc !34

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 83
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_init_tx_queue.__UNIQUE_ID_ddebug527, ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %7) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %insert_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %notify_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 38
  %8 = ptrtoint ptr %notify_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %notify_count, align 16
  %old_write_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 19
  %9 = ptrtoint ptr %old_write_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %old_write_count, align 4
  %read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 18
  %10 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %read_count, align 128
  %empty_read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 41
  %11 = call ptr @memset(ptr %insert_count, i32 0, i32 16)
  %12 = ptrtoint ptr %empty_read_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2147483648, ptr %empty_read_count, align 128
  %xmit_pending = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 36
  %13 = ptrtoint ptr %xmit_pending to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %xmit_pending, align 8
  %call10 = tail call zeroext i1 @efx_ptp_use_mac_tx_timestamps(ptr noundef %1) #8
  br i1 %call10, label %land.rhs, label %do.end9.land.end_crit_edge

do.end9.land.end_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel, align 8
  %call11 = tail call ptr @efx_ptp_channel(ptr noundef %1) #8
  %cmp = icmp eq ptr %15, %call11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end9.land.end_crit_edge
  %16 = phi i1 [ false, %do.end9.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %timestamping = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 15
  %frombool12 = zext i1 %16 to i8
  %17 = ptrtoint ptr %timestamping to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool12, ptr %timestamping, align 1
  %completed_timestamp_major = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 23
  %18 = ptrtoint ptr %completed_timestamp_major to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %completed_timestamp_major, align 4
  %completed_timestamp_minor = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 24
  %19 = ptrtoint ptr %completed_timestamp_minor to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %completed_timestamp_minor, align 8
  %channel13 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %20 = ptrtoint ptr %channel13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %channel13, align 8
  %channel1.i = getelementptr inbounds %struct.efx_channel, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel1.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 128
  %xdp_channel_offset.i = getelementptr inbounds %struct.efx_nic, ptr %25, i32 0, i32 50
  %26 = ptrtoint ptr %xdp_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %xdp_channel_offset.i, align 8
  %sub.i = sub i32 %23, %27
  %n_xdp_channels.i = getelementptr inbounds %struct.efx_nic, ptr %25, i32 0, i32 49
  %28 = ptrtoint ptr %n_xdp_channels.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %n_xdp_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %29)
  %cmp.i = icmp ult i32 %sub.i, %29
  %xdp_tx = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 16
  %frombool15 = zext i1 %cmp.i to i8
  %30 = ptrtoint ptr %xdp_tx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool15, ptr %xdp_tx, align 2
  %tso_version = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 4
  %31 = ptrtoint ptr %tso_version to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %tso_version, align 16
  %32 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %33, i32 0, i32 6
  %34 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type.i, align 4
  %tx_init.i = getelementptr inbounds %struct.efx_nic_type, ptr %35, i32 0, i32 49
  %36 = ptrtoint ptr %tx_init.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_init.i, align 4
  tail call void %37(ptr noundef %tx_queue) #8
  %initialised = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 14
  %38 = ptrtoint ptr %initialised to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %initialised, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @efx_ptp_use_mac_tx_timestamps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @efx_ptp_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_fini_tx_queue(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  %pkts_compl = alloca i32, align 4
  %bytes_compl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_fini_tx_queue.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_fini_tx_queue, %if.then5)) #8
          to label %do.end9 [label %if.then5], !srcloc !34

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_queue, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %5, i32 0, i32 83
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_fini_tx_queue.__UNIQUE_ID_ddebug528, ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef %9) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %buffer10 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %10 = ptrtoint ptr %buffer10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer10, align 32
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %do.end9.cleanup_crit_edge, label %while.cond.preheader

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end9
  %read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 18
  %write_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 27
  %12 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %read_count, align 128
  %14 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %write_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp.not31 = icmp eq i32 %13, %15
  br i1 %cmp.not31, label %while.cond.preheader.while.end_crit_edge, label %while.body.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %ptr_mask = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %16 = phi i32 [ %13, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkts_compl) #8
  %17 = ptrtoint ptr %pkts_compl to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pkts_compl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_compl) #8
  %18 = ptrtoint ptr %bytes_compl to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %bytes_compl, align 4
  %19 = ptrtoint ptr %buffer10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer10, align 32
  %21 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ptr_mask, align 4
  %and16 = and i32 %22, %16
  %arrayidx = getelementptr %struct.efx_tx_buffer, ptr %20, i32 %and16
  call void @efx_dequeue_buffer(ptr noundef %tx_queue, ptr noundef %arrayidx, ptr noundef nonnull %pkts_compl, ptr noundef nonnull %bytes_compl)
  %23 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %read_count, align 128
  %inc = add i32 %24, 1
  store i32 %inc, ptr %read_count, align 128
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_compl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkts_compl) #8
  %25 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %write_count, align 4
  %cmp.not = icmp eq i32 %inc, %26
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %xmit_pending = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 36
  %27 = ptrtoint ptr %xmit_pending to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %xmit_pending, align 8
  %core_txq = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 7
  %28 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %core_txq, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #8
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %29, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_dequeue_buffer(ptr noundef %tx_queue, ptr nocapture noundef %buffer, ptr nocapture noundef %pkts_compl, ptr nocapture noundef %bytes_compl) local_unnamed_addr #0 align 64 {
entry:
  %hwtstamp = alloca %struct.skb_shared_hwtstamps, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %unmap_len = getelementptr inbounds %struct.efx_tx_buffer, ptr %buffer, i32 0, i32 4
  %0 = ptrtoint ptr %unmap_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %unmap_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue, align 128
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = getelementptr inbounds %struct.efx_tx_buffer, ptr %buffer, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 8
  %dma_offset = getelementptr inbounds %struct.efx_tx_buffer, ptr %buffer, i32 0, i32 5
  %9 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %dma_offset, align 2
  %conv = zext i16 %10 to i32
  %sub = sub i32 %8, %conv
  %conv7 = zext i16 %1 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %sub, i32 noundef %conv7, i32 noundef 1, i32 noundef 0) #8
  %11 = ptrtoint ptr %unmap_len to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %unmap_len, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %flags10 = getelementptr inbounds %struct.efx_tx_buffer, ptr %buffer, i32 0, i32 2
  %12 = ptrtoint ptr %flags10 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags10, align 8
  %conv11 = zext i16 %13 to i32
  %and12 = and i32 %conv11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else24, label %if.then14

if.then14:                                        ; preds = %if.end9
  %14 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buffer, align 8
  %16 = ptrtoint ptr %pkts_compl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pkts_compl, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %pkts_compl, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %15, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  %20 = ptrtoint ptr %bytes_compl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytes_compl, align 4
  %add = add i32 %21, %19
  store i32 %add, ptr %bytes_compl, align 4
  %timestamping = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 15
  %22 = ptrtoint ptr %timestamping to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %timestamping, align 1, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not = icmp eq i8 %23, 0
  br i1 %tobool15.not, label %if.then14.if.end23_crit_edge, label %land.lhs.true

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %if.then14
  %completed_timestamp_major = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 23
  %24 = ptrtoint ptr %completed_timestamp_major to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %completed_timestamp_major, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool17.not = icmp eq i32 %25, 0
  br i1 %tobool17.not, label %lor.lhs.false, label %land.lhs.true.if.then19_crit_edge

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false:                                    ; preds = %land.lhs.true
  %completed_timestamp_minor = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 24
  %26 = ptrtoint ptr %completed_timestamp_minor to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %completed_timestamp_minor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool18.not = icmp eq i32 %27, 0
  br i1 %tobool18.not, label %lor.lhs.false.if.end23_crit_edge, label %lor.lhs.false.if.then19_crit_edge

lor.lhs.false.if.then19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

lor.lhs.false.if.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then19:                                        ; preds = %lor.lhs.false.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hwtstamp) #8
  %call = tail call i64 @efx_ptp_nic_to_kernel_time(ptr noundef %tx_queue) #8
  %28 = ptrtoint ptr %hwtstamp to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call, ptr %hwtstamp, align 8
  call void @skb_tstamp_tx(ptr noundef %15, ptr noundef nonnull %hwtstamp) #8
  %29 = ptrtoint ptr %completed_timestamp_major to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %completed_timestamp_major, align 4
  %completed_timestamp_minor22 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 24
  %30 = ptrtoint ptr %completed_timestamp_minor22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %completed_timestamp_minor22, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hwtstamp) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %lor.lhs.false.if.end23_crit_edge, %if.then14.if.end23_crit_edge
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 8
  call void @__dev_kfree_skb_any(ptr noundef %32, i32 noundef 0) #8
  br label %if.end31

if.else24:                                        ; preds = %if.end9
  %and27 = and i32 %conv11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else24.if.end31_crit_edge, label %if.then29

if.else24.if.end31_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then29:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buffer, align 8
  tail call void @xdp_return_frame_rx_napi(ptr noundef %34) #8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.else24.if.end31_crit_edge, %if.end23
  %len32 = getelementptr inbounds %struct.efx_tx_buffer, ptr %buffer, i32 0, i32 3
  %35 = ptrtoint ptr %len32 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %len32, align 2
  %36 = ptrtoint ptr %flags10 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags10, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_remove_tx_queue(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 32
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end12_crit_edge, label %do.body3

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @efx_remove_tx_queue.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@efx_remove_tx_queue, %if.then7)) #8
          to label %do.end12 [label %if.then7], !srcloc !34

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_queue, align 128
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %7, i32 0, i32 83
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @efx_remove_tx_queue.__UNIQUE_ID_ddebug529, ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %11) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body3, %do.body.do.end12_crit_edge
  %12 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %tx_remove.i = getelementptr inbounds %struct.efx_nic_type, ptr %15, i32 0, i32 50
  %16 = ptrtoint ptr %tx_remove.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_remove.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end12.efx_nic_remove_tx.exit_crit_edge, label %if.then.i

do.end12.efx_nic_remove_tx.exit_crit_edge:        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_nic_remove_tx.exit

if.then.i:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %tx_queue) #8
  br label %efx_nic_remove_tx.exit

efx_nic_remove_tx.exit:                           ; preds = %if.then.i, %do.end12.efx_nic_remove_tx.exit_crit_edge
  %cb_page = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 9
  %18 = ptrtoint ptr %cb_page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb_page, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %efx_nic_remove_tx.exit.if.end20_crit_edge, label %for.cond.preheader

efx_nic_remove_tx.exit.if.end20_crit_edge:        ; preds = %efx_nic_remove_tx.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

for.cond.preheader:                               ; preds = %efx_nic_remove_tx.exit
  %ptr_mask.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %20 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ptr_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33, i32 %21)
  %cmp43.not = icmp ugt i32 %21, -33
  br i1 %cmp43.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.044 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %22 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_queue, align 128
  %24 = ptrtoint ptr %cb_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cb_page, align 4
  %arrayidx = getelementptr %struct.efx_buffer, ptr %25, i32 %i.044
  tail call void @efx_nic_free_buffer(ptr noundef %23, ptr noundef %arrayidx) #8
  %inc = add nuw nsw i32 %i.044, 1
  %26 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ptr_mask.i, align 4
  %sub.i = add i32 %27, 32
  %div2.i = lshr i32 %sub.i, 5
  %cmp = icmp ult i32 %inc, %div2.i
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %28 = ptrtoint ptr %cb_page to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cb_page, align 4
  tail call void @kfree(ptr noundef %29) #8
  %30 = ptrtoint ptr %cb_page to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %cb_page, align 4
  br label %if.end20

if.end20:                                         ; preds = %for.end, %efx_nic_remove_tx.exit.if.end20_crit_edge
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 32
  tail call void @kfree(ptr noundef %32) #8
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %buffer, align 32
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %channel, align 8
  %type = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 3
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type, align 4
  %arrayidx23 = getelementptr %struct.efx_channel, ptr %35, i32 0, i32 47, i32 %37
  %38 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @efx_ptp_nic_to_kernel_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xdp_return_frame_rx_napi(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_xmit_done_check_empty(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 18
  %0 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %read_count, align 128
  %old_write_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 19
  %2 = ptrtoint ptr %old_write_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %old_write_count, align 4
  %sub = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %do.end, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end:                                           ; preds = %entry
  %write_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 27
  %4 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %write_count, align 4
  %6 = ptrtoint ptr %old_write_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %old_write_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp4 = icmp eq i32 %1, %5
  br i1 %cmp4, label %do.end8, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %7 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %read_count, align 128
  %or = or i32 %8, -2147483648
  %empty_read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 41
  %9 = ptrtoint ptr %empty_read_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %empty_read_count, align 128
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %do.end.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_xmit_done(ptr noundef %tx_queue, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  %pkts_compl = alloca i32, align 4
  %bytes_compl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkts_compl) #8
  %0 = ptrtoint ptr %pkts_compl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pkts_compl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_compl) #8
  %1 = ptrtoint ptr %bytes_compl to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bytes_compl, align 4
  %2 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue, align 128
  %add.i = add i32 %index, 1
  %ptr_mask.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %4 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ptr_mask.i, align 4
  %and.i = and i32 %5, %add.i
  %read_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 18
  %6 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %read_count.i, align 128
  %and3.i = and i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %and.i)
  %cmp.not33.i = icmp eq i32 %and3.i, %and.i
  br i1 %cmp.not33.i, label %entry.efx_dequeue_buffers.exit_crit_edge, label %while.body.lr.ph.i

entry.efx_dequeue_buffers.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_dequeue_buffers.exit

while.body.lr.ph.i:                               ; preds = %entry
  %buffer4.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %read_ptr.034.i = phi i32 [ %and3.i, %while.body.lr.ph.i ], [ %and11.i, %cleanup.i.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %buffer4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %buffer4.i, align 32
  %arrayidx.i = getelementptr %struct.efx_tx_buffer, ptr %9, i32 %read_ptr.034.i
  %len.i.i = getelementptr %struct.efx_tx_buffer, ptr %9, i32 %read_ptr.034.i, i32 3
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.i.i = icmp eq i16 %11, 0
  br i1 %tobool.not.i.i, label %efx_tx_buffer_in_use.exit.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

efx_tx_buffer_in_use.exit.i:                      ; preds = %while.body.i
  %flags.i.i = getelementptr %struct.efx_tx_buffer, ptr %9, i32 %read_ptr.034.i, i32 2
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %flags.i.i, align 8
  %14 = and i16 %13, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool2.i.not.i = icmp eq i16 %14, 0
  br i1 %tobool2.i.not.i, label %do.body.i, label %efx_tx_buffer_in_use.exit.i.cleanup.i_crit_edge

efx_tx_buffer_in_use.exit.i.cleanup.i_crit_edge:  ; preds = %efx_tx_buffer_in_use.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

do.body.i:                                        ; preds = %efx_tx_buffer_in_use.exit.i
  %msg_enable.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 22
  %15 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg_enable.i, align 4
  %and5.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i, label %do.body.i.cleanup.thread.i_crit_edge, label %if.then6.i

do.body.i.cleanup.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 83
  %17 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %net_dev.i, align 4
  %queue.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 1
  %19 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %queue.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.10, i32 noundef %20, i32 noundef %read_ptr.034.i) #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then6.i, %do.body.i.cleanup.thread.i_crit_edge
  tail call void @efx_schedule_reset(ptr noundef %3, i32 noundef 12) #8
  br label %efx_dequeue_buffers.exit

cleanup.i:                                        ; preds = %efx_tx_buffer_in_use.exit.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  call void @efx_dequeue_buffer(ptr noundef %tx_queue, ptr noundef %arrayidx.i, ptr noundef nonnull %pkts_compl, ptr noundef nonnull %bytes_compl) #8
  %21 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %read_count.i, align 128
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %read_count.i, align 128
  %23 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ptr_mask.i, align 4
  %and11.i = and i32 %24, %inc.i
  %cmp.not.i = icmp eq i32 %and11.i, %and.i
  br i1 %cmp.not.i, label %cleanup.i.efx_dequeue_buffers.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.efx_dequeue_buffers.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_dequeue_buffers.exit

efx_dequeue_buffers.exit:                         ; preds = %cleanup.i.efx_dequeue_buffers.exit_crit_edge, %cleanup.thread.i, %entry.efx_dequeue_buffers.exit_crit_edge
  %25 = ptrtoint ptr %pkts_compl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pkts_compl, align 4
  %pkts_compl2 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 22
  %27 = ptrtoint ptr %pkts_compl2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pkts_compl2, align 16
  %add = add i32 %28, %26
  store i32 %add, ptr %pkts_compl2, align 16
  %29 = ptrtoint ptr %bytes_compl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bytes_compl, align 4
  %bytes_compl3 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 21
  %31 = ptrtoint ptr %bytes_compl3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bytes_compl3, align 4
  %add4 = add i32 %32, %30
  store i32 %add4, ptr %bytes_compl3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp = icmp ugt i32 %26, 1
  br i1 %cmp, label %if.then, label %efx_dequeue_buffers.exit.do.end8_crit_edge

efx_dequeue_buffers.exit.do.end8_crit_edge:       ; preds = %efx_dequeue_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then:                                          ; preds = %efx_dequeue_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  %merge_events = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 20
  %33 = ptrtoint ptr %merge_events to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %merge_events, align 8
  %inc = add i32 %34, 1
  store i32 %inc, ptr %merge_events, align 8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %efx_dequeue_buffers.exit.do.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !38
  %core_txq = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 7
  %35 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core_txq, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %36, i32 0, i32 13
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end8.if.end33_crit_edge, label %land.lhs.true, !prof !39

do.end8.if.end33_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true:                                    ; preds = %do.end8
  %port_enabled = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 80
  %39 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port_enabled, align 8, !range !36
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool12.not = icmp eq i8 %40, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true19, !prof !35

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true19:                                  ; preds = %land.lhs.true
  %net_dev = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 83
  %41 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %net_dev, align 4
  %state.i44 = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %state.i44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i44, align 4
  %45 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i45.not = icmp eq i32 %45, 0
  br i1 %tobool.i45.not, label %land.lhs.true19.if.end33_crit_edge, label %if.then27, !prof !35

land.lhs.true19.if.end33_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then27:                                        ; preds = %land.lhs.true19
  %channel = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 6
  %46 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %channel, align 8
  %call28 = tail call fastcc i32 @efx_channel_tx_fill_level(ptr noundef %47)
  %txq_wake_thresh = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 34
  %48 = ptrtoint ptr %txq_wake_thresh to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %txq_wake_thresh, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call28, i32 %49)
  %cmp29.not = icmp ugt i32 %call28, %49
  br i1 %cmp29.not, label %if.then27.if.end33_crit_edge, label %if.then30

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %36) #8
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %if.then27.if.end33_crit_edge, %land.lhs.true19.if.end33_crit_edge, %land.lhs.true.if.end33_crit_edge, %do.end8.if.end33_crit_edge
  %50 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %read_count.i, align 128
  %old_write_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 19
  %52 = ptrtoint ptr %old_write_count.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %old_write_count.i, align 4
  %sub.i = sub i32 %51, %53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %do.end.i, label %if.end33.efx_xmit_done_check_empty.exit_crit_edge

if.end33.efx_xmit_done_check_empty.exit_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_xmit_done_check_empty.exit

do.end.i:                                         ; preds = %if.end33
  %write_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 27
  %54 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %write_count.i, align 4
  %56 = ptrtoint ptr %old_write_count.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %old_write_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %55)
  %cmp4.i = icmp eq i32 %51, %55
  br i1 %cmp4.i, label %do.end8.i, label %do.end.i.efx_xmit_done_check_empty.exit_crit_edge

do.end.i.efx_xmit_done_check_empty.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %efx_xmit_done_check_empty.exit

do.end8.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !37
  %57 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %read_count.i, align 128
  %or.i = or i32 %58, -2147483648
  %empty_read_count.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 41
  %59 = ptrtoint ptr %empty_read_count.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %or.i, ptr %empty_read_count.i, align 128
  br label %efx_xmit_done_check_empty.exit

efx_xmit_done_check_empty.exit:                   ; preds = %do.end8.i, %do.end.i.efx_xmit_done_check_empty.exit_crit_edge, %if.end33.efx_xmit_done_check_empty.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_compl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkts_compl) #8
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @efx_channel_tx_fill_level(ptr noundef readonly %channel) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tx_queue1 = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 46
  %channel1.i.i = getelementptr inbounds %struct.efx_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %channel1.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel1.i.i, align 4
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel, align 128
  %xdp_channel_offset.i.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 50
  %4 = ptrtoint ptr %xdp_channel_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xdp_channel_offset.i.i, align 8
  %sub.i.i = sub i32 %1, %5
  %n_xdp_channels.i.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 49
  %6 = ptrtoint ptr %n_xdp_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_xdp_channels.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %7)
  %cmp.i.i = icmp ult i32 %sub.i.i, %7
  %xdp_tx_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 51
  %tx_queues_per_channel.i = getelementptr inbounds %struct.efx_nic, ptr %3, i32 0, i32 48
  %retval.0.in.i = select i1 %cmp.i.i, ptr %xdp_tx_per_channel.i, ptr %tx_queues_per_channel.i
  %8 = ptrtoint ptr %retval.0.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %retval.0.i = load i32, ptr %retval.0.in.i, align 4
  %add.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue1, i32 %retval.0.i
  %cmp15 = icmp ult ptr %tx_queue1, %add.ptr
  br i1 %cmp15, label %entry.for.body_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %tx_queue.017 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %tx_queue1, %entry.for.body_crit_edge ]
  %fill_level.016 = phi i32 [ %13, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %insert_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017, i32 0, i32 26
  %9 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %insert_count, align 128
  %read_count = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue.017, i32 0, i32 18
  %11 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %read_count, align 128
  %sub = sub i32 %10, %12
  %13 = tail call i32 @llvm.umax.i32(i32 %fill_level.016, i32 %sub)
  %incdec.ptr = getelementptr %struct.efx_tx_queue, ptr %tx_queue.017, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %fill_level.0.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ %13, %for.body.if.end_crit_edge ]
  ret i32 %fill_level.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @efx_enqueue_unwind(ptr noundef %tx_queue, i32 noundef %insert_count) local_unnamed_addr #0 align 64 {
entry:
  %bytes_compl = alloca i32, align 4
  %pkts_compl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_compl) #8
  %0 = ptrtoint ptr %bytes_compl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %bytes_compl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pkts_compl) #8
  %1 = ptrtoint ptr %pkts_compl to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %pkts_compl, align 4
  %insert_count1 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %2 = ptrtoint ptr %insert_count1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %insert_count1, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %insert_count)
  %cmp.not6 = icmp eq i32 %3, %insert_count
  br i1 %cmp.not6, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %buffer.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %ptr_mask.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %4 = phi i32 [ %3, %while.body.lr.ph ], [ %11, %while.body.while.body_crit_edge ]
  %dec = add i32 %4, -1
  %5 = ptrtoint ptr %insert_count1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec, ptr %insert_count1, align 128
  %6 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer.i, align 32
  %8 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptr_mask.i.i, align 4
  %and.i.i = and i32 %9, %dec
  %arrayidx.i = getelementptr %struct.efx_tx_buffer, ptr %7, i32 %and.i.i
  call void @efx_dequeue_buffer(ptr noundef %tx_queue, ptr noundef %arrayidx.i, ptr noundef nonnull %pkts_compl, ptr noundef nonnull %bytes_compl)
  %10 = ptrtoint ptr %insert_count1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %insert_count1, align 128
  %cmp.not = icmp eq i32 %11, %insert_count
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pkts_compl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_compl) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @efx_tx_map_chunk(ptr noundef %tx_queue, i32 noundef %dma_addr, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %type = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %buffer.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %insert_count.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %ptr_mask.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %tx_limit_len = getelementptr inbounds %struct.efx_nic_type, ptr %3, i32 0, i32 53
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %dma_addr.addr.0 = phi i32 [ %dma_addr, %entry ], [ %add, %if.end.do.body_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %entry ], [ %sub, %if.end.do.body_crit_edge ]
  %4 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer.i.i, align 32
  %6 = ptrtoint ptr %insert_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %insert_count.i.i.i, align 128
  %8 = ptrtoint ptr %ptr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ptr_mask.i.i.i, align 4
  %and.i.i.i = and i32 %9, %7
  %10 = ptrtoint ptr %tx_limit_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_limit_len, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 %11(ptr noundef %tx_queue, i32 noundef %dma_addr.addr.0, i32 noundef %len.addr.0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.if.end_crit_edge
  %dma_len.0 = phi i32 [ %call2, %if.then ], [ %len.addr.0, %do.body.if.end_crit_edge ]
  %conv = trunc i32 %dma_len.0 to i16
  %len3 = getelementptr %struct.efx_tx_buffer, ptr %5, i32 %and.i.i.i, i32 3
  %12 = ptrtoint ptr %len3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %len3, align 2
  %13 = getelementptr %struct.efx_tx_buffer, ptr %5, i32 %and.i.i.i, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dma_addr.addr.0, ptr %13, align 8
  %flags = getelementptr %struct.efx_tx_buffer, ptr %5, i32 %and.i.i.i, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags, align 8
  %sub = sub i32 %len.addr.0, %dma_len.0
  %add = add i32 %dma_len.0, %dma_addr.addr.0
  %16 = ptrtoint ptr %insert_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %insert_count.i.i.i, align 128
  %inc = add i32 %17, 1
  store i32 %inc, ptr %insert_count.i.i.i, align 128
  %tobool4.not = icmp eq i32 %sub, 0
  br i1 %tobool4.not, label %do.end, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.efx_tx_buffer, ptr %5, i32 %and.i.i.i
  ret ptr %arrayidx.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_tx_tso_header_length(ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %encapsulation = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %encapsulation to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %encapsulation, align 8
  %1 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %head.i22 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %2 = ptrtoint ptr %head.i22 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i22, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %inner_transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %transport_header.i.sink = select i1 %tobool.not, ptr %transport_header.i, ptr %inner_transport_header.i
  %4 = ptrtoint ptr %transport_header.i.sink to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.sink, align 2
  %conv.i23 = zext i16 %5 to i32
  %add.ptr.i24 = getelementptr i8, ptr %3, i32 %conv.i23
  %data5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %6 = ptrtoint ptr %data5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data5, align 4
  %sub.ptr.lhs.cast6 = ptrtoint ptr %add.ptr.i24 to i32
  %sub.ptr.rhs.cast7 = ptrtoint ptr %7 to i32
  %sub.ptr.sub8 = sub i32 %sub.ptr.lhs.cast6, %sub.ptr.rhs.cast7
  %doff10 = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i24, i32 0, i32 4
  %8 = ptrtoint ptr %doff10 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load11 = load i16, ptr %doff10, align 4
  %9 = lshr i16 %bf.load11, 10
  %10 = and i16 %9, 60
  %shl14 = zext i16 %10 to i32
  %add15 = add i32 %sub.ptr.sub8, %shl14
  ret i32 %add15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_tx_map_data(ptr noundef %tx_queue, ptr noundef %skb, i32 noundef %segment_count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %pci_dev = getelementptr inbounds %struct.efx_nic, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %nr_frags2 = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags2, align 2
  %conv = zext i8 %7 to i32
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %9, %11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %13) #8
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !39

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #8
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #8
  br label %cleanup46

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %13, i32 noundef %sub.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %19 = ptrtoint ptr %13 to i32
  %sub.i91 = add i32 %19, 1073741824
  %shr.i = lshr i32 %sub.i91, 12
  %add.ptr.i = getelementptr %struct.page, ptr %18, i32 %shr.i
  %and.i = and i32 %19, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %sub.i, i32 noundef 1, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.cleanup46_crit_edge, label %if.end

dma_map_single_attrs.exit.cleanup46_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

if.end:                                           ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %segment_count)
  %tobool8.not = icmp eq i32 %segment_count, 0
  br i1 %tobool8.not, label %if.end.if.end15_crit_edge, label %if.then9

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then9:                                         ; preds = %if.end
  %encapsulation.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %encapsulation.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load.i = load i16, ptr %encapsulation.i, align 8
  %21 = and i16 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  %head.i22.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %22 = ptrtoint ptr %head.i22.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i22.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %inner_transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 15
  %transport_header.i.sink.i = select i1 %tobool.not.i, ptr %transport_header.i.i, ptr %inner_transport_header.i.i
  %24 = ptrtoint ptr %transport_header.i.sink.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %transport_header.i.sink.i, align 2
  %conv.i23.i = zext i16 %25 to i32
  %add.ptr.i24.i = getelementptr i8, ptr %23, i32 %conv.i23.i
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %add.ptr.i24.i to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast7.i
  %doff10.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i24.i, i32 0, i32 4
  %28 = ptrtoint ptr %doff10.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load11.i = load i16, ptr %doff10.i, align 4
  %29 = lshr i16 %bf.load11.i, 10
  %30 = and i16 %29, 60
  %shl14.i = zext i16 %30 to i32
  %add15.i = add i32 %sub.ptr.sub8.i, %shl14.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add15.i)
  %cmp.not = icmp eq i32 %sub.i, %add15.i
  br i1 %cmp.not, label %if.then9.if.end15_crit_edge, label %if.then12

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.then9
  %tso_long_headers = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 31
  %31 = ptrtoint ptr %tso_long_headers to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tso_long_headers, align 4
  %inc = add i32 %32, 1
  store i32 %inc, ptr %tso_long_headers, align 4
  %33 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %type.i, align 4
  %buffer.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %insert_count.i.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %ptr_mask.i.i.i.i = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  %tx_limit_len.i = getelementptr inbounds %struct.efx_nic_type, ptr %36, i32 0, i32 53
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then12
  %dma_addr.addr.0.i = phi i32 [ %call41.i, %if.then12 ], [ %add.i, %if.end.i.do.body.i_crit_edge ]
  %len.addr.0.i = phi i32 [ %add15.i, %if.then12 ], [ %sub.i94, %if.end.i.do.body.i_crit_edge ]
  %37 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buffer.i.i.i, align 32
  %39 = ptrtoint ptr %insert_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %insert_count.i.i.i.i, align 128
  %41 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ptr_mask.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %42, %40
  %43 = ptrtoint ptr %tx_limit_len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tx_limit_len.i, align 4
  %tobool.not.i92 = icmp eq ptr %44, null
  br i1 %tobool.not.i92, label %do.body.i.if.end.i_crit_edge, label %if.then.i93

do.body.i.if.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i93:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 %44(ptr noundef %tx_queue, i32 noundef %dma_addr.addr.0.i, i32 noundef %len.addr.0.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i93, %do.body.i.if.end.i_crit_edge
  %dma_len.0.i = phi i32 [ %call2.i, %if.then.i93 ], [ %len.addr.0.i, %do.body.i.if.end.i_crit_edge ]
  %conv.i = trunc i32 %dma_len.0.i to i16
  %len3.i = getelementptr %struct.efx_tx_buffer, ptr %38, i32 %and.i.i.i.i, i32 3
  %45 = ptrtoint ptr %len3.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %len3.i, align 2
  %46 = getelementptr %struct.efx_tx_buffer, ptr %38, i32 %and.i.i.i.i, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %dma_addr.addr.0.i, ptr %46, align 8
  %flags.i = getelementptr %struct.efx_tx_buffer, ptr %38, i32 %and.i.i.i.i, i32 2
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 1, ptr %flags.i, align 8
  %sub.i94 = sub i32 %len.addr.0.i, %dma_len.0.i
  %add.i = add i32 %dma_len.0.i, %dma_addr.addr.0.i
  %49 = ptrtoint ptr %insert_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %insert_count.i.i.i.i, align 128
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %insert_count.i.i.i.i, align 128
  %tobool4.not.i = icmp eq i32 %sub.i94, 0
  br i1 %tobool4.not.i, label %efx_tx_map_chunk.exit, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

efx_tx_map_chunk.exit:                            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %sub.i, %add15.i
  %add = add i32 %add15.i, %call41.i
  br label %if.end15

if.end15:                                         ; preds = %efx_tx_map_chunk.exit, %if.then9.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %dma_addr.1 = phi i32 [ %call41.i, %if.end.if.end15_crit_edge ], [ %add, %efx_tx_map_chunk.exit ], [ %call41.i, %if.then9.if.end15_crit_edge ]
  %len.1 = phi i32 [ %sub.i, %if.end.if.end15_crit_edge ], [ %sub, %efx_tx_map_chunk.exit ], [ %sub.i, %if.then9.if.end15_crit_edge ]
  %buffer.i.i.i96 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 8
  %insert_count.i.i.i.i97 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 26
  %ptr_mask.i.i.i.i98 = getelementptr inbounds %struct.efx_tx_queue, ptr %tx_queue, i32 0, i32 11
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.end15
  %frag_index.0 = phi i32 [ 0, %if.end15 ], [ %inc32, %cleanup.do.body_crit_edge ]
  %dma_addr.2 = phi i32 [ %dma_addr.1, %if.end15 ], [ %call2.i119, %cleanup.do.body_crit_edge ]
  %unmap_addr.0 = phi i32 [ %call41.i, %if.end15 ], [ %call2.i119, %cleanup.do.body_crit_edge ]
  %dma_flags.0 = phi i16 [ 8, %if.end15 ], [ 0, %cleanup.do.body_crit_edge ]
  %len.2 = phi i32 [ %len.1, %if.end15 ], [ %80, %cleanup.do.body_crit_edge ]
  %unmap_len.0 = phi i32 [ %sub.i, %if.end15 ], [ %80, %cleanup.do.body_crit_edge ]
  %51 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_queue, align 128
  %type.i95 = getelementptr inbounds %struct.efx_nic, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %type.i95 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %type.i95, align 4
  %tx_limit_len.i99 = getelementptr inbounds %struct.efx_nic_type, ptr %54, i32 0, i32 53
  br label %do.body.i104

do.body.i104:                                     ; preds = %if.end.i115.do.body.i104_crit_edge, %do.body
  %dma_addr.addr.0.i100 = phi i32 [ %dma_addr.2, %do.body ], [ %add.i112, %if.end.i115.do.body.i104_crit_edge ]
  %len.addr.0.i101 = phi i32 [ %len.2, %do.body ], [ %sub.i111, %if.end.i115.do.body.i104_crit_edge ]
  %55 = ptrtoint ptr %buffer.i.i.i96 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer.i.i.i96, align 32
  %57 = ptrtoint ptr %insert_count.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %insert_count.i.i.i.i97, align 128
  %59 = ptrtoint ptr %ptr_mask.i.i.i.i98 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ptr_mask.i.i.i.i98, align 4
  %and.i.i.i.i102 = and i32 %60, %58
  %61 = ptrtoint ptr %tx_limit_len.i99 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tx_limit_len.i99, align 4
  %tobool.not.i103 = icmp eq ptr %62, null
  br i1 %tobool.not.i103, label %do.body.i104.if.end.i115_crit_edge, label %if.then.i106

do.body.i104.if.end.i115_crit_edge:               ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i115

if.then.i106:                                     ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i105 = tail call i32 %62(ptr noundef %tx_queue, i32 noundef %dma_addr.addr.0.i100, i32 noundef %len.addr.0.i101) #8
  br label %if.end.i115

if.end.i115:                                      ; preds = %if.then.i106, %do.body.i104.if.end.i115_crit_edge
  %dma_len.0.i107 = phi i32 [ %call2.i105, %if.then.i106 ], [ %len.addr.0.i101, %do.body.i104.if.end.i115_crit_edge ]
  %conv.i108 = trunc i32 %dma_len.0.i107 to i16
  %len3.i109 = getelementptr %struct.efx_tx_buffer, ptr %56, i32 %and.i.i.i.i102, i32 3
  %63 = ptrtoint ptr %len3.i109 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv.i108, ptr %len3.i109, align 2
  %64 = getelementptr %struct.efx_tx_buffer, ptr %56, i32 %and.i.i.i.i102, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %dma_addr.addr.0.i100, ptr %64, align 8
  %flags.i110 = getelementptr %struct.efx_tx_buffer, ptr %56, i32 %and.i.i.i.i102, i32 2
  %66 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags.i110, align 8
  %sub.i111 = sub i32 %len.addr.0.i101, %dma_len.0.i107
  %add.i112 = add i32 %dma_len.0.i107, %dma_addr.addr.0.i100
  %67 = ptrtoint ptr %insert_count.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %insert_count.i.i.i.i97, align 128
  %inc.i113 = add i32 %68, 1
  store i32 %inc.i113, ptr %insert_count.i.i.i.i97, align 128
  %tobool4.not.i114 = icmp eq i32 %sub.i111, 0
  br i1 %tobool4.not.i114, label %efx_tx_map_chunk.exit117, label %if.end.i115.do.body.i104_crit_edge

if.end.i115.do.body.i104_crit_edge:               ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i104

efx_tx_map_chunk.exit117:                         ; preds = %if.end.i115
  %or = or i16 %dma_flags.0, 1
  %69 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %or, ptr %flags.i110, align 8
  %conv19 = trunc i32 %unmap_len.0 to i16
  %unmap_len20 = getelementptr %struct.efx_tx_buffer, ptr %56, i32 %and.i.i.i.i102, i32 4
  %70 = ptrtoint ptr %unmap_len20 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv19, ptr %unmap_len20, align 4
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %64, align 8
  %sub21 = sub i32 %72, %unmap_addr.0
  %conv22 = trunc i32 %sub21 to i16
  %dma_offset = getelementptr %struct.efx_tx_buffer, ptr %56, i32 %and.i.i.i.i102, i32 5
  %73 = ptrtoint ptr %dma_offset to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv22, ptr %dma_offset, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %frag_index.0, i32 %conv)
  %exitcond.not = icmp eq i32 %frag_index.0, %conv
  br i1 %exitcond.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %efx_tx_map_chunk.exit117
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i116 = getelementptr %struct.efx_tx_buffer, ptr %56, i32 %and.i.i.i.i102
  %74 = ptrtoint ptr %arrayidx.i.i.i116 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %skb, ptr %arrayidx.i.i.i116, align 8
  %75 = or i16 %dma_flags.0, 2
  %76 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %flags.i110, align 8
  br label %cleanup46

cleanup:                                          ; preds = %efx_tx_map_chunk.exit117
  %77 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i, align 4
  %inc32 = add nuw nsw i32 %frag_index.0, 1
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %frag_index.0
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %frag_index.0, i32 1
  %79 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bv_len.i, align 4
  %81 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %frag_index.0, i32 2
  %83 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i119 = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %82, i32 noundef %84, i32 noundef %80, i32 noundef 1, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call2.i119) #8
  %cmp.i120.not = icmp eq i32 %call2.i119, -1
  br i1 %cmp.i120.not, label %cleanup.cleanup46_crit_edge, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup.cleanup46_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup46

cleanup46:                                        ; preds = %cleanup.cleanup46_crit_edge, %cleanup.thread, %dma_map_single_attrs.exit.cleanup46_crit_edge, %dma_map_single_attrs.exit.thread
  %retval.2 = phi i32 [ -5, %dma_map_single_attrs.exit.cleanup46_crit_edge ], [ -5, %dma_map_single_attrs.exit.thread ], [ 0, %cleanup.thread ], [ -5, %cleanup.cleanup46_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @efx_tx_max_skb_descs(ptr nocapture noundef readonly %efx) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.efx_nic_type, ptr %1, i32 0, i32 118
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp sgt i32 %3, 3
  %spec.select = select i1 %cmp, i32 317, i32 217
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @efx_tx_tso_fallback(ptr noundef %tx_queue, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef 0, i1 noundef zeroext true) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %next.026.sink = phi ptr [ %2, %for.body.for.body_crit_edge ], [ %call.i, %if.end.for.body_crit_edge ]
  %1 = ptrtoint ptr %next.026.sink to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %next.026.sink, align 8
  store ptr null, ptr %next.026.sink, align 8
  %3 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tx_queue, align 128
  %type.i = getelementptr inbounds %struct.efx_nic, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %type.i, align 4
  %tx_enqueue.i = getelementptr inbounds %struct.efx_nic_type, ptr %6, i32 0, i32 52
  %7 = ptrtoint ptr %tx_enqueue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_enqueue.i, align 8
  %call.i23 = tail call i32 %8(ptr noundef %tx_queue, ptr noundef nonnull %next.026.sink) #8
  %tobool6.not = icmp eq ptr %2, null
  br i1 %tobool6.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @efx_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !23}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/tx_common.c", i32 33, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @efx_probe_tx_queue.__UNIQUE_ID_ddebug526, !1, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/tx_common.c", i32 71, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @efx_init_tx_queue.__UNIQUE_ID_ddebug527, !7, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/tx_common.c", i32 101, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @efx_fini_tx_queue.__UNIQUE_ID_ddebug528, !11, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/tx_common.c", i32 127, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @efx_remove_tx_queue.__UNIQUE_ID_ddebug529, !15, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/sfc/tx_common.c", i32 212, i32 4}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{i32 1, !"wchar_size", i32 2}
!25 = !{i32 1, !"min_enum_size", i32 4}
!26 = !{i32 8, !"branch-target-enforcement", i32 0}
!27 = !{i32 8, !"sign-return-address", i32 0}
!28 = !{i32 8, !"sign-return-address-all", i32 0}
!29 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!33 = !{i32 0, i32 33}
!34 = !{i64 2149115107, i64 2149115112, i64 2149115125, i64 2149115169, i64 2149115203, i64 2149115224}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{i8 0, i8 2}
!37 = !{i64 2158442142}
!38 = !{i64 2158442321}
!39 = !{!"branch_weights", i32 2000, i32 1}
