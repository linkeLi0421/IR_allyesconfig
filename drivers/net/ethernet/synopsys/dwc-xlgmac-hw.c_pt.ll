; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c_pt.bc'
source_filename = "../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.125, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.125 = type { i16, i8 }
%struct.__call_single_data = type { %struct.__call_single_node, ptr, ptr }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.53 }
%struct.llist_node = type { ptr }
%union.anon.53 = type { i32 }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.xlgmac_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xlgmac_pdata = type { ptr, ptr, %struct.xlgmac_hw_ops, %struct.xlgmac_desc_ops, %struct.xlgmac_stats, i32, ptr, %struct.xlgmac_hw_features, %struct.work_struct, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [6 x i8], i64, %struct.napi_struct, [128 x i32], i32, %struct.mutex, [40 x i8], [256 x i32], i32, i32, [32 x i8], [32 x i8] }
%struct.xlgmac_desc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xlgmac_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xlgmac_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.xlgmac_channel = type { [16 x i8], ptr, i32, ptr, i32, [48 x i8], %struct.napi_struct, i32, i32, %struct.timer_list, ptr, ptr, [16 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.xlgmac_dma_desc = type { i32, i32, i32, i32 }
%struct.xlgmac_ring = type { %struct.xlgmac_pkt_info, ptr, i32, i32, ptr, %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc, i32, i32, i32, %union.anon.118, [120 x i8] }
%struct.xlgmac_pkt_info = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i64, i32, i32 }
%struct.xlgmac_page_alloc = type { ptr, i32, i32, i32 }
%union.anon.118 = type { %struct.anon.119 }
%struct.anon.119 = type { i32, i32, i16, i16 }
%struct.xlgmac_desc_data = type { ptr, i32, ptr, i32, i32, %struct.xlgmac_tx_desc_data, %struct.xlgmac_rx_desc_data, i32, i32, %struct.anon.117 }
%struct.xlgmac_tx_desc_data = type { i32, i32 }
%struct.xlgmac_rx_desc_data = type { %struct.xlgmac_buffer_data, %struct.xlgmac_buffer_data, i16, i16 }
%struct.xlgmac_buffer_data = type { %struct.xlgmac_page_alloc, %struct.xlgmac_page_alloc, i32, i32, i32 }
%struct.anon.117 = type { ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error configuring RSS, RSS disabled\0A\00", [59 x i8] zeroinitializer }, align 32
@xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dwc_xlgmac\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlgmac_config_queue_mapping\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TXq%u mapped to TC%u\0A\00", [42 x i8] zeroinitializer }, align 32
@xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 1, i8 -122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PRIO%u mapped to RXq%u\0A\00", [40 x i8] zeroinitializer }, align 32
@xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 1, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d Tx hardware queues, %d byte fifo per queue\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d Rx hardware queues, %d byte fifo per queue\0A\00", [49 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timed out waiting for Tx DMA channel %u to stop\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"timed out waiting for Rx queue %u to empty\0A\00", [52 x i8] zeroinitializer }, align 32
@xlgmac_dev_xmit.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.11, i8 0, i8 -65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xlgmac_dev_xmit\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TSO context descriptor, mss=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@xlgmac_dev_xmit.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.10, ptr @.str.3, ptr @.str.12, i8 0, i8 -58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VLAN context descriptor, ctag=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@xlgmac_dev_read.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.15, i8 2, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xlgmac_dev_read\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"err=%u, etlt=%#x\0A\00", [46 x i8] zeroinitializer }, align 32
@xlgmac_dev_read.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.14, ptr @.str.3, ptr @.str.16, i8 2, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vlan-ctag=%#06x\0A\00", [47 x i8] zeroinitializer }, align 32
@xlgmac_set_promiscuous_mode.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.17, ptr @.str.3, ptr @.str.18, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xlgmac_set_promiscuous_mode\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s promiscuous mode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"entering\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"leaving\00", [24 x i8] zeroinitializer }, align 32
@xlgmac_set_all_multicast_mode.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"xlgmac_set_all_multicast_mode\00", [34 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s allmulti mode\0A\00", [46 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@xlgmac_set_mac_reg.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xlgmac_set_mac_reg\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adding mac address %pM at %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 25000, i64 40000, i64 50000, i64 100000]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@__sancov_gen_cov_switch_values.26 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.27 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 2443, i32 7 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1520, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1559, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1647, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1669, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 493, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 598, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 764, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 793, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 2777, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 2792, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 254, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 284, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private constant [49 x i8] c"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 94, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xlgmac_init_hw_ops(ptr noundef writeonly %hw_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xlgmac_hw_init, ptr %hw_ops, align 4
  %exit = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 1
  %1 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xlgmac_hw_exit, ptr %exit, align 4
  %tx_complete = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 2
  %2 = ptrtoint ptr %tx_complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xlgmac_tx_complete, ptr %tx_complete, align 4
  %enable_tx = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 3
  %3 = ptrtoint ptr %enable_tx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xlgmac_enable_tx, ptr %enable_tx, align 4
  %disable_tx = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 4
  %4 = ptrtoint ptr %disable_tx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xlgmac_disable_tx, ptr %disable_tx, align 4
  %enable_rx = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 5
  %5 = ptrtoint ptr %enable_rx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xlgmac_enable_rx, ptr %enable_rx, align 4
  %disable_rx = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 6
  %6 = ptrtoint ptr %disable_rx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xlgmac_disable_rx, ptr %disable_rx, align 4
  %dev_xmit = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 9
  %7 = ptrtoint ptr %dev_xmit to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xlgmac_dev_xmit, ptr %dev_xmit, align 4
  %dev_read = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 10
  %8 = ptrtoint ptr %dev_read to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @xlgmac_dev_read, ptr %dev_read, align 4
  %enable_int = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 7
  %9 = ptrtoint ptr %enable_int to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xlgmac_enable_int, ptr %enable_int, align 4
  %disable_int = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 8
  %10 = ptrtoint ptr %disable_int to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xlgmac_disable_int, ptr %disable_int, align 4
  %set_mac_address = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 11
  %11 = ptrtoint ptr %set_mac_address to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xlgmac_set_mac_address, ptr %set_mac_address, align 4
  %config_rx_mode = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 12
  %12 = ptrtoint ptr %config_rx_mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xlgmac_config_rx_mode, ptr %config_rx_mode, align 4
  %enable_rx_csum = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 13
  %13 = ptrtoint ptr %enable_rx_csum to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xlgmac_enable_rx_csum, ptr %enable_rx_csum, align 4
  %disable_rx_csum = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 14
  %14 = ptrtoint ptr %disable_rx_csum to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @xlgmac_disable_rx_csum, ptr %disable_rx_csum, align 4
  %set_xlgmii_25000_speed = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 15
  %15 = ptrtoint ptr %set_xlgmii_25000_speed to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xlgmac_set_xlgmii_25000_speed, ptr %set_xlgmii_25000_speed, align 4
  %set_xlgmii_40000_speed = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 16
  %16 = ptrtoint ptr %set_xlgmii_40000_speed to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xlgmac_set_xlgmii_40000_speed, ptr %set_xlgmii_40000_speed, align 4
  %set_xlgmii_50000_speed = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 17
  %17 = ptrtoint ptr %set_xlgmii_50000_speed to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xlgmac_set_xlgmii_50000_speed, ptr %set_xlgmii_50000_speed, align 4
  %set_xlgmii_100000_speed = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 18
  %18 = ptrtoint ptr %set_xlgmii_100000_speed to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xlgmac_set_xlgmii_100000_speed, ptr %set_xlgmii_100000_speed, align 4
  %tx_desc_init = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 19
  %19 = ptrtoint ptr %tx_desc_init to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xlgmac_tx_desc_init, ptr %tx_desc_init, align 4
  %rx_desc_init = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 20
  %20 = ptrtoint ptr %rx_desc_init to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @xlgmac_rx_desc_init, ptr %rx_desc_init, align 4
  %tx_desc_reset = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 21
  %21 = ptrtoint ptr %tx_desc_reset to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @xlgmac_tx_desc_reset, ptr %tx_desc_reset, align 4
  %rx_desc_reset = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 22
  %22 = ptrtoint ptr %rx_desc_reset to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xlgmac_rx_desc_reset, ptr %rx_desc_reset, align 4
  %is_last_desc = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 23
  %23 = ptrtoint ptr %is_last_desc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xlgmac_is_last_desc, ptr %is_last_desc, align 4
  %is_context_desc = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 24
  %24 = ptrtoint ptr %is_context_desc to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @xlgmac_is_context_desc, ptr %is_context_desc, align 4
  %tx_start_xmit = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 25
  %25 = ptrtoint ptr %tx_start_xmit to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @xlgmac_tx_start_xmit, ptr %tx_start_xmit, align 4
  %config_tx_flow_control = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 26
  %26 = ptrtoint ptr %config_tx_flow_control to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xlgmac_config_tx_flow_control, ptr %config_tx_flow_control, align 4
  %config_rx_flow_control = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 27
  %27 = ptrtoint ptr %config_rx_flow_control to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @xlgmac_config_rx_flow_control, ptr %config_rx_flow_control, align 4
  %enable_rx_vlan_stripping = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 28
  %28 = ptrtoint ptr %enable_rx_vlan_stripping to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @xlgmac_enable_rx_vlan_stripping, ptr %enable_rx_vlan_stripping, align 4
  %disable_rx_vlan_stripping = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 29
  %29 = ptrtoint ptr %disable_rx_vlan_stripping to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @xlgmac_disable_rx_vlan_stripping, ptr %disable_rx_vlan_stripping, align 4
  %enable_rx_vlan_filtering = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 30
  %30 = ptrtoint ptr %enable_rx_vlan_filtering to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @xlgmac_enable_rx_vlan_filtering, ptr %enable_rx_vlan_filtering, align 4
  %disable_rx_vlan_filtering = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 31
  %31 = ptrtoint ptr %disable_rx_vlan_filtering to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @xlgmac_disable_rx_vlan_filtering, ptr %disable_rx_vlan_filtering, align 4
  %update_vlan_hash_table = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 32
  %32 = ptrtoint ptr %update_vlan_hash_table to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @xlgmac_update_vlan_hash_table, ptr %update_vlan_hash_table, align 4
  %config_rx_coalesce = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 33
  %33 = ptrtoint ptr %config_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @xlgmac_config_rx_coalesce, ptr %config_rx_coalesce, align 4
  %config_tx_coalesce = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 34
  %34 = ptrtoint ptr %config_tx_coalesce to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @xlgmac_config_tx_coalesce, ptr %config_tx_coalesce, align 4
  %usec_to_riwt = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 35
  %35 = ptrtoint ptr %usec_to_riwt to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @xlgmac_usec_to_riwt, ptr %usec_to_riwt, align 4
  %riwt_to_usec = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 36
  %36 = ptrtoint ptr %riwt_to_usec to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @xlgmac_riwt_to_usec, ptr %riwt_to_usec, align 4
  %config_rx_threshold = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 37
  %37 = ptrtoint ptr %config_rx_threshold to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @xlgmac_config_rx_threshold, ptr %config_rx_threshold, align 4
  %config_tx_threshold = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 38
  %38 = ptrtoint ptr %config_tx_threshold to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xlgmac_config_tx_threshold, ptr %config_tx_threshold, align 4
  %config_rsf_mode = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 39
  %39 = ptrtoint ptr %config_rsf_mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @xlgmac_config_rsf_mode, ptr %config_rsf_mode, align 4
  %config_tsf_mode = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 40
  %40 = ptrtoint ptr %config_tsf_mode to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @xlgmac_config_tsf_mode, ptr %config_tsf_mode, align 4
  %config_osp_mode = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 41
  %41 = ptrtoint ptr %config_osp_mode to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @xlgmac_config_osp_mode, ptr %config_osp_mode, align 4
  %config_rx_pbl_val = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 42
  %42 = ptrtoint ptr %config_rx_pbl_val to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @xlgmac_config_rx_pbl_val, ptr %config_rx_pbl_val, align 4
  %get_rx_pbl_val = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 43
  %43 = ptrtoint ptr %get_rx_pbl_val to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @xlgmac_get_rx_pbl_val, ptr %get_rx_pbl_val, align 4
  %config_tx_pbl_val = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 44
  %44 = ptrtoint ptr %config_tx_pbl_val to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @xlgmac_config_tx_pbl_val, ptr %config_tx_pbl_val, align 4
  %get_tx_pbl_val = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 45
  %45 = ptrtoint ptr %get_tx_pbl_val to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @xlgmac_get_tx_pbl_val, ptr %get_tx_pbl_val, align 4
  %config_pblx8 = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 46
  %46 = ptrtoint ptr %config_pblx8 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @xlgmac_config_pblx8, ptr %config_pblx8, align 4
  %tx_mmc_int = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 48
  %47 = ptrtoint ptr %tx_mmc_int to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @xlgmac_tx_mmc_int, ptr %tx_mmc_int, align 4
  %rx_mmc_int = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 47
  %48 = ptrtoint ptr %rx_mmc_int to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @xlgmac_rx_mmc_int, ptr %rx_mmc_int, align 4
  %read_mmc_stats = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 49
  %49 = ptrtoint ptr %read_mmc_stats to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @xlgmac_read_mmc_stats, ptr %read_mmc_stats, align 4
  %enable_rss = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 50
  %50 = ptrtoint ptr %enable_rss to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @xlgmac_enable_rss, ptr %enable_rss, align 4
  %disable_rss = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 51
  %51 = ptrtoint ptr %disable_rss to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @xlgmac_disable_rss, ptr %disable_rss, align 4
  %set_rss_hash_key = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 52
  %52 = ptrtoint ptr %set_rss_hash_key to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @xlgmac_set_rss_hash_key, ptr %set_rss_hash_key, align 4
  %set_rss_lookup_table = getelementptr inbounds %struct.xlgmac_hw_ops, ptr %hw_ops, i32 0, i32 53
  %53 = ptrtoint ptr %set_rss_lookup_table to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @xlgmac_set_rss_lookup_table, ptr %set_rss_lookup_table, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_hw_init(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_count.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 15
  %0 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_q_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp83.not.i = icmp eq i32 %1, 0
  br i1 %cmp83.not.i, label %entry.if.end_crit_edge, label %for.body.lr.ph.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %entry
  %mac_regs.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  br label %for.body.i

for.cond26.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2887.not.i = icmp eq i32 %9, 0
  br i1 %cmp2887.not.i, label %for.cond26.preheader.i.if.end_crit_edge, label %for.cond26.preheader.i.for.body29.i_crit_edge

for.cond26.preheader.i.for.body29.i_crit_edge:    ; preds = %for.cond26.preheader.i
  br label %for.body29.i

for.cond26.preheader.i.if.end_crit_edge:          ; preds = %for.cond26.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4352
  %mul.i = shl i32 %i.084.i, 7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !64
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !65
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %7, i32 4352
  %add.ptr24.i = getelementptr i8, ptr %add.ptr22.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 %5) #10, !srcloc !66
  %inc.i = add nuw i32 %i.084.i, 1
  %8 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_q_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %9
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.cond26.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.cond26.i:                                     ; preds = %for.body29.i
  %inc57.i = add nuw i32 %i.188.i, 1
  %10 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_q_count.i, align 8
  %cmp28.i = icmp ult i32 %inc57.i, %11
  br i1 %cmp28.i, label %for.cond26.i.for.body29.i_crit_edge, label %for.cond26.i.if.end_crit_edge

for.cond26.i.if.end_crit_edge:                    ; preds = %for.cond26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond26.i.for.body29.i_crit_edge:              ; preds = %for.cond26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29.i

for.body29.i:                                     ; preds = %for.cond26.i.for.body29.i_crit_edge, %for.cond26.preheader.i.for.body29.i_crit_edge
  %i.188.i = phi i32 [ %inc57.i, %for.cond26.i.for.body29.i_crit_edge ], [ 0, %for.cond26.preheader.i.for.body29.i_crit_edge ]
  %12 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %13, i32 4352
  %mul34.i = shl i32 %i.188.i, 7
  %add.ptr35.i = getelementptr i8, ptr %add.ptr33.i, i32 %mul34.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr35.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !67
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool54.not.i = icmp eq i32 %15, 0
  br i1 %tobool54.not.i, label %for.cond26.i, label %for.body29.i.while.body.i_crit_edge

for.body29.i.while.body.i_crit_edge:              ; preds = %for.body29.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %for.body29.i.while.body.i_crit_edge
  %dec86.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ 1999, %for.body29.i.while.body.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #10
  %dec.i = add nsw i32 %dec86.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %for.cond26.i.if.end_crit_edge, %for.cond26.preheader.i.if.end_crit_edge, %entry.if.end_crit_edge
  %mac_regs.i56 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %16 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i57 = getelementptr i8, ptr %17, i32 12292
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !68
  %19 = or i32 %18, -2130182144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !69
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr76.i = getelementptr i8, ptr %21, i32 12292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76.i, i32 %19) #10, !srcloc !66
  %channel_count.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %22 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp34.not.i = icmp eq i32 %23, 0
  br i1 %cmp34.not.i, label %if.end.xlgmac_config_rx_coalesce.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i58

if.end.xlgmac_config_rx_coalesce.exitthread-pre-split_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_coalesce.exitthread-pre-split

for.body.lr.ph.i58:                               ; preds = %if.end
  %channel_head.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %24 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel_head.i, align 8
  %tx_osp_mode.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 21
  br label %for.body.i60

for.body.i60:                                     ; preds = %if.end.i.for.body.i60_crit_edge, %for.body.lr.ph.i58
  %channel.036.i = phi ptr [ %25, %for.body.lr.ph.i58 ], [ %incdec.ptr.i, %if.end.i.for.body.i60_crit_edge ]
  %i.035.i = phi i32 [ 0, %for.body.lr.ph.i58 ], [ %inc.i62, %if.end.i.for.body.i60_crit_edge ]
  %tx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i, i32 0, i32 10
  %26 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_ring.i, align 8
  %tobool.not.i59 = icmp eq ptr %27, null
  br i1 %tobool.not.i59, label %xlgmac_config_osp_mode.exitthread-pre-split, label %if.end.i

if.end.i:                                         ; preds = %for.body.i60
  %dma_regs.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i, i32 0, i32 3
  %28 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i61 = getelementptr i8, ptr %29, i32 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %31 = ptrtoint ptr %tx_osp_mode.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_osp_mode.i, align 8
  %shl.i = shl i32 %32, 4
  %and7.i = and i32 %shl.i, 16
  %33 = and i32 %30, -268435457
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  %or.i = or i32 %and7.i, %34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void @arm_heavy_mb() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %36 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr20.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %35) #10, !srcloc !66
  %inc.i62 = add nuw i32 %i.035.i, 1
  %incdec.ptr.i = getelementptr %struct.xlgmac_channel, ptr %channel.036.i, i32 1
  %38 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %channel_count.i, align 4
  %cmp.i63 = icmp ult i32 %inc.i62, %39
  br i1 %cmp.i63, label %if.end.i.for.body.i60_crit_edge, label %if.end.i.xlgmac_config_osp_mode.exit_crit_edge

if.end.i.xlgmac_config_osp_mode.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_osp_mode.exit

if.end.i.for.body.i60_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i60

xlgmac_config_osp_mode.exitthread-pre-split:      ; preds = %for.body.i60
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %channel_count.i, align 4
  br label %xlgmac_config_osp_mode.exit

xlgmac_config_osp_mode.exit:                      ; preds = %xlgmac_config_osp_mode.exitthread-pre-split, %if.end.i.xlgmac_config_osp_mode.exit_crit_edge
  %41 = phi i32 [ %.pr, %xlgmac_config_osp_mode.exitthread-pre-split ], [ %39, %if.end.i.xlgmac_config_osp_mode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp33.not.i = icmp eq i32 %41, 0
  br i1 %cmp33.not.i, label %xlgmac_config_pblx8.exitthread-pre-split, label %for.body.lr.ph.i66

for.body.lr.ph.i66:                               ; preds = %xlgmac_config_osp_mode.exit
  %42 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %channel_head.i, align 8
  %pblx8.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 17
  br label %for.body.i74

for.body.i74:                                     ; preds = %for.body.i74.for.body.i74_crit_edge, %for.body.lr.ph.i66
  %channel.035.i = phi ptr [ %43, %for.body.lr.ph.i66 ], [ %incdec.ptr.i72, %for.body.i74.for.body.i74_crit_edge ]
  %i.034.i = phi i32 [ 0, %for.body.lr.ph.i66 ], [ %inc.i71, %for.body.i74.for.body.i74_crit_edge ]
  %dma_regs.i67 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.035.i, i32 0, i32 3
  %44 = ptrtoint ptr %dma_regs.i67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dma_regs.i67, align 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !72
  %47 = ptrtoint ptr %pblx8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pblx8.i, align 8
  %shl.i68 = shl i32 %48, 16
  %and7.i69 = and i32 %shl.i68, 65536
  %49 = and i32 %46, -257
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  %or.i70 = or i32 %and7.i69, %50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i70) #10
  %52 = ptrtoint ptr %dma_regs.i67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dma_regs.i67, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #10, !srcloc !66
  %inc.i71 = add nuw i32 %i.034.i, 1
  %incdec.ptr.i72 = getelementptr %struct.xlgmac_channel, ptr %channel.035.i, i32 1
  %54 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %channel_count.i, align 4
  %cmp.i73 = icmp ult i32 %inc.i71, %55
  br i1 %cmp.i73, label %for.body.i74.for.body.i74_crit_edge, label %for.body.i74.xlgmac_config_pblx8.exit_crit_edge

for.body.i74.xlgmac_config_pblx8.exit_crit_edge:  ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_pblx8.exit

for.body.i74.for.body.i74_crit_edge:              ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i74

xlgmac_config_pblx8.exitthread-pre-split:         ; preds = %xlgmac_config_osp_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pr378 = load i32, ptr %channel_count.i, align 4
  br label %xlgmac_config_pblx8.exit

xlgmac_config_pblx8.exit:                         ; preds = %xlgmac_config_pblx8.exitthread-pre-split, %for.body.i74.xlgmac_config_pblx8.exit_crit_edge
  %57 = phi i32 [ %.pr378, %xlgmac_config_pblx8.exitthread-pre-split ], [ %55, %for.body.i74.xlgmac_config_pblx8.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp34.not.i76 = icmp eq i32 %57, 0
  br i1 %cmp34.not.i76, label %xlgmac_config_pblx8.exit.xlgmac_config_tx_pbl_val.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i78

xlgmac_config_pblx8.exit.xlgmac_config_tx_pbl_val.exitthread-pre-split_crit_edge: ; preds = %xlgmac_config_pblx8.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tx_pbl_val.exitthread-pre-split

for.body.lr.ph.i78:                               ; preds = %xlgmac_config_pblx8.exit
  %58 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %channel_head.i, align 8
  %tx_pbl.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 20
  br label %for.body.i83

for.body.i83:                                     ; preds = %if.end.i93.for.body.i83_crit_edge, %for.body.lr.ph.i78
  %channel.036.i79 = phi ptr [ %59, %for.body.lr.ph.i78 ], [ %incdec.ptr.i91, %if.end.i93.for.body.i83_crit_edge ]
  %i.035.i80 = phi i32 [ 0, %for.body.lr.ph.i78 ], [ %inc.i90, %if.end.i93.for.body.i83_crit_edge ]
  %tx_ring.i81 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i79, i32 0, i32 10
  %60 = ptrtoint ptr %tx_ring.i81 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_ring.i81, align 8
  %tobool.not.i82 = icmp eq ptr %61, null
  br i1 %tobool.not.i82, label %for.body.i83.xlgmac_config_tx_pbl_val.exitthread-pre-split_crit_edge, label %if.end.i93

for.body.i83.xlgmac_config_tx_pbl_val.exitthread-pre-split_crit_edge: ; preds = %for.body.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tx_pbl_val.exitthread-pre-split

if.end.i93:                                       ; preds = %for.body.i83
  %dma_regs.i84 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i79, i32 0, i32 3
  %62 = ptrtoint ptr %dma_regs.i84 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dma_regs.i84, align 8
  %add.ptr.i85 = getelementptr i8, ptr %63, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %65 = ptrtoint ptr %tx_pbl.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_pbl.i, align 4
  %shl.i86 = shl i32 %66, 16
  %and7.i87 = and i32 %shl.i86, 4128768
  %67 = and i32 %64, -16129
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  %or.i88 = or i32 %and7.i87, %68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  %69 = tail call i32 @llvm.bswap.i32(i32 %or.i88) #10
  %70 = ptrtoint ptr %dma_regs.i84 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma_regs.i84, align 8
  %add.ptr20.i89 = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i89, i32 %69) #10, !srcloc !66
  %inc.i90 = add nuw i32 %i.035.i80, 1
  %incdec.ptr.i91 = getelementptr %struct.xlgmac_channel, ptr %channel.036.i79, i32 1
  %72 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %channel_count.i, align 4
  %cmp.i92 = icmp ult i32 %inc.i90, %73
  br i1 %cmp.i92, label %if.end.i93.for.body.i83_crit_edge, label %if.end.i93.xlgmac_config_tx_pbl_val.exit_crit_edge

if.end.i93.xlgmac_config_tx_pbl_val.exit_crit_edge: ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tx_pbl_val.exit

if.end.i93.for.body.i83_crit_edge:                ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i83

xlgmac_config_tx_pbl_val.exitthread-pre-split:    ; preds = %for.body.i83.xlgmac_config_tx_pbl_val.exitthread-pre-split_crit_edge, %xlgmac_config_pblx8.exit.xlgmac_config_tx_pbl_val.exitthread-pre-split_crit_edge
  %74 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %.pr380 = load i32, ptr %channel_count.i, align 4
  br label %xlgmac_config_tx_pbl_val.exit

xlgmac_config_tx_pbl_val.exit:                    ; preds = %xlgmac_config_tx_pbl_val.exitthread-pre-split, %if.end.i93.xlgmac_config_tx_pbl_val.exit_crit_edge
  %75 = phi i32 [ %.pr380, %xlgmac_config_tx_pbl_val.exitthread-pre-split ], [ %73, %if.end.i93.xlgmac_config_tx_pbl_val.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp34.not.i95 = icmp eq i32 %75, 0
  br i1 %cmp34.not.i95, label %xlgmac_config_tx_pbl_val.exit.xlgmac_config_rx_pbl_val.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i97

xlgmac_config_tx_pbl_val.exit.xlgmac_config_rx_pbl_val.exitthread-pre-split_crit_edge: ; preds = %xlgmac_config_tx_pbl_val.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_pbl_val.exitthread-pre-split

for.body.lr.ph.i97:                               ; preds = %xlgmac_config_tx_pbl_val.exit
  %76 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %channel_head.i, align 8
  %rx_pbl.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 24
  br label %for.body.i101

for.body.i101:                                    ; preds = %if.end.i111.for.body.i101_crit_edge, %for.body.lr.ph.i97
  %channel.036.i98 = phi ptr [ %77, %for.body.lr.ph.i97 ], [ %incdec.ptr.i109, %if.end.i111.for.body.i101_crit_edge ]
  %i.035.i99 = phi i32 [ 0, %for.body.lr.ph.i97 ], [ %inc.i108, %if.end.i111.for.body.i101_crit_edge ]
  %rx_ring.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i98, i32 0, i32 11
  %78 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rx_ring.i, align 4
  %tobool.not.i100 = icmp eq ptr %79, null
  br i1 %tobool.not.i100, label %for.body.i101.xlgmac_config_rx_pbl_val.exitthread-pre-split_crit_edge, label %if.end.i111

for.body.i101.xlgmac_config_rx_pbl_val.exitthread-pre-split_crit_edge: ; preds = %for.body.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_pbl_val.exitthread-pre-split

if.end.i111:                                      ; preds = %for.body.i101
  %dma_regs.i102 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i98, i32 0, i32 3
  %80 = ptrtoint ptr %dma_regs.i102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dma_regs.i102, align 8
  %add.ptr.i103 = getelementptr i8, ptr %81, i32 8
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i103) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  %83 = ptrtoint ptr %rx_pbl.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %rx_pbl.i, align 4
  %shl.i104 = shl i32 %84, 16
  %and7.i105 = and i32 %shl.i104, 4128768
  %85 = and i32 %82, -16129
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  %or.i106 = or i32 %and7.i105, %86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @arm_heavy_mb() #10
  %87 = tail call i32 @llvm.bswap.i32(i32 %or.i106) #10
  %88 = ptrtoint ptr %dma_regs.i102 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dma_regs.i102, align 8
  %add.ptr20.i107 = getelementptr i8, ptr %89, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i107, i32 %87) #10, !srcloc !66
  %inc.i108 = add nuw i32 %i.035.i99, 1
  %incdec.ptr.i109 = getelementptr %struct.xlgmac_channel, ptr %channel.036.i98, i32 1
  %90 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %channel_count.i, align 4
  %cmp.i110 = icmp ult i32 %inc.i108, %91
  br i1 %cmp.i110, label %if.end.i111.for.body.i101_crit_edge, label %if.end.i111.xlgmac_config_rx_pbl_val.exit_crit_edge

if.end.i111.xlgmac_config_rx_pbl_val.exit_crit_edge: ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_pbl_val.exit

if.end.i111.for.body.i101_crit_edge:              ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i101

xlgmac_config_rx_pbl_val.exitthread-pre-split:    ; preds = %for.body.i101.xlgmac_config_rx_pbl_val.exitthread-pre-split_crit_edge, %xlgmac_config_tx_pbl_val.exit.xlgmac_config_rx_pbl_val.exitthread-pre-split_crit_edge
  %92 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr382 = load i32, ptr %channel_count.i, align 4
  br label %xlgmac_config_rx_pbl_val.exit

xlgmac_config_rx_pbl_val.exit:                    ; preds = %xlgmac_config_rx_pbl_val.exitthread-pre-split, %if.end.i111.xlgmac_config_rx_pbl_val.exit_crit_edge
  %93 = phi i32 [ %.pr382, %xlgmac_config_rx_pbl_val.exitthread-pre-split ], [ %91, %if.end.i111.xlgmac_config_rx_pbl_val.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp34.not.i113 = icmp eq i32 %93, 0
  br i1 %cmp34.not.i113, label %xlgmac_config_rx_pbl_val.exit.xlgmac_config_rx_coalesce.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i115

xlgmac_config_rx_pbl_val.exit.xlgmac_config_rx_coalesce.exitthread-pre-split_crit_edge: ; preds = %xlgmac_config_rx_pbl_val.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_coalesce.exitthread-pre-split

for.body.lr.ph.i115:                              ; preds = %xlgmac_config_rx_pbl_val.exit
  %94 = ptrtoint ptr %channel_head.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %channel_head.i, align 8
  %rx_riwt.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 27
  br label %for.body.i120

for.body.i120:                                    ; preds = %if.end.i129.for.body.i120_crit_edge, %for.body.lr.ph.i115
  %channel.036.i116 = phi ptr [ %95, %for.body.lr.ph.i115 ], [ %incdec.ptr.i127, %if.end.i129.for.body.i120_crit_edge ]
  %i.035.i117 = phi i32 [ 0, %for.body.lr.ph.i115 ], [ %inc.i126, %if.end.i129.for.body.i120_crit_edge ]
  %rx_ring.i118 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i116, i32 0, i32 11
  %96 = ptrtoint ptr %rx_ring.i118 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rx_ring.i118, align 4
  %tobool.not.i119 = icmp eq ptr %97, null
  br i1 %tobool.not.i119, label %for.body.i120.xlgmac_config_rx_coalesce.exitthread-pre-split_crit_edge, label %if.end.i129

for.body.i120.xlgmac_config_rx_coalesce.exitthread-pre-split_crit_edge: ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_coalesce.exitthread-pre-split

if.end.i129:                                      ; preds = %for.body.i120
  %dma_regs.i121 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i116, i32 0, i32 3
  %98 = ptrtoint ptr %dma_regs.i121 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dma_regs.i121, align 8
  %add.ptr.i122 = getelementptr i8, ptr %99, i32 60
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !78
  %101 = ptrtoint ptr %rx_riwt.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rx_riwt.i, align 8
  %and7.i123 = and i32 %102, 255
  %103 = and i32 %100, 16777215
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #10
  %or.i124 = or i32 %and7.i123, %104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  tail call void @arm_heavy_mb() #10
  %105 = tail call i32 @llvm.bswap.i32(i32 %or.i124) #10
  %106 = ptrtoint ptr %dma_regs.i121 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dma_regs.i121, align 8
  %add.ptr20.i125 = getelementptr i8, ptr %107, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i125, i32 %105) #10, !srcloc !66
  %inc.i126 = add nuw i32 %i.035.i117, 1
  %incdec.ptr.i127 = getelementptr %struct.xlgmac_channel, ptr %channel.036.i116, i32 1
  %108 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %channel_count.i, align 4
  %cmp.i128 = icmp ult i32 %inc.i126, %109
  br i1 %cmp.i128, label %if.end.i129.for.body.i120_crit_edge, label %if.end.i129.xlgmac_config_rx_coalesce.exit_crit_edge

if.end.i129.xlgmac_config_rx_coalesce.exit_crit_edge: ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_coalesce.exit

if.end.i129.for.body.i120_crit_edge:              ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i120

xlgmac_config_rx_coalesce.exitthread-pre-split:   ; preds = %for.body.i120.xlgmac_config_rx_coalesce.exitthread-pre-split_crit_edge, %xlgmac_config_rx_pbl_val.exit.xlgmac_config_rx_coalesce.exitthread-pre-split_crit_edge, %if.end.xlgmac_config_rx_coalesce.exitthread-pre-split_crit_edge
  %110 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %.pr384 = load i32, ptr %channel_count.i, align 4
  br label %xlgmac_config_rx_coalesce.exit

xlgmac_config_rx_coalesce.exit:                   ; preds = %xlgmac_config_rx_coalesce.exitthread-pre-split, %if.end.i129.xlgmac_config_rx_coalesce.exit_crit_edge
  %111 = phi i32 [ %.pr384, %xlgmac_config_rx_coalesce.exitthread-pre-split ], [ %109, %if.end.i129.xlgmac_config_rx_coalesce.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp34.not.i131 = icmp eq i32 %111, 0
  br i1 %cmp34.not.i131, label %xlgmac_config_rx_coalesce.exit.xlgmac_config_rx_buffer_size.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i133

xlgmac_config_rx_coalesce.exit.xlgmac_config_rx_buffer_size.exitthread-pre-split_crit_edge: ; preds = %xlgmac_config_rx_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_buffer_size.exitthread-pre-split

for.body.lr.ph.i133:                              ; preds = %xlgmac_config_rx_coalesce.exit
  %channel_head.i132 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %112 = ptrtoint ptr %channel_head.i132 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %channel_head.i132, align 8
  %rx_buf_size.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 30
  br label %for.body.i138

for.body.i138:                                    ; preds = %if.end.i148.for.body.i138_crit_edge, %for.body.lr.ph.i133
  %channel.036.i134 = phi ptr [ %113, %for.body.lr.ph.i133 ], [ %incdec.ptr.i146, %if.end.i148.for.body.i138_crit_edge ]
  %i.035.i135 = phi i32 [ 0, %for.body.lr.ph.i133 ], [ %inc.i145, %if.end.i148.for.body.i138_crit_edge ]
  %rx_ring.i136 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i134, i32 0, i32 11
  %114 = ptrtoint ptr %rx_ring.i136 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rx_ring.i136, align 4
  %tobool.not.i137 = icmp eq ptr %115, null
  br i1 %tobool.not.i137, label %for.body.i138.xlgmac_config_rx_buffer_size.exitthread-pre-split_crit_edge, label %if.end.i148

for.body.i138.xlgmac_config_rx_buffer_size.exitthread-pre-split_crit_edge: ; preds = %for.body.i138
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_buffer_size.exitthread-pre-split

if.end.i148:                                      ; preds = %for.body.i138
  %dma_regs.i139 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036.i134, i32 0, i32 3
  %116 = ptrtoint ptr %dma_regs.i139 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dma_regs.i139, align 8
  %add.ptr.i140 = getelementptr i8, ptr %117, i32 8
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !80
  %119 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %rx_buf_size.i, align 4
  %shl.i141 = shl i32 %120, 1
  %and7.i142 = and i32 %shl.i141, 32766
  %121 = and i32 %118, 25231359
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #10
  %or.i143 = or i32 %and7.i142, %122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !81
  tail call void @arm_heavy_mb() #10
  %123 = tail call i32 @llvm.bswap.i32(i32 %or.i143) #10
  %124 = ptrtoint ptr %dma_regs.i139 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dma_regs.i139, align 8
  %add.ptr20.i144 = getelementptr i8, ptr %125, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i144, i32 %123) #10, !srcloc !66
  %inc.i145 = add nuw i32 %i.035.i135, 1
  %incdec.ptr.i146 = getelementptr %struct.xlgmac_channel, ptr %channel.036.i134, i32 1
  %126 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %channel_count.i, align 4
  %cmp.i147 = icmp ult i32 %inc.i145, %127
  br i1 %cmp.i147, label %if.end.i148.for.body.i138_crit_edge, label %if.end.i148.xlgmac_config_rx_buffer_size.exit_crit_edge

