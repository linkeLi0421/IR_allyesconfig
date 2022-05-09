; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/sfc/falcon/tx.c_pt.bc'
source_filename = "../drivers/net/ethernet/sfc/falcon/tx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.155, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.155 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.20 }
%struct.llist_node = type { ptr }
%union.anon.20 = type { i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.ef4_tx_queue = type { ptr, i32, ptr, ptr, ptr, ptr, %struct.ef4_special_buffer, i32, i8, i32, ptr, [68 x i8], i32, i32, i32, i32, i32, [108 x i8], i32, i32, i32, i32, i8, i32, i32, [100 x i8], i32, %struct.atomic_t, [120 x i8] }
%struct.ef4_special_buffer = type { %struct.ef4_buffer, i32, i32 }
%struct.ef4_buffer = type { ptr, i32, i32 }
%struct.ef4_tx_buffer = type { ptr, %union.anon.147, i16, i16, i16, i16 }
%union.anon.147 = type { %union.ef4_qword }
%union.ef4_qword = type { [1 x i64] }
%struct.ef4_nic = type { [16 x i8], %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, i8, ptr, [16 x i8], %struct.work_struct, i32, ptr, i32, i32, i32, i8, i32, i32, i32, i32, i32, [32 x ptr], [32 x %struct.ef4_msi_context], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [40 x i8], [128 x i32], i8, i32, i32, i8, %struct.ef4_buffer, i32, i32, %struct.delayed_work, %struct.list_head, ptr, %struct.mutex, %struct.work_struct, i8, i8, i8, ptr, i64, %struct.ef4_buffer, i64, i64, i8, i32, ptr, ptr, %struct.mdio_if_info, i32, i32, %struct.ef4_link_state, i32, i8, %union.ef4_multicast_hash, i8, i32, %struct.atomic_t, i32, i64, ptr, %struct.rw_semaphore, %struct.spinlock, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, ptr, [32 x i8], %struct.delayed_work, %struct.spinlock, i32, %struct.spinlock, %struct.atomic_t, [60 x i8] }
%struct.ef4_msi_context = type { ptr, i32, [22 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mdio_if_info = type { i32, i32, i32, ptr, ptr, ptr }
%struct.ef4_link_state = type { i8, i8, i8, i32 }
%union.ef4_multicast_hash = type { [2 x %union.ef4_oword] }
%union.ef4_oword = type { [2 x i64] }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ef4_nic_type = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i32, i32, i64, i32 }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.127, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ef4_channel = type { ptr, i32, ptr, i8, i8, i32, i32, ptr, %struct.napi_struct, i32, %struct.ef4_special_buffer, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ef4_rx_queue, [120 x i8], [4 x %struct.ef4_tx_queue] }
%struct.ef4_rx_queue = type { ptr, i32, ptr, %struct.ef4_special_buffer, i32, i8, i8, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.129, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.129 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.146 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tc_mqprio_qopt = type { i8, [16 x i8], i8, [16 x i16], [16 x i16] }

@ef4_probe_tx_queue.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfc_falcon\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ef4_probe_tx_queue\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/sfc/falcon/tx.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"creating TX queue %d size %#x mask %#x\0A\00", [56 x i8] zeroinitializer }, align 32
@ef4_init_tx_queue.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_init_tx_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"initialising TX queue %d\0A\00", [38 x i8] zeroinitializer }, align 32
@ef4_fini_tx_queue.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ef4_fini_tx_queue\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"shutting down TX queue %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ef4_remove_tx_queue.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ef4_remove_tx_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"destroying TX queue %d\0A\00", [40 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"TX queue %d spurious TX completion id %x\0A\00", [54 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 549, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 586, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 610, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 635, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 326, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private constant [40 x i8] c"../drivers/net/ethernet/sfc/falcon/tx.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 370, i32 4 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ef4_tx_get_copy_buffer_limited(ptr nocapture noundef readonly %tx_queue, ptr nocapture noundef writeonly %buffer, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %len)
  %cmp = icmp ugt i32 %len, 126
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %insert_count.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 18
  %0 = ptrtoint ptr %insert_count.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %insert_count.i.i, align 128
  %ptr_mask.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  %2 = ptrtoint ptr %ptr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask.i.i, align 4
  %and.i.i = and i32 %3, %1
  %cb_page.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 5
  %4 = ptrtoint ptr %cb_page.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb_page.i, align 4
  %shr.i = lshr i32 %and.i.i, 5
  %arrayidx.i = getelementptr %struct.ef4_buffer, ptr %5, i32 %shr.i
  %shl.i = shl i32 %and.i.i, 7
  %add.i = and i32 %shl.i, 3968
  %and.i = or i32 %add.i, 2
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge, !prof !36

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %8 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_queue, align 128
  %call4.i = tail call i32 @ef4_nic_alloc_buffer(ptr noundef %9, ptr noundef %arrayidx.i, i32 noundef 4096, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %dma_addr.i = getelementptr %struct.ef4_buffer, ptr %5, i32 %shr.i, i32 1
  %10 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_addr.i, align 4
  %add6.i = add i32 %11, %and.i
  %12 = getelementptr inbounds %struct.ef4_tx_buffer, ptr %buffer, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add6.i, ptr %12, align 8
  %unmap_len.i = getelementptr inbounds %struct.ef4_tx_buffer, ptr %buffer, i32 0, i32 4
  %14 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %unmap_len.i, align 4
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %and.i
  br label %return

return:                                           ; preds = %if.end.i, %land.lhs.true.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ null, %entry.return_crit_edge ], [ %add.ptr.i, %if.end.i ], [ null, %land.lhs.true.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ef4_tx_max_skb_descs(ptr nocapture noundef readonly %efx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %efx, i32 0, i32 6
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp slt i32 %3, 2
  %spec.select = select i1 %cmp, i32 317, i32 217
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_enqueue_skb(ptr noundef %tx_queue, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %tx_min_size = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 9
  %2 = ptrtoint ptr %tx_min_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_min_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp ugt i32 %3, %1
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %4 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp ne i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %1)
  %cmp1 = icmp ult i32 %1, 127
  %or.cond = select i1 %tobool.not, i1 %cmp1, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then_crit_edge, label %land.lhs.true6

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %buffer.i.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 4
  %6 = ptrtoint ptr %buffer.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer.i.i.i, align 16
  %insert_count.i.i.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 18
  %8 = ptrtoint ptr %insert_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %insert_count.i.i.i.i, align 128
  %ptr_mask.i.i.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  %10 = ptrtoint ptr %ptr_mask.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ptr_mask.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %11, %9
  %arrayidx.i.i.i = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %and.i.i.i.i
  %cb_page.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 5
  %12 = ptrtoint ptr %cb_page.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cb_page.i.i, align 4
  %shr.i.i = lshr i32 %and.i.i.i.i, 5
  %arrayidx.i.i = getelementptr %struct.ef4_buffer, ptr %13, i32 %shr.i.i
  %shl.i.i = shl i32 %and.i.i.i.i, 7
  %add.i.i = and i32 %shl.i.i, 3968
  %and.i.i = or i32 %add.i.i, 2
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.ef4_tx_get_copy_buffer.exit.i_crit_edge, !prof !36

if.then.ef4_tx_get_copy_buffer.exit.i_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_tx_get_copy_buffer.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %16 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_queue, align 128
  %call4.i.i = tail call i32 @ef4_nic_alloc_buffer(ptr noundef %17, ptr noundef %arrayidx.i.i, i32 noundef 4096, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.ef4_tx_get_copy_buffer.exit.i_crit_edge, label %land.lhs.true.i.i.err_crit_edge

land.lhs.true.i.i.err_crit_edge:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

land.lhs.true.i.i.ef4_tx_get_copy_buffer.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_tx_get_copy_buffer.exit.i

ef4_tx_get_copy_buffer.exit.i:                    ; preds = %land.lhs.true.i.i.ef4_tx_get_copy_buffer.exit.i_crit_edge, %if.then.ef4_tx_get_copy_buffer.exit.i_crit_edge
  %dma_addr.i.i = getelementptr %struct.ef4_buffer, ptr %13, i32 %shr.i.i, i32 1
  %18 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr.i.i, align 4
  %add6.i.i = add i32 %19, %and.i.i
  %20 = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %and.i.i.i.i, i32 1
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add6.i.i, ptr %20, align 8
  %unmap_len.i.i = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %and.i.i.i.i, i32 4
  %22 = ptrtoint ptr %unmap_len.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %unmap_len.i.i, align 4
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %and.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %ef4_tx_get_copy_buffer.exit.i.err_crit_edge, label %if.end.i, !prof !36

ef4_tx_get_copy_buffer.exit.i.err_crit_edge:      ; preds = %ef4_tx_get_copy_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end.i:                                         ; preds = %ef4_tx_get_copy_buffer.exit.i
  %call5.i = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef nonnull %add.ptr.i.i, i32 noundef %1) #8
  br i1 %cmp, label %if.then15.i, label %if.end.i.ef4_enqueue_skb_copy.exit_crit_edge, !prof !36

if.end.i.ef4_enqueue_skb_copy.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_enqueue_skb_copy.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %1
  %sub.i = sub i32 %3, %1
  %25 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  br label %ef4_enqueue_skb_copy.exit

ef4_enqueue_skb_copy.exit:                        ; preds = %if.then15.i, %if.end.i.ef4_enqueue_skb_copy.exit_crit_edge
  %conv17.sink.in.i = phi i32 [ %3, %if.then15.i ], [ %1, %if.end.i.ef4_enqueue_skb_copy.exit_crit_edge ]
  %conv17.sink.i = trunc i32 %conv17.sink.in.i to i16
  %26 = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %and.i.i.i.i, i32 3
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv17.sink.i, ptr %26, align 2
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %skb, ptr %arrayidx.i.i.i, align 8
  %flags.i = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %and.i.i.i.i, i32 2
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %flags.i, align 8
  %30 = ptrtoint ptr %insert_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %insert_count.i.i.i.i, align 128
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %insert_count.i.i.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool2.not = icmp eq i32 %call5.i, 0
  br i1 %tobool2.not, label %if.end, label %ef4_enqueue_skb_copy.exit.err_crit_edge

ef4_enqueue_skb_copy.exit.err_crit_edge:          ; preds = %ef4_enqueue_skb_copy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %ef4_enqueue_skb_copy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cb_packets = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 23
  %32 = ptrtoint ptr %cb_packets to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cb_packets, align 4
  %inc = add i32 %33, 1
  store i32 %inc, ptr %cb_packets, align 4
  br label %if.end10

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %34 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_queue, align 128
  %pci_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %38 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i.i, align 4
  %nr_frags2.i = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %nr_frags2.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %nr_frags2.i, align 2
  %conv.i = zext i8 %41 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %42 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %43) #8
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true6
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !37

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #8
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44, i32 3
  %44 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %47, %if.end.i.i.i ], [ %45, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #8
  br label %err

dma_map_single_attrs.exit.i:                      ; preds = %land.lhs.true6
  %sub.i.i = sub i32 %1, %5
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %43, i32 noundef %sub.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %48 = load ptr, ptr @mem_map, align 4
  %49 = ptrtoint ptr %43 to i32
  %sub.i71.i = add i32 %49, 1073741824
  %shr.i.i43 = lshr i32 %sub.i71.i, 12
  %add.ptr.i.i44 = getelementptr %struct.page, ptr %48, i32 %shr.i.i43
  %and.i.i45 = and i32 %49, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i44, i32 noundef %and.i.i45, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.err_crit_edge, label %do.body.preheader.i

dma_map_single_attrs.exit.i.err_crit_edge:        ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.body.preheader.i:                              ; preds = %dma_map_single_attrs.exit.i
  %buffer.i.i.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 4
  %insert_count.i.i.i.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 18
  %ptr_mask.i.i.i.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  br label %do.body.i

do.body.i:                                        ; preds = %cleanup.i.do.body.i_crit_edge, %do.body.preheader.i
  %frag_index.0.i = phi i32 [ %inc.i49, %cleanup.i.do.body.i_crit_edge ], [ 0, %do.body.preheader.i ]
  %dma_addr.0.i = phi i32 [ %call2.i.i, %cleanup.i.do.body.i_crit_edge ], [ %call41.i.i, %do.body.preheader.i ]
  %dma_flags.0.i = phi i16 [ 0, %cleanup.i.do.body.i_crit_edge ], [ 8, %do.body.preheader.i ]
  %len.0.i = phi i32 [ %76, %cleanup.i.do.body.i_crit_edge ], [ %sub.i.i, %do.body.preheader.i ]
  %50 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tx_queue, align 128
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %type.i.i, align 4
  %tx_limit_len.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %53, i32 0, i32 44
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i
  %dma_addr.addr.0.i.i = phi i32 [ %dma_addr.0.i, %do.body.i ], [ %add.i.i46, %do.body.i.i.do.body.i.i_crit_edge ]
  %len.addr.0.i.i = phi i32 [ %len.0.i, %do.body.i ], [ %sub.i72.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %buffer.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %buffer.i.i.i.i, align 16
  %56 = ptrtoint ptr %insert_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %insert_count.i.i.i.i.i, align 128
  %58 = ptrtoint ptr %ptr_mask.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ptr_mask.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %59, %57
  %60 = ptrtoint ptr %tx_limit_len.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_limit_len.i.i, align 8
  %call1.i.i = tail call i32 %61(ptr noundef %tx_queue, i32 noundef %dma_addr.addr.0.i.i, i32 noundef %len.addr.0.i.i) #8
  %conv.i.i = trunc i32 %call1.i.i to i16
  %len2.i.i = getelementptr %struct.ef4_tx_buffer, ptr %55, i32 %and.i.i.i.i.i, i32 3
  %62 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i.i, ptr %len2.i.i, align 2
  %63 = getelementptr %struct.ef4_tx_buffer, ptr %55, i32 %and.i.i.i.i.i, i32 1
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %dma_addr.addr.0.i.i, ptr %63, align 8
  %flags.i.i = getelementptr %struct.ef4_tx_buffer, ptr %55, i32 %and.i.i.i.i.i, i32 2
  %65 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %flags.i.i, align 8
  %sub.i72.i = sub i32 %len.addr.0.i.i, %call1.i.i
  %add.i.i46 = add i32 %call1.i.i, %dma_addr.addr.0.i.i
  %66 = ptrtoint ptr %insert_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %insert_count.i.i.i.i.i, align 128
  %inc.i.i = add i32 %67, 1
  store i32 %inc.i.i, ptr %insert_count.i.i.i.i.i, align 128
  %tobool.not.i.i47 = icmp eq i32 %sub.i72.i, 0
  br i1 %tobool.not.i.i47, label %ef4_tx_map_chunk.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

ef4_tx_map_chunk.exit.i:                          ; preds = %do.body.i.i
  %or.i = or i16 %dma_flags.0.i, 1
  %68 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %or.i, ptr %flags.i.i, align 8
  %conv11.i = trunc i32 %len.0.i to i16
  %unmap_len12.i = getelementptr %struct.ef4_tx_buffer, ptr %55, i32 %and.i.i.i.i.i, i32 4
  %69 = ptrtoint ptr %unmap_len12.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv11.i, ptr %unmap_len12.i, align 4
  %70 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %63, align 8
  %sub.i48 = sub i32 %71, %dma_addr.0.i
  %conv13.i = trunc i32 %sub.i48 to i16
  %dma_offset.i = getelementptr %struct.ef4_tx_buffer, ptr %55, i32 %and.i.i.i.i.i, i32 5
  %72 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv13.i, ptr %dma_offset.i, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %frag_index.0.i, i32 %conv.i)
  %exitcond.not.i = icmp eq i32 %frag_index.0.i, %conv.i
  br i1 %exitcond.not.i, label %ef4_tx_map_data.exit, label %cleanup.i

cleanup.i:                                        ; preds = %ef4_tx_map_chunk.exit.i
  %73 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %end.i.i, align 4
  %inc.i49 = add nuw nsw i32 %frag_index.0.i, 1
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 %frag_index.0.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 %frag_index.0.i, i32 1
  %75 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bv_len.i.i, align 4
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %74, i32 0, i32 12, i32 %frag_index.0.i, i32 2
  %79 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %78, i32 noundef %80, i32 noundef %76, i32 noundef 1, i32 noundef 0) #8
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call2.i.i) #8
  %cmp.i74.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i74.not.i, label %cleanup.i.err_crit_edge, label %cleanup.i.do.body.i_crit_edge