if.end.i148.xlgmac_config_rx_buffer_size.exit_crit_edge: ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_buffer_size.exit

if.end.i148.for.body.i138_crit_edge:              ; preds = %if.end.i148
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i138

xlgmac_config_rx_buffer_size.exitthread-pre-split: ; preds = %for.body.i138.xlgmac_config_rx_buffer_size.exitthread-pre-split_crit_edge, %xlgmac_config_rx_coalesce.exit.xlgmac_config_rx_buffer_size.exitthread-pre-split_crit_edge
  %128 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr385 = load i32, ptr %channel_count.i, align 4
  br label %xlgmac_config_rx_buffer_size.exit

xlgmac_config_rx_buffer_size.exit:                ; preds = %xlgmac_config_rx_buffer_size.exitthread-pre-split, %if.end.i148.xlgmac_config_rx_buffer_size.exit_crit_edge
  %129 = phi i32 [ %.pr385, %xlgmac_config_rx_buffer_size.exitthread-pre-split ], [ %127, %if.end.i148.xlgmac_config_rx_buffer_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp37.not.i = icmp eq i32 %129, 0
  br i1 %cmp37.not.i, label %xlgmac_config_rx_buffer_size.exit.xlgmac_config_tso_mode.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i151

xlgmac_config_rx_buffer_size.exit.xlgmac_config_tso_mode.exitthread-pre-split_crit_edge: ; preds = %xlgmac_config_rx_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tso_mode.exitthread-pre-split

for.body.lr.ph.i151:                              ; preds = %xlgmac_config_rx_buffer_size.exit
  %channel_head.i150 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %130 = ptrtoint ptr %channel_head.i150 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %channel_head.i150, align 8
  %tso.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 21
  br label %for.body.i154

for.body.i154:                                    ; preds = %for.inc.i.for.body.i154_crit_edge, %for.body.lr.ph.i151
  %channel.039.i = phi ptr [ %131, %for.body.lr.ph.i151 ], [ %incdec.ptr.i160, %for.inc.i.for.body.i154_crit_edge ]
  %i.038.i = phi i32 [ 0, %for.body.lr.ph.i151 ], [ %inc.i159, %for.inc.i.for.body.i154_crit_edge ]
  %tx_ring.i152 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.039.i, i32 0, i32 10
  %132 = ptrtoint ptr %tx_ring.i152 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %tx_ring.i152, align 8
  %tobool.not.i153 = icmp eq ptr %133, null
  br i1 %tobool.not.i153, label %for.body.i154.xlgmac_config_tso_mode.exitthread-pre-split_crit_edge, label %if.end.i155

for.body.i154.xlgmac_config_tso_mode.exitthread-pre-split_crit_edge: ; preds = %for.body.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tso_mode.exitthread-pre-split

if.end.i155:                                      ; preds = %for.body.i154
  %134 = ptrtoint ptr %tso.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %tso.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool1.not.i = icmp eq i32 %135, 0
  br i1 %tobool1.not.i, label %if.end.i155.for.inc.i_crit_edge, label %if.then2.i

if.end.i155.for.inc.i_crit_edge:                  ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then2.i:                                       ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #12
  %dma_regs.i156 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.039.i, i32 0, i32 3
  %136 = ptrtoint ptr %dma_regs.i156 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %dma_regs.i156, align 8
  %add.ptr.i157 = getelementptr i8, ptr %137, i32 4
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !82
  %139 = or i32 %138, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !83
  tail call void @arm_heavy_mb() #10
  %140 = ptrtoint ptr %dma_regs.i156 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dma_regs.i156, align 8
  %add.ptr22.i158 = getelementptr i8, ptr %141, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i158, i32 %139) #10, !srcloc !66
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then2.i, %if.end.i155.for.inc.i_crit_edge
  %inc.i159 = add nuw i32 %i.038.i, 1
  %incdec.ptr.i160 = getelementptr %struct.xlgmac_channel, ptr %channel.039.i, i32 1
  %142 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %channel_count.i, align 4
  %cmp.i161 = icmp ult i32 %inc.i159, %143
  br i1 %cmp.i161, label %for.inc.i.for.body.i154_crit_edge, label %for.inc.i.xlgmac_config_tso_mode.exit_crit_edge

for.inc.i.xlgmac_config_tso_mode.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tso_mode.exit

for.inc.i.for.body.i154_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i154

xlgmac_config_tso_mode.exitthread-pre-split:      ; preds = %for.body.i154.xlgmac_config_tso_mode.exitthread-pre-split_crit_edge, %xlgmac_config_rx_buffer_size.exit.xlgmac_config_tso_mode.exitthread-pre-split_crit_edge
  %144 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %.pr386 = load i32, ptr %channel_count.i, align 4
  br label %xlgmac_config_tso_mode.exit

xlgmac_config_tso_mode.exit:                      ; preds = %xlgmac_config_tso_mode.exitthread-pre-split, %for.inc.i.xlgmac_config_tso_mode.exit_crit_edge
  %145 = phi i32 [ %.pr386, %xlgmac_config_tso_mode.exitthread-pre-split ], [ %143, %for.inc.i.xlgmac_config_tso_mode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp82.not.i = icmp eq i32 %145, 0
  br i1 %cmp82.not.i, label %xlgmac_config_tso_mode.exit.xlgmac_config_sph_mode.exit_crit_edge, label %for.body.preheader.i

xlgmac_config_tso_mode.exit.xlgmac_config_sph_mode.exit_crit_edge: ; preds = %xlgmac_config_tso_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_sph_mode.exit

for.body.preheader.i:                             ; preds = %xlgmac_config_tso_mode.exit
  %channel_head.i163 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %146 = ptrtoint ptr %channel_head.i163 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %channel_head.i163, align 8
  br label %for.body.i166

for.body.i166:                                    ; preds = %if.end.i171.for.body.i166_crit_edge, %for.body.preheader.i
  %channel.084.i = phi ptr [ %incdec.ptr.i169, %if.end.i171.for.body.i166_crit_edge ], [ %147, %for.body.preheader.i ]
  %i.083.i = phi i32 [ %inc.i168, %if.end.i171.for.body.i166_crit_edge ], [ 0, %for.body.preheader.i ]
  %rx_ring.i164 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.084.i, i32 0, i32 11
  %148 = ptrtoint ptr %rx_ring.i164 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rx_ring.i164, align 4
  %tobool.not.i165 = icmp eq ptr %149, null
  br i1 %tobool.not.i165, label %for.body.i166.xlgmac_config_sph_mode.exit_crit_edge, label %if.end.i171

for.body.i166.xlgmac_config_sph_mode.exit_crit_edge: ; preds = %for.body.i166
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_sph_mode.exit

if.end.i171:                                      ; preds = %for.body.i166
  %dma_regs.i167 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.084.i, i32 0, i32 3
  %150 = ptrtoint ptr %dma_regs.i167 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dma_regs.i167, align 8
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %151) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !84
  %153 = or i32 %152, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  %154 = ptrtoint ptr %dma_regs.i167 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dma_regs.i167, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #10, !srcloc !66
  %inc.i168 = add nuw i32 %i.083.i, 1
  %incdec.ptr.i169 = getelementptr %struct.xlgmac_channel, ptr %channel.084.i, i32 1
  %156 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %channel_count.i, align 4
  %cmp.i170 = icmp ult i32 %inc.i168, %157
  br i1 %cmp.i170, label %if.end.i171.for.body.i166_crit_edge, label %if.end.i171.xlgmac_config_sph_mode.exit_crit_edge

if.end.i171.xlgmac_config_sph_mode.exit_crit_edge: ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_sph_mode.exit

if.end.i171.for.body.i166_crit_edge:              ; preds = %if.end.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i166

xlgmac_config_sph_mode.exit:                      ; preds = %if.end.i171.xlgmac_config_sph_mode.exit_crit_edge, %for.body.i166.xlgmac_config_sph_mode.exit_crit_edge, %xlgmac_config_tso_mode.exit.xlgmac_config_sph_mode.exit_crit_edge
  %158 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr23.i = getelementptr i8, ptr %159, i32 4
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  %161 = and i32 %160, -7340033
  %162 = or i32 %161, 3145728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @arm_heavy_mb() #10
  %163 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr59.i = getelementptr i8, ptr %164, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.i, i32 %162) #10, !srcloc !66
  %rss.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 23
  %165 = ptrtoint ptr %rss.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %rss.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool.not.i173 = icmp eq i32 %166, 0
  br i1 %tobool.not.i173, label %xlgmac_config_sph_mode.exit.xlgmac_config_rss.exit_crit_edge, label %if.end.i175

xlgmac_config_sph_mode.exit.xlgmac_config_rss.exit_crit_edge: ; preds = %xlgmac_config_sph_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rss.exit

if.end.i175:                                      ; preds = %xlgmac_config_sph_mode.exit
  %167 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %pdata, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %168, i32 0, i32 23
  %169 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %features.i, align 16
  %and.i = and i64 %170, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool1.not.i174 = icmp eq i64 %and.i, 0
  br i1 %tobool1.not.i174, label %if.end4.thread.i, label %if.end4.i

if.end4.thread.i:                                 ; preds = %if.end.i175
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i.i = getelementptr i8, ptr %172, i32 3200
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %174 = and i32 %173, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %175 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %176, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 %174) #10, !srcloc !66
  br label %xlgmac_config_rss.exit

if.end4.i:                                        ; preds = %if.end.i175
  %call.i = tail call i32 @xlgmac_enable_rss(ptr noundef %pdata) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.xlgmac_config_rss.exit_crit_edge, label %if.then6.i

if.end4.i.xlgmac_config_rss.exit_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rss.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %177 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %178, ptr noundef nonnull @.str) #13
  br label %xlgmac_config_rss.exit

xlgmac_config_rss.exit:                           ; preds = %if.then6.i, %if.end4.i.xlgmac_config_rss.exit_crit_edge, %if.end4.thread.i, %xlgmac_config_sph_mode.exit.xlgmac_config_rss.exit_crit_edge
  %tx_desc_init = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 3, i32 5
  %179 = ptrtoint ptr %tx_desc_init to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tx_desc_init, align 4
  tail call void %180(ptr noundef %pdata) #10
  %rx_desc_init = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 3, i32 6
  %181 = ptrtoint ptr %rx_desc_init to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %rx_desc_init, align 4
  tail call void %182(ptr noundef %pdata) #10
  %183 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %channel_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp227.not.i = icmp eq i32 %184, 0
  br i1 %cmp227.not.i, label %xlgmac_config_rss.exit.xlgmac_enable_dma_interrupts.exit_crit_edge, label %for.body.preheader.i178

xlgmac_config_rss.exit.xlgmac_enable_dma_interrupts.exit_crit_edge: ; preds = %xlgmac_config_rss.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_enable_dma_interrupts.exit

for.body.preheader.i178:                          ; preds = %xlgmac_config_rss.exit
  %channel_head.i177 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %185 = ptrtoint ptr %channel_head.i177 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %channel_head.i177, align 8
  br label %for.body.i184

for.body.i184:                                    ; preds = %for.body.i184.for.body.i184_crit_edge, %for.body.preheader.i178
  %channel.0229.i = phi ptr [ %incdec.ptr.i182, %for.body.i184.for.body.i184_crit_edge ], [ %186, %for.body.preheader.i178 ]
  %i.0228.i = phi i32 [ %inc.i181, %for.body.i184.for.body.i184_crit_edge ], [ 0, %for.body.preheader.i178 ]
  %dma_regs.i179 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0229.i, i32 0, i32 3
  %187 = ptrtoint ptr %dma_regs.i179 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %dma_regs.i179, align 8
  %add.ptr.i180 = getelementptr i8, ptr %188, i32 96
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !91
  tail call void @arm_heavy_mb() #10
  %190 = ptrtoint ptr %dma_regs.i179 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dma_regs.i179, align 8
  %add.ptr3.i = getelementptr i8, ptr %191, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %189) #10, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !92
  tail call void @arm_heavy_mb() #10
  %192 = ptrtoint ptr %dma_regs.i179 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dma_regs.i179, align 8
  %add.ptr175.i = getelementptr i8, ptr %193, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr175.i, i32 %189) #10, !srcloc !66
  %inc.i181 = add nuw i32 %i.0228.i, 1
  %incdec.ptr.i182 = getelementptr %struct.xlgmac_channel, ptr %channel.0229.i, i32 1
  %194 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %channel_count.i, align 4
  %cmp.i183 = icmp ult i32 %inc.i181, %195
  br i1 %cmp.i183, label %for.body.i184.for.body.i184_crit_edge, label %for.body.i184.xlgmac_enable_dma_interrupts.exit_crit_edge

for.body.i184.xlgmac_enable_dma_interrupts.exit_crit_edge: ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_enable_dma_interrupts.exit

for.body.i184.for.body.i184_crit_edge:            ; preds = %for.body.i184
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i184

xlgmac_enable_dma_interrupts.exit:                ; preds = %for.body.i184.xlgmac_enable_dma_interrupts.exit_crit_edge, %xlgmac_config_rss.exit.xlgmac_enable_dma_interrupts.exit_crit_edge
  %196 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i186 = getelementptr i8, ptr %197, i32 4096
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !93
  %199 = and i32 %198, -1610612737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !94
  tail call void @arm_heavy_mb() #10
  %200 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i187 = getelementptr i8, ptr %201, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i187, i32 %199) #10, !srcloc !66
  %tc_cnt.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 24
  %202 = ptrtoint ptr %tc_cnt.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %tc_cnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp196.not.i = icmp eq i32 %203, 0
  br i1 %cmp196.not.i, label %xlgmac_enable_dma_interrupts.exit.xlgmac_config_mtl_mode.exit_crit_edge, label %xlgmac_enable_dma_interrupts.exit.for.body.i191_crit_edge

xlgmac_enable_dma_interrupts.exit.for.body.i191_crit_edge: ; preds = %xlgmac_enable_dma_interrupts.exit
  br label %for.body.i191

xlgmac_enable_dma_interrupts.exit.xlgmac_config_mtl_mode.exit_crit_edge: ; preds = %xlgmac_enable_dma_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_mtl_mode.exit

for.body.i191:                                    ; preds = %for.body.i191.for.body.i191_crit_edge, %xlgmac_enable_dma_interrupts.exit.for.body.i191_crit_edge
  %i.0197.i = phi i32 [ %inc.i189, %for.body.i191.for.body.i191_crit_edge ], [ 0, %xlgmac_enable_dma_interrupts.exit.for.body.i191_crit_edge ]
  %204 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mac_regs.i56, align 4
  %mul.i188 = shl i32 %i.0197.i, 7
  %add.ptr25.i = getelementptr i8, ptr %205, i32 4368
  %add.ptr26.i = getelementptr i8, ptr %add.ptr25.i, i32 %mul.i188
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !95
  %207 = and i32 %206, -50331649
  %208 = or i32 %207, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !96
  tail call void @arm_heavy_mb() #10
  %209 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr64.i = getelementptr i8, ptr %210, i32 4368
  %add.ptr65.i = getelementptr i8, ptr %add.ptr64.i, i32 %mul.i188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65.i, i32 %208) #10, !srcloc !66
  %211 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr71.i = getelementptr i8, ptr %212, i32 4376
  %add.ptr72.i = getelementptr i8, ptr %add.ptr71.i, i32 %mul.i188
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !97
  %214 = and i32 %213, 57599
  %215 = or i32 %214, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !98
  tail call void @arm_heavy_mb() #10
  %216 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr110.i = getelementptr i8, ptr %217, i32 4376
  %add.ptr111.i = getelementptr i8, ptr %add.ptr110.i, i32 %mul.i188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111.i, i32 %215) #10, !srcloc !66
  %inc.i189 = add nuw i32 %i.0197.i, 1
  %218 = ptrtoint ptr %tc_cnt.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %tc_cnt.i, align 8
  %cmp.i190 = icmp ult i32 %inc.i189, %219
  br i1 %cmp.i190, label %for.body.i191.for.body.i191_crit_edge, label %for.body.i191.xlgmac_config_mtl_mode.exit_crit_edge

for.body.i191.xlgmac_config_mtl_mode.exit_crit_edge: ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_mtl_mode.exit

for.body.i191.for.body.i191_crit_edge:            ; preds = %for.body.i191
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i191

xlgmac_config_mtl_mode.exit:                      ; preds = %for.body.i191.xlgmac_config_mtl_mode.exit_crit_edge, %xlgmac_enable_dma_interrupts.exit.xlgmac_config_mtl_mode.exit_crit_edge
  %220 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr115.i = getelementptr i8, ptr %221, i32 4096
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !99
  %223 = and i32 %222, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  tail call void @arm_heavy_mb() #10
  %224 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr151.i = getelementptr i8, ptr %225, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151.i, i32 %223) #10, !srcloc !66
  tail call fastcc void @xlgmac_config_queue_mapping(ptr noundef %pdata)
  %226 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %tx_q_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %cmp38.not.i = icmp eq i32 %227, 0
  br i1 %cmp38.not.i, label %xlgmac_config_mtl_mode.exit.xlgmac_config_tsf_mode.exit_crit_edge, label %for.body.lr.ph.i195

xlgmac_config_mtl_mode.exit.xlgmac_config_tsf_mode.exit_crit_edge: ; preds = %xlgmac_config_mtl_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tsf_mode.exit

for.body.lr.ph.i195:                              ; preds = %xlgmac_config_mtl_mode.exit
  %tx_sf_mode = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 18
  %228 = ptrtoint ptr %tx_sf_mode to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %tx_sf_mode, align 4
  %shl.i194 = shl i32 %229, 1
  %and9.i = and i32 %shl.i194, 2
  br label %for.body.i204

for.body.i204:                                    ; preds = %for.body.i204.for.body.i204_crit_edge, %for.body.lr.ph.i195
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i195 ], [ %inc.i202, %for.body.i204.for.body.i204_crit_edge ]
  %230 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i196 = getelementptr i8, ptr %231, i32 4352
  %mul.i197 = shl i32 %i.039.i, 7
  %add.ptr1.i198 = getelementptr i8, ptr %add.ptr.i196, i32 %mul.i197
  %232 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i198) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  %233 = and i32 %232, -33554433
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #10
  %or.i199 = or i32 %234, %and9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @arm_heavy_mb() #10
  %235 = tail call i32 @llvm.bswap.i32(i32 %or.i199) #10
  %236 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr22.i200 = getelementptr i8, ptr %237, i32 4352
  %add.ptr24.i201 = getelementptr i8, ptr %add.ptr22.i200, i32 %mul.i197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i201, i32 %235) #10, !srcloc !66
  %inc.i202 = add nuw i32 %i.039.i, 1
  %238 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %tx_q_count.i, align 8
  %cmp.i203 = icmp ult i32 %inc.i202, %239
  br i1 %cmp.i203, label %for.body.i204.for.body.i204_crit_edge, label %for.body.i204.xlgmac_config_tsf_mode.exit_crit_edge

for.body.i204.xlgmac_config_tsf_mode.exit_crit_edge: ; preds = %for.body.i204
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tsf_mode.exit

for.body.i204.for.body.i204_crit_edge:            ; preds = %for.body.i204
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i204

xlgmac_config_tsf_mode.exit:                      ; preds = %for.body.i204.xlgmac_config_tsf_mode.exit_crit_edge, %xlgmac_config_mtl_mode.exit.xlgmac_config_tsf_mode.exit_crit_edge
  %rx_q_count.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 16
  %240 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %rx_q_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp38.not.i205 = icmp eq i32 %241, 0
  br i1 %cmp38.not.i205, label %xlgmac_config_tsf_mode.exit.xlgmac_config_rsf_mode.exit_crit_edge, label %for.body.lr.ph.i209

xlgmac_config_tsf_mode.exit.xlgmac_config_rsf_mode.exit_crit_edge: ; preds = %xlgmac_config_tsf_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rsf_mode.exit

for.body.lr.ph.i209:                              ; preds = %xlgmac_config_tsf_mode.exit
  %rx_sf_mode = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 22
  %242 = ptrtoint ptr %rx_sf_mode to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %rx_sf_mode, align 4
  %shl.i207 = shl i32 %243, 5
  %and9.i208 = and i32 %shl.i207, 32
  br label %for.body.i218

for.body.i218:                                    ; preds = %for.body.i218.for.body.i218_crit_edge, %for.body.lr.ph.i209
  %i.039.i210 = phi i32 [ 0, %for.body.lr.ph.i209 ], [ %inc.i216, %for.body.i218.for.body.i218_crit_edge ]
  %244 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mac_regs.i56, align 4
  %mul.i211 = shl i32 %i.039.i210, 7
  %add.ptr1.i212 = getelementptr i8, ptr %245, i32 4416
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i212, i32 %mul.i211
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !103
  %247 = and i32 %246, -536870913
  %248 = tail call i32 @llvm.bswap.i32(i32 %247) #10
  %or.i213 = or i32 %248, %and9.i208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @arm_heavy_mb() #10
  %249 = tail call i32 @llvm.bswap.i32(i32 %or.i213) #10
  %250 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr24.i214 = getelementptr i8, ptr %251, i32 4416
  %add.ptr25.i215 = getelementptr i8, ptr %add.ptr24.i214, i32 %mul.i211
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i215, i32 %249) #10, !srcloc !66
  %inc.i216 = add nuw i32 %i.039.i210, 1
  %252 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %rx_q_count.i, align 4
  %cmp.i217 = icmp ult i32 %inc.i216, %253
  br i1 %cmp.i217, label %for.body.i218.for.body.i218_crit_edge, label %for.body.i218.xlgmac_config_rsf_mode.exit_crit_edge

for.body.i218.xlgmac_config_rsf_mode.exit_crit_edge: ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rsf_mode.exit

for.body.i218.for.body.i218_crit_edge:            ; preds = %for.body.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i218

xlgmac_config_rsf_mode.exit:                      ; preds = %for.body.i218.xlgmac_config_rsf_mode.exit_crit_edge, %xlgmac_config_tsf_mode.exit.xlgmac_config_rsf_mode.exit_crit_edge
  %254 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %tx_q_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp38.not.i220 = icmp eq i32 %255, 0
  br i1 %cmp38.not.i220, label %xlgmac_config_rsf_mode.exit.xlgmac_config_tx_threshold.exit_crit_edge, label %for.body.lr.ph.i224

xlgmac_config_rsf_mode.exit.xlgmac_config_tx_threshold.exit_crit_edge: ; preds = %xlgmac_config_rsf_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tx_threshold.exit

for.body.lr.ph.i224:                              ; preds = %xlgmac_config_rsf_mode.exit
  %tx_threshold = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 19
  %256 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %tx_threshold, align 8
  %shl.i222 = shl i32 %257, 4
  %and9.i223 = and i32 %shl.i222, 112
  br label %for.body.i234

for.body.i234:                                    ; preds = %for.body.i234.for.body.i234_crit_edge, %for.body.lr.ph.i224
  %i.039.i225 = phi i32 [ 0, %for.body.lr.ph.i224 ], [ %inc.i232, %for.body.i234.for.body.i234_crit_edge ]
  %258 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i226 = getelementptr i8, ptr %259, i32 4352
  %mul.i227 = shl i32 %i.039.i225, 7
  %add.ptr1.i228 = getelementptr i8, ptr %add.ptr.i226, i32 %mul.i227
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i228) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  %261 = and i32 %260, -1879048193
  %262 = tail call i32 @llvm.bswap.i32(i32 %261) #10
  %or.i229 = or i32 %262, %and9.i223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @arm_heavy_mb() #10
  %263 = tail call i32 @llvm.bswap.i32(i32 %or.i229) #10
  %264 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr22.i230 = getelementptr i8, ptr %265, i32 4352
  %add.ptr24.i231 = getelementptr i8, ptr %add.ptr22.i230, i32 %mul.i227
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i231, i32 %263) #10, !srcloc !66
  %inc.i232 = add nuw i32 %i.039.i225, 1
  %266 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %tx_q_count.i, align 8
  %cmp.i233 = icmp ult i32 %inc.i232, %267
  br i1 %cmp.i233, label %for.body.i234.for.body.i234_crit_edge, label %for.body.i234.xlgmac_config_tx_threshold.exit_crit_edge

for.body.i234.xlgmac_config_tx_threshold.exit_crit_edge: ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tx_threshold.exit

for.body.i234.for.body.i234_crit_edge:            ; preds = %for.body.i234
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i234

xlgmac_config_tx_threshold.exit:                  ; preds = %for.body.i234.xlgmac_config_tx_threshold.exit_crit_edge, %xlgmac_config_rsf_mode.exit.xlgmac_config_tx_threshold.exit_crit_edge
  %268 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %rx_q_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %cmp38.not.i236 = icmp eq i32 %269, 0
  br i1 %cmp38.not.i236, label %xlgmac_config_tx_threshold.exit.xlgmac_config_rx_threshold.exit_crit_edge, label %for.body.lr.ph.i239

xlgmac_config_tx_threshold.exit.xlgmac_config_rx_threshold.exit_crit_edge: ; preds = %xlgmac_config_tx_threshold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_threshold.exit

for.body.lr.ph.i239:                              ; preds = %xlgmac_config_tx_threshold.exit
  %rx_threshold = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 23
  %270 = ptrtoint ptr %rx_threshold to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %rx_threshold, align 8
  %and9.i238 = and i32 %271, 3
  br label %for.body.i249

for.body.i249:                                    ; preds = %for.body.i249.for.body.i249_crit_edge, %for.body.lr.ph.i239
  %i.039.i240 = phi i32 [ 0, %for.body.lr.ph.i239 ], [ %inc.i247, %for.body.i249.for.body.i249_crit_edge ]
  %272 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %mac_regs.i56, align 4
  %mul.i241 = shl i32 %i.039.i240, 7
  %add.ptr1.i242 = getelementptr i8, ptr %273, i32 4416
  %add.ptr2.i243 = getelementptr i8, ptr %add.ptr1.i242, i32 %mul.i241
  %274 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i243) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  %275 = and i32 %274, -50331649
  %276 = tail call i32 @llvm.bswap.i32(i32 %275) #10
  %or.i244 = or i32 %276, %and9.i238
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !108
  tail call void @arm_heavy_mb() #10
  %277 = tail call i32 @llvm.bswap.i32(i32 %or.i244) #10
  %278 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr24.i245 = getelementptr i8, ptr %279, i32 4416
  %add.ptr25.i246 = getelementptr i8, ptr %add.ptr24.i245, i32 %mul.i241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i246, i32 %277) #10, !srcloc !66
  %inc.i247 = add nuw i32 %i.039.i240, 1
  %280 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %rx_q_count.i, align 4
  %cmp.i248 = icmp ult i32 %inc.i247, %281
  br i1 %cmp.i248, label %for.body.i249.for.body.i249_crit_edge, label %for.body.i249.xlgmac_config_rx_threshold.exit_crit_edge

for.body.i249.xlgmac_config_rx_threshold.exit_crit_edge: ; preds = %for.body.i249
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_threshold.exit

for.body.i249.for.body.i249_crit_edge:            ; preds = %for.body.i249
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i249

xlgmac_config_rx_threshold.exit:                  ; preds = %for.body.i249.xlgmac_config_rx_threshold.exit_crit_edge, %xlgmac_config_tx_threshold.exit.xlgmac_config_rx_threshold.exit_crit_edge
  %tx_fifo_size.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 16
  %282 = ptrtoint ptr %tx_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %tx_fifo_size.i, align 8
  %284 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %tx_q_count.i, align 8
  %add.i.i = add i32 %283, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i.i)
  %cmp.i.i = icmp ugt i32 %add.i.i, 16
  %shl.i.i = shl nuw i32 1, %add.i.i
  %cond.i.i = select i1 %cmp.i.i, i32 81920, i32 %shl.i.i
  %div.i.i = udiv i32 %cond.i.i, %285
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i.i)
  %tobool.not.i.i = icmp ult i32 %div.i.i, 256
  %div18.i.i = lshr i32 %div.i.i, 8
  %dec.i.i = add nsw i32 %div18.i.i, -1
  %p_fifo.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 %dec.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp53.not.i = icmp eq i32 %285, 0
  br i1 %cmp53.not.i, label %xlgmac_config_rx_threshold.exit.do.body28.i_crit_edge, label %for.body.lr.ph.i253

xlgmac_config_rx_threshold.exit.do.body28.i_crit_edge: ; preds = %xlgmac_config_rx_threshold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

for.body.lr.ph.i253:                              ; preds = %xlgmac_config_rx_threshold.exit
  %shl.i252 = shl i32 %p_fifo.0.i.i, 16
  %and11.i = and i32 %shl.i252, 67043328
  br label %for.body.i262

for.body.i262:                                    ; preds = %for.body.i262.for.body.i262_crit_edge, %for.body.lr.ph.i253
  %i.054.i = phi i32 [ 0, %for.body.lr.ph.i253 ], [ %inc.i260, %for.body.i262.for.body.i262_crit_edge ]
  %286 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i254 = getelementptr i8, ptr %287, i32 4352
  %mul.i255 = shl i32 %i.054.i, 7
  %add.ptr2.i256 = getelementptr i8, ptr %add.ptr.i254, i32 %mul.i255
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i256) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !109
  %289 = and i32 %288, -65284
  %290 = tail call i32 @llvm.bswap.i32(i32 %289) #10
  %or.i257 = or i32 %290, %and11.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !110
  tail call void @arm_heavy_mb() #10
  %291 = tail call i32 @llvm.bswap.i32(i32 %or.i257) #10
  %292 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr24.i258 = getelementptr i8, ptr %293, i32 4352
  %add.ptr26.i259 = getelementptr i8, ptr %add.ptr24.i258, i32 %mul.i255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i259, i32 %291) #10, !srcloc !66
  %inc.i260 = add nuw i32 %i.054.i, 1
  %294 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %tx_q_count.i, align 8
  %cmp.i261 = icmp ult i32 %inc.i260, %295
  br i1 %cmp.i261, label %for.body.i262.for.body.i262_crit_edge, label %for.body.i262.do.body28.i_crit_edge

for.body.i262.do.body28.i_crit_edge:              ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i

for.body.i262.for.body.i262_crit_edge:            ; preds = %for.body.i262
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i262

do.body28.i:                                      ; preds = %for.body.i262.do.body28.i_crit_edge, %xlgmac_config_rx_threshold.exit.do.body28.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %xlgmac_config_rx_threshold.exit.do.body28.i_crit_edge ], [ %295, %for.body.i262.do.body28.i_crit_edge ]
  %msg_enable.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %296 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %msg_enable.i, align 8
  %and29.i = and i32 %297, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool.not.i263 = icmp eq i32 %and29.i, 0
  br i1 %tobool.not.i263, label %do.body28.i.xlgmac_config_tx_fifo_size.exit_crit_edge, label %if.then.i

do.body28.i.xlgmac_config_tx_fifo_size.exit_crit_edge: ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_tx_fifo_size.exit

if.then.i:                                        ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #12
  %298 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %pdata, align 8
  %add31.i = shl i32 %p_fifo.0.i.i, 8
  %mul32.i = add i32 %add31.i, 256
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %299, ptr noundef nonnull @.str.6, i32 noundef %.lcssa.i, i32 noundef %mul32.i) #13
  br label %xlgmac_config_tx_fifo_size.exit

xlgmac_config_tx_fifo_size.exit:                  ; preds = %if.then.i, %do.body28.i.xlgmac_config_tx_fifo_size.exit_crit_edge
  %rx_fifo_size.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 15
  %300 = ptrtoint ptr %rx_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %rx_fifo_size.i, align 4
  %302 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %rx_q_count.i, align 4
  %add.i.i265 = add i32 %301, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i.i265)
  %cmp.i.i266 = icmp ugt i32 %add.i.i265, 16
  %shl.i.i267 = shl nuw i32 1, %add.i.i265
  %cond.i.i268 = select i1 %cmp.i.i266, i32 81920, i32 %shl.i.i267
  %div.i.i269 = udiv i32 %cond.i.i268, %303
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i.i269)
  %tobool.not.i.i270 = icmp ult i32 %div.i.i269, 256
  %div18.i.i271 = lshr i32 %div.i.i269, 8
  %dec.i.i272 = add nsw i32 %div18.i.i271, -1
  %p_fifo.0.i.i273 = select i1 %tobool.not.i.i270, i32 0, i32 %dec.i.i272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %cmp53.not.i274 = icmp eq i32 %303, 0
  br i1 %cmp53.not.i274, label %xlgmac_config_tx_fifo_size.exit.do.body28.i292_crit_edge, label %for.body.lr.ph.i278

xlgmac_config_tx_fifo_size.exit.do.body28.i292_crit_edge: ; preds = %xlgmac_config_tx_fifo_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i292

for.body.lr.ph.i278:                              ; preds = %xlgmac_config_tx_fifo_size.exit
  %shl.i276 = shl i32 %p_fifo.0.i.i273, 16
  %and11.i277 = and i32 %shl.i276, 33488896
  br label %for.body.i287

for.body.i287:                                    ; preds = %for.body.i287.for.body.i287_crit_edge, %for.body.lr.ph.i278
  %i.054.i279 = phi i32 [ 0, %for.body.lr.ph.i278 ], [ %inc.i285, %for.body.i287.for.body.i287_crit_edge ]
  %304 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %mac_regs.i56, align 4
  %mul.i280 = shl i32 %i.054.i279, 7
  %add.ptr2.i281 = getelementptr i8, ptr %305, i32 4416
  %add.ptr3.i282 = getelementptr i8, ptr %add.ptr2.i281, i32 %mul.i280
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i282) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !111
  %307 = and i32 %306, -65282
  %308 = tail call i32 @llvm.bswap.i32(i32 %307) #10
  %or.i283 = or i32 %308, %and11.i277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !112
  tail call void @arm_heavy_mb() #10
  %309 = tail call i32 @llvm.bswap.i32(i32 %or.i283) #10
  %310 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr26.i284 = getelementptr i8, ptr %311, i32 4416
  %add.ptr27.i = getelementptr i8, ptr %add.ptr26.i284, i32 %mul.i280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %309) #10, !srcloc !66
  %inc.i285 = add nuw i32 %i.054.i279, 1
  %312 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %rx_q_count.i, align 4
  %cmp.i286 = icmp ult i32 %inc.i285, %313
  br i1 %cmp.i286, label %for.body.i287.for.body.i287_crit_edge, label %for.body.i287.do.body28.i292_crit_edge

for.body.i287.do.body28.i292_crit_edge:           ; preds = %for.body.i287
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body28.i292

for.body.i287.for.body.i287_crit_edge:            ; preds = %for.body.i287
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i287

do.body28.i292:                                   ; preds = %for.body.i287.do.body28.i292_crit_edge, %xlgmac_config_tx_fifo_size.exit.do.body28.i292_crit_edge
  %.lcssa.i288 = phi i32 [ 0, %xlgmac_config_tx_fifo_size.exit.do.body28.i292_crit_edge ], [ %313, %for.body.i287.do.body28.i292_crit_edge ]
  %314 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %msg_enable.i, align 8
  %and29.i290 = and i32 %315, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i290)
  %tobool.not.i291 = icmp eq i32 %and29.i290, 0
  br i1 %tobool.not.i291, label %do.body28.i292.xlgmac_config_rx_fifo_size.exit_crit_edge, label %if.then.i295

do.body28.i292.xlgmac_config_rx_fifo_size.exit_crit_edge: ; preds = %do.body28.i292
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_fifo_size.exit