cleanup.i.do.body.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

cleanup.i.err_crit_edge:                          ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

ef4_tx_map_data.exit:                             ; preds = %ef4_tx_map_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i.i.i = getelementptr %struct.ef4_tx_buffer, ptr %55, i32 %and.i.i.i.i.i
  %81 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %skb, ptr %arrayidx.i.i.i.i, align 8
  %82 = or i16 %dma_flags.0.i, 2
  %83 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %82, ptr %flags.i.i, align 8
  br label %if.end10

if.end10:                                         ; preds = %ef4_tx_map_data.exit, %if.end
  %core_txq = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 3
  %84 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %core_txq, align 4
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %1)
  %cmp.i.i50 = icmp ugt i32 %1, 268435455
  br i1 %cmp.i.i50, label %do.body2.i.i, label %dql_queued.exit.i, !prof !36

do.body2.i.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/dynamic_queue_limits.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #8, !srcloc !38
  unreachable

dql_queued.exit.i:                                ; preds = %if.end10
  %last_obj_cnt.i.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 15, i32 2
  %86 = ptrtoint ptr %last_obj_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %1, ptr %last_obj_cnt.i.i, align 8
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !39
  %87 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dql.i, align 128
  %add.i.i51 = add i32 %88, %1
  store i32 %add.i.i51, ptr %dql.i, align 128
  %adj_limit.i.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 15, i32 1
  %89 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %adj_limit.i.i, align 4
  %91 = load volatile i32, ptr %dql.i, align 128
  %sub.i.i52 = sub i32 %90, %91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i52)
  %cmp.i53 = icmp sgt i32 %sub.i.i52, -1
  br i1 %cmp.i53, label %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge, label %if.end.i54, !prof !37

dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge: ; preds = %dql_queued.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_tx_sent_queue.exit

if.end.i54:                                       ; preds = %dql_queued.exit.i
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %85, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  %92 = ptrtoint ptr %adj_limit.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %adj_limit.i.i, align 4
  %94 = ptrtoint ptr %dql.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %dql.i, align 128
  %sub.i22.i = sub i32 %93, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i22.i)
  %cmp7.i = icmp sgt i32 %sub.i22.i, -1
  br i1 %cmp7.i, label %if.then14.i, label %if.end.i54.netdev_tx_sent_queue.exit_crit_edge, !prof !36

if.end.i54.netdev_tx_sent_queue.exit_crit_edge:   ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %netdev_tx_sent_queue.exit

if.then14.i:                                      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #8
  br label %netdev_tx_sent_queue.exit

netdev_tx_sent_queue.exit:                        ; preds = %if.then14.i, %if.end.i54.netdev_tx_sent_queue.exit_crit_edge, %dql_queued.exit.i.netdev_tx_sent_queue.exit_crit_edge
  %96 = tail call i32 @llvm.read_register.i32(metadata !26) #8
  %and.i.i55 = and i32 %96, -16384
  %97 = inttoptr i32 %and.i.i55 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cpu.i, align 4
  %arrayidx.i56 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx.i56 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx.i56, align 4
  %add.i = add i32 %101, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %102 = inttoptr i32 %add.i to ptr
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.i.not = icmp eq i8 %104, 0
  br i1 %tobool.i.not, label %netdev_tx_sent_queue.exit.if.then15_crit_edge, label %lor.lhs.false12

netdev_tx_sent_queue.exit.if.then15_crit_edge:    ; preds = %netdev_tx_sent_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

lor.lhs.false12:                                  ; preds = %netdev_tx_sent_queue.exit
  %105 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %core_txq, align 4
  %state.i57 = getelementptr inbounds %struct.netdev_queue, ptr %106, i32 0, i32 13
  %107 = ptrtoint ptr %state.i57 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %state.i57, align 4
  %and.i = and i32 %108, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i58.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i58.not, label %if.else, label %lor.lhs.false12.if.then15_crit_edge

lor.lhs.false12.if.then15_crit_edge:              ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %lor.lhs.false12.if.then15_crit_edge, %netdev_tx_sent_queue.exit.if.then15_crit_edge
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %109 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %queue.i, align 4
  %and.i59 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  %retval.0.v.i = select i1 %tobool.not.i60, i32 1, i32 -1
  %xmit_more_available = getelementptr %struct.ef4_tx_queue, ptr %tx_queue, i32 %retval.0.v.i, i32 22
  %111 = ptrtoint ptr %xmit_more_available to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %xmit_more_available, align 16, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool17.not = icmp eq i8 %112, 0
  br i1 %tobool17.not, label %if.then15.if.end19_crit_edge, label %if.then18

if.then15.if.end19_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %retval.0.i61 = getelementptr %struct.ef4_tx_queue, ptr %tx_queue, i32 %retval.0.v.i
  %113 = ptrtoint ptr %retval.0.i61 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %retval.0.i61, align 128
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %114, i32 0, i32 6
  %115 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %type.i, align 4
  %tx_write.i = getelementptr inbounds %struct.ef4_nic_type, ptr %116, i32 0, i32 43
  %117 = ptrtoint ptr %tx_write.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %tx_write.i, align 4
  tail call void %118(ptr noundef %retval.0.i61) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.then15.if.end19_crit_edge
  %119 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %tx_queue, align 128
  %type.i62 = getelementptr inbounds %struct.ef4_nic, ptr %120, i32 0, i32 6
  %121 = ptrtoint ptr %type.i62 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %type.i62, align 4
  %tx_write.i63 = getelementptr inbounds %struct.ef4_nic_type, ptr %122, i32 0, i32 43
  %123 = ptrtoint ptr %tx_write.i63 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tx_write.i63, align 4
  tail call void %124(ptr noundef %tx_queue) #8
  br label %if.end22

if.else:                                          ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #10
  %xmit_more_available21 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 22
  %125 = ptrtoint ptr %xmit_more_available21 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 1, ptr %xmit_more_available21, align 16
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end19
  %tx_packets = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 24
  %126 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %tx_packets, align 8
  %inc23 = add i32 %127, 1
  store i32 %inc23, ptr %tx_packets, align 8
  %queue.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %128 = ptrtoint ptr %queue.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %queue.i.i, align 4
  %and.i.i69 = and i32 %129, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i69)
  %tobool.not.i.i70 = icmp eq i32 %and.i.i69, 0
  %retval.0.v.i.i = select i1 %tobool.not.i.i70, i32 1, i32 -1
  %130 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tx_queue, align 128
  %insert_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 18
  %132 = ptrtoint ptr %insert_count.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %insert_count.i, align 128
  %old_read_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 20
  %134 = ptrtoint ptr %old_read_count.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %old_read_count.i, align 8
  %sub.i71 = sub i32 %133, %135
  %insert_count2.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue, i32 %retval.0.v.i.i, i32 18
  %136 = ptrtoint ptr %insert_count2.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %insert_count2.i, align 128
  %old_read_count3.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue, i32 %retval.0.v.i.i, i32 20
  %138 = ptrtoint ptr %old_read_count3.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %old_read_count3.i, align 8
  %sub4.i = sub i32 %137, %139
  %140 = tail call i32 @llvm.umax.i32(i32 %sub.i71, i32 %sub4.i) #8
  %txq_stop_thresh.i = getelementptr inbounds %struct.ef4_nic, ptr %131, i32 0, i32 28
  %141 = ptrtoint ptr %txq_stop_thresh.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %txq_stop_thresh.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %142)
  %cmp5.i = icmp ult i32 %140, %142
  br i1 %cmp5.i, label %if.end22.cleanup_crit_edge, label %if.end.i72, !prof !37

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i72:                                       ; preds = %if.end22
  %143 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %core_txq, align 4
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %144, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !42
  %read_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 12
  %145 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load volatile i32, ptr %read_count.i, align 128
  %147 = ptrtoint ptr %old_read_count.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %old_read_count.i, align 8
  %read_count19.i = getelementptr %struct.ef4_tx_queue, ptr %tx_queue, i32 %retval.0.v.i.i, i32 12
  %148 = ptrtoint ptr %read_count19.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %read_count19.i, align 128
  %150 = ptrtoint ptr %old_read_count3.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %149, ptr %old_read_count3.i, align 8
  %151 = ptrtoint ptr %insert_count.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %insert_count.i, align 128
  %153 = load i32, ptr %old_read_count.i, align 8
  %sub23.i = sub i32 %152, %153
  %154 = ptrtoint ptr %insert_count2.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %insert_count2.i, align 128
  %sub26.i = sub i32 %155, %149
  %156 = tail call i32 @llvm.umax.i32(i32 %sub23.i, i32 %sub26.i) #8
  %157 = ptrtoint ptr %txq_stop_thresh.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %txq_stop_thresh.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %156, i32 %158)
  %cmp37.i = icmp ult i32 %156, %158
  br i1 %cmp37.i, label %do.end48.i, label %if.end.i72.cleanup_crit_edge, !prof !37

if.end.i72.cleanup_crit_edge:                     ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end48.i:                                       ; preds = %if.end.i72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !43
  %loopback_selftest.i = getelementptr inbounds %struct.ef4_nic, ptr %131, i32 0, i32 90
  %159 = ptrtoint ptr %loopback_selftest.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %loopback_selftest.i, align 128
  %tobool51.not.i = icmp eq ptr %160, null
  br i1 %tobool51.not.i, label %if.then60.i, label %do.end48.i.cleanup_crit_edge, !prof !37

do.end48.i.cleanup_crit_edge:                     ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then60.i:                                      ; preds = %do.end48.i
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %core_txq, align 4
  %state.i87.i = getelementptr inbounds %struct.netdev_queue, ptr %162, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i87.i) #8
  br label %cleanup

err:                                              ; preds = %cleanup.i.err_crit_edge, %dma_map_single_attrs.exit.i.err_crit_edge, %dma_map_single_attrs.exit.thread.i, %ef4_enqueue_skb_copy.exit.err_crit_edge, %ef4_tx_get_copy_buffer.exit.i.err_crit_edge, %land.lhs.true.i.i.err_crit_edge
  %insert_count.i74 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 18
  %write_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 19
  %163 = ptrtoint ptr %insert_count.i74 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %insert_count.i74, align 128
  %165 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %write_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %166)
  %cmp.not6.i = icmp eq i32 %164, %166
  br i1 %cmp.not6.i, label %err.ef4_enqueue_unwind.exit_crit_edge, label %while.body.lr.ph.i

err.ef4_enqueue_unwind.exit_crit_edge:            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_enqueue_unwind.exit