if.then.i295:                                     ; preds = %do.body28.i292
  call void @__sanitizer_cov_trace_pc() #12
  %316 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load ptr, ptr %pdata, align 8
  %add31.i293 = shl i32 %p_fifo.0.i.i273, 8
  %mul32.i294 = add i32 %add31.i293, 256
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %317, ptr noundef nonnull @.str.7, i32 noundef %.lcssa.i288, i32 noundef %mul32.i294) #13
  br label %xlgmac_config_rx_fifo_size.exit

xlgmac_config_rx_fifo_size.exit:                  ; preds = %if.then.i295, %do.body28.i292.xlgmac_config_rx_fifo_size.exit_crit_edge
  %318 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %rx_q_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %319)
  %cmp73.not.i = icmp eq i32 %319, 0
  br i1 %cmp73.not.i, label %xlgmac_config_rx_fifo_size.exit.xlgmac_config_rx_fup_enable.exit_crit_edge, label %xlgmac_config_rx_fifo_size.exit.for.body.i304_crit_edge

xlgmac_config_rx_fifo_size.exit.for.body.i304_crit_edge: ; preds = %xlgmac_config_rx_fifo_size.exit
  br label %for.body.i304

xlgmac_config_rx_fifo_size.exit.xlgmac_config_rx_fup_enable.exit_crit_edge: ; preds = %xlgmac_config_rx_fifo_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_fup_enable.exit

for.body.i304:                                    ; preds = %for.body.i304.for.body.i304_crit_edge, %xlgmac_config_rx_fifo_size.exit.for.body.i304_crit_edge
  %i.074.i = phi i32 [ %inc.i302, %for.body.i304.for.body.i304_crit_edge ], [ 0, %xlgmac_config_rx_fifo_size.exit.for.body.i304_crit_edge ]
  %320 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %mac_regs.i56, align 4
  %mul.i299 = shl i32 %i.074.i, 7
  %add.ptr1.i300 = getelementptr i8, ptr %321, i32 4432
  %add.ptr2.i301 = getelementptr i8, ptr %add.ptr1.i300, i32 %mul.i299
  %322 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i301) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !113
  %323 = and i32 %322, -2113961473
  %324 = or i32 %323, 67110912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !114
  tail call void @arm_heavy_mb() #10
  %325 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr52.i = getelementptr i8, ptr %326, i32 4432
  %add.ptr53.i = getelementptr i8, ptr %add.ptr52.i, i32 %mul.i299
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %324) #10, !srcloc !66
  %inc.i302 = add nuw i32 %i.074.i, 1
  %327 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %rx_q_count.i, align 4
  %cmp.i303 = icmp ult i32 %inc.i302, %328
  br i1 %cmp.i303, label %for.body.i304.for.body.i304_crit_edge, label %xlgmac_config_flow_control_threshold.exit

for.body.i304.for.body.i304_crit_edge:            ; preds = %for.body.i304
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i304

xlgmac_config_flow_control_threshold.exit:        ; preds = %for.body.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %328)
  %cmp38.not.i306 = icmp eq i32 %328, 0
  br i1 %cmp38.not.i306, label %xlgmac_config_flow_control_threshold.exit.xlgmac_config_rx_fup_enable.exit_crit_edge, label %xlgmac_config_flow_control_threshold.exit.for.body.i317_crit_edge

xlgmac_config_flow_control_threshold.exit.for.body.i317_crit_edge: ; preds = %xlgmac_config_flow_control_threshold.exit
  br label %for.body.i317

xlgmac_config_flow_control_threshold.exit.xlgmac_config_rx_fup_enable.exit_crit_edge: ; preds = %xlgmac_config_flow_control_threshold.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_fup_enable.exit

for.body.i317:                                    ; preds = %for.body.i317.for.body.i317_crit_edge, %xlgmac_config_flow_control_threshold.exit.for.body.i317_crit_edge
  %i.039.i309 = phi i32 [ %inc.i315, %for.body.i317.for.body.i317_crit_edge ], [ 0, %xlgmac_config_flow_control_threshold.exit.for.body.i317_crit_edge ]
  %329 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %mac_regs.i56, align 4
  %mul.i310 = shl i32 %i.039.i309, 7
  %add.ptr1.i311 = getelementptr i8, ptr %330, i32 4416
  %add.ptr2.i312 = getelementptr i8, ptr %add.ptr1.i311, i32 %mul.i310
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i312) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !115
  %332 = or i32 %331, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  tail call void @arm_heavy_mb() #10
  %333 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr24.i313 = getelementptr i8, ptr %334, i32 4416
  %add.ptr25.i314 = getelementptr i8, ptr %add.ptr24.i313, i32 %mul.i310
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i314, i32 %332) #10, !srcloc !66
  %inc.i315 = add nuw i32 %i.039.i309, 1
  %335 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %rx_q_count.i, align 4
  %cmp.i316 = icmp ult i32 %inc.i315, %336
  br i1 %cmp.i316, label %for.body.i317.for.body.i317_crit_edge, label %xlgmac_config_rx_fep_enable.exit

for.body.i317.for.body.i317_crit_edge:            ; preds = %for.body.i317
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i317

xlgmac_config_rx_fep_enable.exit:                 ; preds = %for.body.i317
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %336)
  %cmp38.not.i319 = icmp eq i32 %336, 0
  br i1 %cmp38.not.i319, label %xlgmac_config_rx_fep_enable.exit.xlgmac_config_rx_fup_enable.exit_crit_edge, label %xlgmac_config_rx_fep_enable.exit.for.body.i330_crit_edge

xlgmac_config_rx_fep_enable.exit.for.body.i330_crit_edge: ; preds = %xlgmac_config_rx_fep_enable.exit
  br label %for.body.i330

xlgmac_config_rx_fep_enable.exit.xlgmac_config_rx_fup_enable.exit_crit_edge: ; preds = %xlgmac_config_rx_fep_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_fup_enable.exit

for.body.i330:                                    ; preds = %for.body.i330.for.body.i330_crit_edge, %xlgmac_config_rx_fep_enable.exit.for.body.i330_crit_edge
  %i.039.i322 = phi i32 [ %inc.i328, %for.body.i330.for.body.i330_crit_edge ], [ 0, %xlgmac_config_rx_fep_enable.exit.for.body.i330_crit_edge ]
  %337 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %mac_regs.i56, align 4
  %mul.i323 = shl i32 %i.039.i322, 7
  %add.ptr1.i324 = getelementptr i8, ptr %338, i32 4416
  %add.ptr2.i325 = getelementptr i8, ptr %add.ptr1.i324, i32 %mul.i323
  %339 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i325) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !117
  %340 = or i32 %339, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !118
  tail call void @arm_heavy_mb() #10
  %341 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr24.i326 = getelementptr i8, ptr %342, i32 4416
  %add.ptr25.i327 = getelementptr i8, ptr %add.ptr24.i326, i32 %mul.i323
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i327, i32 %340) #10, !srcloc !66
  %inc.i328 = add nuw i32 %i.039.i322, 1
  %343 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %rx_q_count.i, align 4
  %cmp.i329 = icmp ult i32 %inc.i328, %344
  br i1 %cmp.i329, label %for.body.i330.for.body.i330_crit_edge, label %for.body.i330.xlgmac_config_rx_fup_enable.exit_crit_edge

for.body.i330.xlgmac_config_rx_fup_enable.exit_crit_edge: ; preds = %for.body.i330
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_rx_fup_enable.exit

for.body.i330.for.body.i330_crit_edge:            ; preds = %for.body.i330
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i330

xlgmac_config_rx_fup_enable.exit:                 ; preds = %for.body.i330.xlgmac_config_rx_fup_enable.exit_crit_edge, %xlgmac_config_rx_fep_enable.exit.xlgmac_config_rx_fup_enable.exit_crit_edge, %xlgmac_config_flow_control_threshold.exit.xlgmac_config_rx_fup_enable.exit_crit_edge, %xlgmac_config_rx_fifo_size.exit.xlgmac_config_rx_fup_enable.exit_crit_edge
  %tx_q_cnt.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 28
  %345 = ptrtoint ptr %tx_q_cnt.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %tx_q_cnt.i, align 8
  %rx_q_cnt.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 27
  %347 = ptrtoint ptr %rx_q_cnt.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %rx_q_cnt.i, align 4
  %349 = tail call i32 @llvm.umax.i32(i32 %346, i32 %348) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %349)
  %cmp231.not.i = icmp eq i32 %349, 0
  br i1 %cmp231.not.i, label %xlgmac_config_rx_fup_enable.exit.xlgmac_enable_mtl_interrupts.exit_crit_edge, label %xlgmac_config_rx_fup_enable.exit.for.body.i336_crit_edge

xlgmac_config_rx_fup_enable.exit.for.body.i336_crit_edge: ; preds = %xlgmac_config_rx_fup_enable.exit
  br label %for.body.i336

xlgmac_config_rx_fup_enable.exit.xlgmac_enable_mtl_interrupts.exit_crit_edge: ; preds = %xlgmac_config_rx_fup_enable.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_enable_mtl_interrupts.exit

for.body.i336:                                    ; preds = %for.body.i336.for.body.i336_crit_edge, %xlgmac_config_rx_fup_enable.exit.for.body.i336_crit_edge
  %i.032.i = phi i32 [ %inc.i335, %for.body.i336.for.body.i336_crit_edge ], [ 0, %xlgmac_config_rx_fup_enable.exit.for.body.i336_crit_edge ]
  %350 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %mac_regs.i56, align 4
  %mul.i333 = shl i32 %i.032.i, 7
  %add.ptr3.i334 = getelementptr i8, ptr %351, i32 4468
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i334, i32 %mul.i333
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !120
  tail call void @arm_heavy_mb() #10
  %353 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr10.i = getelementptr i8, ptr %354, i32 4468
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i, i32 %mul.i333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %352) #10, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %355 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr18.i = getelementptr i8, ptr %356, i32 4464
  %add.ptr19.i = getelementptr i8, ptr %add.ptr18.i, i32 %mul.i333
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 0) #10, !srcloc !66
  %inc.i335 = add nuw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i335, %349
  br i1 %exitcond.not.i, label %for.body.i336.xlgmac_enable_mtl_interrupts.exit_crit_edge, label %for.body.i336.for.body.i336_crit_edge

for.body.i336.for.body.i336_crit_edge:            ; preds = %for.body.i336
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i336

for.body.i336.xlgmac_enable_mtl_interrupts.exit_crit_edge: ; preds = %for.body.i336
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_enable_mtl_interrupts.exit

xlgmac_enable_mtl_interrupts.exit:                ; preds = %for.body.i336.xlgmac_enable_mtl_interrupts.exit_crit_edge, %xlgmac_config_rx_fup_enable.exit.xlgmac_enable_mtl_interrupts.exit_crit_edge
  %357 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %pdata, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %358, i32 0, i32 86
  %359 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx.i.i = getelementptr i8, ptr %360, i32 5
  %361 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %361)
  %362 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %362 to i32
  %shl.i.i337 = shl nuw nsw i32 %conv.i.i, 8
  %arrayidx1.i.i = getelementptr i8, ptr %360, i32 4
  %363 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %364 to i32
  %or.i.i = or i32 %shl.i.i337, %conv2.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %360, i32 3
  %365 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %366 to i32
  %shl6.i.i = shl nuw i32 %conv5.i.i, 24
  %arrayidx7.i.i = getelementptr i8, ptr %360, i32 2
  %367 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %367)
  %368 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %368 to i32
  %shl9.i.i = shl nuw nsw i32 %conv8.i.i, 16
  %or10.i.i = or i32 %shl9.i.i, %shl6.i.i
  %arrayidx11.i.i = getelementptr i8, ptr %360, i32 1
  %369 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %370 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 8
  %or14.i.i = or i32 %or10.i.i, %shl13.i.i
  %371 = ptrtoint ptr %360 to i32
  call void @__asan_load1_noabort(i32 %371)
  %372 = load i8, ptr %360, align 1
  %conv16.i.i = zext i8 %372 to i32
  %or18.i.i = or i32 %or14.i.i, %conv16.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %373 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  %374 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i.i339 = getelementptr i8, ptr %375, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i339, i32 %373) #10, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @arm_heavy_mb() #10
  %376 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i) #10
  %377 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr23.i.i = getelementptr i8, ptr %378, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i.i, i32 %376) #10, !srcloc !66
  %hash_table_size.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 25
  %379 = ptrtoint ptr %hash_table_size.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %hash_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %380)
  %tobool.not.i340 = icmp eq i32 %380, 0
  br i1 %tobool.not.i340, label %xlgmac_enable_mtl_interrupts.exit.xlgmac_config_mac_address.exit_crit_edge, label %if.then.i342

xlgmac_enable_mtl_interrupts.exit.xlgmac_config_mac_address.exit_crit_edge: ; preds = %xlgmac_enable_mtl_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_mac_address.exit

if.then.i342:                                     ; preds = %xlgmac_enable_mtl_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #12
  %381 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i341 = getelementptr i8, ptr %382, i32 8
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i341) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  %384 = or i32 %383, 100925440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !125
  tail call void @arm_heavy_mb() #10
  %385 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr77.i = getelementptr i8, ptr %386, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 %384) #10, !srcloc !66
  br label %xlgmac_config_mac_address.exit

xlgmac_config_mac_address.exit:                   ; preds = %if.then.i342, %xlgmac_enable_mtl_interrupts.exit.xlgmac_config_mac_address.exit_crit_edge
  %call12 = tail call i32 @xlgmac_config_rx_mode(ptr noundef %pdata)
  %387 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %pdata, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %388, i32 0, i32 20
  %389 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %390)
  %cmp.i344 = icmp ugt i32 %390, 1500
  %391 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i346 = getelementptr i8, ptr %392, i32 4
  %393 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i346) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  %shl.i347 = select i1 %cmp.i344, i32 256, i32 0
  %394 = and i32 %393, -65537
  %395 = tail call i32 @llvm.bswap.i32(i32 %394) #10
  %or.i348 = or i32 %395, %shl.i347
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  tail call void @arm_heavy_mb() #10
  %396 = tail call i32 @llvm.bswap.i32(i32 %or.i348) #10
  %397 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i349 = getelementptr i8, ptr %398, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i349, i32 %396) #10, !srcloc !66
  %call.i350 = tail call i32 @xlgmac_config_tx_flow_control(ptr noundef %pdata) #10
  %rx_pause.i.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 32
  %399 = ptrtoint ptr %rx_pause.i.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %rx_pause.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %400)
  %tobool.not.i.i351 = icmp eq i32 %400, 0
  %401 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i5.i.i = getelementptr i8, ptr %402, i32 144
  %403 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not.i.i351, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %xlgmac_config_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  %404 = or i32 %403, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %405 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i.i.i = getelementptr i8, ptr %406, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i.i, i32 %404) #10, !srcloc !66
  br label %xlgmac_config_flow_control.exit

if.else.i.i:                                      ; preds = %xlgmac_config_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #12
  %407 = and i32 %403, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %408 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i6.i.i = getelementptr i8, ptr %409, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i6.i.i, i32 %407) #10, !srcloc !66
  br label %xlgmac_config_flow_control.exit

xlgmac_config_flow_control.exit:                  ; preds = %if.else.i.i, %if.then.i.i
  %phy_speed.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 45
  %410 = ptrtoint ptr %phy_speed.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %phy_speed.i, align 4
  %412 = zext i32 %411 to i64
  call void @__sanitizer_cov_trace_switch(i64 %412, ptr @__sancov_gen_cov_switch_values)
  switch i32 %411, label %xlgmac_config_flow_control.exit.xlgmac_config_mac_speed.exit_crit_edge [
    i32 100000, label %sw.bb.i
    i32 50000, label %sw.bb1.i
    i32 40000, label %sw.bb3.i
    i32 25000, label %sw.bb5.i
  ]

xlgmac_config_flow_control.exit.xlgmac_config_mac_speed.exit_crit_edge: ; preds = %xlgmac_config_flow_control.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_mac_speed.exit

sw.bb.i:                                          ; preds = %xlgmac_config_flow_control.exit
  %413 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %mac_regs.i56, align 4
  %415 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %414) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  %416 = and i32 %415, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %416)
  %cmp.i.i353 = icmp eq i32 %416, 48
  br i1 %cmp.i.i353, label %sw.bb.i.xlgmac_config_mac_speed.exit_crit_edge, label %if.end.i.i

sw.bb.i.xlgmac_config_mac_speed.exit_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_mac_speed.exit

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %417 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %mac_regs.i56, align 4
  %419 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %418) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  %420 = and i32 %419, -113
  %421 = or i32 %420, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %422 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %mac_regs.i56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %423, i32 %421) #10, !srcloc !66
  br label %xlgmac_config_mac_speed.exit

sw.bb1.i:                                         ; preds = %xlgmac_config_flow_control.exit
  %424 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %mac_regs.i56, align 4
  %426 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %425) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  %427 = and i32 %426, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %427)
  %cmp.i12.i = icmp eq i32 %427, 32
  br i1 %cmp.i12.i, label %sw.bb1.i.xlgmac_config_mac_speed.exit_crit_edge, label %if.end.i13.i

sw.bb1.i.xlgmac_config_mac_speed.exit_crit_edge:  ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_mac_speed.exit

if.end.i13.i:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %428 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load ptr, ptr %mac_regs.i56, align 4
  %430 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %429) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  %431 = and i32 %430, -113
  %432 = or i32 %431, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call void @arm_heavy_mb() #10
  %433 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %mac_regs.i56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %434, i32 %432) #10, !srcloc !66
  br label %xlgmac_config_mac_speed.exit

sw.bb3.i:                                         ; preds = %xlgmac_config_flow_control.exit
  %435 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %mac_regs.i56, align 4
  %437 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %436) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  %438 = and i32 %437, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %438)
  %cmp.i15.i = icmp eq i32 %438, 0
  br i1 %cmp.i15.i, label %sw.bb3.i.xlgmac_config_mac_speed.exit_crit_edge, label %if.end.i16.i

sw.bb3.i.xlgmac_config_mac_speed.exit_crit_edge:  ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_mac_speed.exit

if.end.i16.i:                                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #12
  %439 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %mac_regs.i56, align 4
  %441 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %440) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  %442 = and i32 %441, -113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %443 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %mac_regs.i56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %444, i32 %442) #10, !srcloc !66
  br label %xlgmac_config_mac_speed.exit

sw.bb5.i:                                         ; preds = %xlgmac_config_flow_control.exit
  %445 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %mac_regs.i56, align 4
  %447 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %446) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %448 = and i32 %447, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %448)
  %cmp.i18.i = icmp eq i32 %448, 16
  br i1 %cmp.i18.i, label %sw.bb5.i.xlgmac_config_mac_speed.exit_crit_edge, label %if.end.i19.i

sw.bb5.i.xlgmac_config_mac_speed.exit_crit_edge:  ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_config_mac_speed.exit

if.end.i19.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  %449 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %449)
  %450 = load ptr, ptr %mac_regs.i56, align 4
  %451 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %450) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %452 = and i32 %451, -113
  %453 = or i32 %452, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %454 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %mac_regs.i56, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %455, i32 %453) #10, !srcloc !66
  br label %xlgmac_config_mac_speed.exit

xlgmac_config_mac_speed.exit:                     ; preds = %if.end.i19.i, %sw.bb5.i.xlgmac_config_mac_speed.exit_crit_edge, %if.end.i16.i, %sw.bb3.i.xlgmac_config_mac_speed.exit_crit_edge, %if.end.i13.i, %sw.bb1.i.xlgmac_config_mac_speed.exit_crit_edge, %if.end.i.i, %sw.bb.i.xlgmac_config_mac_speed.exit_crit_edge, %xlgmac_config_flow_control.exit.xlgmac_config_mac_speed.exit_crit_edge
  %456 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %pdata, align 8
  %features.i354 = getelementptr inbounds %struct.net_device, ptr %457, i32 0, i32 23
  %458 = ptrtoint ptr %features.i354 to i32
  call void @__asan_load8_noabort(i32 %458)
  %459 = load i64, ptr %features.i354, align 16
  %and.i355 = and i64 %459, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i355)
  %tobool.not.i356 = icmp eq i64 %and.i355, 0
  %460 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %461, i32 4
  %462 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not.i356, label %if.else.i, label %if.then.i358

if.then.i358:                                     ; preds = %xlgmac_config_mac_speed.exit
  call void @__sanitizer_cov_trace_pc() #12
  %463 = or i32 %462, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %464 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i.i357 = getelementptr i8, ptr %465, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i357, i32 %463) #10, !srcloc !66
  br label %xlgmac_config_checksum_offload.exit

if.else.i:                                        ; preds = %xlgmac_config_mac_speed.exit
  call void @__sanitizer_cov_trace_pc() #12
  %466 = and i32 %462, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %467 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i6.i = getelementptr i8, ptr %468, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i6.i, i32 %466) #10, !srcloc !66
  br label %xlgmac_config_checksum_offload.exit

xlgmac_config_checksum_offload.exit:              ; preds = %if.else.i, %if.then.i358
  %469 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i361 = getelementptr i8, ptr %470, i32 96
  %471 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i361) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %472 = and i32 %471, -6145
  %473 = or i32 %472, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !145
  tail call void @arm_heavy_mb() #10
  %474 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr48.i = getelementptr i8, ptr %475, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i, i32 %473) #10, !srcloc !66
  %call49.i = tail call i32 @xlgmac_update_vlan_hash_table(ptr noundef %pdata) #10
  %476 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load ptr, ptr %pdata, align 8
  %features.i362 = getelementptr inbounds %struct.net_device, ptr %477, i32 0, i32 23
  %478 = ptrtoint ptr %features.i362 to i32
  call void @__asan_load8_noabort(i32 %478)
  %479 = load i64, ptr %features.i362, align 16
  %and50.i = and i64 %479, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and50.i)
  %tobool.not.i363 = icmp eq i64 %and50.i, 0
  %480 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %481, i32 8
  %482 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not.i363, label %if.else.i366, label %if.then.i365

if.then.i365:                                     ; preds = %xlgmac_config_checksum_offload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %483 = or i32 %482, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %484 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i.i364 = getelementptr i8, ptr %485, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i364, i32 %483) #10, !srcloc !66
  %486 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr24.i.i = getelementptr i8, ptr %487, i32 80
  %488 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  %489 = and i32 %488, 64765
  %490 = or i32 %489, 16777474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @arm_heavy_mb() #10
  %491 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr144.i.i = getelementptr i8, ptr %492, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144.i.i, i32 %490) #10, !srcloc !66
  br label %if.end.i367

if.else.i366:                                     ; preds = %xlgmac_config_checksum_offload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %493 = and i32 %482, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @arm_heavy_mb() #10
  %494 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i86.i = getelementptr i8, ptr %495, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i86.i, i32 %493) #10, !srcloc !66
  br label %if.end.i367

if.end.i367:                                      ; preds = %if.else.i366, %if.then.i365
  %496 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %pdata, align 8
  %features54.i = getelementptr inbounds %struct.net_device, ptr %497, i32 0, i32 23
  %498 = ptrtoint ptr %features54.i to i32
  call void @__asan_load8_noabort(i32 %498)
  %499 = load i64, ptr %features54.i, align 16
  %and55.i = and i64 %499, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55.i)
  %tobool56.not.i = icmp eq i64 %and55.i, 0
  %500 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i90.i = getelementptr i8, ptr %501, i32 80
  %502 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool56.not.i, label %if.else59.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end.i367
  call void @__sanitizer_cov_trace_pc() #12
  %503 = and i32 %502, -31746
  %504 = or i32 %503, 28673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @arm_heavy_mb() #10
  %505 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr132.i.i = getelementptr i8, ptr %506, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132.i.i, i32 %504) #10, !srcloc !66
  br label %xlgmac_config_vlan_support.exit

if.else59.i:                                      ; preds = %if.end.i367
  call void @__sanitizer_cov_trace_pc() #12
  %507 = and i32 %502, -24577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @arm_heavy_mb() #10
  %508 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr20.i91.i = getelementptr i8, ptr %509, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i91.i, i32 %507) #10, !srcloc !66
  br label %xlgmac_config_vlan_support.exit

xlgmac_config_vlan_support.exit:                  ; preds = %if.else59.i, %if.then57.i
  %510 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i369 = getelementptr i8, ptr %511, i32 2048
  %512 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i369) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !152
  %513 = or i32 %512, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !153
  tail call void @arm_heavy_mb() #10
  %514 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr48.i370 = getelementptr i8, ptr %515, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48.i370, i32 %513) #10, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !154
  tail call void @arm_heavy_mb() #10
  %516 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr.i372 = getelementptr i8, ptr %517, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i372, i32 1048576) #10, !srcloc !66
  %518 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr18.i373 = getelementptr i8, ptr %519, i32 2060
  %520 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i373) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !155
  %521 = or i32 %520, -33024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @arm_heavy_mb() #10
  %522 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr53.i374 = getelementptr i8, ptr %523, i32 2060
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i374, i32 %521) #10, !srcloc !66
  %524 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr57.i = getelementptr i8, ptr %525, i32 2064
  %526 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !157
  %527 = or i32 %526, -64768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !158
  tail call void @arm_heavy_mb() #10
  %528 = ptrtoint ptr %mac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %mac_regs.i56, align 4
  %add.ptr93.i = getelementptr i8, ptr %529, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 %527) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %xlgmac_config_vlan_support.exit, %while.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xlgmac_config_vlan_support.exit ], [ -16, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_hw_exit(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !159
  %3 = or i32 %2, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !160
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 12288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %3) #10, !srcloc !66
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #10
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %dec57 = phi i32 [ 1999, %entry ], [ %dec, %while.body.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs, align 4
  %add.ptr27 = getelementptr i8, ptr %7, i32 12288
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !161
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool42.not = icmp eq i32 %9, 0
  br i1 %tobool42.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %land.rhs
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #10
  %dec = add nsw i32 %dec57, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %. = phi i32 [ -16, %while.body.while.end_crit_edge ], [ 0, %land.rhs.while.end_crit_edge ]
  ret i32 %.
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_tx_complete(ptr nocapture noundef readonly %dma_desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc3 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %dma_desc, i32 0, i32 3
  %0 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc3, align 4
  %2 = lshr i32 %1, 7
  %.lobit = and i32 %2, 1
  %3 = xor i32 %.lobit, 1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_enable_tx(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp148.not = icmp eq i32 %1, 0
  br i1 %cmp148.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %channel.0150 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %i.0149 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0150, i32 0, i32 10
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0150, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !162
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !163
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_regs, align 8
  %add.ptr20 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %9) #10, !srcloc !66
  %inc = add nuw i32 %i.0149, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.0150, i32 1
  %12 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 15
  %14 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp22151.not = icmp eq i32 %15, 0
  br i1 %cmp22151.not, label %for.end.for.end70_crit_edge, label %for.body23.lr.ph

for.end.for.end70_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70

for.body23.lr.ph:                                 ; preds = %for.end
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  br label %for.body23

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.body23.lr.ph
  %i.1152 = phi i32 [ 0, %for.body23.lr.ph ], [ %inc69, %for.body23.for.body23_crit_edge ]
  %16 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_regs, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 4352
  %mul = shl i32 %i.1152, 7
  %add.ptr27 = getelementptr i8, ptr %add.ptr26, i32 %mul
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !164
  %19 = and i32 %18, -201326593
  %20 = or i32 %19, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !165
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_regs, align 4
  %add.ptr64 = getelementptr i8, ptr %22, i32 4352
  %add.ptr66 = getelementptr i8, ptr %add.ptr64, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %20) #10, !srcloc !66
  %inc69 = add nuw i32 %i.1152, 1
  %23 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_q_count, align 8
  %cmp22 = icmp ult i32 %inc69, %24
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.for.end70_crit_edge

for.body23.for.end70_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end70

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

for.end70:                                        ; preds = %for.body23.for.end70_crit_edge, %for.end.for.end70_crit_edge
  %mac_regs73 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %25 = ptrtoint ptr %mac_regs73 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac_regs73, align 4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !166
  %28 = or i32 %27, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  tail call void @arm_heavy_mb() #10
  %29 = ptrtoint ptr %mac_regs73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mac_regs73, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #10, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_disable_tx(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp169.not = icmp eq i32 %1, 0
  br i1 %cmp169.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  %mac_regs.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %xlgmac_prepare_tx_stop.exit.for.body_crit_edge, %for.body.lr.ph
  %channel.0171 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %xlgmac_prepare_tx_stop.exit.for.body_crit_edge ]
  %i.0170 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %xlgmac_prepare_tx_stop.exit.for.body_crit_edge ]
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0171, i32 0, i32 10
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %queue_index.i = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0171, i32 0, i32 2
  %6 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %queue_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i = icmp ult i32 %7, 3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i = shl nuw nsw i32 %7, 3
  %add.i = add nuw nsw i32 %mul.i, 12
  br label %if.end.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %8 = add i32 %7, 12321
  %add4.i = and i32 %8, -4
  %sub.i = shl i32 %7, 3
  %rem.i = add i32 %sub.i, 8
  %mul5.i = and i32 %rem.i, 24
  %add6.i = or i32 %mul5.i, 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %tx_pos.0.i = phi i32 [ %add.i, %if.then.i ], [ %add6.i, %if.else.i ]
  %tx_dsr.0.i = phi i32 [ 12320, %if.then.i ], [ %add4.i, %if.else.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %add7.i = add i32 %9, 500
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub840.i = sub i32 %10, %add7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub840.i)
  %cmp941.i = icmp slt i32 %sub840.i, 0
  br i1 %cmp941.i, label %while.body.lr.ph.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end.i
  %shl.neg.i = shl nsw i32 -1, %tx_pos.0.i
  %sub16.i = sub i32 28, %tx_pos.0.i
  %shr.i = lshr i32 -1, %sub16.i
  %and.i = and i32 %shr.i, %shl.neg.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %11 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %tx_dsr.0.i
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !63
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  %and18.i = and i32 %and.i, %14
  %shr19.i = lshr i32 %and18.i, %tx_pos.0.i
  %15 = zext i32 %shr19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %shr19.i, label %if.end23.i [
    i32 0, label %while.body.i.while.end.i_crit_edge
    i32 6, label %while.body.i.while.end.i_crit_edge177
  ]

while.body.i.while.end.i_crit_edge177:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end23.i:                                       ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub8.i = sub i32 %16, %add7.i
  %cmp9.i = icmp slt i32 %sub8.i, 0
  br i1 %cmp9.i, label %if.end23.i.while.body.i_crit_edge, label %if.end23.i.while.end.i_crit_edge

if.end23.i.while.end.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end23.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge177, %if.end.i.while.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub24.i = sub i32 %17, %add7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24.i)
  %cmp25.i = icmp slt i32 %sub24.i, 0
  br i1 %cmp25.i, label %while.end.i.xlgmac_prepare_tx_stop.exit_crit_edge, label %if.then26.i

while.end.i.xlgmac_prepare_tx_stop.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_prepare_tx_stop.exit

if.then26.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 8
  %20 = ptrtoint ptr %queue_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %queue_index.i, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %19, ptr noundef nonnull @.str.8, i32 noundef %21) #13
  br label %xlgmac_prepare_tx_stop.exit

xlgmac_prepare_tx_stop.exit:                      ; preds = %if.then26.i, %while.end.i.xlgmac_prepare_tx_stop.exit_crit_edge
  %inc = add nuw i32 %i.0170, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.0171, i32 1
  %22 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %xlgmac_prepare_tx_stop.exit.for.body_crit_edge, label %xlgmac_prepare_tx_stop.exit.for.end_crit_edge

xlgmac_prepare_tx_stop.exit.for.end_crit_edge:    ; preds = %xlgmac_prepare_tx_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

xlgmac_prepare_tx_stop.exit.for.body_crit_edge:   ; preds = %xlgmac_prepare_tx_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %xlgmac_prepare_tx_stop.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %24 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac_regs, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !169
  %27 = and i32 %26, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !170
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #10, !srcloc !66
  %tx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 15
  %30 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp22172.not = icmp eq i32 %31, 0
  br i1 %cmp22172.not, label %for.end.for.end71_crit_edge, label %for.end.for.body23_crit_edge

for.end.for.body23_crit_edge:                     ; preds = %for.end
  br label %for.body23

for.end.for.end71_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end71

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.end.for.body23_crit_edge
  %i.1173 = phi i32 [ %inc70, %for.body23.for.body23_crit_edge ], [ 0, %for.end.for.body23_crit_edge ]
  %32 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mac_regs, align 4
  %add.ptr27 = getelementptr i8, ptr %33, i32 4352
  %mul = shl i32 %i.1173, 7
  %add.ptr28 = getelementptr i8, ptr %add.ptr27, i32 %mul
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !171
  %35 = and i32 %34, -201326593
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !172
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mac_regs, align 4
  %add.ptr65 = getelementptr i8, ptr %37, i32 4352
  %add.ptr67 = getelementptr i8, ptr %add.ptr65, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %35) #10, !srcloc !66
  %inc70 = add nuw i32 %i.1173, 1
  %38 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx_q_count, align 8
  %cmp22 = icmp ult i32 %inc70, %39
  br i1 %cmp22, label %for.body23.for.body23_crit_edge, label %for.body23.for.end71_crit_edge

for.body23.for.end71_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end71

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

for.end71:                                        ; preds = %for.body23.for.end71_crit_edge, %for.end.for.end71_crit_edge
  %40 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp75174.not = icmp eq i32 %41, 0
  br i1 %cmp75174.not, label %for.end71.for.end123_crit_edge, label %for.body76.preheader

for.end71.for.end123_crit_edge:                   ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end123

for.body76.preheader:                             ; preds = %for.end71
  %42 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %channel_head, align 8
  br label %for.body76

for.body76:                                       ; preds = %if.end80.for.body76_crit_edge, %for.body76.preheader
  %channel.1176 = phi ptr [ %incdec.ptr122, %if.end80.for.body76_crit_edge ], [ %43, %for.body76.preheader ]
  %i.2175 = phi i32 [ %inc121, %if.end80.for.body76_crit_edge ], [ 0, %for.body76.preheader ]
  %tx_ring77 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.1176, i32 0, i32 10
  %44 = ptrtoint ptr %tx_ring77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_ring77, align 8
  %tobool78.not = icmp eq ptr %45, null
  br i1 %tobool78.not, label %for.body76.for.end123_crit_edge, label %if.end80

for.body76.for.end123_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end123

if.end80:                                         ; preds = %for.body76
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.1176, i32 0, i32 3
  %46 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_regs, align 8
  %add.ptr83 = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !173
  %49 = and i32 %48, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !174
  tail call void @arm_heavy_mb() #10
  %50 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dma_regs, align 8
  %add.ptr119 = getelementptr i8, ptr %51, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %49) #10, !srcloc !66
  %inc121 = add nuw i32 %i.2175, 1
  %incdec.ptr122 = getelementptr %struct.xlgmac_channel, ptr %channel.1176, i32 1
  %52 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channel_count, align 4
  %cmp75 = icmp ult i32 %inc121, %53
  br i1 %cmp75, label %if.end80.for.body76_crit_edge, label %if.end80.for.end123_crit_edge

if.end80.for.end123_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end123

if.end80.for.body76_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body76