while.body.lr.ph.i:                               ; preds = %err
  %buffer.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 4
  %ptr_mask.i.i.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %ef4_dequeue_buffer.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %167 = phi i32 [ %164, %while.body.lr.ph.i ], [ %197, %ef4_dequeue_buffer.exit.i.while.body.i_crit_edge ]
  %dec.i = add i32 %167, -1
  %168 = ptrtoint ptr %insert_count.i74 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %dec.i, ptr %insert_count.i74, align 128
  %169 = ptrtoint ptr %buffer.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %buffer.i.i, align 16
  %171 = ptrtoint ptr %ptr_mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %ptr_mask.i.i.i, align 4
  %and.i.i.i = and i32 %172, %dec.i
  %arrayidx.i.i75 = getelementptr %struct.ef4_tx_buffer, ptr %170, i32 %and.i.i.i
  %unmap_len.i.i76 = getelementptr %struct.ef4_tx_buffer, ptr %170, i32 %and.i.i.i, i32 4
  %173 = ptrtoint ptr %unmap_len.i.i76 to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %unmap_len.i.i76, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %174)
  %tobool.not.i.i77 = icmp eq i16 %174, 0
  br i1 %tobool.not.i.i77, label %while.body.i.if.end9.i.i_crit_edge, label %if.then.i.i80

while.body.i.if.end9.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then.i.i80:                                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %175 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tx_queue, align 128
  %pci_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %176, i32 0, i32 4
  %177 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %178, i32 0, i32 44
  %179 = getelementptr %struct.ef4_tx_buffer, ptr %170, i32 %and.i.i.i, i32 1
  %180 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %179, align 8
  %dma_offset.i.i = getelementptr %struct.ef4_tx_buffer, ptr %170, i32 %and.i.i.i, i32 5
  %182 = ptrtoint ptr %dma_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %dma_offset.i.i, align 2
  %conv.i.i78 = zext i16 %183 to i32
  %sub.i.i79 = sub i32 %181, %conv.i.i78
  %conv7.i.i = zext i16 %174 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %sub.i.i79, i32 noundef %conv7.i.i, i32 noundef 1, i32 noundef 0) #8
  %184 = ptrtoint ptr %unmap_len.i.i76 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %unmap_len.i.i76, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then.i.i80, %while.body.i.if.end9.i.i_crit_edge
  %flags10.i.i = getelementptr %struct.ef4_tx_buffer, ptr %170, i32 %and.i.i.i, i32 2
  %185 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %flags10.i.i, align 8
  %187 = and i16 %186, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %187)
  %tobool13.not.i.i = icmp eq i16 %187, 0
  br i1 %tobool13.not.i.i, label %if.end9.i.i.ef4_dequeue_buffer.exit.i_crit_edge, label %if.then14.i.i

if.end9.i.i.ef4_dequeue_buffer.exit.i_crit_edge:  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_dequeue_buffer.exit.i

if.then14.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 0)
  %188 = load i32, ptr null, align 2147483648
  %inc.i.i81 = add i32 %188, 1
  store i32 %inc.i.i81, ptr null, align 2147483648
  %189 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx.i.i75, align 8
  %len.i.i82 = getelementptr inbounds %struct.sk_buff, ptr %190, i32 0, i32 6
  %191 = ptrtoint ptr %len.i.i82 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len.i.i82, align 4
  %add.i.i83 = add i32 %192, %inc.i.i81
  store i32 %add.i.i83, ptr null, align 2147483648
  %193 = load ptr, ptr %arrayidx.i.i75, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %193, i32 noundef 0) #8
  br label %ef4_dequeue_buffer.exit.i

ef4_dequeue_buffer.exit.i:                        ; preds = %if.then14.i.i, %if.end9.i.i.ef4_dequeue_buffer.exit.i_crit_edge
  %len17.i.i = getelementptr %struct.ef4_tx_buffer, ptr %170, i32 %and.i.i.i, i32 3
  %194 = ptrtoint ptr %len17.i.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 0, ptr %len17.i.i, align 2
  %195 = ptrtoint ptr %flags10.i.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 0, ptr %flags10.i.i, align 8
  %196 = ptrtoint ptr %insert_count.i74 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %insert_count.i74, align 128
  %198 = ptrtoint ptr %write_count.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %write_count.i, align 4
  %cmp.not.i = icmp eq i32 %197, %199
  br i1 %cmp.not.i, label %ef4_dequeue_buffer.exit.i.ef4_enqueue_unwind.exit_crit_edge, label %ef4_dequeue_buffer.exit.i.while.body.i_crit_edge

ef4_dequeue_buffer.exit.i.while.body.i_crit_edge: ; preds = %ef4_dequeue_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

ef4_dequeue_buffer.exit.i.ef4_enqueue_unwind.exit_crit_edge: ; preds = %ef4_dequeue_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_enqueue_unwind.exit

ef4_enqueue_unwind.exit:                          ; preds = %ef4_dequeue_buffer.exit.i.ef4_enqueue_unwind.exit_crit_edge, %err.ef4_enqueue_unwind.exit_crit_edge
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #8
  br label %cleanup

cleanup:                                          ; preds = %ef4_enqueue_unwind.exit, %if.then60.i, %do.end48.i.cleanup_crit_edge, %if.end.i72.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_hard_start_xmit(ptr noundef %skb, ptr nocapture noundef readonly %net_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %0 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %queue_mapping.i, align 8
  %conv = zext i16 %1 to i32
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %2 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %ip_summed, align 8
  %3 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp = icmp eq i16 %3, 1536
  %cond = zext i1 %cmp to i32
  %n_tx_channels = getelementptr i8, ptr %net_dev, i32 3684
  %4 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_tx_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp4.not = icmp ugt i32 %5, %conv
  %or = or i32 %cond, 2
  %sub = select i1 %cmp4.not, i32 0, i32 %5
  %type.0 = select i1 %cmp4.not, i32 %cond, i32 %or
  %tx_channel_offset.i = getelementptr i8, ptr %net_dev, i32 3680
  %6 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_channel_offset.i, align 32
  %index.0 = add i32 %7, %conv
  %add.i = sub i32 %index.0, %sub
  %arrayidx.i = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ef4_channel, ptr %9, i32 0, i32 32, i32 %type.0
  %call8 = tail call i32 @ef4_enqueue_skb(ptr noundef %arrayidx1.i, ptr noundef %skb)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ef4_init_tx_queue_core_txq(ptr nocapture noundef %tx_queue) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %2 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %n_tx_channels = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 40
  %6 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_tx_channels, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %7, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %div7 = lshr i32 %5, 2
  %add = add i32 %cond, %div7
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %8 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %9, i32 %add
  %core_txq = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 3
  %10 = ptrtoint ptr %core_txq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx.i, ptr %core_txq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_setup_tc(ptr noundef %net_dev, i32 noundef %type, ptr nocapture noundef %type_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %net_dev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %type_data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type_data, align 2
  %conv = zext i8 %1 to i32
  %type.i = getelementptr i8, ptr %net_dev, i32 2348
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %3, i32 0, i32 79
  %4 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp slt i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp5 = icmp ugt i8 %1, 2
  %or.cond = select i1 %cmp3, i1 true, i1 %cmp5
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.tc_mqprio_qopt, ptr %type_data, i32 0, i32 2
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %hw, align 1
  %num_tc9 = getelementptr inbounds %struct.net_device, ptr %net_dev, i32 0, i32 140
  %7 = ptrtoint ptr %num_tc9 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_tc9, align 4
  %conv10 = sext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv10)
  %cmp11 = icmp eq i32 %conv, %conv10
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %for.cond.preheader

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp15137.not = icmp eq i8 %1, 0
  br i1 %cmp15137.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %n_tx_channels = getelementptr i8, ptr %net_dev, i32 3684
  %arrayidx = getelementptr %struct.net_device, ptr %net_dev, i32 0, i32 141, i32 0
  %offset = getelementptr %struct.net_device, ptr %net_dev, i32 0, i32 141, i32 0, i32 1
  %9 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %offset, align 2
  %10 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_tx_channels, align 4
  %conv19 = trunc i32 %11 to i16
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv19, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %exitcond.not = icmp eq i8 %1, 1
  br i1 %exitcond.not, label %for.body.lr.ph.for.end_crit_edge, label %for.body.1

for.body.lr.ph.for.end_crit_edge:                 ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %n_tx_channels to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_tx_channels, align 4
  %conv17.1 = trunc i32 %14 to i16
  %arrayidx.1 = getelementptr %struct.net_device, ptr %net_dev, i32 0, i32 141, i32 1
  %offset.1 = getelementptr %struct.net_device, ptr %net_dev, i32 0, i32 141, i32 1, i32 1
  %15 = ptrtoint ptr %offset.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv17.1, ptr %offset.1, align 2
  %conv19.1 = trunc i32 %14 to i16
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv19.1, ptr %arrayidx.1, align 2
  br label %for.end

for.end:                                          ; preds = %for.body.1, %for.body.lr.ph.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %17 = ptrtoint ptr %num_tc9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %num_tc9, align 4
  %conv23 = sext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv23)
  %cmp24 = icmp ugt i32 %conv, %conv23
  br i1 %cmp24, label %if.then26, label %if.else65

if.then26:                                        ; preds = %for.end
  %channel27 = getelementptr i8, ptr %net_dev, i32 2468
  %19 = ptrtoint ptr %channel27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel27, align 4
  %tobool.not142 = icmp eq ptr %20, null
  br i1 %tobool.not142, label %if.then26.if.end68_crit_edge, label %for.body30.lr.ph

if.then26.if.end68_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

for.body30.lr.ph:                                 ; preds = %if.then26
  %n_channels = getelementptr i8, ptr %net_dev, i32 3668
  br label %for.body30

for.body30:                                       ; preds = %cond.end.for.body30_crit_edge, %for.body30.lr.ph
  %channel.0143 = phi ptr [ %20, %for.body30.lr.ph ], [ %78, %cond.end.for.body30_crit_edge ]
  %channel1.i = getelementptr inbounds %struct.ef4_channel, ptr %channel.0143, i32 0, i32 1
  %21 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %channel1.i, align 4
  %23 = ptrtoint ptr %channel.0143 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channel.0143, align 128
  %tx_channel_offset.i = getelementptr inbounds %struct.ef4_nic, ptr %24, i32 0, i32 39
  %25 = ptrtoint ptr %tx_channel_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_channel_offset.i, align 32
  %sub.i = sub i32 %22, %26
  %n_tx_channels.i = getelementptr inbounds %struct.ef4_nic, ptr %24, i32 0, i32 40
  %27 = ptrtoint ptr %n_tx_channels.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %n_tx_channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %28)
  %cmp.i = icmp ult i32 %sub.i, %28
  br i1 %cmp.i, label %if.else, label %for.body30.for.inc56_crit_edge

for.body30.for.inc56_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

if.else:                                          ; preds = %for.body30
  %tx_queue33 = getelementptr inbounds %struct.ef4_channel, ptr %channel.0143, i32 0, i32 32
  %add.ptr = getelementptr %struct.ef4_channel, ptr %channel.0143, i32 1
  %cmp37139 = icmp ult ptr %tx_queue33, %add.ptr
  br i1 %cmp37139, label %if.else.for.body39_crit_edge, label %if.else.for.inc56_crit_edge

if.else.for.inc56_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

if.else.for.body39_crit_edge:                     ; preds = %if.else
  br label %for.body39

for.body39:                                       ; preds = %for.inc53.for.body39_crit_edge, %if.else.for.body39_crit_edge
  %tx_queue.0140 = phi ptr [ %incdec.ptr, %for.inc53.for.body39_crit_edge ], [ %tx_queue33, %if.else.for.body39_crit_edge ]
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 1
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %queue, align 4
  %and = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool40.not = icmp eq i32 %and, 0
  br i1 %tobool40.not, label %for.body39.for.inc53_crit_edge, label %if.end42

for.body39.for.inc53_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc53

if.end42:                                         ; preds = %for.body39
  %buffer = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 4
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 16
  %tobool43.not = icmp eq ptr %32, null
  br i1 %tobool43.not, label %if.then44, label %if.end42.if.end49_crit_edge

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then44:                                        ; preds = %if.end42
  %call45 = tail call i32 @ef4_probe_tx_queue(ptr noundef %tx_queue.0140)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then44.if.end49_crit_edge, label %if.then44.cleanup_crit_edge

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.end49:                                         ; preds = %if.then44.if.end49_crit_edge, %if.end42.if.end49_crit_edge
  %initialised = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 8
  %33 = ptrtoint ptr %initialised to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %initialised, align 16, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool50.not = icmp eq i8 %34, 0
  br i1 %tobool50.not, label %if.then51, label %if.end49.if.end52_crit_edge

if.end49.if.end52_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then51:                                        ; preds = %if.end49
  %35 = ptrtoint ptr %tx_queue.0140 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_queue.0140, align 128
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %36, i32 0, i32 20
  %37 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msg_enable.i, align 8
  %and.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then51.ef4_init_tx_queue.exit_crit_edge, label %do.body2.i

if.then51.ef4_init_tx_queue.exit_crit_edge:       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_init_tx_queue.exit

do.body2.i:                                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_tx_queue.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_setup_tc, %if.then6.i)) #8
          to label %ef4_init_tx_queue.exit [label %if.then6.i], !srcloc !44

if.then6.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %36, i32 0, i32 69
  %39 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %net_dev.i, align 4
  %41 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_tx_queue.__UNIQUE_ID_ddebug538, ptr noundef %40, ptr noundef nonnull @.str.5, i32 noundef %42) #8
  br label %ef4_init_tx_queue.exit

ef4_init_tx_queue.exit:                           ; preds = %if.then6.i, %do.body2.i, %if.then51.ef4_init_tx_queue.exit_crit_edge
  %insert_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 18
  %43 = ptrtoint ptr %insert_count.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %insert_count.i, align 128
  %write_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 19
  %44 = ptrtoint ptr %write_count.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %write_count.i, align 4
  %old_write_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 13
  %45 = ptrtoint ptr %old_write_count.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %old_write_count.i, align 4
  %read_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 12
  %46 = ptrtoint ptr %read_count.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %read_count.i, align 128
  %old_read_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 20
  %47 = ptrtoint ptr %old_read_count.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %old_read_count.i, align 8
  %empty_read_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 26
  %48 = ptrtoint ptr %empty_read_count.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -2147483648, ptr %empty_read_count.i, align 128
  %xmit_more_available.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 22
  %49 = ptrtoint ptr %xmit_more_available.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %xmit_more_available.i, align 16
  %type.i.i = getelementptr inbounds %struct.ef4_nic, ptr %36, i32 0, i32 6
  %50 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %type.i.i, align 4
  %revision.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %51, i32 0, i32 79
  %52 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %53)
  %cmp.i130 = icmp slt i32 %53, 3
  %cond.i = select i1 %cmp.i130, i32 33, i32 0
  %tx_min_size.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 9
  %54 = ptrtoint ptr %tx_min_size.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %cond.i, ptr %tx_min_size.i, align 4
  %55 = ptrtoint ptr %tx_queue.0140 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tx_queue.0140, align 128
  %type.i24.i = getelementptr inbounds %struct.ef4_nic, ptr %56, i32 0, i32 6
  %57 = ptrtoint ptr %type.i24.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type.i24.i, align 4
  %tx_init.i.i = getelementptr inbounds %struct.ef4_nic_type, ptr %58, i32 0, i32 41
  %59 = ptrtoint ptr %tx_init.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_init.i.i, align 4
  tail call void %60(ptr noundef %tx_queue.0140) #8
  %61 = ptrtoint ptr %initialised to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %initialised, align 16
  br label %if.end52

if.end52:                                         ; preds = %ef4_init_tx_queue.exit, %if.end49.if.end52_crit_edge
  %62 = ptrtoint ptr %tx_queue.0140 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tx_queue.0140, align 128
  %net_dev.i131 = getelementptr inbounds %struct.ef4_nic, ptr %63, i32 0, i32 69
  %64 = ptrtoint ptr %net_dev.i131 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %net_dev.i131, align 4
  %66 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %queue, align 4
  %and.i133 = and i32 %67, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i133)
  %tobool.not.i134 = icmp eq i32 %and.i133, 0
  br i1 %tobool.not.i134, label %if.end52.ef4_init_tx_queue_core_txq.exit_crit_edge, label %cond.true.i

if.end52.ef4_init_tx_queue_core_txq.exit_crit_edge: ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_init_tx_queue_core_txq.exit

cond.true.i:                                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %n_tx_channels.i135 = getelementptr inbounds %struct.ef4_nic, ptr %63, i32 0, i32 40
  %68 = ptrtoint ptr %n_tx_channels.i135 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %n_tx_channels.i135, align 4
  br label %ef4_init_tx_queue_core_txq.exit

ef4_init_tx_queue_core_txq.exit:                  ; preds = %cond.true.i, %if.end52.ef4_init_tx_queue_core_txq.exit_crit_edge
  %cond.i136 = phi i32 [ %69, %cond.true.i ], [ 0, %if.end52.ef4_init_tx_queue_core_txq.exit_crit_edge ]
  %div7.i = lshr i32 %67, 2
  %add.i = add i32 %cond.i136, %div7.i
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %65, i32 0, i32 103
  %70 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %71, i32 %add.i
  %core_txq.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 0, i32 3
  %72 = ptrtoint ptr %core_txq.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx.i.i, ptr %core_txq.i, align 4
  br label %for.inc53

for.inc53:                                        ; preds = %ef4_init_tx_queue_core_txq.exit, %for.body39.for.inc53_crit_edge
  %incdec.ptr = getelementptr %struct.ef4_tx_queue, ptr %tx_queue.0140, i32 1
  %cmp37 = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp37, label %for.inc53.for.body39_crit_edge, label %for.inc53.for.inc56_crit_edge

for.inc53.for.inc56_crit_edge:                    ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc56

for.inc53.for.body39_crit_edge:                   ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body39

for.inc56:                                        ; preds = %for.inc53.for.inc56_crit_edge, %if.else.for.inc56_crit_edge, %for.body30.for.inc56_crit_edge
  %73 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %channel1.i, align 4
  %add = add i32 %74, 1
  %75 = ptrtoint ptr %n_channels to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %n_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %76)
  %cmp58 = icmp ult i32 %add, %76
  br i1 %cmp58, label %cond.end, label %for.inc56.if.end68_crit_edge

for.inc56.if.end68_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