for.end123:                                       ; preds = %if.end80.for.end123_crit_edge, %for.body76.for.end123_crit_edge, %for.end71.for.end123_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_enable_rx(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp208.not = icmp eq i32 %1, 0
  br i1 %cmp208.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %channel.0210 = phi ptr [ %incdec.ptr, %if.end.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %i.0209 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %rx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0210, i32 0, i32 11
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0210, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !175
  %9 = or i32 %8, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !176
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_regs, align 8
  %add.ptr20 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %9) #10, !srcloc !66
  %inc = add nuw i32 %i.0209, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.0210, i32 1
  %12 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 16
  %14 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp22211.not = icmp eq i32 %15, 0
  br i1 %cmp22211.not, label %for.end.do.body30_crit_edge, label %for.end.for.body23_crit_edge

for.end.for.body23_crit_edge:                     ; preds = %for.end
  br label %for.body23

for.end.do.body30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

for.body23:                                       ; preds = %for.body23.for.body23_crit_edge, %for.end.for.body23_crit_edge
  %regval.0213 = phi i32 [ %or26, %for.body23.for.body23_crit_edge ], [ 0, %for.end.for.body23_crit_edge ]
  %i.1212 = phi i32 [ %inc28, %for.body23.for.body23_crit_edge ], [ 0, %for.end.for.body23_crit_edge ]
  %shl24 = shl i32 %i.1212, 1
  %shl25 = shl i32 2, %shl24
  %or26 = or i32 %shl25, %regval.0213
  %inc28 = add nuw i32 %i.1212, 1
  %exitcond.not = icmp eq i32 %inc28, %15
  br i1 %exitcond.not, label %for.body23.do.body30_crit_edge, label %for.body23.for.body23_crit_edge

for.body23.for.body23_crit_edge:                  ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23

for.body23.do.body30_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body30

do.body30:                                        ; preds = %for.body23.do.body30_crit_edge, %for.end.do.body30_crit_edge
  %regval.0.lcssa = phi i32 [ 0, %for.end.do.body30_crit_edge ], [ %or26, %for.body23.do.body30_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !177
  tail call void @arm_heavy_mb() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %regval.0.lcssa)
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %17 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mac_regs, align 4
  %add.ptr33 = getelementptr i8, ptr %18, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %16) #10, !srcloc !66
  %19 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac_regs, align 4
  %add.ptr37 = getelementptr i8, ptr %20, i32 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !178
  %22 = or i32 %21, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !179
  tail call void @arm_heavy_mb() #10
  %23 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mac_regs, align 4
  %add.ptr157 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %22) #10, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_disable_rx(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !180
  %3 = and i32 %2, -251658241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !181
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr104 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr104, i32 %3) #10, !srcloc !66
  %rx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 16
  %6 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp204.not = icmp eq i32 %7, 0
  br i1 %cmp204.not, label %entry.do.body105_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body105_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

for.body:                                         ; preds = %xlgmac_prepare_rx_stop.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0205 = phi i32 [ %inc, %xlgmac_prepare_rx_stop.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 500
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub41.i = sub i32 %9, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub41.i)
  %cmp42.i = icmp slt i32 %sub41.i, 0
  br i1 %cmp42.i, label %while.body.lr.ph.i, label %for.body.while.end.i_crit_edge

for.body.while.end.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %for.body
  %mul.i = shl i32 %i.0205, 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %10 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4352
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !182
  %13 = and i32 %12, 805371711
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %15, %add.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %for.body.while.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub29.i = sub i32 %16, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub29.i)
  %cmp30.i = icmp slt i32 %sub29.i, 0
  br i1 %cmp30.i, label %while.end.i.xlgmac_prepare_rx_stop.exit_crit_edge, label %if.then31.i

while.end.i.xlgmac_prepare_rx_stop.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_prepare_rx_stop.exit

if.then31.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %18, ptr noundef nonnull @.str.9, i32 noundef %i.0205) #13
  br label %xlgmac_prepare_rx_stop.exit

xlgmac_prepare_rx_stop.exit:                      ; preds = %if.then31.i, %while.end.i.xlgmac_prepare_rx_stop.exit_crit_edge
  %inc = add nuw i32 %i.0205, 1
  %19 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_q_count, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %xlgmac_prepare_rx_stop.exit.for.body_crit_edge, label %xlgmac_prepare_rx_stop.exit.do.body105_crit_edge

xlgmac_prepare_rx_stop.exit.do.body105_crit_edge: ; preds = %xlgmac_prepare_rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body105

xlgmac_prepare_rx_stop.exit.for.body_crit_edge:   ; preds = %xlgmac_prepare_rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body105:                                       ; preds = %xlgmac_prepare_rx_stop.exit.do.body105_crit_edge, %entry.do.body105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !183
  tail call void @arm_heavy_mb() #10
  %21 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_regs, align 4
  %add.ptr109 = getelementptr i8, ptr %22, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 0) #10, !srcloc !66
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %23 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp111208.not = icmp eq i32 %24, 0
  br i1 %cmp111208.not, label %do.body105.for.end154_crit_edge, label %for.body112.preheader

do.body105.for.end154_crit_edge:                  ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end154

for.body112.preheader:                            ; preds = %do.body105
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %25 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %channel_head, align 8
  br label %for.body112

for.body112:                                      ; preds = %if.end.for.body112_crit_edge, %for.body112.preheader
  %channel.0210 = phi ptr [ %incdec.ptr, %if.end.for.body112_crit_edge ], [ %26, %for.body112.preheader ]
  %i.1209 = phi i32 [ %inc153, %if.end.for.body112_crit_edge ], [ 0, %for.body112.preheader ]
  %rx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0210, i32 0, i32 11
  %27 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %28, null
  br i1 %tobool.not, label %for.body112.for.end154_crit_edge, label %if.end

for.body112.for.end154_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end154

if.end:                                           ; preds = %for.body112
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.0210, i32 0, i32 3
  %29 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_regs, align 8
  %add.ptr115 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !184
  %32 = and i32 %31, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !185
  tail call void @arm_heavy_mb() #10
  %33 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dma_regs, align 8
  %add.ptr151 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr151, i32 %32) #10, !srcloc !66
  %inc153 = add nuw i32 %i.1209, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.0210, i32 1
  %35 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel_count, align 4
  %cmp111 = icmp ult i32 %inc153, %36
  br i1 %cmp111, label %if.end.for.body112_crit_edge, label %if.end.for.end154_crit_edge

if.end.for.end154_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end154

if.end.for.body112_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body112

for.end154:                                       ; preds = %if.end.for.end154_crit_edge, %for.body112.for.end154_crit_edge, %do.body105.for.end154_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_dev_xmit(ptr noundef %channel) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 10
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 8
  %cur = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur, align 16
  %attributes = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %attributes, align 4
  %and8 = and i32 %7, 1
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %mss = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mss, align 8
  %cur_mss = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 10, i32 0, i32 2
  %11 = ptrtoint ptr %cur_mss to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cur_mss, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp.not = icmp eq i16 %10, %12
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %tobool75.not = phi i1 [ true, %if.else ], [ false, %land.lhs.true.if.end_crit_edge ]
  %13 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool42.not = icmp eq i32 %13, 0
  br i1 %tobool42.not, label %if.end.if.else49_crit_edge, label %land.lhs.true43

if.end.if.else49_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else49

land.lhs.true43:                                  ; preds = %if.end
  %vlan_ctag = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 11
  %14 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vlan_ctag, align 2
  %cur_vlan_ctag = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 10, i32 0, i32 3
  %16 = ptrtoint ptr %cur_vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cur_vlan_ctag, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %15, i16 %17)
  %cmp46.not = icmp eq i16 %15, %17
  br i1 %cmp46.not, label %land.lhs.true43.if.else49_crit_edge, label %land.lhs.true43.if.end50_crit_edge

land.lhs.true43.if.end50_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true43.if.else49_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else49

if.else49:                                        ; preds = %land.lhs.true43.if.else49_crit_edge, %if.end.if.else49_crit_edge
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %land.lhs.true43.if.end50_crit_edge
  %tobool76.not = phi i1 [ true, %if.else49 ], [ false, %land.lhs.true43.if.end50_crit_edge ]
  %tx_packets = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 5
  %18 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_packets, align 4
  %coalesce_count = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %coalesce_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %coalesce_count, align 8
  %add51 = add i32 %21, %19
  store i32 %add51, ptr %coalesce_count, align 8
  %tx_frames = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 26
  %22 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool52.not = icmp eq i32 %23, 0
  br i1 %tobool52.not, label %if.end50.if.end70_crit_edge, label %if.else54

if.end50.if.end70_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.else54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp57 = icmp ugt i32 %19, %23
  br i1 %cmp57, label %if.else54.if.end70_crit_edge, label %if.else60

if.else54.if.end70_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.else60:                                        ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #12
  %rem = urem i32 %add51, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %19)
  %cmp64 = icmp uge i32 %rem, %19
  br label %if.end70

if.end70:                                         ; preds = %if.else60, %if.else54.if.end70_crit_edge, %if.end50.if.end70_crit_edge
  %tobool895.not = phi i1 [ true, %if.end50.if.end70_crit_edge ], [ false, %if.else54.if.end70_crit_edge ], [ %cmp64, %if.else60 ]
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 4
  %24 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc_data_head, align 4
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_desc_count, align 8
  %sub72 = add i32 %27, -1
  %and73 = and i32 %sub72, %5
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %25, i32 %and73
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %brmerge.demorgan = and i1 %tobool75.not, %tobool76.not
  br i1 %brmerge.demorgan, label %if.end70.if.end320_crit_edge, label %if.then77

if.end70.if.end320_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end320

if.then77:                                        ; preds = %if.end70
  br i1 %tobool75.not, label %if.then77.if.end185_crit_edge, label %do.body

if.then77.if.end185_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185

do.body:                                          ; preds = %if.then77
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %msg_enable, align 8
  %and80 = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %do.body.do.end94_crit_edge, label %do.body83

do.body.do.end94_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end94

do.body83:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_dev_xmit.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_dev_xmit, %if.then88)) #10
          to label %do.end94 [label %if.then88], !srcloc !186

if.then88:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %mss89 = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 10
  %34 = ptrtoint ptr %mss89 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mss89, align 8
  %conv90 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_dev_xmit.__UNIQUE_ID_ddebug354, ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef %conv90) #10
  br label %do.end94

do.end94:                                         ; preds = %if.then88, %do.body83, %do.body.do.end94_crit_edge
  %desc2 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %29, i32 0, i32 2
  %36 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc2, align 4
  %mss97 = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 10
  %38 = ptrtoint ptr %mss97 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mss97, align 8
  %40 = and i16 %39, 32767
  %and120 = and i32 %37, -32768
  %conv121 = zext i16 %40 to i32
  %or = or i32 %and120, %conv121
  %41 = tail call i32 @llvm.bswap.i32(i32 %or)
  %42 = ptrtoint ptr %desc2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %desc2, align 4
  %desc3 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %29, i32 0, i32 3
  %43 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %desc3, align 4
  %45 = or i32 %44, 1073741828
  store i32 %45, ptr %desc3, align 4
  %46 = ptrtoint ptr %mss97 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %mss97, align 8
  %cur_mss184 = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 10, i32 0, i32 2
  %48 = ptrtoint ptr %cur_mss184 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %cur_mss184, align 4
  br label %if.end185

if.end185:                                        ; preds = %do.end94, %if.then77.if.end185_crit_edge
  br i1 %tobool76.not, label %if.end185.if.end311_crit_edge, label %do.body188

if.end185.if.end311_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end311

do.body188:                                       ; preds = %if.end185
  %msg_enable189 = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 5
  %49 = ptrtoint ptr %msg_enable189 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable189, align 8
  %and190 = and i32 %50, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and190)
  %tobool191.not = icmp eq i32 %and190, 0
  br i1 %tobool191.not, label %do.body188.do.end214_crit_edge, label %do.body193

do.body188.do.end214_crit_edge:                   ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end214

do.body193:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_dev_xmit.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_dev_xmit, %if.then205)) #10
          to label %do.end214 [label %if.then205], !srcloc !186

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 8
  %vlan_ctag207 = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 11
  %53 = ptrtoint ptr %vlan_ctag207 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vlan_ctag207, align 2
  %conv208 = zext i16 %54 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_dev_xmit.__UNIQUE_ID_ddebug355, ptr noundef %52, ptr noundef nonnull @.str.12, i32 noundef %conv208) #10
  br label %do.end214

do.end214:                                        ; preds = %if.then205, %do.body193, %do.body188.do.end214_crit_edge
  %desc3216 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %29, i32 0, i32 3
  %55 = ptrtoint ptr %desc3216 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %desc3216, align 4
  %or242 = or i32 %56, 1073741824
  %57 = tail call i32 @llvm.bswap.i32(i32 %or242)
  %58 = ptrtoint ptr %desc3216 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %desc3216, align 4
  %vlan_ctag250 = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 11
  %59 = ptrtoint ptr %vlan_ctag250 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vlan_ctag250, align 2
  %and274 = and i32 %57, -65536
  %61 = or i16 %60, 256
  %62 = zext i16 %61 to i32
  %63 = or i32 %and274, %62
  store i32 %63, ptr %desc3216, align 4
  %64 = load i16, ptr %vlan_ctag250, align 2
  %cur_vlan_ctag310 = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 10, i32 0, i32 3
  %65 = ptrtoint ptr %cur_vlan_ctag310 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %cur_vlan_ctag310, align 2
  br label %if.end311

if.end311:                                        ; preds = %do.end214, %if.end185.if.end311_crit_edge
  %inc = add i32 %5, 1
  %66 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc_data_head, align 4
  %68 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dma_desc_count, align 8
  %sub316 = add i32 %69, -1
  %and317 = and i32 %sub316, %inc
  %add.ptr318 = getelementptr %struct.xlgmac_desc_data, ptr %67, i32 %and317
  %70 = ptrtoint ptr %add.ptr318 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %add.ptr318, align 4
  br label %if.end320

if.end320:                                        ; preds = %if.end311, %if.end70.if.end320_crit_edge
  %cur_index.0 = phi i32 [ %inc, %if.end311 ], [ %5, %if.end70.if.end320_crit_edge ]
  %dma_desc.0 = phi ptr [ %71, %if.end311 ], [ %29, %if.end70.if.end320_crit_edge ]
  %desc_data.0 = phi ptr [ %add.ptr318, %if.end311 ], [ %add.ptr, %if.end70.if.end320_crit_edge ]
  %skb_dma = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.0, i32 0, i32 3
  %72 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %skb_dma, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %75 = ptrtoint ptr %dma_desc.0 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %dma_desc.0, align 4
  %desc1 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %dma_desc.0, i32 0, i32 1
  %76 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %desc1, align 4
  %desc2326 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %dma_desc.0, i32 0, i32 2
  %77 = ptrtoint ptr %desc2326 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %desc2326, align 4
  %skb_dma_len = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.0, i32 0, i32 4
  %79 = ptrtoint ptr %skb_dma_len to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %skb_dma_len, align 4
  %and340 = and i32 %80, 16383
  %and351 = and i32 %78, -16384
  %or352 = or i32 %and340, %and351
  %81 = tail call i32 @llvm.bswap.i32(i32 %or352)
  %82 = ptrtoint ptr %desc2326 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %desc2326, align 4
  br i1 %tobool42.not, label %if.end320.if.end388_crit_edge, label %if.then356

if.end320.if.end388_crit_edge:                    ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end388

if.then356:                                       ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #12
  %and383 = and i32 %81, -49153
  %or384 = or i32 %and383, 32768
  %83 = tail call i32 @llvm.bswap.i32(i32 %or384)
  %84 = ptrtoint ptr %desc2326 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %desc2326, align 4
  %tx_vlan_packets = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 4, i32 48
  %85 = ptrtoint ptr %tx_vlan_packets to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %tx_vlan_packets, align 8
  %inc387 = add i64 %86, 1
  store i64 %inc387, ptr %tx_vlan_packets, align 8
  br label %if.end388

if.end388:                                        ; preds = %if.then356, %if.end320.if.end388_crit_edge
  %87 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %attributes, align 4
  %89 = and i32 %88, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool404.not = icmp eq i32 %89, 0
  br i1 %tobool404.not, label %if.end388.if.end436_crit_edge, label %if.then405

if.end388.if.end436_crit_edge:                    ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end436

if.then405:                                       ; preds = %if.end388
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %desc2326 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %desc2326, align 4
  %or433 = or i32 %91, 1073741824
  %92 = tail call i32 @llvm.bswap.i32(i32 %or433)
  %93 = ptrtoint ptr %desc2326 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %desc2326, align 4
  br label %if.end436

if.end436:                                        ; preds = %if.then405, %if.end388.if.end436_crit_edge
  %desc3438 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %dma_desc.0, i32 0, i32 3
  %94 = ptrtoint ptr %desc3438 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %desc3438, align 4
  %or464 = and i32 %95, -536870977
  %96 = or i32 %or464, 536870912
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_index.0, i32 %5)
  %cmp497.not = icmp eq i32 %cur_index.0, %5
  %or527 = or i32 %or464, -1610612736
  %97 = tail call i32 @llvm.bswap.i32(i32 %or527)
  %storemerge1315 = select i1 %cmp497.not, i32 %96, i32 %97
  %98 = ptrtoint ptr %desc3438 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge1315, ptr %desc3438, align 4
  br i1 %tobool.not, label %if.else625, label %if.then532

if.then532:                                       ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #12
  %or560 = or i32 %storemerge1315, 262144
  %99 = tail call i32 @llvm.bswap.i32(i32 %or560)
  %100 = ptrtoint ptr %desc3438 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %desc3438, align 4
  %tcp_payload_len = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 9
  %101 = ptrtoint ptr %tcp_payload_len to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %tcp_payload_len, align 4
  %and578 = and i32 %102, 262143
  %and589 = and i32 %99, -262144
  %or590 = or i32 %and578, %and589
  %103 = tail call i32 @llvm.bswap.i32(i32 %or590)
  %104 = ptrtoint ptr %desc3438 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %desc3438, align 4
  %tcp_header_len = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 8
  %105 = ptrtoint ptr %tcp_header_len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %tcp_header_len, align 8
  %107 = shl i32 %106, 17
  %and608 = and i32 %107, 7864320
  %and619 = and i32 %103, -7864321
  %or620 = or i32 %and619, %and608
  %108 = tail call i32 @llvm.bswap.i32(i32 %or620)
  %109 = ptrtoint ptr %desc3438 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %desc3438, align 4
  %tx_tso_packets = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 4, i32 41
  %110 = ptrtoint ptr %tx_tso_packets to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %tx_tso_packets, align 8
  %inc624 = add i64 %111, 1
  store i64 %inc624, ptr %tx_tso_packets, align 8
  br label %if.end719

if.else625:                                       ; preds = %if.end436
  call void @__sanitizer_cov_trace_pc() #12
  %and652 = and i32 %storemerge1315, -201326593
  %112 = tail call i32 @llvm.bswap.i32(i32 %and652)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool656.not = icmp eq i32 %and8, 0
  %or685 = or i32 %112, 196608
  %113 = tail call i32 @llvm.bswap.i32(i32 %or685)
  %storemerge1313 = select i1 %tobool656.not, i32 %112, i32 %113
  %114 = ptrtoint ptr %desc3438 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %storemerge1313, ptr %desc3438, align 4
  %length = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 4
  %115 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %length, align 8
  %and704 = and i32 %116, 32767
  %and715 = and i32 %storemerge1313, -32768
  %or716 = or i32 %and704, %and715
  %117 = tail call i32 @llvm.bswap.i32(i32 %or716)
  %118 = ptrtoint ptr %desc3438 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %desc3438, align 4
  br label %if.end719

if.end719:                                        ; preds = %if.else625, %if.then532
  %sub720 = sub i32 %cur_index.0, %5
  %desc_count = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 3
  %i.01323 = add i32 %sub720, 1
  %119 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %desc_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.01323, i32 %120)
  %cmp7221324 = icmp ult i32 %i.01323, %120
  br i1 %cmp7221324, label %for.body.lr.ph, label %if.end719.for.end_crit_edge

if.end719.for.end_crit_edge:                      ; preds = %if.end719
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end719
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool831.not = icmp eq i32 %and8, 0
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.01326 = phi i32 [ %i.01323, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %cur_index.11325 = phi i32 [ %cur_index.0, %for.body.lr.ph ], [ %inc724, %for.body.for.body_crit_edge ]
  %inc724 = add i32 %cur_index.11325, 1
  %121 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %desc_data_head, align 4
  %123 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %dma_desc_count, align 8
  %sub729 = add i32 %124, -1
  %and730 = and i32 %sub729, %inc724
  %add.ptr731 = getelementptr %struct.xlgmac_desc_data, ptr %122, i32 %and730
  %125 = ptrtoint ptr %add.ptr731 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %add.ptr731, align 4
  %skb_dma733 = getelementptr %struct.xlgmac_desc_data, ptr %122, i32 %and730, i32 3
  %127 = ptrtoint ptr %skb_dma733 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %skb_dma733, align 4
  %129 = tail call i32 @llvm.bswap.i32(i32 %128)
  %130 = ptrtoint ptr %126 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %126, align 4
  %desc1739 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %126, i32 0, i32 1
  %131 = ptrtoint ptr %desc1739 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 0, ptr %desc1739, align 4
  %desc2741 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %126, i32 0, i32 2
  %132 = ptrtoint ptr %desc2741 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %desc2741, align 4
  %skb_dma_len745 = getelementptr %struct.xlgmac_desc_data, ptr %122, i32 %and730, i32 4
  %134 = ptrtoint ptr %skb_dma_len745 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %skb_dma_len745, align 4
  %and756 = and i32 %135, 16383
  %and767 = and i32 %133, -16384
  %or768 = or i32 %and756, %and767
  %136 = tail call i32 @llvm.bswap.i32(i32 %or768)
  %137 = ptrtoint ptr %desc2741 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %desc2741, align 4
  %desc3772 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %126, i32 0, i32 3
  %138 = ptrtoint ptr %desc3772 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %desc3772, align 4
  %or798 = and i32 %139, 2147483583
  %140 = or i32 %or798, -2147483648
  %or860 = or i32 %or798, -2147287040
  %141 = tail call i32 @llvm.bswap.i32(i32 %or860)
  %storemerge = select i1 %tobool831.not, i32 %140, i32 %141
  %142 = ptrtoint ptr %desc3772 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %storemerge, ptr %desc3772, align 4
  %i.0 = add nuw i32 %i.01326, 1
  %143 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %desc_count, align 4
  %cmp722 = icmp ult i32 %i.0, %144
  br i1 %cmp722, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end719.for.end_crit_edge
  %cur_index.1.lcssa = phi i32 [ %cur_index.0, %if.end719.for.end_crit_edge ], [ %inc724, %for.body.for.end_crit_edge ]
  %dma_desc.1.lcssa = phi ptr [ %dma_desc.0, %if.end719.for.end_crit_edge ], [ %126, %for.body.for.end_crit_edge ]
  %desc_data.1.lcssa = phi ptr [ %desc_data.0, %if.end719.for.end_crit_edge ], [ %add.ptr731, %for.body.for.end_crit_edge ]
  %desc3866 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %dma_desc.1.lcssa, i32 0, i32 3
  %145 = ptrtoint ptr %desc3866 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %desc3866, align 4
  %or892 = or i32 %146, 268435456
  %147 = tail call i32 @llvm.bswap.i32(i32 %or892)
  %148 = ptrtoint ptr %desc3866 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %desc3866, align 4
  br i1 %tobool895.not, label %for.end.if.end927_crit_edge, label %if.then896

for.end.if.end927_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end927

if.then896:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %desc2898 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %dma_desc.1.lcssa, i32 0, i32 2
  %149 = ptrtoint ptr %desc2898 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %desc2898, align 4
  %or924 = or i32 %150, -2147483648
  %151 = tail call i32 @llvm.bswap.i32(i32 %or924)
  %152 = ptrtoint ptr %desc2898 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %desc2898, align 4
  br label %if.end927

if.end927:                                        ; preds = %if.then896, %for.end.if.end927_crit_edge
  %153 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %tx_packets, align 4
  %tx = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.1.lcssa, i32 0, i32 5
  %155 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %tx, align 4
  %tx_bytes = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 6
  %156 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %tx_bytes, align 8
  %bytes = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data.1.lcssa, i32 0, i32 5, i32 1
  %158 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %bytes, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !187
  %159 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %desc_data_head, align 4
  %161 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %dma_desc_count, align 8
  %sub934 = add i32 %162, -1
  %and935 = and i32 %sub934, %5
  %add.ptr936 = getelementptr %struct.xlgmac_desc_data, ptr %160, i32 %and935
  %163 = ptrtoint ptr %add.ptr936 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %add.ptr936, align 4
  %desc3939 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %164, i32 0, i32 3
  %165 = ptrtoint ptr %desc3939 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %desc3939, align 4
  %or965 = or i32 %166, -2147483648
  %167 = tail call i32 @llvm.bswap.i32(i32 %or965)
  %168 = ptrtoint ptr %desc3939 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %desc3939, align 4
  %msg_enable968 = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 5
  %169 = ptrtoint ptr %msg_enable968 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %msg_enable968, align 8
  %and969 = and i32 %170, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and969)
  %tobool970.not = icmp eq i32 %and969, 0
  br i1 %tobool970.not, label %if.end927.do.end977_crit_edge, label %if.then971

if.end927.do.end977_crit_edge:                    ; preds = %if.end927
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end977

if.then971:                                       ; preds = %if.end927
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %desc_count to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %desc_count, align 4
  tail call void @xlgmac_dump_tx_desc(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %172, i32 noundef 1) #10
  br label %do.end977

do.end977:                                        ; preds = %if.then971, %if.end927.do.end977_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !188
  %add980 = add i32 %cur_index.1.lcssa, 1
  %173 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %add980, ptr %cur, align 16
  %174 = tail call i32 @llvm.read_register.i32(metadata !53) #10
  %and.i.i = and i32 %174, -16384
  %175 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %177
  %178 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %179, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %180 = inttoptr i32 %add.i to ptr
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.i.not = icmp eq i8 %182, 0
  br i1 %tobool.i.not, label %do.end977.if.then988_crit_edge, label %lor.lhs.false983

do.end977.if.then988_crit_edge:                   ; preds = %do.end977
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then988

lor.lhs.false983:                                 ; preds = %do.end977
  %183 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %1, align 8
  %queue_index = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 2
  %185 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %queue_index, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %184, i32 0, i32 103
  %187 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %188, i32 %186, i32 13
  %189 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %state.i, align 4
  %and.i = and i32 %190, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i1320.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i1320.not, label %if.else989, label %lor.lhs.false983.if.then988_crit_edge

lor.lhs.false983.if.then988_crit_edge:            ; preds = %lor.lhs.false983
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then988

if.then988:                                       ; preds = %lor.lhs.false983.if.then988_crit_edge, %do.end977.if.then988_crit_edge
  tail call void @xlgmac_tx_start_xmit(ptr noundef %channel, ptr noundef %3)
  br label %do.end993

if.else989:                                       ; preds = %lor.lhs.false983
  call void @__sanitizer_cov_trace_pc() #12
  %191 = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 10
  %192 = ptrtoint ptr %191 to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 1, ptr %191, align 4
  br label %do.end993

do.end993:                                        ; preds = %if.else989, %if.then988
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_dev_read(ptr nocapture noundef readonly %channel) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %rx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 11
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_data_head, align 4
  %cur = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur, align 16
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_desc_count, align 8
  %sub = add i32 %11, -1
  %and = and i32 %sub, %9
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %7, i32 %and
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %desc3 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc3, align 4
  %16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !189
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 8
  %and14 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.if.end18_crit_edge, label %if.then16

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur, align 16
  tail call void @xlgmac_dump_rx_desc(ptr noundef %1, ptr noundef %3, i32 noundef %20) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end.if.end18_crit_edge
  %21 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc3, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool35.not = icmp eq i32 %23, 0
  br i1 %tobool35.not, label %if.end93, label %if.then36

if.then36:                                        ; preds = %if.end18
  %24 = and i32 %22, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %24)
  %25 = icmp eq i32 %24, 268435456
  br i1 %25, label %if.then.i, label %if.then36.xlgmac_get_rx_tstamp.exit_crit_edge

if.then36.xlgmac_get_rx_tstamp.exit_crit_edge:    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_get_rx_tstamp.exit

if.then.i:                                        ; preds = %if.then36
  %desc1.i = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %13, i32 0, i32 1
  %26 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %desc1.i, align 4
  %28 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %13, align 4
  %30 = zext i32 %27 to i64
  %31 = zext i32 %29 to i64
  %32 = shl nuw i64 %31, 32
  %33 = or i64 %32, %30
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %33)
  %cmp.not.i = icmp eq i64 %33, -1
  br i1 %cmp.not.i, label %if.then.i.xlgmac_get_rx_tstamp.exit_crit_edge, label %if.then27.i

if.then.i.xlgmac_get_rx_tstamp.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_get_rx_tstamp.exit

if.then27.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #10
  %rx_tstamp.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 12
  %35 = ptrtoint ptr %rx_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %rx_tstamp.i, align 8
  %attributes.i = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 1
  %36 = ptrtoint ptr %attributes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %attributes.i, align 4
  %or53.i = or i32 %37, 32
  store i32 %or53.i, ptr %attributes.i, align 4
  br label %xlgmac_get_rx_tstamp.exit

xlgmac_get_rx_tstamp.exit:                        ; preds = %if.then27.i, %if.then.i.xlgmac_get_rx_tstamp.exit_crit_edge, %if.then36.xlgmac_get_rx_tstamp.exit_crit_edge
  %attributes = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %attributes, align 4
  %or = and i32 %39, -25
  %and90 = or i32 %or, 16
  store i32 %and90, ptr %attributes, align 4
  br label %cleanup

if.end93:                                         ; preds = %if.end18
  %attributes95 = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 1
  %40 = ptrtoint ptr %attributes95 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %attributes95, align 4
  %and121 = and i32 %41, -17
  store i32 %and121, ptr %attributes95, align 4
  %42 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %desc3, align 4
  %44 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool140.not = icmp eq i32 %44, 0
  br i1 %tobool140.not, label %if.end93.if.end172_crit_edge, label %if.then141

if.end93.if.end172_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end172

if.then141:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %and169 = and i32 %41, -25
  %or170 = or i32 %and169, 8
  %45 = ptrtoint ptr %attributes95 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or170, ptr %attributes95, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.then141, %if.end93.if.end172_crit_edge
  %46 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %desc3, align 4
  %48 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool189.not = icmp eq i32 %48, 0
  br i1 %tobool189.not, label %if.end172.if.end211_crit_edge, label %if.then190

if.end172.if.end211_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then190:                                       ; preds = %if.end172
  %desc2 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %13, i32 0, i32 2
  %49 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %desc2, align 4
  %51 = and i32 %50, -16580608
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %conv = trunc i32 %52 to i16
  %hdr_len = getelementptr %struct.xlgmac_desc_data, ptr %7, i32 %and, i32 6, i32 2
  %53 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %conv, ptr %hdr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool208.not = icmp eq i16 %conv, 0
  br i1 %tobool208.not, label %if.then190.if.end211_crit_edge, label %if.then209

if.then190.if.end211_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.then209:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #12
  %rx_split_header_packets = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 4, i32 42
  %54 = ptrtoint ptr %rx_split_header_packets to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %rx_split_header_packets, align 8
  %inc = add i64 %55, 1
  store i64 %inc, ptr %rx_split_header_packets, align 8
  br label %if.end211

if.end211:                                        ; preds = %if.then209, %if.then190.if.end211_crit_edge, %if.end172.if.end211_crit_edge
  %56 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %desc3, align 4
  %58 = and i32 %57, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool228.not = icmp eq i32 %58, 0
  br i1 %tobool228.not, label %if.end211.if.end277_crit_edge, label %if.then229

if.end211.if.end277_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end277

if.then229:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %attributes95 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %attributes95, align 4
  %or258 = or i32 %60, 64
  store i32 %or258, ptr %attributes95, align 4
  %desc1 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %13, i32 0, i32 1
  %61 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %desc1, align 4
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %rss_hash = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 13
  %64 = ptrtoint ptr %rss_hash to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %rss_hash, align 8
  %65 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %desc3, align 4
  %67 = lshr i32 %66, 12
  %shr275 = and i32 %67, 15
  %68 = add nsw i32 %shr275, -1
  %switch.and = and i32 %68, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %69 = select i1 %switch.selectcmp, i32 3, i32 2
  %rss_hash_type = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 14
  %70 = ptrtoint ptr %rss_hash_type to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %rss_hash_type, align 4
  br label %if.end277

if.end277:                                        ; preds = %if.then229, %if.end211.if.end277_crit_edge
  %71 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %desc3, align 4
  %73 = and i32 %72, -12648448
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  %conv294 = trunc i32 %74 to i16
  %len = getelementptr %struct.xlgmac_desc_data, ptr %7, i32 %and, i32 6, i32 3
  %75 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv294, ptr %len, align 2
  %76 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %desc3, align 4
  %78 = and i32 %77, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool312.not = icmp eq i32 %78, 0
  %79 = ptrtoint ptr %attributes95 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %attributes95, align 4
  br i1 %tobool312.not, label %if.then313, label %if.end344

if.then313:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #12
  %or342 = or i32 %80, 4
  %81 = ptrtoint ptr %attributes95 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or342, ptr %attributes95, align 4
  br label %cleanup

if.end344:                                        ; preds = %if.end277
  %and372 = and i32 %80, -5
  %82 = ptrtoint ptr %attributes95 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %and372, ptr %attributes95, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %83 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %features, align 16
  %and375 = and i64 %84, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and375)
  %tobool376.not = icmp eq i64 %and375, 0
  br i1 %tobool376.not, label %if.end344.if.end408_crit_edge, label %if.then377

if.end344.if.end408_crit_edge:                    ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end408

if.then377:                                       ; preds = %if.end344
  call void @__sanitizer_cov_trace_pc() #12
  %and405 = and i32 %80, -6
  %or406 = or i32 %and405, 1
  %85 = ptrtoint ptr %attributes95 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or406, ptr %attributes95, align 4
  br label %if.end408

if.end408:                                        ; preds = %if.then377, %if.end344.if.end408_crit_edge
  %86 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %desc3, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87)
  %and423 = lshr i32 %88, 15
  %shr424 = and i32 %and423, 1
  %and439 = lshr i32 %88, 16
  %shr440 = and i32 %and439, 15
  %89 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %msg_enable, align 8
  %and442 = and i32 %90, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and442)
  %tobool443.not = icmp eq i32 %and442, 0
  br i1 %tobool443.not, label %if.end408.do.end454_crit_edge, label %do.body445

if.end408.do.end454_crit_edge:                    ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end454

do.body445:                                       ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_dev_read.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_dev_read, %if.then450)) #10
          to label %do.end454 [label %if.then450], !srcloc !186

if.then450:                                       ; preds = %do.body445
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_dev_read.__UNIQUE_ID_ddebug370, ptr noundef %5, ptr noundef nonnull @.str.15, i32 noundef %shr424, i32 noundef %shr440) #10
  br label %do.end454

do.end454:                                        ; preds = %if.then450, %do.body445, %if.end408.do.end454_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr424)
  %tobool455.not = icmp eq i32 %shr424, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr440)
  %tobool456.not = icmp eq i32 %shr440, 0
  %or.cond = select i1 %tobool455.not, i1 true, i1 %tobool456.not
  br i1 %or.cond, label %if.then457, label %if.else

if.then457:                                       ; preds = %do.end454
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %shr440)
  %cmp = icmp eq i32 %shr440, 9
  br i1 %cmp, label %land.lhs.true, label %if.then457.cleanup_crit_edge

if.then457.cleanup_crit_edge:                     ; preds = %if.then457
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then457
  %91 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %features, align 16
  %and460 = and i64 %92, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and460)
  %tobool461.not = icmp eq i64 %and460, 0
  br i1 %tobool461.not, label %land.lhs.true.cleanup_crit_edge, label %if.then462

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then462:                                       ; preds = %land.lhs.true
  %93 = ptrtoint ptr %attributes95 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %attributes95, align 4
  %or491 = or i32 %94, 2
  store i32 %or491, ptr %attributes95, align 4
  %95 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %13, align 4
  %97 = and i32 %96, -65536
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %conv508 = trunc i32 %98 to i16
  %vlan_ctag = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 11
  %99 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv508, ptr %vlan_ctag, align 2
  %100 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %msg_enable, align 8
  %and511 = and i32 %101, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and511)
  %tobool512.not = icmp eq i32 %and511, 0
  br i1 %tobool512.not, label %if.then462.cleanup_crit_edge, label %do.body514

if.then462.cleanup_crit_edge:                     ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body514:                                       ; preds = %if.then462
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_dev_read.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_dev_read, %if.then526)) #10
          to label %cleanup [label %if.then526], !srcloc !186

if.then526:                                       ; preds = %do.body514
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %vlan_ctag, align 2
  %conv528 = zext i16 %103 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_dev_read.__UNIQUE_ID_ddebug371, ptr noundef %5, ptr noundef nonnull @.str.16, i32 noundef %conv528) #10
  br label %cleanup

if.else:                                          ; preds = %do.end454
  %shr440.off = add nsw i32 %shr440, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr440.off)
  %switch = icmp ult i32 %shr440.off, 2
  br i1 %switch, label %if.then541, label %if.else572

if.then541:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %attributes95 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %attributes95, align 4
  %and569 = and i32 %105, -2
  store i32 %and569, ptr %attributes95, align 4
  br label %cleanup