cond.end:                                         ; preds = %for.inc56
  %arrayidx63 = getelementptr %struct.ef4_nic, ptr %add.ptr.i, i32 0, i32 23, i32 %add
  %77 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx63, align 4
  %tobool.not = icmp eq ptr %78, null
  br i1 %tobool.not, label %cond.end.if.end68_crit_edge, label %cond.end.for.body30_crit_edge

cond.end.for.body30_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

cond.end.if.end68_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68

if.else65:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv66 = zext i8 %1 to i16
  %79 = ptrtoint ptr %num_tc9 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %conv66, ptr %num_tc9, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %cond.end.if.end68_crit_edge, %for.inc56.if.end68_crit_edge, %if.then26.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp69 = icmp ugt i8 %1, 1
  %. = select i1 %cmp69, i32 2, i32 1
  %n_tx_channels75 = getelementptr i8, ptr %net_dev, i32 3684
  %80 = ptrtoint ptr %n_tx_channels75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %n_tx_channels75, align 4
  %mul76 = mul i32 %81, %.
  %call77 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %net_dev, i32 noundef %mul76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end80:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  %conv81 = zext i8 %1 to i16
  %82 = ptrtoint ptr %num_tc9 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv81, ptr %num_tc9, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.end68.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end80 ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ %call77, %if.end68.cleanup_crit_edge ], [ %call45, %if.then44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ef4_probe_tx_queue(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %txq_entries = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txq_entries, align 16
  %sub.i95 = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i95)
  %tobool.not.i.i.i = icmp eq i32 %sub.i95, 0
  br i1 %tobool.not.i.i.i, label %entry.cond.end24.thread_crit_edge, label %cond.end24

entry.cond.end24.thread_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end24.thread

cond.end24:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call i32 @llvm.ctlz.i32(i32 %sub.i95, i1 true) #8, !range !45
  %sub.i.i.i = sub nuw nsw i32 32, %4
  %cond25 = shl nuw i32 1, %sub.i.i.i
  %5 = tail call i32 @llvm.umax.i32(i32 %cond25, i32 512)
  br label %cond.end24.thread

cond.end24.thread:                                ; preds = %cond.end24, %entry.cond.end24.thread_crit_edge
  %6 = phi i32 [ 512, %entry.cond.end24.thread_crit_edge ], [ %5, %cond.end24 ]
  %sub32 = add i32 %6, -1
  %ptr_mask = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  %7 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub32, ptr %ptr_mask, align 4
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %8 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %msg_enable, align 8
  %and = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.end24.thread.do.end47_crit_edge, label %do.body34

cond.end24.thread.do.end47_crit_edge:             ; preds = %cond.end24.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.body34:                                        ; preds = %cond.end24.thread
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_probe_tx_queue.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_probe_tx_queue, %if.then40)) #8
          to label %do.end47 [label %if.then40], !srcloc !44

if.then40:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %10 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %12 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %queue, align 4
  %14 = ptrtoint ptr %txq_entries to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txq_entries, align 16
  %16 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ptr_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_probe_tx_queue.__UNIQUE_ID_ddebug537, ptr noundef %11, ptr noundef nonnull @.str.3, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  br label %do.end47

do.end47:                                         ; preds = %if.then40, %do.body34, %cond.end24.thread.do.end47_crit_edge
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 24) #8
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !36

kcalloc.exit.thread:                              ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %buffer137 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 4
  br label %cleanup.sink.split

if.end7.i.i:                                      ; preds = %do.end47
  %20 = extractvalue { i32, i1 } %18, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #11
  %buffer = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 4
  %21 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call8.i.i, ptr %buffer, align 16
  %tobool50.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool50.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end7.i.i130

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i.i130:                                   ; preds = %if.end7.i.i
  %22 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptr_mask, align 4
  %sub.i96 = add i32 %23, 32
  %div2.i = lshr i32 %sub.i96, 5
  %24 = mul nuw nsw i32 %div2.i, 12
  %call8.i.i129 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #11
  %cb_page = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 5
  %25 = ptrtoint ptr %cb_page to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call8.i.i129, ptr %cb_page, align 4
  %tobool56.not = icmp eq ptr %call8.i.i129, null
  br i1 %tobool56.not, label %if.end7.i.i130.fail1_crit_edge, label %if.end58

if.end7.i.i130.fail1_crit_edge:                   ; preds = %if.end7.i.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail1

if.end58:                                         ; preds = %if.end7.i.i130
  %26 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_queue, align 128
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type.i, align 4
  %tx_probe.i = getelementptr inbounds %struct.ef4_nic_type, ptr %29, i32 0, i32 40
  %30 = ptrtoint ptr %tx_probe.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_probe.i, align 8
  %call.i = tail call i32 %31(ptr noundef %tx_queue) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool60.not = icmp eq i32 %call.i, 0
  br i1 %tobool60.not, label %if.end58.cleanup_crit_edge, label %fail2

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

fail2:                                            ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %cb_page to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cb_page, align 4
  tail call void @kfree(ptr noundef %33) #8
  %34 = ptrtoint ptr %cb_page to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %cb_page, align 4
  br label %fail1

fail1:                                            ; preds = %fail2, %if.end7.i.i130.fail1_crit_edge
  %rc.0 = phi i32 [ %call.i, %fail2 ], [ -12, %if.end7.i.i130.fail1_crit_edge ]
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 16
  tail call void @kfree(ptr noundef %36) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %fail1, %kcalloc.exit.thread
  %buffer137.sink = phi ptr [ %buffer137, %kcalloc.exit.thread ], [ %buffer, %fail1 ]
  %retval.0.ph = phi i32 [ -12, %kcalloc.exit.thread ], [ %rc.0, %fail1 ]
  %37 = ptrtoint ptr %buffer137.sink to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %buffer137.sink, align 16
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end58.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %if.end58.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_init_tx_queue(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body2

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_init_tx_queue.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_init_tx_queue, %if.then6)) #8
          to label %do.end9 [label %if.then6], !srcloc !44

if.then6:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %4 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %6 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_init_tx_queue.__UNIQUE_ID_ddebug538, ptr noundef %5, ptr noundef nonnull @.str.5, i32 noundef %7) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %do.body2, %entry.do.end9_crit_edge
  %insert_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 18
  %8 = ptrtoint ptr %insert_count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %insert_count, align 128
  %write_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 19
  %9 = ptrtoint ptr %write_count to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %write_count, align 4
  %old_write_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 13
  %10 = ptrtoint ptr %old_write_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %old_write_count, align 4
  %read_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 12
  %11 = ptrtoint ptr %read_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %read_count, align 128
  %old_read_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 20
  %12 = ptrtoint ptr %old_read_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %old_read_count, align 8
  %empty_read_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 26
  %13 = ptrtoint ptr %empty_read_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -2147483648, ptr %empty_read_count, align 128
  %xmit_more_available = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 22
  %14 = ptrtoint ptr %xmit_more_available to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %xmit_more_available, align 16
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type.i, align 4
  %revision.i = getelementptr inbounds %struct.ef4_nic_type, ptr %16, i32 0, i32 79
  %17 = ptrtoint ptr %revision.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp = icmp slt i32 %18, 3
  %cond = select i1 %cmp, i32 33, i32 0
  %tx_min_size = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 9
  %19 = ptrtoint ptr %tx_min_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %tx_min_size, align 4
  %20 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_queue, align 128
  %type.i24 = getelementptr inbounds %struct.ef4_nic, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %type.i24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %type.i24, align 4
  %tx_init.i = getelementptr inbounds %struct.ef4_nic_type, ptr %23, i32 0, i32 41
  %24 = ptrtoint ptr %tx_init.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_init.i, align 4
  tail call void %25(ptr noundef %tx_queue) #8
  %initialised = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 8
  %26 = ptrtoint ptr %initialised to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %initialised, align 16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_xmit_done(ptr noundef %tx_queue, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %add.i = add i32 %index, 1
  %ptr_mask.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  %2 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ptr_mask.i, align 4
  %and.i = and i32 %3, %add.i
  %read_count.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 12
  %4 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %read_count.i, align 128
  %and3.i = and i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %and.i)
  %cmp.not42.i = icmp eq i32 %and3.i, %and.i
  br i1 %cmp.not42.i, label %entry.ef4_dequeue_buffers.exit_crit_edge, label %while.body.lr.ph.i

entry.ef4_dequeue_buffers.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_dequeue_buffers.exit

while.body.lr.ph.i:                               ; preds = %entry
  %buffer4.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pkts_compl.0 = phi i32 [ 0, %while.body.lr.ph.i ], [ %pkts_compl.1, %cleanup.i.while.body.i_crit_edge ]
  %bytes_compl.0 = phi i32 [ 0, %while.body.lr.ph.i ], [ %bytes_compl.1, %cleanup.i.while.body.i_crit_edge ]
  %read_ptr.043.i = phi i32 [ %and3.i, %while.body.lr.ph.i ], [ %and18.i, %cleanup.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %buffer4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buffer4.i, align 16
  %arrayidx.i = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %read_ptr.043.i
  %flags.i = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %read_ptr.043.i, i32 2
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags.i, align 8
  %10 = and i16 %9, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not.i = icmp eq i16 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %while.body.i.if.end14.i_crit_edge

while.body.i.if.end14.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %while.body.i
  %len.i = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %read_ptr.043.i, i32 3
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp7.i = icmp eq i16 %12, 0
  br i1 %cmp7.i, label %do.body.i, label %land.lhs.true.i.if.end14.i_crit_edge, !prof !36

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

do.body.i:                                        ; preds = %land.lhs.true.i
  %msg_enable.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg_enable.i, align 8
  %and11.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %do.body.i.cleanup.thread.i_crit_edge, label %if.then13.i

do.body.i.cleanup.thread.i_crit_edge:             ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %net_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %15 = ptrtoint ptr %net_dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net_dev.i, align 4
  %queue.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %17 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.13, i32 noundef %18, i32 noundef %read_ptr.043.i) #12
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then13.i, %do.body.i.cleanup.thread.i_crit_edge
  tail call void @ef4_schedule_reset(ptr noundef %1, i32 noundef 12) #8
  br label %ef4_dequeue_buffers.exit

if.end14.i:                                       ; preds = %land.lhs.true.i.if.end14.i_crit_edge, %while.body.i.if.end14.i_crit_edge
  %unmap_len.i.i = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %read_ptr.043.i, i32 4
  %19 = ptrtoint ptr %unmap_len.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %unmap_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.i.i = icmp eq i16 %20, 0
  br i1 %tobool.not.i.i, label %if.end14.i.if.end9.i.i_crit_edge, label %if.then.i.i

if.end14.i.if.end9.i.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tx_queue, align 128
  %pci_dev.i.i = getelementptr inbounds %struct.ef4_nic, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %24, i32 0, i32 44
  %25 = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %read_ptr.043.i, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 8
  %dma_offset.i.i = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %read_ptr.043.i, i32 5
  %28 = ptrtoint ptr %dma_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dma_offset.i.i, align 2
  %conv.i.i = zext i16 %29 to i32
  %sub.i.i = sub i32 %27, %conv.i.i
  %conv7.i.i = zext i16 %20 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %sub.i.i, i32 noundef %conv7.i.i, i32 noundef 1, i32 noundef 0) #8
  %30 = ptrtoint ptr %unmap_len.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 0, ptr %unmap_len.i.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then.i.i, %if.end14.i.if.end9.i.i_crit_edge
  %31 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %flags.i, align 8
  %33 = and i16 %32, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool13.not.i.i = icmp eq i16 %33, 0
  br i1 %tobool13.not.i.i, label %if.end9.i.i.cleanup.i_crit_edge, label %if.then14.i.i

if.end9.i.i.cleanup.i_crit_edge:                  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.then14.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %inc.i.i = add i32 %pkts_compl.0, 1
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i, align 4
  %add.i.i = add i32 %37, %bytes_compl.0
  tail call void @__dev_kfree_skb_any(ptr noundef %35, i32 noundef 0) #8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then14.i.i, %if.end9.i.i.cleanup.i_crit_edge
  %pkts_compl.1 = phi i32 [ %pkts_compl.0, %if.end9.i.i.cleanup.i_crit_edge ], [ %inc.i.i, %if.then14.i.i ]
  %bytes_compl.1 = phi i32 [ %bytes_compl.0, %if.end9.i.i.cleanup.i_crit_edge ], [ %add.i.i, %if.then14.i.i ]
  %len17.i.i = getelementptr %struct.ef4_tx_buffer, ptr %7, i32 %read_ptr.043.i, i32 3
  %38 = ptrtoint ptr %len17.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %len17.i.i, align 2
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags.i, align 8
  %40 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %read_count.i, align 128
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %read_count.i, align 128
  %42 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ptr_mask.i, align 4
  %and18.i = and i32 %43, %inc.i
  %cmp.not.i = icmp eq i32 %and18.i, %and.i
  br i1 %cmp.not.i, label %cleanup.i.ef4_dequeue_buffers.exit_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

cleanup.i.ef4_dequeue_buffers.exit_crit_edge:     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_dequeue_buffers.exit

ef4_dequeue_buffers.exit:                         ; preds = %cleanup.i.ef4_dequeue_buffers.exit_crit_edge, %cleanup.thread.i, %entry.ef4_dequeue_buffers.exit_crit_edge
  %pkts_compl.2 = phi i32 [ 0, %entry.ef4_dequeue_buffers.exit_crit_edge ], [ %pkts_compl.0, %cleanup.thread.i ], [ %pkts_compl.1, %cleanup.i.ef4_dequeue_buffers.exit_crit_edge ]
  %bytes_compl.2 = phi i32 [ 0, %entry.ef4_dequeue_buffers.exit_crit_edge ], [ %bytes_compl.0, %cleanup.thread.i ], [ %bytes_compl.1, %cleanup.i.ef4_dequeue_buffers.exit_crit_edge ]
  %pkts_compl2 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 16
  %44 = ptrtoint ptr %pkts_compl2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pkts_compl2, align 16
  %add = add i32 %45, %pkts_compl.2
  store i32 %add, ptr %pkts_compl2, align 16
  %bytes_compl3 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 15
  %46 = ptrtoint ptr %bytes_compl3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %bytes_compl3, align 4
  %add4 = add i32 %47, %bytes_compl.2
  store i32 %add4, ptr %bytes_compl3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %pkts_compl.2)
  %cmp = icmp ugt i32 %pkts_compl.2, 1
  br i1 %cmp, label %if.then, label %ef4_dequeue_buffers.exit.do.end8_crit_edge

ef4_dequeue_buffers.exit.do.end8_crit_edge:       ; preds = %ef4_dequeue_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

if.then:                                          ; preds = %ef4_dequeue_buffers.exit
  call void @__sanitizer_cov_trace_pc() #10
  %merge_events = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 14
  %48 = ptrtoint ptr %merge_events to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %merge_events, align 8
  %inc = add i32 %49, 1
  store i32 %inc, ptr %merge_events, align 8
  br label %do.end8

do.end8:                                          ; preds = %if.then, %ef4_dequeue_buffers.exit.do.end8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !46
  %core_txq = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 3
  %50 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core_txq, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %51, i32 0, i32 13
  %52 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end8.if.end37_crit_edge, label %land.lhs.true, !prof !37

do.end8.if.end37_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true:                                    ; preds = %do.end8
  %port_enabled = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 66
  %54 = ptrtoint ptr %port_enabled to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %port_enabled, align 8, !range !41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool12.not = icmp eq i8 %55, 0
  br i1 %tobool12.not, label %land.lhs.true.if.end37_crit_edge, label %land.lhs.true19, !prof !36

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true19:                                  ; preds = %land.lhs.true
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 69
  %56 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net_dev, align 4
  %state.i82 = getelementptr inbounds %struct.net_device, ptr %57, i32 0, i32 6
  %58 = ptrtoint ptr %state.i82 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %state.i82, align 4
  %60 = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i83.not = icmp eq i32 %60, 0
  br i1 %tobool.i83.not, label %land.lhs.true19.if.end37_crit_edge, label %if.then27, !prof !36

land.lhs.true19.if.end37_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then27:                                        ; preds = %land.lhs.true19
  %queue.i84 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %61 = ptrtoint ptr %queue.i84 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %queue.i84, align 4
  %and.i85 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85)
  %tobool.not.i86 = icmp eq i32 %and.i85, 0
  %retval.0.v.i = select i1 %tobool.not.i86, i32 1, i32 -1
  %insert_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 18
  %63 = ptrtoint ptr %insert_count to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %insert_count, align 128
  %65 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %read_count.i, align 128
  %sub = sub i32 %64, %66
  %insert_count29 = getelementptr %struct.ef4_tx_queue, ptr %tx_queue, i32 %retval.0.v.i, i32 18
  %67 = ptrtoint ptr %insert_count29 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %insert_count29, align 128
  %read_count30 = getelementptr %struct.ef4_tx_queue, ptr %tx_queue, i32 %retval.0.v.i, i32 12
  %69 = ptrtoint ptr %read_count30 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %read_count30, align 128
  %sub31 = sub i32 %68, %70
  %71 = tail call i32 @llvm.umax.i32(i32 %sub, i32 %sub31)
  %txq_wake_thresh = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 29
  %72 = ptrtoint ptr %txq_wake_thresh to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %txq_wake_thresh, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %73)
  %cmp33.not = icmp ugt i32 %71, %73
  br i1 %cmp33.not, label %if.then27.if.end37_crit_edge, label %if.then34

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then34:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @netif_tx_wake_queue(ptr noundef %51) #8
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.then27.if.end37_crit_edge, %land.lhs.true19.if.end37_crit_edge, %land.lhs.true.if.end37_crit_edge, %do.end8.if.end37_crit_edge
  %74 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %read_count.i, align 128
  %old_write_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 13
  %76 = ptrtoint ptr %old_write_count to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %old_write_count, align 4
  %sub39 = sub i32 %75, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub39)
  %cmp40 = icmp sgt i32 %sub39, -1
  br i1 %cmp40, label %do.end44, label %if.end37.if.end59_crit_edge

if.end37.if.end59_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end44:                                         ; preds = %if.end37
  %write_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 19
  %78 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %write_count, align 4
  %80 = ptrtoint ptr %old_write_count to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %old_write_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %79)
  %cmp49 = icmp eq i32 %75, %79
  br i1 %cmp49, label %do.end54, label %do.end44.if.end59_crit_edge