if.else572:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %errors = getelementptr inbounds %struct.xlgmac_pkt_info, ptr %3, i32 0, i32 2
  %106 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %errors, align 8
  %or600 = or i32 %107, 8
  store i32 %or600, ptr %errors, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else572, %if.then541, %if.then526, %do.body514, %if.then462.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then457.cleanup_crit_edge, %if.then313, %xlgmac_get_rx_tstamp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xlgmac_get_rx_tstamp.exit ], [ 0, %if.then313 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.then462.cleanup_crit_edge ], [ 0, %if.then526 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then457.cleanup_crit_edge ], [ 0, %if.else572 ], [ 0, %if.then541 ], [ 0, %do.body514 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_enable_int(ptr nocapture noundef readonly %channel, i32 noundef %int_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 3
  %0 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  %4 = zext i32 %int_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %int_id, label %entry.cleanup_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %sw.bb19
    i32 2, label %sw.bb48
    i32 3, label %sw.bb77
    i32 4, label %sw.bb106
    i32 5, label %sw.bb135
    i32 6, label %sw.bb164
    i32 7, label %sw.bb221
    i32 8, label %sw.bb250
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb106:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb135:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb164:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb221:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb250:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %saved_ier = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 7
  %5 = ptrtoint ptr %saved_ier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %saved_ier, align 16
  br label %do.body

do.body:                                          ; preds = %sw.bb250, %sw.bb221, %sw.bb164, %sw.bb135, %sw.bb106, %sw.bb77, %sw.bb48, %sw.bb19, %entry.do.body_crit_edge
  %.pn = phi i32 [ %6, %sw.bb250 ], [ 4096, %sw.bb221 ], [ 65, %sw.bb164 ], [ 256, %sw.bb135 ], [ 128, %sw.bb106 ], [ 64, %sw.bb77 ], [ 4, %sw.bb48 ], [ 2, %sw.bb19 ], [ 1, %entry.do.body_crit_edge ]
  %dma_ch_ier.0 = or i32 %.pn, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %dma_ch_ier.0)
  %8 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_regs, align 8
  %add.ptr253 = getelementptr i8, ptr %9, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr253, i32 %7) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_disable_int(ptr nocapture noundef %channel, i32 noundef %int_id) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 3
  %0 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 56
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !192
  %4 = zext i32 %int_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %int_id, label %entry.cleanup_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %sw.bb19
    i32 2, label %sw.bb48
    i32 3, label %sw.bb77
    i32 4, label %sw.bb106
    i32 5, label %sw.bb135
    i32 6, label %sw.bb164
    i32 7, label %sw.bb221
    i32 8, label %sw.bb250
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb48:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb106:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb135:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb164:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb221:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

sw.bb250:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and251 = and i32 %3, 12743
  %saved_ier = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 7
  %5 = ptrtoint ptr %saved_ier to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and251, ptr %saved_ier, align 16
  br label %do.body

do.body:                                          ; preds = %sw.bb250, %sw.bb221, %sw.bb164, %sw.bb135, %sw.bb106, %sw.bb77, %sw.bb48, %sw.bb19, %entry.do.body_crit_edge
  %.sink = phi i32 [ -3, %sw.bb19 ], [ -5, %sw.bb48 ], [ -65, %sw.bb77 ], [ -129, %sw.bb106 ], [ -257, %sw.bb135 ], [ -66, %sw.bb164 ], [ -4097, %sw.bb221 ], [ -12744, %sw.bb250 ], [ -2, %entry.do.body_crit_edge ]
  %and18 = and i32 %3, %.sink
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !193
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %and18)
  %7 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_regs, align 8
  %add.ptr254 = getelementptr i8, ptr %8, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254, i32 %6) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_set_mac_address(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %addr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %addr, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx1 = getelementptr i8, ptr %addr, i32 4
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %3 to i32
  %or = or i32 %shl, %conv2
  %arrayidx4 = getelementptr i8, ptr %addr, i32 3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl6 = shl nuw i32 %conv5, 24
  %arrayidx7 = getelementptr i8, ptr %addr, i32 2
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %shl9 = shl nuw nsw i32 %conv8, 16
  %or10 = or i32 %shl9, %shl6
  %arrayidx11 = getelementptr i8, ptr %addr, i32 1
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %9 to i32
  %shl13 = shl nuw nsw i32 %conv12, 8
  %or14 = or i32 %or10, %shl13
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr, align 1
  %conv16 = zext i8 %11 to i32
  %or18 = or i32 %or14, %conv16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !122
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %13 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #10, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %16 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %17, i32 772
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %15) #10, !srcloc !66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_rx_mode(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  %hash_table.i.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = lshr i32 %3, 8
  %and.lobit = and i32 %and, 1
  tail call fastcc void @xlgmac_set_promiscuous_mode(ptr noundef %pdata, i32 noundef %and.lobit)
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %mac_regs.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %5 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp ne i32 %8, 0
  %cmp.i = xor i1 %tobool.not.i, %9
  br i1 %cmp.i, label %entry.xlgmac_set_all_multicast_mode.exit_crit_edge, label %do.body.i

entry.xlgmac_set_all_multicast_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_set_all_multicast_mode.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i, align 8
  %and9.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.do.end24.i_crit_edge, label %do.body12.i

do.body.i.do.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_set_all_multicast_mode.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_config_rx_mode, %if.then18.i)) #10
          to label %do.end24.i [label %if.then18.i], !srcloc !186

if.then18.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 8
  %cond20.i = select i1 %tobool.not.i, ptr @.str.20, ptr @.str.19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_set_all_multicast_mode.__UNIQUE_ID_ddebug353, ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond20.i) #10
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then18.i, %do.body12.i, %do.body.i.do.end24.i_crit_edge
  %14 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  %17 = lshr exact i32 %4, 5
  %18 = and i32 %16, -268435457
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %or.i = or i32 %19, %17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %21 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %20) #10, !srcloc !66
  br label %xlgmac_set_all_multicast_mode.exit

xlgmac_set_all_multicast_mode.exit:               ; preds = %do.end24.i, %entry.xlgmac_set_all_multicast_mode.exit_crit_edge
  %hash_table_size.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 25
  %23 = ptrtoint ptr %hash_table_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i12 = icmp eq i32 %24, 0
  br i1 %tobool.not.i12, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %xlgmac_set_all_multicast_mode.exit
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hash_table.i.i) #10
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata, align 8
  %shr.i.i = lshr i32 %24, 7
  %sub.i.i = sub nsw i32 26, %shr.i.i
  %div153.i.i = lshr i32 %24, 5
  %27 = call ptr @memset(ptr %hash_table.i.i, i32 0, i32 32)
  %uc.i.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 65
  %28 = ptrtoint ptr %uc.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %ha.0169.i.i = load ptr, ptr %uc.i.i, align 4
  %cmp.not170.i.i = icmp eq ptr %ha.0169.i.i, %uc.i.i
  br i1 %cmp.not170.i.i, label %if.then.i.for.end.i.i_crit_edge, label %if.then.i.cond.end.i.i_crit_edge

if.then.i.cond.end.i.i_crit_edge:                 ; preds = %if.then.i
  br label %cond.end.i.i

if.then.i.for.end.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

cond.end.i.i:                                     ; preds = %cond.end.i.i.cond.end.i.i_crit_edge, %if.then.i.cond.end.i.i_crit_edge
  %ha.0171.i.i = phi ptr [ %ha.0.i.i, %cond.end.i.i.cond.end.i.i_crit_edge ], [ %ha.0169.i.i, %if.then.i.cond.end.i.i_crit_edge ]
  %addr.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0171.i.i, i32 0, i32 2
  %call.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr.i.i, i32 noundef 6) #14
  %neg.i.i = xor i32 %call.i.i, -1
  %29 = lshr i32 %neg.i.i, 8
  %conv4.i.i.i.i = and i32 %29, 255
  %arrayidx.i10.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i.i.i
  %30 = ptrtoint ptr %arrayidx.i10.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i10.i.i.i.i, align 1
  %conv6.i.i.i.i = zext i8 %31 to i32
  %32 = shl nuw nsw i32 %conv6.i.i.i.i, 16
  %33 = and i32 %neg.i.i, 255
  %arrayidx.i.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %conv2.i.i.i.i = zext i8 %35 to i32
  %36 = shl nuw i32 %conv2.i.i.i.i, 24
  %or.i13.i.i.i = or i32 %32, %36
  %sum.shift.i.i.i = lshr i32 %neg.i.i, 24
  %arrayidx.i10.i11.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i.i.i
  %37 = ptrtoint ptr %arrayidx.i10.i11.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i10.i11.i.i.i, align 1
  %conv6.i12.i.i.i = zext i8 %38 to i32
  %shl.i.i.i = or i32 %or.i13.i.i.i, %conv6.i12.i.i.i
  %shr.i.i.i = lshr i32 %neg.i.i, 16
  %39 = and i32 %shr.i.i.i, 255
  %arrayidx.i.i7.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.i7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx.i.i7.i.i.i, align 1
  %conv2.i8.i.i.i = zext i8 %41 to i32
  %shl.i9.i.i.i = shl nuw nsw i32 %conv2.i8.i.i.i, 8
  %or.i.i.i = or i32 %shl.i.i.i, %shl.i9.i.i.i
  %shr31.i.i = lshr i32 %or.i.i.i, %sub.i.i
  %and32.i.i = and i32 %shr31.i.i, 31
  %shl33.i.i = shl nuw i32 1, %and32.i.i
  %shr34.i.i = lshr i32 %shr31.i.i, 5
  %arrayidx.i.i = getelementptr [8 x i32], ptr %hash_table.i.i, i32 0, i32 %shr34.i.i
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 4
  %or35.i.i = or i32 %shl33.i.i, %43
  store i32 %or35.i.i, ptr %arrayidx.i.i, align 4
  %44 = ptrtoint ptr %ha.0171.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %ha.0.i.i = load ptr, ptr %ha.0171.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %ha.0.i.i, %uc.i.i
  br i1 %cmp.not.i.i, label %cond.end.i.i.for.end.i.i_crit_edge, label %cond.end.i.i.cond.end.i.i_crit_edge

cond.end.i.i.cond.end.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.end.i.i.for.end.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cond.end.i.i.for.end.i.i_crit_edge, %if.then.i.for.end.i.i_crit_edge
  %mc.i.i = getelementptr inbounds %struct.net_device, ptr %26, i32 0, i32 66
  %45 = ptrtoint ptr %mc.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %ha.1172.i.i = load ptr, ptr %mc.i.i, align 4
  %cmp50.not173.i.i = icmp eq ptr %ha.1172.i.i, %mc.i.i
  br i1 %cmp50.not173.i.i, label %for.end.i.i.for.cond102.preheader.i.i_crit_edge, label %for.end.i.i.cond.end87.i.i_crit_edge

for.end.i.i.cond.end87.i.i_crit_edge:             ; preds = %for.end.i.i
  br label %cond.end87.i.i

for.end.i.i.for.cond102.preheader.i.i_crit_edge:  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond102.preheader.i.i

for.cond102.preheader.i.i:                        ; preds = %cond.end87.i.i.for.cond102.preheader.i.i_crit_edge, %for.end.i.i.for.cond102.preheader.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp103175.not.i.i = icmp ult i32 %24, 32
  br i1 %cmp103175.not.i.i, label %for.cond102.preheader.i.i.xlgmac_set_mac_hash_table.exit.i_crit_edge, label %do.body.lr.ph.i.i

for.cond102.preheader.i.i.xlgmac_set_mac_hash_table.exit.i_crit_edge: ; preds = %for.cond102.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_set_mac_hash_table.exit.i

do.body.lr.ph.i.i:                                ; preds = %for.cond102.preheader.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div153.i.i, i32 1) #10
  br label %do.body.i.i

cond.end87.i.i:                                   ; preds = %cond.end87.i.i.cond.end87.i.i_crit_edge, %for.end.i.i.cond.end87.i.i_crit_edge
  %ha.1174.i.i = phi ptr [ %ha.1.i.i, %cond.end87.i.i.cond.end87.i.i_crit_edge ], [ %ha.1172.i.i, %for.end.i.i.cond.end87.i.i_crit_edge ]
  %addr54.i.i = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.1174.i.i, i32 0, i32 2
  %call56.i.i = tail call i32 @crc32_le(i32 noundef -1, ptr noundef %addr54.i.i, i32 noundef 6) #14
  %neg57.i.i = xor i32 %call56.i.i, -1
  %46 = lshr i32 %neg57.i.i, 8
  %conv4.i.i156.i.i = and i32 %46, 255
  %arrayidx.i10.i.i157.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %conv4.i.i156.i.i
  %47 = ptrtoint ptr %arrayidx.i10.i.i157.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i10.i.i157.i.i, align 1
  %conv6.i.i158.i.i = zext i8 %48 to i32
  %49 = shl nuw nsw i32 %conv6.i.i158.i.i, 16
  %50 = and i32 %neg57.i.i, 255
  %arrayidx.i.i.i154.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %50
  %51 = ptrtoint ptr %arrayidx.i.i.i154.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.i.i.i154.i.i, align 1
  %conv2.i.i155.i.i = zext i8 %52 to i32
  %53 = shl nuw i32 %conv2.i.i155.i.i, 24
  %or.i13.i166.i.i = or i32 %49, %53
  %sum.shift.i163.i.i = lshr i32 %neg57.i.i, 24
  %arrayidx.i10.i11.i164.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %sum.shift.i163.i.i
  %54 = ptrtoint ptr %arrayidx.i10.i11.i164.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i10.i11.i164.i.i, align 1
  %conv6.i12.i165.i.i = zext i8 %55 to i32
  %shl.i167.i.i = or i32 %or.i13.i166.i.i, %conv6.i12.i165.i.i
  %shr.i159.i.i = lshr i32 %neg57.i.i, 16
  %56 = and i32 %shr.i159.i.i, 255
  %arrayidx.i.i7.i160.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i.i7.i160.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i.i7.i160.i.i, align 1
  %conv2.i8.i161.i.i = zext i8 %58 to i32
  %shl.i9.i162.i.i = shl nuw nsw i32 %conv2.i8.i161.i.i, 8
  %or.i168.i.i = or i32 %shl.i167.i.i, %shl.i9.i162.i.i
  %shr89.i.i = lshr i32 %or.i168.i.i, %sub.i.i
  %and90.i.i = and i32 %shr89.i.i, 31
  %shl91.i.i = shl nuw i32 1, %and90.i.i
  %shr92.i.i = lshr i32 %shr89.i.i, 5
  %arrayidx93.i.i = getelementptr [8 x i32], ptr %hash_table.i.i, i32 0, i32 %shr92.i.i
  %59 = ptrtoint ptr %arrayidx93.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx93.i.i, align 4
  %or94.i.i = or i32 %shl91.i.i, %60
  store i32 %or94.i.i, ptr %arrayidx93.i.i, align 4
  %61 = ptrtoint ptr %ha.1174.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %ha.1.i.i = load ptr, ptr %ha.1174.i.i, align 4
  %cmp50.not.i.i = icmp eq ptr %ha.1.i.i, %mc.i.i
  br i1 %cmp50.not.i.i, label %cond.end87.i.i.for.cond102.preheader.i.i_crit_edge, label %cond.end87.i.i.cond.end87.i.i_crit_edge

cond.end87.i.i.cond.end87.i.i_crit_edge:          ; preds = %cond.end87.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end87.i.i

cond.end87.i.i.for.cond102.preheader.i.i_crit_edge: ; preds = %cond.end87.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond102.preheader.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %hash_reg.0177.i.i = phi i32 [ 16, %do.body.lr.ph.i.i ], [ %add.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %i.0176.i.i = phi i32 [ 0, %do.body.lr.ph.i.i ], [ %inc.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !197
  tail call void @arm_heavy_mb() #10
  %arrayidx105.i.i = getelementptr [8 x i32], ptr %hash_table.i.i, i32 0, i32 %i.0176.i.i
  %62 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx105.i.i, align 4
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  %65 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr106.i.i = getelementptr i8, ptr %66, i32 %hash_reg.0177.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i.i, i32 %64) #10, !srcloc !66
  %add.i.i = add nuw nsw i32 %hash_reg.0177.i.i, 4
  %inc.i.i = add nuw nsw i32 %i.0176.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %do.body.i.i.xlgmac_set_mac_hash_table.exit.i_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

do.body.i.i.xlgmac_set_mac_hash_table.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_set_mac_hash_table.exit.i

xlgmac_set_mac_hash_table.exit.i:                 ; preds = %do.body.i.i.xlgmac_set_mac_hash_table.exit.i_crit_edge, %for.cond102.preheader.i.i.xlgmac_set_mac_hash_table.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hash_table.i.i) #10
  br label %xlgmac_add_mac_addresses.exit

if.else.i:                                        ; preds = %xlgmac_set_all_multicast_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xlgmac_set_mac_addn_addrs(ptr noundef %pdata) #10
  br label %xlgmac_add_mac_addresses.exit

xlgmac_add_mac_addresses.exit:                    ; preds = %if.else.i, %xlgmac_set_mac_hash_table.exit.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_enable_rx_csum(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !198
  %3 = or i32 %2, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %3) #10, !srcloc !66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_disable_rx_csum(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !199
  %3 = and i32 %2, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %3) #10, !srcloc !66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_set_xlgmii_25000_speed(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %3 = and i32 %2, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp = icmp eq i32 %3, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  %7 = and i32 %6, -113
  %8 = or i32 %7, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_set_xlgmii_40000_speed(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  %3 = and i32 %2, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  %7 = and i32 %6, -113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_set_xlgmii_50000_speed(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  %3 = and i32 %2, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp eq i32 %3, 32
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  %7 = and i32 %6, -113
  %8 = or i32 %7, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_set_xlgmii_100000_speed(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  %3 = and i32 %2, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %3)
  %cmp = icmp eq i32 %3, 48
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  %7 = and i32 %6, -113
  %8 = or i32 %7, 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_tx_desc_init(ptr nocapture noundef readonly %channel) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 10
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 8
  %cur = getelementptr inbounds %struct.xlgmac_ring, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur, align 16
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_desc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp38.not = icmp eq i32 %5, 0
  br i1 %cmp38.not, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %13, %for.body.for.body_crit_edge ]
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc_data_head, align 4
  %sub = add i32 %6, -1
  %and = and i32 %sub, %i.039
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %8, i32 %and
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !200
  %inc = add nuw i32 %i.039, 1
  %12 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_desc_count, align 8
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !201
  tail call void @arm_heavy_mb() #10
  %14 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_desc_count, align 8
  %sub3 = add i32 %15, -1
  %16 = tail call i32 @llvm.bswap.i32(i32 %sub3)
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 3
  %17 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_regs, align 8
  %add.ptr4 = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %16) #10, !srcloc !66
  %desc_data_head7 = getelementptr inbounds %struct.xlgmac_ring, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %desc_data_head7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc_data_head7, align 4
  %21 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_desc_count, align 8
  %sub9 = add i32 %22, -1
  %and10 = and i32 %sub9, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !202
  tail call void @arm_heavy_mb() #10
  %dma_desc_addr = getelementptr %struct.xlgmac_desc_data, ptr %20, i32 %and10, i32 1
  %23 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_regs, align 8
  %add.ptr17 = getelementptr i8, ptr %24, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 0) #10, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !203
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %dma_desc_addr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_desc_addr, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %28 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dma_regs, align 8
  %add.ptr24 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %27) #10, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_rx_desc_init(ptr nocapture noundef readonly %channel) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 11
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 4
  %cur = getelementptr inbounds %struct.xlgmac_ring, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur, align 16
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_desc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp63.not = icmp eq i32 %5, 0
  br i1 %cmp63.not, label %entry.do.body_crit_edge, label %for.body.lr.ph

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body.lr.ph:                                   ; preds = %entry
  %pdata1 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata1, align 16
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %1, i32 0, i32 4
  %rx_frames2.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %7, i32 0, i32 29
  %rx_usecs3.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %7, i32 0, i32 28
  br label %for.body

for.body:                                         ; preds = %xlgmac_rx_desc_reset.exit.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %5, %for.body.lr.ph ], [ %36, %xlgmac_rx_desc_reset.exit.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %xlgmac_rx_desc_reset.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc_data_head, align 4
  %sub = add i32 %8, -1
  %and = and i32 %sub, %i.064
  %add.ptr = getelementptr %struct.xlgmac_desc_data, ptr %10, i32 %and
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %13 = ptrtoint ptr %rx_frames2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_frames2.i, align 8
  %15 = ptrtoint ptr %rx_usecs3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_usecs3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i = icmp eq i32 %14, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool4.not.i, i1 false
  br i1 %or.cond.i, label %for.body.xlgmac_rx_desc_reset.exit_crit_edge, label %if.else.i

for.body.xlgmac_rx_desc_reset.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_rx_desc_reset.exit

if.else.i:                                        ; preds = %for.body
  br i1 %tobool4.not.i, label %if.else.i.if.else9.i_crit_edge, label %land.lhs.true6.i

if.else.i.if.else9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else9.i

land.lhs.true6.i:                                 ; preds = %if.else.i
  %add.i = add nuw i32 %i.064, 1
  %rem.i = urem i32 %add.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool7.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.xlgmac_rx_desc_reset.exit_crit_edge, label %land.lhs.true6.i.if.else9.i_crit_edge

land.lhs.true6.i.if.else9.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else9.i

land.lhs.true6.i.xlgmac_rx_desc_reset.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %xlgmac_rx_desc_reset.exit

if.else9.i:                                       ; preds = %land.lhs.true6.i.if.else9.i_crit_edge, %if.else.i.if.else9.i_crit_edge
  br label %xlgmac_rx_desc_reset.exit

xlgmac_rx_desc_reset.exit:                        ; preds = %if.else9.i, %land.lhs.true6.i.xlgmac_rx_desc_reset.exit_crit_edge, %for.body.xlgmac_rx_desc_reset.exit_crit_edge
  %inte.0.i = phi i32 [ 0, %if.else9.i ], [ 64, %for.body.xlgmac_rx_desc_reset.exit_crit_edge ], [ 64, %land.lhs.true6.i.xlgmac_rx_desc_reset.exit_crit_edge ]
  %dma_base.i = getelementptr %struct.xlgmac_desc_data, ptr %10, i32 %and, i32 6, i32 0, i32 2
  %17 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_base.i, align 4
  %dma_off.i = getelementptr %struct.xlgmac_desc_data, ptr %10, i32 %and, i32 6, i32 0, i32 3
  %19 = ptrtoint ptr %dma_off.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_off.i, align 4
  %add13.i = add i32 %20, %18
  %dma_base15.i = getelementptr %struct.xlgmac_desc_data, ptr %10, i32 %and, i32 6, i32 1, i32 2
  %21 = ptrtoint ptr %dma_base15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_base15.i, align 4
  %dma_off18.i = getelementptr %struct.xlgmac_desc_data, ptr %10, i32 %and, i32 6, i32 1, i32 3
  %23 = ptrtoint ptr %dma_off18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_off18.i, align 4
  %add19.i = add i32 %24, %22
  %25 = tail call i32 @llvm.bswap.i32(i32 %add13.i) #10
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %12, align 4
  %desc1.i = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %12, i32 0, i32 1
  %27 = ptrtoint ptr %desc1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %desc1.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %add19.i) #10
  %desc2.i = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %12, i32 0, i32 2
  %29 = ptrtoint ptr %desc2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %desc2.i, align 4
  %desc3.i = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %12, i32 0, i32 3
  %30 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inte.0.i, ptr %desc3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !204
  %31 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc3.i, align 4
  %or72.i = or i32 %32, -2147483648
  %33 = tail call i32 @llvm.bswap.i32(i32 %or72.i) #10
  %34 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %desc3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !205
  %inc = add nuw i32 %i.064, 1
  %35 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dma_desc_count, align 8
  %cmp = icmp ult i32 %inc, %36
  br i1 %cmp, label %xlgmac_rx_desc_reset.exit.for.body_crit_edge, label %xlgmac_rx_desc_reset.exit.do.body_crit_edge

xlgmac_rx_desc_reset.exit.do.body_crit_edge:      ; preds = %xlgmac_rx_desc_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

xlgmac_rx_desc_reset.exit.for.body_crit_edge:     ; preds = %xlgmac_rx_desc_reset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

do.body:                                          ; preds = %xlgmac_rx_desc_reset.exit.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !206
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_desc_count, align 8
  %sub4 = add i32 %38, -1
  %39 = tail call i32 @llvm.bswap.i32(i32 %sub4)
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 3
  %40 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dma_regs, align 8
  %add.ptr5 = getelementptr i8, ptr %41, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %39) #10, !srcloc !66
  %desc_data_head8 = getelementptr inbounds %struct.xlgmac_ring, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %desc_data_head8 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc_data_head8, align 4
  %44 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_desc_count, align 8
  %sub10 = add i32 %45, -1
  %and11 = and i32 %sub10, %3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !207
  tail call void @arm_heavy_mb() #10
  %dma_desc_addr = getelementptr %struct.xlgmac_desc_data, ptr %43, i32 %and11, i32 1
  %46 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_regs, align 8
  %add.ptr18 = getelementptr i8, ptr %47, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 0) #10, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !208
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %dma_desc_addr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_desc_addr, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49)
  %51 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dma_regs, align 8
  %add.ptr25 = getelementptr i8, ptr %52, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %50) #10, !srcloc !66
  %53 = ptrtoint ptr %desc_data_head8 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc_data_head8, align 4
  %55 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_desc_count, align 8
  %add = add i32 %56, -1
  %sub30 = add i32 %add, %3
  %and33 = and i32 %sub30, %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !209
  tail call void @arm_heavy_mb() #10
  %dma_desc_addr38 = getelementptr %struct.xlgmac_desc_data, ptr %54, i32 %and33, i32 1
  %57 = ptrtoint ptr %dma_desc_addr38 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_desc_addr38, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dma_regs, align 8
  %add.ptr41 = getelementptr i8, ptr %61, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 %59) #10, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_tx_desc_reset(ptr nocapture noundef readonly %desc_data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_data, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !200
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_rx_desc_reset(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %desc_data, i32 noundef %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_data, align 4
  %rx_frames2 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 29
  %2 = ptrtoint ptr %rx_frames2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_frames2, align 8
  %rx_usecs3 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 28
  %4 = ptrtoint ptr %rx_usecs3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_usecs3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool4.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.else:                                          ; preds = %entry
  br i1 %tobool4.not, label %if.else.if.else9_crit_edge, label %land.lhs.true6

if.else.if.else9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else9

land.lhs.true6:                                   ; preds = %if.else
  %add = add i32 %index, 1
  %rem = urem i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool7.not = icmp eq i32 %rem, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end10_crit_edge, label %land.lhs.true6.if.else9_crit_edge

land.lhs.true6.if.else9_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else9

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.else9:                                         ; preds = %land.lhs.true6.if.else9_crit_edge, %if.else.if.else9_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %land.lhs.true6.if.end10_crit_edge, %entry.if.end10_crit_edge
  %inte.0 = phi i32 [ 0, %if.else9 ], [ 64, %entry.if.end10_crit_edge ], [ 64, %land.lhs.true6.if.end10_crit_edge ]
  %dma_base = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 0, i32 2
  %6 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_base, align 4
  %dma_off = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 0, i32 3
  %8 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_off, align 4
  %add13 = add i32 %9, %7
  %dma_base15 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 1, i32 2
  %10 = ptrtoint ptr %dma_base15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_base15, align 4
  %dma_off18 = getelementptr inbounds %struct.xlgmac_desc_data, ptr %desc_data, i32 0, i32 6, i32 1, i32 3
  %12 = ptrtoint ptr %dma_off18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_off18, align 4
  %add19 = add i32 %13, %11
  %14 = tail call i32 @llvm.bswap.i32(i32 %add13)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 4
  %desc1 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %desc1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %add19)
  %desc2 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %desc2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %desc2, align 4
  %desc3 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %desc3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inte.0, ptr %desc3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !204
  %20 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc3, align 4
  %or72 = or i32 %21, -2147483648
  %22 = tail call i32 @llvm.bswap.i32(i32 %or72)
  %23 = ptrtoint ptr %desc3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %desc3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !205
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_is_last_desc(ptr nocapture noundef readonly %dma_desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc3 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %dma_desc, i32 0, i32 3
  %0 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc3, align 4
  %2 = lshr i32 %1, 4
  %shr6 = and i32 %2, 1
  ret i32 %shr6
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_is_context_desc(ptr nocapture noundef readonly %dma_desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc3 = getelementptr inbounds %struct.xlgmac_dma_desc, ptr %dma_desc, i32 0, i32 3
  %0 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc3, align 4
  %2 = lshr i32 %1, 6
  %shr6 = and i32 %2, 1
  ret i32 %shr6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_tx_start_xmit(ptr noundef %channel, ptr nocapture noundef %ring) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !210
  tail call void @arm_heavy_mb() #10
  %desc_data_head = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 4
  %2 = ptrtoint ptr %desc_data_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc_data_head, align 4
  %cur = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 7
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur, align 16
  %dma_desc_count = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 3
  %6 = ptrtoint ptr %dma_desc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_desc_count, align 8
  %sub = add i32 %7, -1
  %and = and i32 %sub, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !211
  tail call void @arm_heavy_mb() #10
  %dma_desc_addr = getelementptr %struct.xlgmac_desc_data, ptr %3, i32 %and, i32 1
  %8 = ptrtoint ptr %dma_desc_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_desc_addr, align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 3
  %11 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_regs, align 8
  %add.ptr6 = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %10) #10, !srcloc !66
  %tx_usecs = getelementptr inbounds %struct.xlgmac_pdata, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_usecs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_timer_active = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 8
  %15 = ptrtoint ptr %tx_timer_active to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_timer_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not = icmp eq i32 %16, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %tx_timer_active to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %tx_timer_active, align 4
  %tx_timer = getelementptr inbounds %struct.xlgmac_channel, ptr %channel, i32 0, i32 9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_usecs, align 8
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %20) #10
  %add = add i32 %call3.i, %18
  %call10 = tail call i32 @mod_timer(ptr noundef %tx_timer, i32 noundef %add) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %21 = getelementptr inbounds %struct.xlgmac_ring, ptr %ring, i32 0, i32 10
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %21, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_tx_flow_control(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_pause = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 31
  %0 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_pause, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %rx_q_count.i4 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 16
  %2 = ptrtoint ptr %rx_q_count.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_q_count.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not.i5 = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp1.not.i5, label %if.then.for.end.i_crit_edge, label %for.body.lr.ph.i

if.then.for.end.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.then
  %mac_regs.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs.i, align 4
  %mul.i = shl i32 %i.02.i, 7
  %add.ptr1.i = getelementptr i8, ptr %5, i32 4416
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !212
  %7 = or i32 %6, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !213
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %9, i32 4416
  %add.ptr25.i = getelementptr i8, ptr %add.ptr24.i, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %7) #10, !srcloc !66
  %inc.i = add nuw i32 %i.02.i, 1
  %10 = ptrtoint ptr %rx_q_count.i4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_q_count.i4, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.then.for.end.i_crit_edge
  %tx_q_count.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 15
  %12 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_q_count.i, align 8
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp293.not.i = icmp eq i32 %14, 0
  br i1 %cmp293.not.i, label %for.end.i.if.end_crit_edge, label %for.body30.lr.ph.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.lr.ph.i:                               ; preds = %for.end.i
  %mac_regs33.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %15 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %16, i32 112
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %18 = or i32 %17, 33619967
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %19 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %20, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %18) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %exitcond.not.i = icmp eq i32 %14, 1
  br i1 %exitcond.not.i, label %for.body30.lr.ph.i.if.end_crit_edge, label %for.body30.i.1

for.body30.lr.ph.i.if.end_crit_edge:              ; preds = %for.body30.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i.1:                                   ; preds = %for.body30.lr.ph.i
  %21 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr34.i.1 = getelementptr i8, ptr %22, i32 116
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.1) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %24 = or i32 %23, 33619967
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %25 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr98.i.1 = getelementptr i8, ptr %26, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i.1, i32 %24) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %exitcond.not.i.1 = icmp eq i32 %14, 2
  br i1 %exitcond.not.i.1, label %for.body30.i.1.if.end_crit_edge, label %for.body30.i.2

for.body30.i.1.if.end_crit_edge:                  ; preds = %for.body30.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i.2:                                   ; preds = %for.body30.i.1
  %27 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr34.i.2 = getelementptr i8, ptr %28, i32 120
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.2) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %30 = or i32 %29, 33619967
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr98.i.2 = getelementptr i8, ptr %32, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i.2, i32 %30) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %exitcond.not.i.2 = icmp eq i32 %14, 3
  br i1 %exitcond.not.i.2, label %for.body30.i.2.if.end_crit_edge, label %for.body30.i.3

for.body30.i.2.if.end_crit_edge:                  ; preds = %for.body30.i.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i.3:                                   ; preds = %for.body30.i.2
  %33 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr34.i.3 = getelementptr i8, ptr %34, i32 124
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.3) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %36 = or i32 %35, 33619967
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr98.i.3 = getelementptr i8, ptr %38, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i.3, i32 %36) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %exitcond.not.i.3 = icmp eq i32 %14, 4
  br i1 %exitcond.not.i.3, label %for.body30.i.3.if.end_crit_edge, label %for.body30.i.4

for.body30.i.3.if.end_crit_edge:                  ; preds = %for.body30.i.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i.4:                                   ; preds = %for.body30.i.3
  %39 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr34.i.4 = getelementptr i8, ptr %40, i32 128
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.4) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %42 = or i32 %41, 33619967
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %43 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr98.i.4 = getelementptr i8, ptr %44, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i.4, i32 %42) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %14)
  %exitcond.not.i.4 = icmp eq i32 %14, 5
  br i1 %exitcond.not.i.4, label %for.body30.i.4.if.end_crit_edge, label %for.body30.i.5

for.body30.i.4.if.end_crit_edge:                  ; preds = %for.body30.i.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i.5:                                   ; preds = %for.body30.i.4
  %45 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr34.i.5 = getelementptr i8, ptr %46, i32 132
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.5) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %48 = or i32 %47, 33619967
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr98.i.5 = getelementptr i8, ptr %50, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i.5, i32 %48) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %14)
  %exitcond.not.i.5 = icmp eq i32 %14, 6
  br i1 %exitcond.not.i.5, label %for.body30.i.5.if.end_crit_edge, label %for.body30.i.6

for.body30.i.5.if.end_crit_edge:                  ; preds = %for.body30.i.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i.6:                                   ; preds = %for.body30.i.5
  %51 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr34.i.6 = getelementptr i8, ptr %52, i32 136
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.6) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %54 = or i32 %53, 33619967
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr98.i.6 = getelementptr i8, ptr %56, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i.6, i32 %54) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %14)
  %exitcond.not.i.6 = icmp eq i32 %14, 7
  br i1 %exitcond.not.i.6, label %for.body30.i.6.if.end_crit_edge, label %for.body30.i.7

for.body30.i.6.if.end_crit_edge:                  ; preds = %for.body30.i.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i.7:                                   ; preds = %for.body30.i.6
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr34.i.7 = getelementptr i8, ptr %58, i32 140
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i.7) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !214
  %60 = or i32 %59, 33619967
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !215
  tail call void @arm_heavy_mb() #10
  %61 = ptrtoint ptr %mac_regs33.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mac_regs33.i, align 4
  %add.ptr98.i.7 = getelementptr i8, ptr %62, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i.7, i32 %60) #10, !srcloc !66
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp1.not.i5, label %if.else.for.end.i19_crit_edge, label %for.body.lr.ph.i7

if.else.for.end.i19_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i19