do.end44.if.end59_crit_edge:                      ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end54:                                         ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !47
  %81 = ptrtoint ptr %read_count.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %read_count.i, align 128
  %or = or i32 %82, -2147483648
  %empty_read_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 26
  %83 = ptrtoint ptr %empty_read_count to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or, ptr %empty_read_count, align 128
  br label %if.end59

if.end59:                                         ; preds = %do.end54, %do.end44.if.end59_crit_edge, %if.end37.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_fini_tx_queue(ptr nocapture noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.body1

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_fini_tx_queue.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_fini_tx_queue, %if.then5)) #8
          to label %do.end9 [label %if.then5], !srcloc !44

if.then5:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_queue, align 128
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %8 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_fini_tx_queue.__UNIQUE_ID_ddebug539, ptr noundef %7, ptr noundef nonnull @.str.7, i32 noundef %9) #8
  br label %do.end9

do.end9:                                          ; preds = %if.then5, %do.body1, %entry.do.end9_crit_edge
  %buffer10 = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 4
  %10 = ptrtoint ptr %buffer10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buffer10, align 16
  %tobool11.not = icmp eq ptr %11, null
  br i1 %tobool11.not, label %do.end9.cleanup_crit_edge, label %while.cond.preheader

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end9
  %read_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 12
  %write_count = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 19
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
  %ptr_mask = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %ef4_dequeue_buffer.exit.while.body_crit_edge, %while.body.lr.ph
  %16 = phi i32 [ %13, %while.body.lr.ph ], [ %inc, %ef4_dequeue_buffer.exit.while.body_crit_edge ]
  %17 = ptrtoint ptr %buffer10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer10, align 16
  %19 = ptrtoint ptr %ptr_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ptr_mask, align 4
  %and16 = and i32 %20, %16
  %arrayidx = getelementptr %struct.ef4_tx_buffer, ptr %18, i32 %and16
  %unmap_len.i = getelementptr %struct.ef4_tx_buffer, ptr %18, i32 %and16, i32 4
  %21 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %unmap_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i, label %while.body.if.end9.i_crit_edge, label %if.then.i

while.body.if.end9.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tx_queue, align 128
  %pci_dev.i = getelementptr inbounds %struct.ef4_nic, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pci_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %26, i32 0, i32 44
  %27 = getelementptr %struct.ef4_tx_buffer, ptr %18, i32 %and16, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %dma_offset.i = getelementptr %struct.ef4_tx_buffer, ptr %18, i32 %and16, i32 5
  %30 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dma_offset.i, align 2
  %conv.i = zext i16 %31 to i32
  %sub.i = sub i32 %29, %conv.i
  %conv7.i = zext i16 %22 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %sub.i, i32 noundef %conv7.i, i32 noundef 1, i32 noundef 0) #8
  %32 = ptrtoint ptr %unmap_len.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %unmap_len.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then.i, %while.body.if.end9.i_crit_edge
  %flags10.i = getelementptr %struct.ef4_tx_buffer, ptr %18, i32 %and16, i32 2
  %33 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags10.i, align 8
  %35 = and i16 %34, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool13.not.i = icmp eq i16 %35, 0
  br i1 %tobool13.not.i, label %if.end9.i.ef4_dequeue_buffer.exit_crit_edge, label %if.then14.i

if.end9.i.ef4_dequeue_buffer.exit_crit_edge:      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ef4_dequeue_buffer.exit

if.then14.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %37, i32 noundef 0) #8
  br label %ef4_dequeue_buffer.exit

ef4_dequeue_buffer.exit:                          ; preds = %if.then14.i, %if.end9.i.ef4_dequeue_buffer.exit_crit_edge
  %len17.i = getelementptr %struct.ef4_tx_buffer, ptr %18, i32 %and16, i32 3
  %38 = ptrtoint ptr %len17.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %len17.i, align 2
  %39 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %flags10.i, align 8
  %40 = ptrtoint ptr %read_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %read_count, align 128
  %inc = add i32 %41, 1
  store i32 %inc, ptr %read_count, align 128
  %42 = ptrtoint ptr %write_count to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %write_count, align 4
  %cmp.not = icmp eq i32 %inc, %43
  br i1 %cmp.not, label %ef4_dequeue_buffer.exit.while.end_crit_edge, label %ef4_dequeue_buffer.exit.while.body_crit_edge

ef4_dequeue_buffer.exit.while.body_crit_edge:     ; preds = %ef4_dequeue_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

ef4_dequeue_buffer.exit.while.end_crit_edge:      ; preds = %ef4_dequeue_buffer.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %ef4_dequeue_buffer.exit.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %xmit_more_available = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 22
  %44 = ptrtoint ptr %xmit_more_available to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %xmit_more_available, align 16
  %core_txq = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 3
  %45 = ptrtoint ptr %core_txq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %core_txq, align 4
  %state.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state.i) #8
  %dql.i = getelementptr inbounds %struct.netdev_queue, ptr %46, i32 0, i32 15
  tail call void @dql_reset(ptr noundef %dql.i) #8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end9.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ef4_remove_tx_queue(ptr noundef %tx_queue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %buffer = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 4
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buffer, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_queue, align 128
  %msg_enable = getelementptr inbounds %struct.ef4_nic, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.body.do.end12_crit_edge, label %do.body3

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end12

do.body3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ef4_remove_tx_queue.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ef4_remove_tx_queue, %if.then7)) #8
          to label %do.end12 [label %if.then7], !srcloc !44

if.then7:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_queue, align 128
  %net_dev = getelementptr inbounds %struct.ef4_nic, ptr %7, i32 0, i32 69
  %8 = ptrtoint ptr %net_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net_dev, align 4
  %queue = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 1
  %10 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %queue, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ef4_remove_tx_queue.__UNIQUE_ID_ddebug540, ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %11) #8
  br label %do.end12

do.end12:                                         ; preds = %if.then7, %do.body3, %do.body.do.end12_crit_edge
  %12 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_queue, align 128
  %type.i = getelementptr inbounds %struct.ef4_nic, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type.i, align 4
  %tx_remove.i = getelementptr inbounds %struct.ef4_nic_type, ptr %15, i32 0, i32 42
  %16 = ptrtoint ptr %tx_remove.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_remove.i, align 8
  tail call void %17(ptr noundef %tx_queue) #8
  %cb_page = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 5
  %18 = ptrtoint ptr %cb_page to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb_page, align 4
  %tobool13.not = icmp eq ptr %19, null
  br i1 %tobool13.not, label %do.end12.if.end20_crit_edge, label %for.cond.preheader

do.end12.if.end20_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

for.cond.preheader:                               ; preds = %do.end12
  %ptr_mask.i = getelementptr inbounds %struct.ef4_tx_queue, ptr %tx_queue, i32 0, i32 7
  %20 = ptrtoint ptr %ptr_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ptr_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -33, i32 %21)
  %cmp40.not = icmp ugt i32 %21, -33
  br i1 %cmp40.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.041 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %22 = ptrtoint ptr %tx_queue to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_queue, align 128
  %24 = ptrtoint ptr %cb_page to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cb_page, align 4
  %arrayidx = getelementptr %struct.ef4_buffer, ptr %25, i32 %i.041
  tail call void @ef4_nic_free_buffer(ptr noundef %23, ptr noundef %arrayidx) #8
  %inc = add nuw nsw i32 %i.041, 1
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

if.end20:                                         ; preds = %for.end, %do.end12.if.end20_crit_edge
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 16
  tail call void @kfree(ptr noundef %32) #8
  %33 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %buffer, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_nic_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ef4_nic_alloc_buffer(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ef4_schedule_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dql_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

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
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24}
!llvm.named.register.sp = !{!26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/sfc/falcon/tx.c", i32 549, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ef4_probe_tx_queue.__UNIQUE_ID_ddebug537, !1, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/sfc/falcon/tx.c", i32 586, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @ef4_init_tx_queue.__UNIQUE_ID_ddebug538, !7, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/sfc/falcon/tx.c", i32 610, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ef4_fini_tx_queue.__UNIQUE_ID_ddebug539, !11, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/sfc/falcon/tx.c", i32 635, i32 2}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ef4_remove_tx_queue.__UNIQUE_ID_ddebug540, !15, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/sfc/falcon/tx.c", i32 370, i32 4}
!26 = !{!"sp"}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"branch_weights", i32 1, i32 2000}
!37 = !{!"branch_weights", i32 2000, i32 1}
!38 = !{i64 2155402700, i64 2155403200, i64 2155402737, i64 2155402793, i64 2155402827, i64 2155402851, i64 2155402892, i64 2155402913, i64 2155402941, i64 2155402975}
!39 = !{i64 2155404044}
!40 = !{i64 2156214413}
!41 = !{i8 0, i8 2}
!42 = !{i64 2159140461}
!43 = !{i64 2159148792}
!44 = !{i64 2148501788, i64 2148501793, i64 2148501806, i64 2148501850, i64 2148501884, i64 2148501905}
!45 = !{i32 0, i32 33}
!46 = !{i64 2159152219}
!47 = !{i64 2159161916}