for.body.lr.ph.i7:                                ; preds = %if.else
  %mac_regs.i6 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %for.body.lr.ph.i7
  %i.02.i8 = phi i32 [ 0, %for.body.lr.ph.i7 ], [ %inc.i14, %for.body.i16.for.body.i16_crit_edge ]
  %63 = ptrtoint ptr %mac_regs.i6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mac_regs.i6, align 4
  %mul.i9 = shl i32 %i.02.i8, 7
  %add.ptr1.i10 = getelementptr i8, ptr %64, i32 4416
  %add.ptr2.i11 = getelementptr i8, ptr %add.ptr1.i10, i32 %mul.i9
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i11) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !216
  %66 = and i32 %65, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !217
  tail call void @arm_heavy_mb() #10
  %67 = ptrtoint ptr %mac_regs.i6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac_regs.i6, align 4
  %add.ptr24.i12 = getelementptr i8, ptr %68, i32 4416
  %add.ptr25.i13 = getelementptr i8, ptr %add.ptr24.i12, i32 %mul.i9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i13, i32 %66) #10, !srcloc !66
  %inc.i14 = add nuw i32 %i.02.i8, 1
  %69 = ptrtoint ptr %rx_q_count.i4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %rx_q_count.i4, align 4
  %cmp.i15 = icmp ult i32 %inc.i14, %70
  br i1 %cmp.i15, label %for.body.i16.for.body.i16_crit_edge, label %for.body.i16.for.end.i19_crit_edge

for.body.i16.for.end.i19_crit_edge:               ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i19

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i16

for.end.i19:                                      ; preds = %for.body.i16.for.end.i19_crit_edge, %if.else.for.end.i19_crit_edge
  %tx_q_count.i17 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 15
  %71 = ptrtoint ptr %tx_q_count.i17 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %tx_q_count.i17, align 8
  %73 = tail call i32 @llvm.umin.i32(i32 %72, i32 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp293.not.i18 = icmp eq i32 %73, 0
  br i1 %cmp293.not.i18, label %for.end.i19.if.end_crit_edge, label %for.body30.lr.ph.i21

for.end.i19.if.end_crit_edge:                     ; preds = %for.end.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.lr.ph.i21:                             ; preds = %for.end.i19
  %mac_regs33.i20 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %74 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr34.i24 = getelementptr i8, ptr %75, i32 112
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i24) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %77 = and i32 %76, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr70.i = getelementptr i8, ptr %79, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %77) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %exitcond.not.i25 = icmp eq i32 %73, 1
  br i1 %exitcond.not.i25, label %for.body30.lr.ph.i21.if.end_crit_edge, label %for.body30.i26.1

for.body30.lr.ph.i21.if.end_crit_edge:            ; preds = %for.body30.lr.ph.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i26.1:                                 ; preds = %for.body30.lr.ph.i21
  %80 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr34.i24.1 = getelementptr i8, ptr %81, i32 116
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i24.1) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %83 = and i32 %82, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %84 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr70.i.1 = getelementptr i8, ptr %85, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i.1, i32 %83) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %exitcond.not.i25.1 = icmp eq i32 %73, 2
  br i1 %exitcond.not.i25.1, label %for.body30.i26.1.if.end_crit_edge, label %for.body30.i26.2

for.body30.i26.1.if.end_crit_edge:                ; preds = %for.body30.i26.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i26.2:                                 ; preds = %for.body30.i26.1
  %86 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr34.i24.2 = getelementptr i8, ptr %87, i32 120
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i24.2) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %89 = and i32 %88, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %90 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr70.i.2 = getelementptr i8, ptr %91, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i.2, i32 %89) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %exitcond.not.i25.2 = icmp eq i32 %73, 3
  br i1 %exitcond.not.i25.2, label %for.body30.i26.2.if.end_crit_edge, label %for.body30.i26.3

for.body30.i26.2.if.end_crit_edge:                ; preds = %for.body30.i26.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i26.3:                                 ; preds = %for.body30.i26.2
  %92 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr34.i24.3 = getelementptr i8, ptr %93, i32 124
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i24.3) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %95 = and i32 %94, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %96 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr70.i.3 = getelementptr i8, ptr %97, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i.3, i32 %95) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %73)
  %exitcond.not.i25.3 = icmp eq i32 %73, 4
  br i1 %exitcond.not.i25.3, label %for.body30.i26.3.if.end_crit_edge, label %for.body30.i26.4

for.body30.i26.3.if.end_crit_edge:                ; preds = %for.body30.i26.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i26.4:                                 ; preds = %for.body30.i26.3
  %98 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr34.i24.4 = getelementptr i8, ptr %99, i32 128
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i24.4) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %101 = and i32 %100, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %102 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr70.i.4 = getelementptr i8, ptr %103, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i.4, i32 %101) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %73)
  %exitcond.not.i25.4 = icmp eq i32 %73, 5
  br i1 %exitcond.not.i25.4, label %for.body30.i26.4.if.end_crit_edge, label %for.body30.i26.5

for.body30.i26.4.if.end_crit_edge:                ; preds = %for.body30.i26.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i26.5:                                 ; preds = %for.body30.i26.4
  %104 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr34.i24.5 = getelementptr i8, ptr %105, i32 132
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i24.5) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %107 = and i32 %106, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %108 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr70.i.5 = getelementptr i8, ptr %109, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i.5, i32 %107) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %73)
  %exitcond.not.i25.5 = icmp eq i32 %73, 6
  br i1 %exitcond.not.i25.5, label %for.body30.i26.5.if.end_crit_edge, label %for.body30.i26.6

for.body30.i26.5.if.end_crit_edge:                ; preds = %for.body30.i26.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i26.6:                                 ; preds = %for.body30.i26.5
  %110 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr34.i24.6 = getelementptr i8, ptr %111, i32 136
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i24.6) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %113 = and i32 %112, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %114 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr70.i.6 = getelementptr i8, ptr %115, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i.6, i32 %113) #10, !srcloc !66
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %73)
  %exitcond.not.i25.6 = icmp eq i32 %73, 7
  br i1 %exitcond.not.i25.6, label %for.body30.i26.6.if.end_crit_edge, label %for.body30.i26.7

for.body30.i26.6.if.end_crit_edge:                ; preds = %for.body30.i26.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body30.i26.7:                                 ; preds = %for.body30.i26.6
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr34.i24.7 = getelementptr i8, ptr %117, i32 140
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34.i24.7) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !218
  %119 = and i32 %118, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !219
  tail call void @arm_heavy_mb() #10
  %120 = ptrtoint ptr %mac_regs33.i20 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mac_regs33.i20, align 4
  %add.ptr70.i.7 = getelementptr i8, ptr %121, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i.7, i32 %119) #10, !srcloc !66
  br label %if.end

if.end:                                           ; preds = %for.body30.i26.7, %for.body30.i26.6.if.end_crit_edge, %for.body30.i26.5.if.end_crit_edge, %for.body30.i26.4.if.end_crit_edge, %for.body30.i26.3.if.end_crit_edge, %for.body30.i26.2.if.end_crit_edge, %for.body30.i26.1.if.end_crit_edge, %for.body30.lr.ph.i21.if.end_crit_edge, %for.end.i19.if.end_crit_edge, %for.body30.i.7, %for.body30.i.6.if.end_crit_edge, %for.body30.i.5.if.end_crit_edge, %for.body30.i.4.if.end_crit_edge, %for.body30.i.3.if.end_crit_edge, %for.body30.i.2.if.end_crit_edge, %for.body30.i.1.if.end_crit_edge, %for.body30.lr.ph.i.if.end_crit_edge, %for.end.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_rx_flow_control(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pause = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 32
  %0 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %mac_regs.i4 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %2 = ptrtoint ptr %mac_regs.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %3, i32 144
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %mac_regs.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs.i4, align 4
  %add.ptr20.i = getelementptr i8, ptr %7, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %5) #10, !srcloc !66
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  tail call void @arm_heavy_mb() #10
  %9 = ptrtoint ptr %mac_regs.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_regs.i4, align 4
  %add.ptr20.i6 = getelementptr i8, ptr %10, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i6, i32 %8) #10, !srcloc !66
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_enable_rx_vlan_stripping(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !220
  %3 = and i32 %2, -31746
  %4 = or i32 %3, 28673
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @arm_heavy_mb() #10
  %5 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac_regs, align 4
  %add.ptr132 = getelementptr i8, ptr %6, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr132, i32 %4) #10, !srcloc !66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_disable_rx_vlan_stripping(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !221
  %3 = and i32 %2, -24577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %3) #10, !srcloc !66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_enable_rx_vlan_filtering(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %3 = or i32 %2, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %3) #10, !srcloc !66
  %6 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs, align 4
  %add.ptr24 = getelementptr i8, ptr %7, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  %9 = and i32 %8, 64765
  %10 = or i32 %9, 16777474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @arm_heavy_mb() #10
  %11 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac_regs, align 4
  %add.ptr144 = getelementptr i8, ptr %12, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %10) #10, !srcloc !66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_disable_rx_vlan_filtering(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %3 = and i32 %2, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %3) #10, !srcloc !66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_update_vlan_hash_table(ptr noundef %pdata) #1 align 64 {
entry:
  %vid_le.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %active_vlans = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 39
  %call = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef 0) #10
  %conv192 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv192)
  %cmp93 = icmp ult i32 %conv192, 4096
  br i1 %cmp93, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %xlgmac_vid_crc32_le.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %conv196 = phi i32 [ %conv1, %xlgmac_vid_crc32_le.exit.for.body_crit_edge ], [ %conv192, %entry.for.body_crit_edge ]
  %vlan_hash_table.095 = phi i32 [ %or28, %xlgmac_vid_crc32_le.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %vid.0.in94 = phi i32 [ %call33, %xlgmac_vid_crc32_le.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %vid.0 = trunc i32 %vid.0.in94 to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %vid.0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid_le.addr.i)
  %1 = ptrtoint ptr %vid_le.addr.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %vid_le.addr.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body
  %i.019.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %crc.018.i = phi i32 [ -1, %for.body ], [ %spec.select.i, %if.end.i.for.body.i_crit_edge ]
  %data_byte.017.i = phi i8 [ 0, %for.body ], [ %5, %if.end.i.for.body.i_crit_edge ]
  %2 = and i32 %i.019.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.i = icmp eq i32 %2, 0
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %div16.i = lshr i32 %i.019.i, 3
  %arrayidx.i = getelementptr i8, ptr %vid_le.addr.i, i32 %div16.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %data_byte.1.i = phi i8 [ %4, %if.then.i ], [ %data_byte.017.i, %for.body.i.if.end.i_crit_edge ]
  %conv.i = zext i8 %data_byte.1.i to i32
  %xor.i = xor i32 %crc.018.i, %conv.i
  %and2.i = and i32 %xor.i, 1
  %shr.i = lshr i32 %crc.018.i, 1
  %5 = lshr i8 %data_byte.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %xor7.i = xor i32 %shr.i, -306674912
  %spec.select.i = select i1 %tobool.not.i, i32 %shr.i, i32 %xor7.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %xlgmac_vid_crc32_le.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

xlgmac_vid_crc32_le.exit:                         ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vid_le.addr.i)
  %neg = and i32 %spec.select.i, 255
  %6 = xor i32 %neg, 255
  %arrayidx.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i.i.i, align 1
  %9 = lshr i8 %8, 4
  %shr25 = zext i8 %9 to i32
  %shl26 = shl nuw nsw i32 1, %shr25
  %or28 = or i32 %shl26, %vlan_hash_table.095
  %add = add nuw nsw i32 %conv196, 1
  %call33 = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef %add) #10
  %conv1 = and i32 %call33, 65535
  %cmp = icmp ult i32 %conv1, 4096
  br i1 %cmp, label %xlgmac_vid_crc32_le.exit.for.body_crit_edge, label %for.end.loopexit

xlgmac_vid_crc32_le.exit.for.body_crit_edge:      ; preds = %xlgmac_vid_crc32_le.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.loopexit:                                 ; preds = %xlgmac_vid_crc32_le.exit
  call void @__sanitizer_cov_trace_pc() #12
  %phi.bo = and i32 %or28, 65535
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %vlan_hash_table.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %10 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 88
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !224
  %13 = and i32 %12, 65535
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %or63 = or i32 %14, %vlan_hash_table.0.lcssa
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !225
  tail call void @arm_heavy_mb() #10
  %15 = tail call i32 @llvm.bswap.i32(i32 %or63)
  %16 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_regs, align 4
  %add.ptr65 = getelementptr i8, ptr %17, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %15) #10, !srcloc !66
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_rx_coalesce(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp34.not = icmp eq i32 %1, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  %rx_riwt = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 27
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %channel.036 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %if.end.for.body_crit_edge ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %rx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036, i32 0, i32 11
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !78
  %9 = ptrtoint ptr %rx_riwt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_riwt, align 8
  %and7 = and i32 %10, 255
  %11 = and i32 %8, 16777215
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or = or i32 %and7, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !79
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_regs, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #10, !srcloc !66
  %inc = add nuw i32 %i.035, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.036, i32 1
  %16 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_config_tx_coalesce(ptr nocapture noundef readnone %pdata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_usec_to_riwt(ptr nocapture noundef readonly %pdata, i32 noundef %usec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sysclk_rate = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 40
  %0 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysclk_rate, align 8
  %div = udiv i32 %1, 1000000
  %mul = mul i32 %div, %usec
  %div12 = lshr i32 %mul, 8
  ret i32 %div12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xlgmac_riwt_to_usec(ptr nocapture noundef readonly %pdata, i32 noundef %riwt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sysclk_rate = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 40
  %0 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysclk_rate, align 8
  %mul = shl i32 %riwt, 8
  %div = udiv i32 %1, 1000000
  %div1 = udiv i32 %mul, %div
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_rx_threshold(ptr nocapture noundef readonly %pdata, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 16
  %0 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38.not = icmp eq i32 %1, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %and9 = and i32 %val, 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs, align 4
  %mul = shl i32 %i.039, 7
  %add.ptr1 = getelementptr i8, ptr %3, i32 4416
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !107
  %5 = and i32 %4, -50331649
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %and9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !108
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs, align 4
  %add.ptr24 = getelementptr i8, ptr %9, i32 4416
  %add.ptr25 = getelementptr i8, ptr %add.ptr24, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %7) #10, !srcloc !66
  %inc = add nuw i32 %i.039, 1
  %10 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_q_count, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_tx_threshold(ptr nocapture noundef readonly %pdata, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 15
  %0 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38.not = icmp eq i32 %1, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %shl = shl i32 %val, 4
  %and9 = and i32 %shl, 112
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4352
  %mul = shl i32 %i.039, 7
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  %5 = and i32 %4, -1879048193
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %and9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !106
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs, align 4
  %add.ptr22 = getelementptr i8, ptr %9, i32 4352
  %add.ptr24 = getelementptr i8, ptr %add.ptr22, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %7) #10, !srcloc !66
  %inc = add nuw i32 %i.039, 1
  %10 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_q_count, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_rsf_mode(ptr nocapture noundef readonly %pdata, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 16
  %0 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38.not = icmp eq i32 %1, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %shl = shl i32 %val, 5
  %and9 = and i32 %shl, 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs, align 4
  %mul = shl i32 %i.039, 7
  %add.ptr1 = getelementptr i8, ptr %3, i32 4416
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !103
  %5 = and i32 %4, -536870913
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %and9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs, align 4
  %add.ptr24 = getelementptr i8, ptr %9, i32 4416
  %add.ptr25 = getelementptr i8, ptr %add.ptr24, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %7) #10, !srcloc !66
  %inc = add nuw i32 %i.039, 1
  %10 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_q_count, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_tsf_mode(ptr nocapture noundef readonly %pdata, i32 noundef %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 15
  %0 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38.not = icmp eq i32 %1, 0
  br i1 %cmp38.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %shl = shl i32 %val, 1
  %and9 = and i32 %shl, 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.039 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4352
  %mul = shl i32 %i.039, 7
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  %5 = and i32 %4, -33554433
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %and9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !102
  tail call void @arm_heavy_mb() #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %or)
  %8 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs, align 4
  %add.ptr22 = getelementptr i8, ptr %9, i32 4352
  %add.ptr24 = getelementptr i8, ptr %add.ptr22, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %7) #10, !srcloc !66
  %inc = add nuw i32 %i.039, 1
  %10 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_q_count, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_osp_mode(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp34.not = icmp eq i32 %1, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  %tx_osp_mode = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %channel.036 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %if.end.for.body_crit_edge ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036, i32 0, i32 10
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !70
  %9 = ptrtoint ptr %tx_osp_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_osp_mode, align 8
  %shl = shl i32 %10, 4
  %and7 = and i32 %shl, 16
  %11 = and i32 %8, -268435457
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or = or i32 %and7, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !71
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_regs, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #10, !srcloc !66
  %inc = add nuw i32 %i.035, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.036, i32 1
  %16 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_rx_pbl_val(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp34.not = icmp eq i32 %1, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  %rx_pbl = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %channel.036 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %if.end.for.body_crit_edge ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %rx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036, i32 0, i32 11
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !76
  %9 = ptrtoint ptr %rx_pbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %rx_pbl, align 4
  %shl = shl i32 %10, 16
  %and7 = and i32 %shl, 4128768
  %11 = and i32 %8, -16129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or = or i32 %and7, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !77
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_regs, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #10, !srcloc !66
  %inc = add nuw i32 %i.035, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.036, i32 1
  %16 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_get_rx_pbl_val(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel_head, align 8
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !226
  %5 = lshr i32 %4, 8
  %shr8 = and i32 %5, 63
  ret i32 %shr8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_tx_pbl_val(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp34.not = icmp eq i32 %1, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  %tx_pbl = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %channel.036 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %if.end.for.body_crit_edge ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %tx_ring = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036, i32 0, i32 10
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end:                                           ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.036, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !74
  %9 = ptrtoint ptr %tx_pbl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_pbl, align 4
  %shl = shl i32 %10, 16
  %and7 = and i32 %shl, 4128768
  %11 = and i32 %8, -16129
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or = or i32 %and7, %12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_regs, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %13) #10, !srcloc !66
  %inc = add nuw i32 %i.035, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.036, i32 1
  %16 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_get_tx_pbl_val(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %channel_head, align 8
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !227
  %5 = lshr i32 %4, 8
  %shr8 = and i32 %5, 63
  ret i32 %shr8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_config_pblx8(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 10
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %channel_head = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %channel_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channel_head, align 8
  %pblx8 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %channel.035 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %dma_regs = getelementptr inbounds %struct.xlgmac_channel, ptr %channel.035, i32 0, i32 3
  %4 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_regs, align 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !72
  %7 = ptrtoint ptr %pblx8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pblx8, align 8
  %shl = shl i32 %8, 16
  %and7 = and i32 %shl, 65536
  %9 = and i32 %6, -257
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %or = or i32 %and7, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #10, !srcloc !66
  %inc = add nuw i32 %i.034, 1
  %incdec.ptr = getelementptr %struct.xlgmac_channel, ptr %channel.035, i32 1
  %14 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_count, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_tx_mmc_int(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !228
  %and8 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %stats2 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2068
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %7 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_regs, align 4
  %add.ptr6.i = getelementptr i8, ptr %8, i32 2072
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %10 = zext i32 %9 to i64
  %11 = zext i32 %6 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %15 = ptrtoint ptr %stats2 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %stats2, align 8
  %add11 = add i64 %14, %16
  store i64 %add11, ptr %stats2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool26.not = icmp eq i32 %17, 0
  br i1 %tobool26.not, label %if.end.if.end30_crit_edge, label %if.then27

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i426 = getelementptr i8, ptr %19, i32 2076
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i426) #10, !srcloc !63
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i427 = zext i32 %21 to i64
  %txframecount_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %txframecount_gb to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %txframecount_gb, align 8
  %add29 = add i64 %23, %conv.i427
  store i64 %add29, ptr %txframecount_gb, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end.if.end30_crit_edge
  %24 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool45.not = icmp eq i32 %24, 0
  br i1 %tobool45.not, label %if.end30.if.end49_crit_edge, label %if.then46

if.end30.if.end49_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i434 = getelementptr i8, ptr %26, i32 2084
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i434) #10, !srcloc !63
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i435 = zext i32 %28 to i64
  %txbroadcastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %txbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %txbroadcastframes_g, align 8
  %add48 = add i64 %30, %conv.i435
  store i64 %add48, ptr %txbroadcastframes_g, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end30.if.end49_crit_edge
  %31 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool64.not = icmp eq i32 %31, 0
  br i1 %tobool64.not, label %if.end49.if.end68_crit_edge, label %if.then65

if.end49.if.end68_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then65:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i442 = getelementptr i8, ptr %33, i32 2092
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i442) #10, !srcloc !63
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i443 = zext i32 %35 to i64
  %txmulticastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 3
  %36 = ptrtoint ptr %txmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %txmulticastframes_g, align 8
  %add67 = add i64 %37, %conv.i443
  store i64 %add67, ptr %txmulticastframes_g, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end49.if.end68_crit_edge
  %38 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool83.not = icmp eq i32 %38, 0
  br i1 %tobool83.not, label %if.end68.if.end87_crit_edge, label %if.then84

if.end68.if.end87_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then84:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i450 = getelementptr i8, ptr %40, i32 2100
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i450) #10, !srcloc !63
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i451 = zext i32 %42 to i64
  %tx64octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 4
  %43 = ptrtoint ptr %tx64octets_gb to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %tx64octets_gb, align 8
  %add86 = add i64 %44, %conv.i451
  store i64 %add86, ptr %tx64octets_gb, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end68.if.end87_crit_edge
  %45 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool102.not = icmp eq i32 %45, 0
  br i1 %tobool102.not, label %if.end87.if.end106_crit_edge, label %if.then103

if.end87.if.end106_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then103:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i458 = getelementptr i8, ptr %47, i32 2108
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i458) #10, !srcloc !63
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i459 = zext i32 %49 to i64
  %tx65to127octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 5
  %50 = ptrtoint ptr %tx65to127octets_gb to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %tx65to127octets_gb, align 8
  %add105 = add i64 %51, %conv.i459
  store i64 %add105, ptr %tx65to127octets_gb, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end87.if.end106_crit_edge
  %52 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool121.not = icmp eq i32 %52, 0
  br i1 %tobool121.not, label %if.end106.if.end125_crit_edge, label %if.then122

if.end106.if.end125_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then122:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i466 = getelementptr i8, ptr %54, i32 2116
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i466) #10, !srcloc !63
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i467 = zext i32 %56 to i64
  %tx128to255octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 6
  %57 = ptrtoint ptr %tx128to255octets_gb to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %tx128to255octets_gb, align 8
  %add124 = add i64 %58, %conv.i467
  store i64 %add124, ptr %tx128to255octets_gb, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %if.end106.if.end125_crit_edge
  %59 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool140.not = icmp eq i32 %59, 0
  br i1 %tobool140.not, label %if.end125.if.end144_crit_edge, label %if.then141

if.end125.if.end144_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then141:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i474 = getelementptr i8, ptr %61, i32 2124
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i474) #10, !srcloc !63
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i475 = zext i32 %63 to i64
  %tx256to511octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 7
  %64 = ptrtoint ptr %tx256to511octets_gb to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %tx256to511octets_gb, align 8
  %add143 = add i64 %65, %conv.i475
  store i64 %add143, ptr %tx256to511octets_gb, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %if.end125.if.end144_crit_edge
  %66 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool159.not = icmp eq i32 %66, 0
  br i1 %tobool159.not, label %if.end144.if.end163_crit_edge, label %if.then160

if.end144.if.end163_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then160:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i482 = getelementptr i8, ptr %68, i32 2132
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i482) #10, !srcloc !63
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i483 = zext i32 %70 to i64
  %tx512to1023octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 8
  %71 = ptrtoint ptr %tx512to1023octets_gb to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %tx512to1023octets_gb, align 8
  %add162 = add i64 %72, %conv.i483
  store i64 %add162, ptr %tx512to1023octets_gb, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %if.end144.if.end163_crit_edge
  %73 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool178.not = icmp eq i32 %73, 0
  br i1 %tobool178.not, label %if.end163.if.end182_crit_edge, label %if.then179

if.end163.if.end182_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.then179:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i490 = getelementptr i8, ptr %75, i32 2140
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i490) #10, !srcloc !63
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i491 = zext i32 %77 to i64
  %tx1024tomaxoctets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 9
  %78 = ptrtoint ptr %tx1024tomaxoctets_gb to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %tx1024tomaxoctets_gb, align 8
  %add181 = add i64 %79, %conv.i491
  store i64 %add181, ptr %tx1024tomaxoctets_gb, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then179, %if.end163.if.end182_crit_edge
  %80 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool197.not = icmp eq i32 %80, 0
  br i1 %tobool197.not, label %if.end182.if.end201_crit_edge, label %if.then198

if.end182.if.end201_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

if.then198:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i498 = getelementptr i8, ptr %82, i32 2148
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i498) #10, !srcloc !63
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i499 = zext i32 %84 to i64
  %txunicastframes_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 10
  %85 = ptrtoint ptr %txunicastframes_gb to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %txunicastframes_gb, align 8
  %add200 = add i64 %86, %conv.i499
  store i64 %add200, ptr %txunicastframes_gb, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %if.end182.if.end201_crit_edge
  %87 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool216.not = icmp eq i32 %87, 0
  br i1 %tobool216.not, label %if.end201.if.end220_crit_edge, label %if.then217

if.end201.if.end220_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

if.then217:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i506 = getelementptr i8, ptr %89, i32 2156
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i506) #10, !srcloc !63
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i507 = zext i32 %91 to i64
  %txmulticastframes_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 11
  %92 = ptrtoint ptr %txmulticastframes_gb to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %txmulticastframes_gb, align 8
  %add219 = add i64 %93, %conv.i507
  store i64 %add219, ptr %txmulticastframes_gb, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.end201.if.end220_crit_edge
  %94 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool235.not = icmp eq i32 %94, 0
  br i1 %tobool235.not, label %if.end220.if.end240_crit_edge, label %if.then236

if.end220.if.end240_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

if.then236:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i514 = getelementptr i8, ptr %96, i32 2164
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i514) #10, !srcloc !63
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i515 = zext i32 %98 to i64
  %txbroadcastframes_g238 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 2
  %99 = ptrtoint ptr %txbroadcastframes_g238 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %txbroadcastframes_g238, align 8
  %add239 = add i64 %100, %conv.i515
  store i64 %add239, ptr %txbroadcastframes_g238, align 8
  br label %if.end240

if.end240:                                        ; preds = %if.then236, %if.end220.if.end240_crit_edge
  %101 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool255.not = icmp eq i32 %101, 0
  br i1 %tobool255.not, label %if.end240.if.end259_crit_edge, label %if.then256

if.end240.if.end259_crit_edge:                    ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end259

if.then256:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i522 = getelementptr i8, ptr %103, i32 2172
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i522) #10, !srcloc !63
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i523 = zext i32 %105 to i64
  %txunderflowerror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 13
  %106 = ptrtoint ptr %txunderflowerror to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %txunderflowerror, align 8
  %add258 = add i64 %107, %conv.i523
  store i64 %add258, ptr %txunderflowerror, align 8
  br label %if.end259

if.end259:                                        ; preds = %if.then256, %if.end240.if.end259_crit_edge
  %108 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool274.not = icmp eq i32 %108, 0
  br i1 %tobool274.not, label %if.end259.if.end278_crit_edge, label %if.then275

if.end259.if.end278_crit_edge:                    ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end278

if.then275:                                       ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i530 = getelementptr i8, ptr %110, i32 2180
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i530) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %112 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mac_regs, align 4
  %add.ptr6.i533 = getelementptr i8, ptr %113, i32 2184
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i533) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %115 = zext i32 %114 to i64
  %116 = zext i32 %111 to i64
  %117 = shl nuw i64 %116, 32
  %118 = or i64 %117, %115
  %119 = tail call i64 @llvm.bswap.i64(i64 %118)
  %txoctetcount_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 14
  %120 = ptrtoint ptr %txoctetcount_g to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %txoctetcount_g, align 8
  %add277 = add i64 %119, %121
  store i64 %add277, ptr %txoctetcount_g, align 8
  br label %if.end278

if.end278:                                        ; preds = %if.then275, %if.end259.if.end278_crit_edge
  %122 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool293.not = icmp eq i32 %122, 0
  br i1 %tobool293.not, label %if.end278.if.end297_crit_edge, label %if.then294

if.end278.if.end297_crit_edge:                    ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end297

if.then294:                                       ; preds = %if.end278
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i538 = getelementptr i8, ptr %124, i32 2188
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i538) #10, !srcloc !63
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i539 = zext i32 %126 to i64
  %txframecount_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 15
  %127 = ptrtoint ptr %txframecount_g to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %txframecount_g, align 8
  %add296 = add i64 %128, %conv.i539
  store i64 %add296, ptr %txframecount_g, align 8
  br label %if.end297

if.end297:                                        ; preds = %if.then294, %if.end278.if.end297_crit_edge
  %129 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool312.not = icmp eq i32 %129, 0
  br i1 %tobool312.not, label %if.end297.if.end316_crit_edge, label %if.then313

if.end297.if.end316_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end316

if.then313:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i546 = getelementptr i8, ptr %131, i32 2196
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i546) #10, !srcloc !63
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i547 = zext i32 %133 to i64
  %txpauseframes = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 16
  %134 = ptrtoint ptr %txpauseframes to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %txpauseframes, align 8
  %add315 = add i64 %135, %conv.i547
  store i64 %add315, ptr %txpauseframes, align 8
  br label %if.end316

if.end316:                                        ; preds = %if.then313, %if.end297.if.end316_crit_edge
  %136 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool331.not = icmp eq i32 %136, 0
  br i1 %tobool331.not, label %if.end316.if.end335_crit_edge, label %if.then332

if.end316.if.end335_crit_edge:                    ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end335

if.then332:                                       ; preds = %if.end316
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i554 = getelementptr i8, ptr %138, i32 2204
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i554) #10, !srcloc !63
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i555 = zext i32 %140 to i64
  %txvlanframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 17
  %141 = ptrtoint ptr %txvlanframes_g to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %txvlanframes_g, align 8
  %add334 = add i64 %142, %conv.i555
  store i64 %add334, ptr %txvlanframes_g, align 8
  br label %if.end335

if.end335:                                        ; preds = %if.then332, %if.end316.if.end335_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_rx_mmc_int(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2052
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !231
  %and8 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2304
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !63
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i = zext i32 %7 to i64
  %rxframecount_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 18
  %8 = ptrtoint ptr %rxframecount_gb to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rxframecount_gb, align 8
  %add11 = add i64 %9, %conv.i
  store i64 %add11, ptr %rxframecount_gb, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool26.not = icmp eq i32 %10, 0
  br i1 %tobool26.not, label %if.end.if.end30_crit_edge, label %if.then27

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i545 = getelementptr i8, ptr %12, i32 2312
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i545) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %14 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_regs, align 4
  %add.ptr6.i = getelementptr i8, ptr %15, i32 2316
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %17 = zext i32 %16 to i64
  %18 = zext i32 %13 to i64
  %19 = shl nuw i64 %18, 32
  %20 = or i64 %19, %17
  %21 = tail call i64 @llvm.bswap.i64(i64 %20)
  %rxoctetcount_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 19
  %22 = ptrtoint ptr %rxoctetcount_gb to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %rxoctetcount_gb, align 8
  %add29 = add i64 %21, %23
  store i64 %add29, ptr %rxoctetcount_gb, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end.if.end30_crit_edge
  %24 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool45.not = icmp eq i32 %24, 0
  br i1 %tobool45.not, label %if.end30.if.end49_crit_edge, label %if.then46

if.end30.if.end49_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then46:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i548 = getelementptr i8, ptr %26, i32 2320
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i548) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %28 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac_regs, align 4
  %add.ptr6.i551 = getelementptr i8, ptr %29, i32 2324
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i551) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %31 = zext i32 %30 to i64
  %32 = zext i32 %27 to i64
  %33 = shl nuw i64 %32, 32
  %34 = or i64 %33, %31
  %35 = tail call i64 @llvm.bswap.i64(i64 %34)
  %rxoctetcount_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 20
  %36 = ptrtoint ptr %rxoctetcount_g to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %rxoctetcount_g, align 8
  %add48 = add i64 %35, %37
  store i64 %add48, ptr %rxoctetcount_g, align 8
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end30.if.end49_crit_edge
  %38 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool64.not = icmp eq i32 %38, 0
  br i1 %tobool64.not, label %if.end49.if.end68_crit_edge, label %if.then65

if.end49.if.end68_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then65:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i556 = getelementptr i8, ptr %40, i32 2328
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i556) #10, !srcloc !63
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i557 = zext i32 %42 to i64
  %rxbroadcastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 21
  %43 = ptrtoint ptr %rxbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %rxbroadcastframes_g, align 8
  %add67 = add i64 %44, %conv.i557
  store i64 %add67, ptr %rxbroadcastframes_g, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end49.if.end68_crit_edge
  %45 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool83.not = icmp eq i32 %45, 0
  br i1 %tobool83.not, label %if.end68.if.end87_crit_edge, label %if.then84

if.end68.if.end87_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

if.then84:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i564 = getelementptr i8, ptr %47, i32 2336
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i564) #10, !srcloc !63
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i565 = zext i32 %49 to i64
  %rxmulticastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 22
  %50 = ptrtoint ptr %rxmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %rxmulticastframes_g, align 8
  %add86 = add i64 %51, %conv.i565
  store i64 %add86, ptr %rxmulticastframes_g, align 8
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %if.end68.if.end87_crit_edge
  %52 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool102.not = icmp eq i32 %52, 0
  br i1 %tobool102.not, label %if.end87.if.end106_crit_edge, label %if.then103

if.end87.if.end106_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then103:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i572 = getelementptr i8, ptr %54, i32 2344
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i572) #10, !srcloc !63
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i573 = zext i32 %56 to i64
  %rxcrcerror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 23
  %57 = ptrtoint ptr %rxcrcerror to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rxcrcerror, align 8
  %add105 = add i64 %58, %conv.i573
  store i64 %add105, ptr %rxcrcerror, align 8
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %if.end87.if.end106_crit_edge
  %59 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool121.not = icmp eq i32 %59, 0
  br i1 %tobool121.not, label %if.end106.if.end125_crit_edge, label %if.then122

if.end106.if.end125_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125

if.then122:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i580 = getelementptr i8, ptr %61, i32 2352
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i580) #10, !srcloc !63
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i581 = zext i32 %63 to i64
  %rxrunterror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 24
  %64 = ptrtoint ptr %rxrunterror to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %rxrunterror, align 8
  %add124 = add i64 %65, %conv.i581
  store i64 %add124, ptr %rxrunterror, align 8
  br label %if.end125

if.end125:                                        ; preds = %if.then122, %if.end106.if.end125_crit_edge
  %66 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool140.not = icmp eq i32 %66, 0
  br i1 %tobool140.not, label %if.end125.if.end144_crit_edge, label %if.then141

if.end125.if.end144_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then141:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i588 = getelementptr i8, ptr %68, i32 2356
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i588) #10, !srcloc !63
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i589 = zext i32 %70 to i64
  %rxjabbererror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 25
  %71 = ptrtoint ptr %rxjabbererror to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %rxjabbererror, align 8
  %add143 = add i64 %72, %conv.i589
  store i64 %add143, ptr %rxjabbererror, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then141, %if.end125.if.end144_crit_edge
  %73 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool159.not = icmp eq i32 %73, 0
  br i1 %tobool159.not, label %if.end144.if.end163_crit_edge, label %if.then160

if.end144.if.end163_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then160:                                       ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i596 = getelementptr i8, ptr %75, i32 2360
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i596) #10, !srcloc !63
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i597 = zext i32 %77 to i64
  %rxundersize_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 26
  %78 = ptrtoint ptr %rxundersize_g to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %rxundersize_g, align 8
  %add162 = add i64 %79, %conv.i597
  store i64 %add162, ptr %rxundersize_g, align 8
  br label %if.end163

if.end163:                                        ; preds = %if.then160, %if.end144.if.end163_crit_edge
  %80 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool178.not = icmp eq i32 %80, 0
  br i1 %tobool178.not, label %if.end163.if.end182_crit_edge, label %if.then179

if.end163.if.end182_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end182

if.then179:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i604 = getelementptr i8, ptr %82, i32 2364
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i604) #10, !srcloc !63
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i605 = zext i32 %84 to i64
  %rxoversize_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 27
  %85 = ptrtoint ptr %rxoversize_g to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %rxoversize_g, align 8
  %add181 = add i64 %86, %conv.i605
  store i64 %add181, ptr %rxoversize_g, align 8
  br label %if.end182

if.end182:                                        ; preds = %if.then179, %if.end163.if.end182_crit_edge
  %87 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool197.not = icmp eq i32 %87, 0
  br i1 %tobool197.not, label %if.end182.if.end201_crit_edge, label %if.then198

if.end182.if.end201_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end201

if.then198:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i612 = getelementptr i8, ptr %89, i32 2368
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i612) #10, !srcloc !63
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i613 = zext i32 %91 to i64
  %rx64octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 28
  %92 = ptrtoint ptr %rx64octets_gb to i32
  call void @__asan_load8_noabort(i32 %92)
  %93 = load i64, ptr %rx64octets_gb, align 8
  %add200 = add i64 %93, %conv.i613
  store i64 %add200, ptr %rx64octets_gb, align 8
  br label %if.end201

if.end201:                                        ; preds = %if.then198, %if.end182.if.end201_crit_edge
  %94 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool216.not = icmp eq i32 %94, 0
  br i1 %tobool216.not, label %if.end201.if.end220_crit_edge, label %if.then217

if.end201.if.end220_crit_edge:                    ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end220

if.then217:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i620 = getelementptr i8, ptr %96, i32 2376
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i620) #10, !srcloc !63
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i621 = zext i32 %98 to i64
  %rx65to127octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 29
  %99 = ptrtoint ptr %rx65to127octets_gb to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %rx65to127octets_gb, align 8
  %add219 = add i64 %100, %conv.i621
  store i64 %add219, ptr %rx65to127octets_gb, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then217, %if.end201.if.end220_crit_edge
  %101 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool235.not = icmp eq i32 %101, 0
  br i1 %tobool235.not, label %if.end220.if.end239_crit_edge, label %if.then236

if.end220.if.end239_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end239

if.then236:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i628 = getelementptr i8, ptr %103, i32 2384
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i628) #10, !srcloc !63
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i629 = zext i32 %105 to i64
  %rx128to255octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 30
  %106 = ptrtoint ptr %rx128to255octets_gb to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %rx128to255octets_gb, align 8
  %add238 = add i64 %107, %conv.i629
  store i64 %add238, ptr %rx128to255octets_gb, align 8
  br label %if.end239

if.end239:                                        ; preds = %if.then236, %if.end220.if.end239_crit_edge
  %108 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool254.not = icmp eq i32 %108, 0
  br i1 %tobool254.not, label %if.end239.if.end258_crit_edge, label %if.then255

if.end239.if.end258_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end258

if.then255:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i636 = getelementptr i8, ptr %110, i32 2392
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i636) #10, !srcloc !63
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i637 = zext i32 %112 to i64
  %rx256to511octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 31
  %113 = ptrtoint ptr %rx256to511octets_gb to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %rx256to511octets_gb, align 8
  %add257 = add i64 %114, %conv.i637
  store i64 %add257, ptr %rx256to511octets_gb, align 8
  br label %if.end258

if.end258:                                        ; preds = %if.then255, %if.end239.if.end258_crit_edge
  %115 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool273.not = icmp eq i32 %115, 0
  br i1 %tobool273.not, label %if.end258.if.end277_crit_edge, label %if.then274

if.end258.if.end277_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end277

if.then274:                                       ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i644 = getelementptr i8, ptr %117, i32 2400
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i644) #10, !srcloc !63
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i645 = zext i32 %119 to i64
  %rx512to1023octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 32
  %120 = ptrtoint ptr %rx512to1023octets_gb to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %rx512to1023octets_gb, align 8
  %add276 = add i64 %121, %conv.i645
  store i64 %add276, ptr %rx512to1023octets_gb, align 8
  br label %if.end277

if.end277:                                        ; preds = %if.then274, %if.end258.if.end277_crit_edge
  %122 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool292.not = icmp eq i32 %122, 0
  br i1 %tobool292.not, label %if.end277.if.end296_crit_edge, label %if.then293

if.end277.if.end296_crit_edge:                    ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end296

if.then293:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i652 = getelementptr i8, ptr %124, i32 2408
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i652) #10, !srcloc !63
  %126 = tail call i32 @llvm.bswap.i32(i32 %125) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i653 = zext i32 %126 to i64
  %rx1024tomaxoctets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 33
  %127 = ptrtoint ptr %rx1024tomaxoctets_gb to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %rx1024tomaxoctets_gb, align 8
  %add295 = add i64 %128, %conv.i653
  store i64 %add295, ptr %rx1024tomaxoctets_gb, align 8
  br label %if.end296

if.end296:                                        ; preds = %if.then293, %if.end277.if.end296_crit_edge
  %129 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool311.not = icmp eq i32 %129, 0
  br i1 %tobool311.not, label %if.end296.if.end315_crit_edge, label %if.then312

if.end296.if.end315_crit_edge:                    ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end315

if.then312:                                       ; preds = %if.end296
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i660 = getelementptr i8, ptr %131, i32 2416
  %132 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i660) #10, !srcloc !63
  %133 = tail call i32 @llvm.bswap.i32(i32 %132) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i661 = zext i32 %133 to i64
  %rxunicastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 34
  %134 = ptrtoint ptr %rxunicastframes_g to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %rxunicastframes_g, align 8
  %add314 = add i64 %135, %conv.i661
  store i64 %add314, ptr %rxunicastframes_g, align 8
  br label %if.end315

if.end315:                                        ; preds = %if.then312, %if.end296.if.end315_crit_edge
  %136 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool330.not = icmp eq i32 %136, 0
  br i1 %tobool330.not, label %if.end315.if.end334_crit_edge, label %if.then331

if.end315.if.end334_crit_edge:                    ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end334

if.then331:                                       ; preds = %if.end315
  call void @__sanitizer_cov_trace_pc() #12
  %137 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i668 = getelementptr i8, ptr %138, i32 2424
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i668) #10, !srcloc !63
  %140 = tail call i32 @llvm.bswap.i32(i32 %139) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i669 = zext i32 %140 to i64
  %rxlengtherror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 35
  %141 = ptrtoint ptr %rxlengtherror to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %rxlengtherror, align 8
  %add333 = add i64 %142, %conv.i669
  store i64 %add333, ptr %rxlengtherror, align 8
  br label %if.end334

if.end334:                                        ; preds = %if.then331, %if.end315.if.end334_crit_edge
  %143 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool349.not = icmp eq i32 %143, 0
  br i1 %tobool349.not, label %if.end334.if.end353_crit_edge, label %if.then350

if.end334.if.end353_crit_edge:                    ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end353

if.then350:                                       ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #12
  %144 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i676 = getelementptr i8, ptr %145, i32 2432
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i676) #10, !srcloc !63
  %147 = tail call i32 @llvm.bswap.i32(i32 %146) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i677 = zext i32 %147 to i64
  %rxoutofrangetype = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 36
  %148 = ptrtoint ptr %rxoutofrangetype to i32
  call void @__asan_load8_noabort(i32 %148)
  %149 = load i64, ptr %rxoutofrangetype, align 8
  %add352 = add i64 %149, %conv.i677
  store i64 %add352, ptr %rxoutofrangetype, align 8
  br label %if.end353

if.end353:                                        ; preds = %if.then350, %if.end334.if.end353_crit_edge
  %150 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool368.not = icmp eq i32 %150, 0
  br i1 %tobool368.not, label %if.end353.if.end372_crit_edge, label %if.then369

if.end353.if.end372_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end372

if.then369:                                       ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i684 = getelementptr i8, ptr %152, i32 2440
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i684) #10, !srcloc !63
  %154 = tail call i32 @llvm.bswap.i32(i32 %153) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i685 = zext i32 %154 to i64
  %rxpauseframes = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 37
  %155 = ptrtoint ptr %rxpauseframes to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %rxpauseframes, align 8
  %add371 = add i64 %156, %conv.i685
  store i64 %add371, ptr %rxpauseframes, align 8
  br label %if.end372

if.end372:                                        ; preds = %if.then369, %if.end353.if.end372_crit_edge
  %157 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool387.not = icmp eq i32 %157, 0
  br i1 %tobool387.not, label %if.end372.if.end391_crit_edge, label %if.then388

if.end372.if.end391_crit_edge:                    ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end391

if.then388:                                       ; preds = %if.end372
  call void @__sanitizer_cov_trace_pc() #12
  %158 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i692 = getelementptr i8, ptr %159, i32 2448
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i692) #10, !srcloc !63
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i693 = zext i32 %161 to i64
  %rxfifooverflow = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 38
  %162 = ptrtoint ptr %rxfifooverflow to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rxfifooverflow, align 8
  %add390 = add i64 %163, %conv.i693
  store i64 %add390, ptr %rxfifooverflow, align 8
  br label %if.end391

if.end391:                                        ; preds = %if.then388, %if.end372.if.end391_crit_edge
  %164 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool406.not = icmp eq i32 %164, 0
  br i1 %tobool406.not, label %if.end391.if.end410_crit_edge, label %if.then407

if.end391.if.end410_crit_edge:                    ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end410

if.then407:                                       ; preds = %if.end391
  call void @__sanitizer_cov_trace_pc() #12
  %165 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i700 = getelementptr i8, ptr %166, i32 2456
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i700) #10, !srcloc !63
  %168 = tail call i32 @llvm.bswap.i32(i32 %167) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i701 = zext i32 %168 to i64
  %rxvlanframes_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 39
  %169 = ptrtoint ptr %rxvlanframes_gb to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %rxvlanframes_gb, align 8
  %add409 = add i64 %170, %conv.i701
  store i64 %add409, ptr %rxvlanframes_gb, align 8
  br label %if.end410

if.end410:                                        ; preds = %if.then407, %if.end391.if.end410_crit_edge
  %171 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool425.not = icmp eq i32 %171, 0
  br i1 %tobool425.not, label %if.end410.if.end429_crit_edge, label %if.then426

if.end410.if.end429_crit_edge:                    ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end429

if.then426:                                       ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #12
  %172 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i708 = getelementptr i8, ptr %173, i32 2464
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i708) #10, !srcloc !63
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i709 = zext i32 %175 to i64
  %rxwatchdogerror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 40
  %176 = ptrtoint ptr %rxwatchdogerror to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %rxwatchdogerror, align 8
  %add428 = add i64 %177, %conv.i709
  store i64 %add428, ptr %rxwatchdogerror, align 8
  br label %if.end429

if.end429:                                        ; preds = %if.then426, %if.end410.if.end429_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xlgmac_read_mmc_stats(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !232
  %3 = or i32 %2, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !233
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 4
  %add.ptr21 = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %3) #10, !srcloc !66
  %6 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2068
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %9 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_regs, align 4
  %add.ptr6.i = getelementptr i8, ptr %10, i32 2072
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %12 = zext i32 %11 to i64
  %13 = zext i32 %8 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %17 = ptrtoint ptr %stats1 to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %stats1, align 8
  %add23 = add i64 %16, %18
  store i64 %add23, ptr %stats1, align 8
  %19 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i246 = getelementptr i8, ptr %20, i32 2076
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i246) #10, !srcloc !63
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i247 = zext i32 %22 to i64
  %txframecount_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 1
  %23 = ptrtoint ptr %txframecount_gb to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %txframecount_gb, align 8
  %add25 = add i64 %24, %conv.i247
  store i64 %add25, ptr %txframecount_gb, align 8
  %25 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i254 = getelementptr i8, ptr %26, i32 2084
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i254) #10, !srcloc !63
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i255 = zext i32 %28 to i64
  %txbroadcastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %txbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %txbroadcastframes_g, align 8
  %add27 = add i64 %30, %conv.i255
  store i64 %add27, ptr %txbroadcastframes_g, align 8
  %31 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i262 = getelementptr i8, ptr %32, i32 2092
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262) #10, !srcloc !63
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i263 = zext i32 %34 to i64
  %txmulticastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 3
  %35 = ptrtoint ptr %txmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %txmulticastframes_g, align 8
  %add29 = add i64 %36, %conv.i263
  store i64 %add29, ptr %txmulticastframes_g, align 8
  %37 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i270 = getelementptr i8, ptr %38, i32 2100
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i270) #10, !srcloc !63
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i271 = zext i32 %40 to i64
  %tx64octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 4
  %41 = ptrtoint ptr %tx64octets_gb to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %tx64octets_gb, align 8
  %add31 = add i64 %42, %conv.i271
  store i64 %add31, ptr %tx64octets_gb, align 8
  %43 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i278 = getelementptr i8, ptr %44, i32 2108
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278) #10, !srcloc !63
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i279 = zext i32 %46 to i64
  %tx65to127octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 5
  %47 = ptrtoint ptr %tx65to127octets_gb to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %tx65to127octets_gb, align 8
  %add33 = add i64 %48, %conv.i279
  store i64 %add33, ptr %tx65to127octets_gb, align 8
  %49 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i286 = getelementptr i8, ptr %50, i32 2116
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i286) #10, !srcloc !63
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i287 = zext i32 %52 to i64
  %tx128to255octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 6
  %53 = ptrtoint ptr %tx128to255octets_gb to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %tx128to255octets_gb, align 8
  %add35 = add i64 %54, %conv.i287
  store i64 %add35, ptr %tx128to255octets_gb, align 8
  %55 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i294 = getelementptr i8, ptr %56, i32 2124
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i294) #10, !srcloc !63
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i295 = zext i32 %58 to i64
  %tx256to511octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 7
  %59 = ptrtoint ptr %tx256to511octets_gb to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %tx256to511octets_gb, align 8
  %add37 = add i64 %60, %conv.i295
  store i64 %add37, ptr %tx256to511octets_gb, align 8
  %61 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i302 = getelementptr i8, ptr %62, i32 2132
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i302) #10, !srcloc !63
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i303 = zext i32 %64 to i64
  %tx512to1023octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 8
  %65 = ptrtoint ptr %tx512to1023octets_gb to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %tx512to1023octets_gb, align 8
  %add39 = add i64 %66, %conv.i303
  store i64 %add39, ptr %tx512to1023octets_gb, align 8
  %67 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i310 = getelementptr i8, ptr %68, i32 2140
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i310) #10, !srcloc !63
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i311 = zext i32 %70 to i64
  %tx1024tomaxoctets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 9
  %71 = ptrtoint ptr %tx1024tomaxoctets_gb to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %tx1024tomaxoctets_gb, align 8
  %add41 = add i64 %72, %conv.i311
  store i64 %add41, ptr %tx1024tomaxoctets_gb, align 8
  %73 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i318 = getelementptr i8, ptr %74, i32 2148
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i318) #10, !srcloc !63
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i319 = zext i32 %76 to i64
  %txunicastframes_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 10
  %77 = ptrtoint ptr %txunicastframes_gb to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %txunicastframes_gb, align 8
  %add43 = add i64 %78, %conv.i319
  store i64 %add43, ptr %txunicastframes_gb, align 8
  %79 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i326 = getelementptr i8, ptr %80, i32 2156
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i326) #10, !srcloc !63
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i327 = zext i32 %82 to i64
  %txmulticastframes_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 11
  %83 = ptrtoint ptr %txmulticastframes_gb to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %txmulticastframes_gb, align 8
  %add45 = add i64 %84, %conv.i327
  store i64 %add45, ptr %txmulticastframes_gb, align 8
  %85 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i334 = getelementptr i8, ptr %86, i32 2164
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i334) #10, !srcloc !63
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i335 = zext i32 %88 to i64
  %89 = ptrtoint ptr %txbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %txbroadcastframes_g, align 8
  %add48 = add i64 %90, %conv.i335
  store i64 %add48, ptr %txbroadcastframes_g, align 8
  %91 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i342 = getelementptr i8, ptr %92, i32 2172
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i342) #10, !srcloc !63
  %94 = tail call i32 @llvm.bswap.i32(i32 %93) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i343 = zext i32 %94 to i64
  %txunderflowerror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 13
  %95 = ptrtoint ptr %txunderflowerror to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %txunderflowerror, align 8
  %add50 = add i64 %96, %conv.i343
  store i64 %add50, ptr %txunderflowerror, align 8
  %97 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i350 = getelementptr i8, ptr %98, i32 2180
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i350) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %100 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mac_regs, align 4
  %add.ptr6.i353 = getelementptr i8, ptr %101, i32 2184
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i353) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %103 = zext i32 %102 to i64
  %104 = zext i32 %99 to i64
  %105 = shl nuw i64 %104, 32
  %106 = or i64 %105, %103
  %107 = tail call i64 @llvm.bswap.i64(i64 %106)
  %txoctetcount_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 14
  %108 = ptrtoint ptr %txoctetcount_g to i32
  call void @__asan_load8_noabort(i32 %108)
  %109 = load i64, ptr %txoctetcount_g, align 8
  %add52 = add i64 %107, %109
  store i64 %add52, ptr %txoctetcount_g, align 8
  %110 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i358 = getelementptr i8, ptr %111, i32 2188
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i358) #10, !srcloc !63
  %113 = tail call i32 @llvm.bswap.i32(i32 %112) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i359 = zext i32 %113 to i64
  %txframecount_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 15
  %114 = ptrtoint ptr %txframecount_g to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %txframecount_g, align 8
  %add54 = add i64 %115, %conv.i359
  store i64 %add54, ptr %txframecount_g, align 8
  %116 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i366 = getelementptr i8, ptr %117, i32 2196
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i366) #10, !srcloc !63
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i367 = zext i32 %119 to i64
  %txpauseframes = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 16
  %120 = ptrtoint ptr %txpauseframes to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %txpauseframes, align 8
  %add56 = add i64 %121, %conv.i367
  store i64 %add56, ptr %txpauseframes, align 8
  %122 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i374 = getelementptr i8, ptr %123, i32 2204
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374) #10, !srcloc !63
  %125 = tail call i32 @llvm.bswap.i32(i32 %124) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i375 = zext i32 %125 to i64
  %txvlanframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 17
  %126 = ptrtoint ptr %txvlanframes_g to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %txvlanframes_g, align 8
  %add58 = add i64 %127, %conv.i375
  store i64 %add58, ptr %txvlanframes_g, align 8
  %128 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i382 = getelementptr i8, ptr %129, i32 2304
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i382) #10, !srcloc !63
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i383 = zext i32 %131 to i64
  %rxframecount_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 18
  %132 = ptrtoint ptr %rxframecount_gb to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %rxframecount_gb, align 8
  %add60 = add i64 %133, %conv.i383
  store i64 %add60, ptr %rxframecount_gb, align 8
  %134 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i390 = getelementptr i8, ptr %135, i32 2312
  %136 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i390) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %137 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mac_regs, align 4
  %add.ptr6.i393 = getelementptr i8, ptr %138, i32 2316
  %139 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i393) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %140 = zext i32 %139 to i64
  %141 = zext i32 %136 to i64
  %142 = shl nuw i64 %141, 32
  %143 = or i64 %142, %140
  %144 = tail call i64 @llvm.bswap.i64(i64 %143)
  %rxoctetcount_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 19
  %145 = ptrtoint ptr %rxoctetcount_gb to i32
  call void @__asan_load8_noabort(i32 %145)
  %146 = load i64, ptr %rxoctetcount_gb, align 8
  %add62 = add i64 %144, %146
  store i64 %add62, ptr %rxoctetcount_gb, align 8
  %147 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i398 = getelementptr i8, ptr %148, i32 2320
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i398) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %150 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %mac_regs, align 4
  %add.ptr6.i401 = getelementptr i8, ptr %151, i32 2324
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i401) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !230
  %153 = zext i32 %152 to i64
  %154 = zext i32 %149 to i64
  %155 = shl nuw i64 %154, 32
  %156 = or i64 %155, %153
  %157 = tail call i64 @llvm.bswap.i64(i64 %156)
  %rxoctetcount_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 20
  %158 = ptrtoint ptr %rxoctetcount_g to i32
  call void @__asan_load8_noabort(i32 %158)
  %159 = load i64, ptr %rxoctetcount_g, align 8
  %add64 = add i64 %157, %159
  store i64 %add64, ptr %rxoctetcount_g, align 8
  %160 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i406 = getelementptr i8, ptr %161, i32 2328
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i406) #10, !srcloc !63
  %163 = tail call i32 @llvm.bswap.i32(i32 %162) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i407 = zext i32 %163 to i64
  %rxbroadcastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 21
  %164 = ptrtoint ptr %rxbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %rxbroadcastframes_g, align 8
  %add66 = add i64 %165, %conv.i407
  store i64 %add66, ptr %rxbroadcastframes_g, align 8
  %166 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i414 = getelementptr i8, ptr %167, i32 2336
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i414) #10, !srcloc !63
  %169 = tail call i32 @llvm.bswap.i32(i32 %168) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i415 = zext i32 %169 to i64
  %rxmulticastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 22
  %170 = ptrtoint ptr %rxmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %170)
  %171 = load i64, ptr %rxmulticastframes_g, align 8
  %add68 = add i64 %171, %conv.i415
  store i64 %add68, ptr %rxmulticastframes_g, align 8
  %172 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i422 = getelementptr i8, ptr %173, i32 2344
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422) #10, !srcloc !63
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i423 = zext i32 %175 to i64
  %rxcrcerror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 23
  %176 = ptrtoint ptr %rxcrcerror to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %rxcrcerror, align 8
  %add70 = add i64 %177, %conv.i423
  store i64 %add70, ptr %rxcrcerror, align 8
  %178 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i430 = getelementptr i8, ptr %179, i32 2352
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i430) #10, !srcloc !63
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i431 = zext i32 %181 to i64
  %rxrunterror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 24
  %182 = ptrtoint ptr %rxrunterror to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %rxrunterror, align 8
  %add72 = add i64 %183, %conv.i431
  store i64 %add72, ptr %rxrunterror, align 8
  %184 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i438 = getelementptr i8, ptr %185, i32 2356
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i438) #10, !srcloc !63
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i439 = zext i32 %187 to i64
  %rxjabbererror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 25
  %188 = ptrtoint ptr %rxjabbererror to i32
  call void @__asan_load8_noabort(i32 %188)
  %189 = load i64, ptr %rxjabbererror, align 8
  %add74 = add i64 %189, %conv.i439
  store i64 %add74, ptr %rxjabbererror, align 8
  %190 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i446 = getelementptr i8, ptr %191, i32 2360
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i446) #10, !srcloc !63
  %193 = tail call i32 @llvm.bswap.i32(i32 %192) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i447 = zext i32 %193 to i64
  %rxundersize_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 26
  %194 = ptrtoint ptr %rxundersize_g to i32
  call void @__asan_load8_noabort(i32 %194)
  %195 = load i64, ptr %rxundersize_g, align 8
  %add76 = add i64 %195, %conv.i447
  store i64 %add76, ptr %rxundersize_g, align 8
  %196 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i454 = getelementptr i8, ptr %197, i32 2364
  %198 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i454) #10, !srcloc !63
  %199 = tail call i32 @llvm.bswap.i32(i32 %198) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i455 = zext i32 %199 to i64
  %rxoversize_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 27
  %200 = ptrtoint ptr %rxoversize_g to i32
  call void @__asan_load8_noabort(i32 %200)
  %201 = load i64, ptr %rxoversize_g, align 8
  %add78 = add i64 %201, %conv.i455
  store i64 %add78, ptr %rxoversize_g, align 8
  %202 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i462 = getelementptr i8, ptr %203, i32 2368
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i462) #10, !srcloc !63
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i463 = zext i32 %205 to i64
  %rx64octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 28
  %206 = ptrtoint ptr %rx64octets_gb to i32
  call void @__asan_load8_noabort(i32 %206)
  %207 = load i64, ptr %rx64octets_gb, align 8
  %add80 = add i64 %207, %conv.i463
  store i64 %add80, ptr %rx64octets_gb, align 8
  %208 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i470 = getelementptr i8, ptr %209, i32 2376
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i470) #10, !srcloc !63
  %211 = tail call i32 @llvm.bswap.i32(i32 %210) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i471 = zext i32 %211 to i64
  %rx65to127octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 29
  %212 = ptrtoint ptr %rx65to127octets_gb to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %rx65to127octets_gb, align 8
  %add82 = add i64 %213, %conv.i471
  store i64 %add82, ptr %rx65to127octets_gb, align 8
  %214 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i478 = getelementptr i8, ptr %215, i32 2384
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i478) #10, !srcloc !63
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i479 = zext i32 %217 to i64
  %rx128to255octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 30
  %218 = ptrtoint ptr %rx128to255octets_gb to i32
  call void @__asan_load8_noabort(i32 %218)
  %219 = load i64, ptr %rx128to255octets_gb, align 8
  %add84 = add i64 %219, %conv.i479
  store i64 %add84, ptr %rx128to255octets_gb, align 8
  %220 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i486 = getelementptr i8, ptr %221, i32 2392
  %222 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i486) #10, !srcloc !63
  %223 = tail call i32 @llvm.bswap.i32(i32 %222) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i487 = zext i32 %223 to i64
  %rx256to511octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 31
  %224 = ptrtoint ptr %rx256to511octets_gb to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %rx256to511octets_gb, align 8
  %add86 = add i64 %225, %conv.i487
  store i64 %add86, ptr %rx256to511octets_gb, align 8
  %226 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i494 = getelementptr i8, ptr %227, i32 2400
  %228 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i494) #10, !srcloc !63
  %229 = tail call i32 @llvm.bswap.i32(i32 %228) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i495 = zext i32 %229 to i64
  %rx512to1023octets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 32
  %230 = ptrtoint ptr %rx512to1023octets_gb to i32
  call void @__asan_load8_noabort(i32 %230)
  %231 = load i64, ptr %rx512to1023octets_gb, align 8
  %add88 = add i64 %231, %conv.i495
  store i64 %add88, ptr %rx512to1023octets_gb, align 8
  %232 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i502 = getelementptr i8, ptr %233, i32 2408
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i502) #10, !srcloc !63
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i503 = zext i32 %235 to i64
  %rx1024tomaxoctets_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 33
  %236 = ptrtoint ptr %rx1024tomaxoctets_gb to i32
  call void @__asan_load8_noabort(i32 %236)
  %237 = load i64, ptr %rx1024tomaxoctets_gb, align 8
  %add90 = add i64 %237, %conv.i503
  store i64 %add90, ptr %rx1024tomaxoctets_gb, align 8
  %238 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i510 = getelementptr i8, ptr %239, i32 2416
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i510) #10, !srcloc !63
  %241 = tail call i32 @llvm.bswap.i32(i32 %240) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i511 = zext i32 %241 to i64
  %rxunicastframes_g = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 34
  %242 = ptrtoint ptr %rxunicastframes_g to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %rxunicastframes_g, align 8
  %add92 = add i64 %243, %conv.i511
  store i64 %add92, ptr %rxunicastframes_g, align 8
  %244 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i518 = getelementptr i8, ptr %245, i32 2424
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i518) #10, !srcloc !63
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i519 = zext i32 %247 to i64
  %rxlengtherror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 35
  %248 = ptrtoint ptr %rxlengtherror to i32
  call void @__asan_load8_noabort(i32 %248)
  %249 = load i64, ptr %rxlengtherror, align 8
  %add94 = add i64 %249, %conv.i519
  store i64 %add94, ptr %rxlengtherror, align 8
  %250 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i526 = getelementptr i8, ptr %251, i32 2432
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i526) #10, !srcloc !63
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i527 = zext i32 %253 to i64
  %rxoutofrangetype = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 36
  %254 = ptrtoint ptr %rxoutofrangetype to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %rxoutofrangetype, align 8
  %add96 = add i64 %255, %conv.i527
  store i64 %add96, ptr %rxoutofrangetype, align 8
  %256 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i534 = getelementptr i8, ptr %257, i32 2440
  %258 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i534) #10, !srcloc !63
  %259 = tail call i32 @llvm.bswap.i32(i32 %258) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i535 = zext i32 %259 to i64
  %rxpauseframes = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 37
  %260 = ptrtoint ptr %rxpauseframes to i32
  call void @__asan_load8_noabort(i32 %260)
  %261 = load i64, ptr %rxpauseframes, align 8
  %add98 = add i64 %261, %conv.i535
  store i64 %add98, ptr %rxpauseframes, align 8
  %262 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i542 = getelementptr i8, ptr %263, i32 2448
  %264 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i542) #10, !srcloc !63
  %265 = tail call i32 @llvm.bswap.i32(i32 %264) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i543 = zext i32 %265 to i64
  %rxfifooverflow = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 38
  %266 = ptrtoint ptr %rxfifooverflow to i32
  call void @__asan_load8_noabort(i32 %266)
  %267 = load i64, ptr %rxfifooverflow, align 8
  %add100 = add i64 %267, %conv.i543
  store i64 %add100, ptr %rxfifooverflow, align 8
  %268 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i550 = getelementptr i8, ptr %269, i32 2456
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i550) #10, !srcloc !63
  %271 = tail call i32 @llvm.bswap.i32(i32 %270) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i551 = zext i32 %271 to i64
  %rxvlanframes_gb = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 39
  %272 = ptrtoint ptr %rxvlanframes_gb to i32
  call void @__asan_load8_noabort(i32 %272)
  %273 = load i64, ptr %rxvlanframes_gb, align 8
  %add102 = add i64 %273, %conv.i551
  store i64 %add102, ptr %rxvlanframes_gb, align 8
  %274 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i558 = getelementptr i8, ptr %275, i32 2464
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i558) #10, !srcloc !63
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !229
  %conv.i559 = zext i32 %277 to i64
  %rxwatchdogerror = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 4, i32 40
  %278 = ptrtoint ptr %rxwatchdogerror to i32
  call void @__asan_load8_noabort(i32 %278)
  %279 = load i64, ptr %rxwatchdogerror, align 8
  %add104 = add i64 %279, %conv.i559
  store i64 %add104, ptr %rxwatchdogerror, align 8
  %280 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %mac_regs, align 4
  %add.ptr108 = getelementptr i8, ptr %281, i32 2048
  %282 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr108) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !234
  %283 = and i32 %282, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !235
  tail call void @arm_heavy_mb() #10
  %284 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %mac_regs, align 4
  %add.ptr144 = getelementptr i8, ptr %285, i32 2048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144, i32 %283) #10, !srcloc !66
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_enable_rss(ptr noundef %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 23
  %0 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @xlgmac_write_rss_hash_key(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.for.body.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 43, i32 %i.07.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 0, i32 noundef %i.07.i, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %inc.i = add nuw nsw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %xlgmac_write_rss_lookup_table.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

xlgmac_write_rss_lookup_table.exit:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %do.body, label %xlgmac_write_rss_lookup_table.exit.cleanup_crit_edge

xlgmac_write_rss_lookup_table.exit.cleanup_crit_edge: ; preds = %xlgmac_write_rss_lookup_table.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %xlgmac_write_rss_lookup_table.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !236
  tail call void @arm_heavy_mb() #10
  %rss_options = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 44
  %4 = ptrtoint ptr %rss_options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rss_options, align 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %7 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #10, !srcloc !66
  %9 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 3200
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !237
  %12 = or i32 %11, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !238
  tail call void @arm_heavy_mb() #10
  %13 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mac_regs, align 4
  %add.ptr33 = getelementptr i8, ptr %14, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %12) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %do.body, %xlgmac_write_rss_lookup_table.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call.i, %xlgmac_write_rss_lookup_table.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_disable_rss(ptr nocapture noundef readonly %pdata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 23
  %0 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %2 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 3200
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !88
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %7, i32 3200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %5) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_set_rss_hash_key(ptr noundef %pdata, ptr nocapture noundef readonly %key) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_key = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42
  %0 = call ptr @memcpy(ptr %rss_key, ptr %key, i32 40)
  %call = tail call fastcc i32 @xlgmac_write_rss_hash_key(ptr noundef %pdata)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xlgmac_set_rss_lookup_table(ptr noundef %pdata, ptr nocapture noundef readonly %table) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.032 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %table, i32 %i.032
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 43, i32 %i.032
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %and7 = and i32 %1, 15
  %and17 = and i32 %3, -16
  %or = or i32 %and17, %and7
  store i32 %or, ptr %arrayidx1, align 4
  %inc = add nuw nsw i32 %i.032, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.body.for.body.i_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.body.i_crit_edge:                    ; preds = %for.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 43, i32 %i.07.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 0, i32 noundef %i.07.i, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %inc.i = add nuw nsw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %xlgmac_write_rss_lookup_table.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

xlgmac_write_rss_lookup_table.exit:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlgmac_config_queue_mapping(ptr nocapture noundef readonly %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 15
  %0 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_q_count, align 8
  %tc_cnt = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 24
  %2 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_cnt, align 8
  %.frozen = freeze i32 %1
  %.frozen380 = freeze i32 %3
  %div = udiv i32 %.frozen, %.frozen380
  %4 = mul i32 %div, %.frozen380
  %rem.decomposed = sub i32 %.frozen, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp366.not = icmp eq i32 %3, 0
  br i1 %cmp366.not, label %entry.for.end126_crit_edge, label %for.cond6.preheader.lr.ph

entry.for.end126_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end126

for.cond6.preheader.lr.ph:                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp7363.not = icmp ugt i32 %3, %1
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc124.for.cond6.preheader_crit_edge, %for.cond6.preheader.lr.ph
  %queue.0370 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %queue.2, %for.inc124.for.cond6.preheader_crit_edge ]
  %i.0367 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc125, %for.inc124.for.cond6.preheader_crit_edge ]
  br i1 %cmp7363.not, label %for.cond6.preheader.for.end_crit_edge, label %do.body.lr.ph

for.cond6.preheader.for.end_crit_edge:            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body.lr.ph:                                    ; preds = %for.cond6.preheader
  %shl = shl i32 %i.0367, 8
  %and28 = and i32 %shl, 1792
  br label %do.body

do.body:                                          ; preds = %do.end16.do.body_crit_edge, %do.body.lr.ph
  %queue.1365 = phi i32 [ %queue.0370, %do.body.lr.ph ], [ %inc, %do.end16.do.body_crit_edge ]
  %j.0364 = phi i32 [ 0, %do.body.lr.ph ], [ %inc48, %do.end16.do.body_crit_edge ]
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 8
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %do.body9

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_config_queue_mapping, %if.then13)) #10
          to label %do.end16 [label %if.then13], !srcloc !186

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug360, ptr noundef %8, ptr noundef nonnull @.str.4, i32 noundef %queue.1365, i32 noundef %i.0367) #10
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body9, %do.body.do.end16_crit_edge
  %9 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4352
  %mul = shl i32 %queue.1365, 7
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %mul
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !239
  %12 = and i32 %11, -458753
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or = or i32 %13, %and28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !240
  tail call void @arm_heavy_mb() #10
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mac_regs, align 4
  %add.ptr44 = getelementptr i8, ptr %16, i32 4352
  %add.ptr46 = getelementptr i8, ptr %add.ptr44, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %14) #10, !srcloc !66
  %inc = add i32 %queue.1365, 1
  %inc48 = add nuw i32 %j.0364, 1
  %exitcond.not = icmp eq i32 %inc48, %umax
  br i1 %exitcond.not, label %do.end16.for.end_crit_edge, label %do.end16.do.body_crit_edge

do.end16.do.body_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end16.for.end_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.end16.for.end_crit_edge, %for.cond6.preheader.for.end_crit_edge
  %queue.1.lcssa = phi i32 [ %queue.0370, %for.cond6.preheader.for.end_crit_edge ], [ %inc, %do.end16.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0367, i32 %rem.decomposed)
  %cmp49 = icmp ult i32 %i.0367, %rem.decomposed
  br i1 %cmp49, label %do.body51, label %for.end.for.inc124_crit_edge

for.end.for.inc124_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc124

do.body51:                                        ; preds = %for.end
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 8
  %and53 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body51.do.end75_crit_edge, label %do.body56

do.body51.do.end75_crit_edge:                     ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end75

do.body56:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_config_queue_mapping, %if.then68)) #10
          to label %do.end75 [label %if.then68], !srcloc !186

if.then68:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug361, ptr noundef %20, ptr noundef nonnull @.str.4, i32 noundef %queue.1.lcssa, i32 noundef %i.0367) #10
  br label %do.end75

do.end75:                                         ; preds = %if.then68, %do.body56, %do.body51.do.end75_crit_edge
  %21 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mac_regs, align 4
  %add.ptr79 = getelementptr i8, ptr %22, i32 4352
  %mul80 = shl i32 %queue.1.lcssa, 7
  %add.ptr81 = getelementptr i8, ptr %add.ptr79, i32 %mul80
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !241
  %shl90 = shl i32 %i.0367, 8
  %and100 = and i32 %shl90, 1792
  %24 = and i32 %23, -458753
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %or113 = or i32 %25, %and100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !242
  tail call void @arm_heavy_mb() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %or113)
  %27 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mac_regs, align 4
  %add.ptr118 = getelementptr i8, ptr %28, i32 4352
  %add.ptr120 = getelementptr i8, ptr %add.ptr118, i32 %mul80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr120, i32 %26) #10, !srcloc !66
  %inc122 = add i32 %queue.1.lcssa, 1
  br label %for.inc124

for.inc124:                                       ; preds = %do.end75, %for.end.for.inc124_crit_edge
  %queue.2 = phi i32 [ %inc122, %do.end75 ], [ %queue.1.lcssa, %for.end.for.inc124_crit_edge ]
  %inc125 = add nuw i32 %i.0367, 1
  %29 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tc_cnt, align 8
  %cmp = icmp ult i32 %inc125, %30
  br i1 %cmp, label %for.inc124.for.cond6.preheader_crit_edge, label %for.inc124.for.end126_crit_edge

for.inc124.for.end126_crit_edge:                  ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end126

for.inc124.for.cond6.preheader_crit_edge:         ; preds = %for.inc124
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond6.preheader

for.end126:                                       ; preds = %for.inc124.for.end126_crit_edge, %entry.for.end126_crit_edge
  %rx_q_count = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 16
  %31 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rx_q_count, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 8)
  %div129.rhs.trunc = trunc i32 %33 to i8
  %div129.rhs.trunc.frozen = freeze i8 %div129.rhs.trunc
  %div129361 = udiv i8 8, %div129.rhs.trunc.frozen
  %div129.zext = zext i8 %div129361 to i32
  %34 = mul i8 %div129361, %div129.rhs.trunc.frozen
  %rem130362.decomposed = sub i8 8, %34
  %rem130.zext = zext i8 %rem130362.decomposed to i32
  %msg_enable138 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %mac_regs212 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  br label %for.cond131.outer

for.cond131.outer:                                ; preds = %do.body209, %for.end126
  %i.1.ph = phi i32 [ %inc199, %do.body209 ], [ 0, %for.end126 ]
  %reg.0.ph = phi i32 [ %add214, %do.body209 ], [ 168, %for.end126 ]
  %prio.0.ph = phi i32 [ %prio.2, %do.body209 ], [ 0, %for.end126 ]
  %umax378 = call i32 @llvm.umax.i32(i32 %i.1.ph, i32 %33)
  br label %for.cond131

for.cond131:                                      ; preds = %if.end198.for.cond131_crit_edge, %for.cond131.outer
  %i.1 = phi i32 [ %inc199, %if.end198.for.cond131_crit_edge ], [ %i.1.ph, %for.cond131.outer ]
  %regval.0 = phi i32 [ %or203, %if.end198.for.cond131_crit_edge ], [ 0, %for.cond131.outer ]
  %prio.0 = phi i32 [ %prio.2, %if.end198.for.cond131_crit_edge ], [ %prio.0.ph, %for.cond131.outer ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %umax378)
  %exitcond379.not = icmp eq i32 %i.1, %umax378
  br i1 %exitcond379.not, label %for.end215, label %do.body137.preheader

do.body137.preheader:                             ; preds = %for.cond131
  %35 = add i32 %prio.0, %div129.zext
  br label %do.body137

do.body137:                                       ; preds = %do.end161.do.body137_crit_edge, %do.body137.preheader
  %prio.1374 = phi i32 [ %inc164, %do.end161.do.body137_crit_edge ], [ %prio.0, %do.body137.preheader ]
  %mask.0373 = phi i32 [ %or163, %do.end161.do.body137_crit_edge ], [ 0, %do.body137.preheader ]
  %36 = ptrtoint ptr %msg_enable138 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable138, align 8
  %and139 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %do.body137.do.end161_crit_edge, label %do.body142

do.body137.do.end161_crit_edge:                   ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end161

do.body142:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_config_queue_mapping, %if.then154)) #10
          to label %do.end161 [label %if.then154], !srcloc !186

if.then154:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug364, ptr noundef %39, ptr noundef nonnull @.str.5, i32 noundef %prio.1374, i32 noundef %i.1) #10
  br label %do.end161

do.end161:                                        ; preds = %if.then154, %do.body142, %do.body137.do.end161_crit_edge
  %shl162 = shl nuw i32 1, %prio.1374
  %or163 = or i32 %shl162, %mask.0373
  %inc164 = add i32 %prio.1374, 1
  %exitcond377.not = icmp eq i32 %inc164, %35
  br i1 %exitcond377.not, label %for.end167, label %do.end161.do.body137_crit_edge

do.end161.do.body137_crit_edge:                   ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body137

for.end167:                                       ; preds = %do.end161
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %rem130.zext)
  %cmp168 = icmp ult i32 %i.1, %rem130.zext
  br i1 %cmp168, label %do.body170, label %for.end167.if.end198_crit_edge

for.end167.if.end198_crit_edge:                   ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end198

do.body170:                                       ; preds = %for.end167
  %40 = ptrtoint ptr %msg_enable138 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %msg_enable138, align 8
  %and172 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %do.body170.do.end194_crit_edge, label %do.body175

do.body170.do.end194_crit_edge:                   ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end194

do.body175:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_config_queue_mapping, %if.then187)) #10
          to label %do.end194 [label %if.then187], !srcloc !186

if.then187:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug365, ptr noundef %43, ptr noundef nonnull @.str.5, i32 noundef %35, i32 noundef %i.1) #10
  br label %do.end194

do.end194:                                        ; preds = %if.then187, %do.body175, %do.body170.do.end194_crit_edge
  %shl195 = shl nuw i32 1, %35
  %or196 = or i32 %shl195, %or163
  %inc197 = add i32 %35, 1
  br label %if.end198

if.end198:                                        ; preds = %do.end194, %for.end167.if.end198_crit_edge
  %mask.1 = phi i32 [ %or196, %do.end194 ], [ %or163, %for.end167.if.end198_crit_edge ]
  %prio.2 = phi i32 [ %inc197, %do.end194 ], [ %35, %for.end167.if.end198_crit_edge ]
  %inc199 = add i32 %i.1, 1
  %rem200 = shl i32 %i.1, 3
  %shl201 = and i32 %rem200, 24
  %shl202 = shl i32 %mask.1, %shl201
  %or203 = or i32 %shl202, %regval.0
  %rem204 = and i32 %inc199, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem204)
  %tobool205.not = icmp eq i32 %rem204, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc199, i32 %33)
  %cmp206.not = icmp eq i32 %inc199, %33
  %or.cond = select i1 %tobool205.not, i1 true, i1 %cmp206.not
  br i1 %or.cond, label %do.body209, label %if.end198.for.cond131_crit_edge

if.end198.for.cond131_crit_edge:                  ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond131

do.body209:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !243
  tail call void @arm_heavy_mb() #10
  %44 = tail call i32 @llvm.bswap.i32(i32 %or203)
  %45 = ptrtoint ptr %mac_regs212 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mac_regs212, align 4
  %add.ptr213 = getelementptr i8, ptr %46, i32 %reg.0.ph
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213, i32 %44) #10, !srcloc !66
  %add214 = add i32 %reg.0.ph, 4
  br label %for.cond131.outer

for.end215:                                       ; preds = %for.cond131
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %mac_regs212 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %mac_regs212, align 4
  %add.ptr219 = getelementptr i8, ptr %48, i32 4144
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr219) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !244
  %50 = or i32 %49, 66051
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  tail call void @arm_heavy_mb() #10
  %51 = ptrtoint ptr %mac_regs212 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mac_regs212, align 4
  %add.ptr228 = getelementptr i8, ptr %52, i32 4144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 %50) #10, !srcloc !66
  %53 = ptrtoint ptr %mac_regs212 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mac_regs212, align 4
  %add.ptr233 = getelementptr i8, ptr %54, i32 4148
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr233) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  %56 = or i32 %55, 67438087
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !247
  tail call void @arm_heavy_mb() #10
  %57 = ptrtoint ptr %mac_regs212 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mac_regs212, align 4
  %add.ptr242 = getelementptr i8, ptr %58, i32 4148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr242, i32 %56) #10, !srcloc !66
  %59 = ptrtoint ptr %mac_regs212 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mac_regs212, align 4
  %add.ptr247 = getelementptr i8, ptr %60, i32 4152
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr247) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !248
  %62 = or i32 %61, 134810123
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !249
  tail call void @arm_heavy_mb() #10
  %63 = ptrtoint ptr %mac_regs212 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mac_regs212, align 4
  %add.ptr256 = getelementptr i8, ptr %64, i32 4152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr256, i32 %62) #10, !srcloc !66
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlgmac_dump_tx_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @xlgmac_dump_rx_desc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlgmac_set_promiscuous_mode(ptr nocapture noundef readonly %pdata, i32 noundef %enable) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !250
  %and7 = and i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %cond)
  %cmp = icmp eq i32 %and7, %cond
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and9 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body.do.end24_crit_edge, label %do.body12

do.body.do.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_set_promiscuous_mode.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_set_promiscuous_mode, %if.then18)) #10
          to label %do.end24 [label %if.then18], !srcloc !186

if.then18:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  %cond20 = select i1 %tobool.not, ptr @.str.20, ptr @.str.19
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_set_promiscuous_mode.__UNIQUE_ID_ddebug352, ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull %cond20) #10
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %do.body12, %do.body.do.end24_crit_edge
  %8 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs, align 4
  %add.ptr28 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !251
  %11 = and i32 %10, -16777217
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or = or i32 %12, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !252
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_regs, align 4
  %add.ptr60 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %13) #10, !srcloc !66
  br i1 %tobool.not, label %if.else, label %if.then62

if.then62:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !223
  %19 = and i32 %18, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @arm_heavy_mb() #10
  %20 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_regs, align 4
  %add.ptr20.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %19) #10, !srcloc !66
  br label %cleanup

if.else:                                          ; preds = %do.end24
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %features, align 16
  %and65 = and i64 %25, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and65)
  %tobool66.not = icmp eq i64 %and65, 0
  br i1 %tobool66.not, label %if.else.cleanup_crit_edge, label %if.then67

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac_regs, align 4
  %add.ptr.i2 = getelementptr i8, ptr %27, i32 8
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !222
  %29 = or i32 %28, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac_regs, align 4
  %add.ptr20.i3 = getelementptr i8, ptr %31, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i3, i32 %29) #10, !srcloc !66
  %32 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mac_regs, align 4
  %add.ptr24.i = getelementptr i8, ptr %33, i32 80
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  %35 = and i32 %34, 64765
  %36 = or i32 %35, 16777474
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @arm_heavy_mb() #10
  %37 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mac_regs, align 4
  %add.ptr144.i = getelementptr i8, ptr %38, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr144.i, i32 %36) #10, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.then67, %if.else.cleanup_crit_edge, %if.then62, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlgmac_set_mac_addn_addrs(ptr nocapture noundef readonly %pdata) unnamed_addr #1 align 64 {
entry:
  %mac_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mac_reg) #10
  %2 = ptrtoint ptr %mac_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 776, ptr %mac_reg, align 4
  %addn_mac = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 7, i32 12
  %3 = ptrtoint ptr %addn_mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %addn_mac, align 8
  %uc = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 65
  %count = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 65, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp = icmp ugt i32 %6, %4
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %uc to i32
  call void @__asan_load4_noabort(i32 %7)
  %ha.062 = load ptr, ptr %uc, align 4
  %cmp6.not63 = icmp eq ptr %ha.062, %uc
  br i1 %cmp6.not63, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @xlgmac_set_promiscuous_mode(ptr noundef %pdata, i32 noundef 1)
  br label %if.end38

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.065 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.062, %for.cond.preheader.for.body_crit_edge ]
  %addn_macs.064 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %4, %for.cond.preheader.for.body_crit_edge ]
  call fastcc void @xlgmac_set_mac_reg(ptr noundef %pdata, ptr noundef %ha.065, ptr noundef nonnull %mac_reg)
  %dec = add i32 %addn_macs.064, -1
  %8 = ptrtoint ptr %ha.065 to i32
  call void @__asan_load4_noabort(i32 %8)
  %ha.0 = load ptr, ptr %ha.065, align 4
  %cmp6.not = icmp eq ptr %ha.0, %uc
  br i1 %cmp6.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %addn_macs.0.lcssa = phi i32 [ %4, %for.cond.preheader.for.end_crit_edge ], [ %dec, %for.body.for.end_crit_edge ]
  %mc = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66
  %count12 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 66, i32 1
  %9 = ptrtoint ptr %count12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count12, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %addn_macs.0.lcssa)
  %cmp13 = icmp ugt i32 %10, %addn_macs.0.lcssa
  br i1 %cmp13, label %if.then14, label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.end
  %11 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %11)
  %ha.166 = load ptr, ptr %mc, align 4
  %cmp27.not67 = icmp eq ptr %ha.166, %mc
  br i1 %cmp27.not67, label %for.cond23.preheader.if.end38_crit_edge, label %for.cond23.preheader.for.body29_crit_edge

for.cond23.preheader.for.body29_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body29

for.cond23.preheader.if.end38_crit_edge:          ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then14:                                        ; preds = %for.end
  %mac_regs.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %12 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !194
  %15 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %do.body.i, label %if.then14.if.end38_crit_edge

if.then14.if.end38_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.body.i:                                        ; preds = %if.then14
  %msg_enable.i = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 8
  %and9.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.do.end24.i_crit_edge, label %do.body12.i

do.body.i.do.end24.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24.i

do.body12.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_set_all_multicast_mode.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_set_mac_addn_addrs, %if.then18.i)) #10
          to label %do.end24.i [label %if.then18.i], !srcloc !186

if.then18.i:                                      ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_set_all_multicast_mode.__UNIQUE_ID_ddebug353, ptr noundef %19, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.19) #10
  br label %do.end24.i

do.end24.i:                                       ; preds = %if.then18.i, %do.body12.i, %do.body.i.do.end24.i_crit_edge
  %20 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr28.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !195
  %23 = or i32 %22, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !196
  tail call void @arm_heavy_mb() #10
  %24 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mac_regs.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %23) #10, !srcloc !66
  br label %if.end38

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.cond23.preheader.for.body29_crit_edge
  %ha.169 = phi ptr [ %ha.1, %for.body29.for.body29_crit_edge ], [ %ha.166, %for.cond23.preheader.for.body29_crit_edge ]
  %addn_macs.168 = phi i32 [ %dec30, %for.body29.for.body29_crit_edge ], [ %addn_macs.0.lcssa, %for.cond23.preheader.for.body29_crit_edge ]
  call fastcc void @xlgmac_set_mac_reg(ptr noundef %pdata, ptr noundef %ha.169, ptr noundef nonnull %mac_reg)
  %dec30 = add i32 %addn_macs.168, -1
  %26 = ptrtoint ptr %ha.169 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.1 = load ptr, ptr %ha.169, align 4
  %cmp27.not = icmp eq ptr %ha.1, %mc
  br i1 %cmp27.not, label %for.body29.if.end38_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body29

for.body29.if.end38_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.end38:                                         ; preds = %for.body29.if.end38_crit_edge, %do.end24.i, %if.then14.if.end38_crit_edge, %for.cond23.preheader.if.end38_crit_edge, %if.then
  %addn_macs.2 = phi i32 [ %4, %if.then ], [ %addn_macs.0.lcssa, %if.then14.if.end38_crit_edge ], [ %addn_macs.0.lcssa, %do.end24.i ], [ %addn_macs.0.lcssa, %for.cond23.preheader.if.end38_crit_edge ], [ %dec30, %for.body29.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addn_macs.2)
  %tobool.not72 = icmp eq i32 %addn_macs.2, 0
  br i1 %tobool.not72, label %if.end38.while.end_crit_edge, label %while.body.lr.ph

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end38
  %27 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %mac_reg.promoted = load i32, ptr %mac_reg, align 4
  %mac_regs.i60 = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %addn_macs.374 = phi i32 [ %addn_macs.2, %while.body.lr.ph ], [ %dec39, %while.body.while.body_crit_edge ]
  %add56.i7173 = phi i32 [ %mac_reg.promoted, %while.body.lr.ph ], [ %add56.i, %while.body.while.body_crit_edge ]
  %dec39 = add i32 %addn_macs.374, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %mac_regs.i60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac_regs.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %29, i32 %add56.i7173
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #10, !srcloc !66
  %add50.i = add i32 %add56.i7173, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  tail call void @arm_heavy_mb() #10
  %30 = ptrtoint ptr %mac_regs.i60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac_regs.i60, align 4
  %add.ptr55.i = getelementptr i8, ptr %31, i32 %add50.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 0) #10, !srcloc !66
  %add56.i = add i32 %add56.i7173, 8
  %tobool.not = icmp eq i32 %dec39, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end38.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mac_reg) #10
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xlgmac_set_mac_reg(ptr nocapture noundef readonly %pdata, ptr noundef %ha, ptr nocapture noundef %mac_reg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ha, null
  br i1 %tobool.not, label %entry.do.body47_crit_edge, label %if.then

entry.do.body47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body47

if.then:                                          ; preds = %entry
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha, i32 0, i32 2
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 4
  %arrayidx3 = getelementptr %struct.netdev_hw_addr, ptr %ha, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr %struct.netdev_hw_addr, ptr %ha, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 2
  %arrayidx9 = getelementptr %struct.netdev_hw_addr, ptr %ha, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %arrayidx12 = getelementptr %struct.netdev_hw_addr, ptr %ha, i32 0, i32 2, i32 4
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx12, align 4
  %arrayidx15 = getelementptr %struct.netdev_hw_addr, ptr %ha, i32 0, i32 2, i32 5
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  %msg_enable = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 5
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then.do.end27_crit_edge, label %do.body19

if.then.do.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end27

do.body19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xlgmac_set_mac_reg.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xlgmac_set_mac_reg, %if.then23)) #10
          to label %do.end27 [label %if.then23], !srcloc !186

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  %16 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_reg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xlgmac_set_mac_reg.__UNIQUE_ID_ddebug351, ptr noundef %15, ptr noundef nonnull @.str.24, ptr noundef %addr, i32 noundef %17) #10
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body19, %if.then.do.end27_crit_edge
  %mac_addr_hi.sroa.8.0.insert.ext = zext i8 %11 to i32
  %mac_addr_hi.sroa.8.0.insert.shift = shl nuw nsw i32 %mac_addr_hi.sroa.8.0.insert.ext, 16
  %mac_addr_hi.sroa.0.0.insert.ext = zext i8 %9 to i32
  %mac_addr_hi.sroa.0.0.insert.shift = shl nuw i32 %mac_addr_hi.sroa.0.0.insert.ext, 24
  %or = or i32 %mac_addr_hi.sroa.0.0.insert.shift, -2147483648
  %phi.cast = zext i8 %7 to i32
  %phi.cast97 = zext i8 %5 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast97, 8
  %phi.cast98 = zext i8 %3 to i32
  %phi.bo99 = shl nuw nsw i32 %phi.cast98, 16
  %phi.cast101 = zext i8 %1 to i32
  %phi.bo102 = shl nuw i32 %phi.cast101, 24
  br label %do.body47

do.body47:                                        ; preds = %do.end27, %entry.do.body47_crit_edge
  %mac_addr_lo.sroa.8.0 = phi i32 [ %phi.cast, %do.end27 ], [ 0, %entry.do.body47_crit_edge ]
  %mac_addr_lo.sroa.7.0 = phi i32 [ %phi.bo, %do.end27 ], [ 0, %entry.do.body47_crit_edge ]
  %mac_addr_lo.sroa.6.0 = phi i32 [ %phi.bo99, %do.end27 ], [ 0, %entry.do.body47_crit_edge ]
  %mac_addr_lo.sroa.0.0 = phi i32 [ %phi.bo102, %do.end27 ], [ 0, %entry.do.body47_crit_edge ]
  %mac_addr_hi.sroa.8.0 = phi i32 [ %mac_addr_hi.sroa.8.0.insert.shift, %do.end27 ], [ 0, %entry.do.body47_crit_edge ]
  %mac_addr_hi.sroa.0.0 = phi i32 [ %or, %do.end27 ], [ 0, %entry.do.body47_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !253
  tail call void @arm_heavy_mb() #10
  %mac_addr_hi.sroa.0.0.insert.insert86 = or i32 %mac_addr_hi.sroa.0.0, %mac_addr_hi.sroa.8.0
  %18 = tail call i32 @llvm.bswap.i32(i32 %mac_addr_hi.sroa.0.0.insert.insert86)
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %19 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mac_regs, align 4
  %21 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mac_reg, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #10, !srcloc !66
  %23 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac_reg, align 4
  %add50 = add i32 %24, 4
  store i32 %add50, ptr %mac_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !254
  tail call void @arm_heavy_mb() #10
  %mac_addr_lo.sroa.6.0.insert.mask = or i32 %mac_addr_lo.sroa.7.0, %mac_addr_lo.sroa.8.0
  %mac_addr_lo.sroa.6.0.insert.insert = or i32 %mac_addr_lo.sroa.6.0.insert.mask, %mac_addr_lo.sroa.6.0
  %mac_addr_lo.sroa.0.0.insert.mask = and i32 %mac_addr_lo.sroa.6.0.insert.insert, 16777215
  %mac_addr_lo.sroa.0.0.insert.insert = or i32 %mac_addr_lo.sroa.0.0.insert.mask, %mac_addr_lo.sroa.0.0
  %25 = tail call i32 @llvm.bswap.i32(i32 %mac_addr_lo.sroa.0.0.insert.insert)
  %26 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mac_regs, align 4
  %28 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mac_reg, align 4
  %add.ptr55 = getelementptr i8, ptr %27, i32 %29
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %25) #10, !srcloc !66
  %30 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mac_reg, align 4
  %add56 = add i32 %31, 4
  store i32 %add56, ptr %mac_reg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlgmac_write_rss_hash_key(ptr noundef %pdata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_key = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42
  %0 = ptrtoint ptr %rss_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_key, align 4
  %call = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 9, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.cond.1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.1:                                     ; preds = %entry
  %incdec.ptr = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42, i32 4
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %incdec.ptr, align 4
  %call.1 = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 8, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool1.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool1.not.1, label %while.cond.2, label %while.cond.1.cleanup_crit_edge

while.cond.1.cleanup_crit_edge:                   ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.2:                                     ; preds = %while.cond.1
  %incdec.ptr.1 = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42, i32 8
  %4 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr.1, align 4
  %call.2 = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 7, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool1.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool1.not.2, label %while.cond.3, label %while.cond.2.cleanup_crit_edge

while.cond.2.cleanup_crit_edge:                   ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.3:                                     ; preds = %while.cond.2
  %incdec.ptr.2 = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42, i32 12
  %6 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.2, align 4
  %call.3 = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 6, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool1.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool1.not.3, label %while.cond.4, label %while.cond.3.cleanup_crit_edge

while.cond.3.cleanup_crit_edge:                   ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.4:                                     ; preds = %while.cond.3
  %incdec.ptr.3 = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42, i32 16
  %8 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr.3, align 4
  %call.4 = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 5, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool1.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool1.not.4, label %while.cond.5, label %while.cond.4.cleanup_crit_edge

while.cond.4.cleanup_crit_edge:                   ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.5:                                     ; preds = %while.cond.4
  %incdec.ptr.4 = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42, i32 20
  %10 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.4, align 4
  %call.5 = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 4, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool1.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool1.not.5, label %while.cond.6, label %while.cond.5.cleanup_crit_edge

while.cond.5.cleanup_crit_edge:                   ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.6:                                     ; preds = %while.cond.5
  %incdec.ptr.5 = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42, i32 24
  %12 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.5, align 4
  %call.6 = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 3, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool1.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool1.not.6, label %while.cond.7, label %while.cond.6.cleanup_crit_edge

while.cond.6.cleanup_crit_edge:                   ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.7:                                     ; preds = %while.cond.6
  %incdec.ptr.6 = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42, i32 28
  %14 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.6, align 4
  %call.7 = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 2, i32 noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool1.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool1.not.7, label %while.cond.8, label %while.cond.7.cleanup_crit_edge

while.cond.7.cleanup_crit_edge:                   ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.8:                                     ; preds = %while.cond.7
  %incdec.ptr.7 = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42, i32 32
  %16 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.7, align 4
  %call.8 = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 1, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool1.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool1.not.8, label %while.cond.9, label %while.cond.8.cleanup_crit_edge

while.cond.8.cleanup_crit_edge:                   ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.9:                                     ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.8 = getelementptr %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 42, i32 36
  %18 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr.8, align 4
  %call.9 = tail call fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 0, i32 noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %while.cond.9, %while.cond.8.cleanup_crit_edge, %while.cond.7.cleanup_crit_edge, %while.cond.6.cleanup_crit_edge, %while.cond.5.cleanup_crit_edge, %while.cond.4.cleanup_crit_edge, %while.cond.3.cleanup_crit_edge, %while.cond.2.cleanup_crit_edge, %while.cond.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.1, %while.cond.1.cleanup_crit_edge ], [ %call.2, %while.cond.2.cleanup_crit_edge ], [ %call.3, %while.cond.3.cleanup_crit_edge ], [ %call.4, %while.cond.4.cleanup_crit_edge ], [ %call.5, %while.cond.5.cleanup_crit_edge ], [ %call.6, %while.cond.6.cleanup_crit_edge ], [ %call.7, %while.cond.7.cleanup_crit_edge ], [ %call.8, %while.cond.8.cleanup_crit_edge ], [ %call.9, %while.cond.9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xlgmac_write_rss_reg(ptr noundef %pdata, i32 noundef %type, i32 noundef %index, i32 noundef %val) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_mutex = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 41
  tail call void @mutex_lock_nested(ptr noundef %rss_mutex, i32 noundef 0) #10
  %mac_regs = getelementptr inbounds %struct.xlgmac_pdata, ptr %pdata, i32 0, i32 6
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !255
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !256
  tail call void @arm_heavy_mb() #10
  %4 = tail call i32 @llvm.bswap.i32(i32 %val)
  %5 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mac_regs, align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 3212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %4) #10, !srcloc !66
  %7 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_regs, align 4
  %add.ptr14 = getelementptr i8, ptr %8, i32 3208
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !257
  %shl20 = shl i32 %index, 8
  %and30 = and i32 %shl20, 65280
  %shl46 = shl i32 %type, 2
  %and56 = and i32 %shl46, 4
  %10 = and i32 %9, -134152193
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and68.masked.masked = or i32 %and56, %and30
  %and124 = or i32 %and68.masked.masked, %11
  %or125 = or i32 %and124, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !258
  tail call void @arm_heavy_mb() #10
  %12 = tail call i32 @llvm.bswap.i32(i32 %or125)
  %13 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mac_regs, align 4
  %add.ptr130 = getelementptr i8, ptr %14, i32 3208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 %12) #10, !srcloc !66
  br label %while.body

while.body:                                       ; preds = %if.end155.while.body_crit_edge, %do.body
  %dec197 = phi i32 [ 999, %do.body ], [ %dec, %if.end155.while.body_crit_edge ]
  %15 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mac_regs, align 4
  %add.ptr138 = getelementptr i8, ptr %16, i32 3208
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr138) #10, !srcloc !63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !259
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool153.not = icmp eq i32 %18, 0
  br i1 %tobool153.not, label %while.body.unlock_crit_edge, label %if.end155

while.body.unlock_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end155:                                        ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #10
  %dec = add nsw i32 %dec197, -1
  %tobool131.not = icmp eq i32 %dec197, 0
  br i1 %tobool131.not, label %if.end155.unlock_crit_edge, label %if.end155.while.body_crit_edge

if.end155.while.body_crit_edge:                   ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end155.unlock_crit_edge:                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

unlock:                                           ; preds = %if.end155.unlock_crit_edge, %while.body.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ -16, %entry.unlock_crit_edge ], [ -16, %if.end155.unlock_crit_edge ], [ 0, %while.body.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rss_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !26, !27, !29, !30, !32, !34, !35, !36, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !51, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 2443, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 1520, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug360, !3, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!8 = !{ptr @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug361, !9, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 1534, i32 4}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 1559, i32 4}
!12 = !{ptr @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug364, !11, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!13 = !{ptr @xlgmac_config_queue_mapping.__UNIQUE_ID_ddebug365, !14, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 1566, i32 4}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 1647, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 1669, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 493, i32 8}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 598, i32 8}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 764, i32 4}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @xlgmac_dev_xmit.__UNIQUE_ID_ddebug354, !24, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 793, i32 4}
!29 = !{ptr @xlgmac_dev_xmit.__UNIQUE_ID_ddebug355, !28, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!30 = distinct !{null, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 2777, i32 2}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @xlgmac_dev_read.__UNIQUE_ID_ddebug370, !33, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 2792, i32 4}
!38 = !{ptr @xlgmac_dev_read.__UNIQUE_ID_ddebug371, !37, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 254, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xlgmac_set_promiscuous_mode.__UNIQUE_ID_ddebug352, !40, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!43 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 284, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @xlgmac_set_all_multicast_mode.__UNIQUE_ID_ddebug353, !46, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/ethernet/synopsys/dwc-xlgmac-hw.c", i32 94, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @xlgmac_set_mac_reg.__UNIQUE_ID_ddebug351, !50, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{i64 6318423}
!64 = !{i64 2157205903}
!65 = !{i64 2157208137}
!66 = !{i64 6318005}
!67 = !{i64 2157209108}
!68 = !{i64 2157210580}
!69 = !{i64 2157216466}
!70 = !{i64 2156992787}
!71 = !{i64 2156994987}
!72 = !{i64 2156995790}
!73 = !{i64 2156997981}
!74 = !{i64 2157000397}
!75 = !{i64 2157002590}
!76 = !{i64 2157005006}
!77 = !{i64 2157007199}
!78 = !{i64 2156910204}
!79 = !{i64 2156912396}
!80 = !{i64 2156919609}
!81 = !{i64 2156921812}
!82 = !{i64 2156922615}
!83 = !{i64 2156924784}
!84 = !{i64 2156925587}
!85 = !{i64 2156927756}
!86 = !{i64 2156928478}
!87 = !{i64 2156930598}
!88 = !{i64 2157078401}
!89 = !{i64 2157080516}
!90 = !{i64 2157081440}
!91 = !{i64 2157081726}
!92 = !{i64 2157097647}
!93 = !{i64 2156934519}
!94 = !{i64 2156936645}
!95 = !{i64 2156937581}
!96 = !{i64 2156939826}
!97 = !{i64 2156940797}
!98 = !{i64 2156943034}
!99 = !{i64 2156943781}
!100 = !{i64 2156945907}
!101 = !{i64 2156989721}
!102 = !{i64 2156991959}
!103 = !{i64 2156986512}
!104 = !{i64 2156988750}
!105 = !{i64 2156983303}
!106 = !{i64 2156985541}
!107 = !{i64 2156931534}
!108 = !{i64 2156933772}
!109 = !{i64 2156970614}
!110 = !{i64 2156972870}
!111 = !{i64 2156974414}
!112 = !{i64 2156976667}
!113 = !{i64 2156978211}
!114 = !{i64 2156982332}
!115 = !{i64 2156913342}
!116 = !{i64 2156915576}
!117 = !{i64 2156916547}
!118 = !{i64 2156918781}
!119 = !{i64 2157100379}
!120 = !{i64 2157100732}
!121 = !{i64 2157101312}
!122 = !{i64 2156671466}
!123 = !{i64 2156671908}
!124 = !{i64 2156739448}
!125 = !{i64 2156745334}
!126 = !{i64 2156746051}
!127 = !{i64 2156748170}
!128 = !{i64 2156909411}
!129 = !{i64 2156906584}
!130 = !{i64 2157124106}
!131 = !{i64 2157125433}
!132 = !{i64 2157127555}
!133 = !{i64 2157119552}
!134 = !{i64 2157120879}
!135 = !{i64 2157123001}
!136 = !{i64 2157115002}
!137 = !{i64 2157116329}
!138 = !{i64 2157118447}
!139 = !{i64 2157110448}
!140 = !{i64 2157111775}
!141 = !{i64 2157113897}
!142 = !{i64 2156671039}
!143 = !{i64 2156668212}
!144 = !{i64 2156749013}
!145 = !{i64 2156753018}
!146 = !{i64 2156693387}
!147 = !{i64 2156694099}
!148 = !{i64 2156701878}
!149 = !{i64 2156704708}
!150 = !{i64 2156687727}
!151 = !{i64 2156690557}
!152 = !{i64 2157055235}
!153 = !{i64 2157059234}
!154 = !{i64 2157103644}
!155 = !{i64 2157104359}
!156 = !{i64 2157106495}
!157 = !{i64 2157107207}
!158 = !{i64 2157109343}
!159 = !{i64 2157217178}
!160 = !{i64 2157219293}
!161 = !{i64 2157220395}
!162 = !{i64 2156756574}
!163 = !{i64 2156758740}
!164 = !{i64 2156759686}
!165 = !{i64 2156761931}
!166 = !{i64 2156762678}
!167 = !{i64 2156764793}
!168 = !{i64 2156754613}
!169 = !{i64 2156765505}
!170 = !{i64 2156767620}
!171 = !{i64 2156768556}
!172 = !{i64 2156770790}
!173 = !{i64 2156771618}
!174 = !{i64 2156773784}
!175 = !{i64 2156778056}
!176 = !{i64 2156780222}
!177 = !{i64 2156780654}
!178 = !{i64 2156781366}
!179 = !{i64 2156789133}
!180 = !{i64 2156789845}
!181 = !{i64 2156797612}
!182 = !{i64 2156775156}
!183 = !{i64 2156798029}
!184 = !{i64 2156798807}
!185 = !{i64 2156800973}
!186 = !{i64 2148448250, i64 2148448255, i64 2148448268, i64 2148448312, i64 2148448346, i64 2148448367}
!187 = !{i64 2156865903}
!188 = !{i64 2156868428}
!189 = !{i64 2157129190}
!190 = !{i64 2157169482}
!191 = !{i64 2157186799}
!192 = !{i64 2157187614}
!193 = !{i64 2157204945}
!194 = !{i64 2156717033}
!195 = !{i64 2156720952}
!196 = !{i64 2156723071}
!197 = !{i64 2156738711}
!198 = !{i64 2156668924}
!199 = !{i64 2156666097}
!200 = !{i64 2156873093}
!201 = !{i64 2156873534}
!202 = !{i64 2156874319}
!203 = !{i64 2156875032}
!204 = !{i64 2156878258}
!205 = !{i64 2156880383}
!206 = !{i64 2156880824}
!207 = !{i64 2156881609}
!208 = !{i64 2156882322}
!209 = !{i64 2156883217}
!210 = !{i64 2156801322}
!211 = !{i64 2156801848}
!212 = !{i64 2156894720}
!213 = !{i64 2156896954}
!214 = !{i64 2156899753}
!215 = !{i64 2156903758}
!216 = !{i64 2156886647}
!217 = !{i64 2156888881}
!218 = !{i64 2156891680}
!219 = !{i64 2156893785}
!220 = !{i64 2156678057}
!221 = !{i64 2156688439}
!222 = !{i64 2156691269}
!223 = !{i64 2156702590}
!224 = !{i64 2156706438}
!225 = !{i64 2156708584}
!226 = !{i64 2157003453}
!227 = !{i64 2156998844}
!228 = !{i64 2157008993}
!229 = !{i64 2157007942}
!230 = !{i64 2157008472}
!231 = !{i64 2157026746}
!232 = !{i64 2157049294}
!233 = !{i64 2157051409}
!234 = !{i64 2157052408}
!235 = !{i64 2157054523}
!236 = !{i64 2157074823}
!237 = !{i64 2157075571}
!238 = !{i64 2157077686}
!239 = !{i64 2156949396}
!240 = !{i64 2156951638}
!241 = !{i64 2156955166}
!242 = !{i64 2156957408}
!243 = !{i64 2156964898}
!244 = !{i64 2156965597}
!245 = !{i64 2156965855}
!246 = !{i64 2156966547}
!247 = !{i64 2156966812}
!248 = !{i64 2156967504}
!249 = !{i64 2156967769}
!250 = !{i64 2156709686}
!251 = !{i64 2156713629}
!252 = !{i64 2156715748}
!253 = !{i64 2156676885}
!254 = !{i64 2156677326}
!255 = !{i64 2157060381}
!256 = !{i64 2157061418}
!257 = !{i64 2157062121}
!258 = !{i64 2157069902}
!259 = !{i64 2157071004}
