; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/amd/xgbe/xgbe-dev.c_pt.bc'
source_filename = "../drivers/net/ethernet/amd/xgbe/xgbe-dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.softnet_data = type { %struct.list_head, %struct.sk_buff_head, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.sk_buff_head, %struct.anon.129, [100 x i8], i32, [124 x i8], %struct.__call_single_data, ptr, i32, i32, i32, %struct.sk_buff_head, %struct.napi_struct, [72 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.anon.129 = type { i16, i8 }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.xgbe_hw_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_ring_desc = type { i32, i32, i32, i32 }
%struct.xgbe_prv_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], i32, i32, i32, i32, [48 x i8], %struct.xgbe_hw_if, %struct.xgbe_phy_if, %struct.xgbe_desc_if, %struct.xgbe_i2c_if, i32, i32, i32, i32, ptr, %struct.work_struct, %struct.timer_list, [16 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [16 x i32], [16 x i32], [40 x i8], [256 x i32], i32, i16, [6 x i8], i64, %struct.napi_struct, %struct.xgbe_mmc_stats, %struct.xgbe_ext_stats, [128 x i32], ptr, i32, ptr, i32, %struct.spinlock, %struct.ptp_clock_info, ptr, %struct.hwtstamp_config, %struct.cyclecounter, %struct.timecounter, i32, %struct.work_struct, ptr, i64, ptr, ptr, [16 x i32], [8 x i32], [16 x i32], i32, i8, %struct.xgbe_hw_features, %struct.work_struct, %struct.work_struct, i32, i32, i32, i32, i32, i32, ptr, %struct.xgbe_phy, i32, i32, %struct.completion, i32, [48 x i8], ptr, i32, %struct.work_struct, i32, i32, %struct.mutex, i32, i32, i32, i32, %struct.work_struct, i32, i32, i32, i32, i32, i32, %struct.xgbe_i2c, %struct.mutex, %struct.completion, [48 x i8], i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, %struct.tasklet_struct, ptr, i32, i32, i32, i32, i32, i8, i8 }
%struct.xgbe_phy_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.xgbe_phy_impl_if }
%struct.xgbe_phy_impl_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_desc_if = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.xgbe_i2c_if = type { ptr, ptr, ptr, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xgbe_mmc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgbe_ext_stats = type { i64, i64, i64, [16 x i64], [16 x i64], [16 x i64], [16 x i64], i64, i64, i64, i64 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.xgbe_version_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ieee_pfc = type { i8, i8, i8, i16, [8 x i64], [8 x i64] }
%struct.ieee_ets = type { i8, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8], [8 x i8] }

@xgbe_set_promiscuous_mode.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"amd_xgbe\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xgbe_set_promiscuous_mode\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/net/ethernet/amd/xgbe/xgbe-dev.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s promiscuous mode\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"entering\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"leaving\00", [24 x i8] zeroinitializer }, align 32
@xgbe_set_all_multicast_mode.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xgbe_set_all_multicast_mode\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s allmulti mode\0A\00", [46 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@xgbe_set_mac_reg.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 -8, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgbe_set_mac_reg\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"adding mac address %pM at %#x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mdio read operation timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mdio write operation timed out\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"timed out waiting for Tx DMA channel %u to stop\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"timed out waiting for Tx queue %u to empty\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"timed out waiting for Rx queue %u to empty\0A\00", [52 x i8] zeroinitializer }, align 32
@xgbe_dev_xmit.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgbe_dev_xmit\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TSO context descriptor, mss=%u\0A\00", [32 x i8] zeroinitializer }, align 32
@xgbe_dev_xmit.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 1, i8 -74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"VLAN context descriptor, ctag=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@softnet_data = external dso_local global %struct.softnet_data, section ".data..percpu..shared_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@xgbe_dev_read.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 -8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgbe_dev_read\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"err=%u, etlt=%#x\0A\00", [46 x i8] zeroinitializer }, align 32
@xgbe_dev_read.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 1, i8 -5, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vlan-ctag=%#06x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error flushing TX queues\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"error configuring RSS, RSS disabled\0A\00", [59 x i8] zeroinitializer }, align 32
@xgbe_config_queue_mapping.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 2, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xgbe_config_queue_mapping\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TXq%u mapped to TC%u\0A\00", [42 x i8] zeroinitializer }, align 32
@xgbe_config_queue_mapping.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 2, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@xgbe_config_queue_mapping.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 2, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PRIO%u mapped to RXq%u\0A\00", [40 x i8] zeroinitializer }, align 32
@xgbe_config_queue_mapping.__UNIQUE_ID_ddebug384 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 2, i8 -106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%d Tx hardware queues, %d byte fifo per queue\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%u Rx hardware queues\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RxQ%u, %u byte fifo queue\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%u Rx hardware queues, %u byte fifo per queue\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RXq%u cannot set needed fifo size\0A\00", [61 x i8] zeroinitializer }, align 32
@xgbe_enable_tx_flow_control.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 -112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xgbe_enable_tx_flow_control\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"flow control %s for RXq%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"timed out updating timestamp addend register\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timed out initializing timestamp\0A\00", [62 x i8] zeroinitializer }, align 32
@xgbe_config_tc.__UNIQUE_ID_ddebug385 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 2, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xgbe_config_tc\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TC%u using TXq%u-%u\0A\00", [43 x i8] zeroinitializer }, align 32
@xgbe_config_dcb_tc.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.41, i8 2, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgbe_config_dcb_tc\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TC%u PRIO mask=%#x\0A\00", [44 x i8] zeroinitializer }, align 32
@xgbe_config_dcb_tc.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.42, i8 2, i8 -80, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"TC%u using SP\0A\00", [17 x i8] zeroinitializer }, align 32
@xgbe_config_dcb_tc.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.43, i8 2, i8 -77, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"TC%u using DWRR (weight %u)\0A\00", [35 x i8] zeroinitializer }, align 32
@xgbe_enable_vxlan.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_enable_vxlan\00", [46 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VXLAN acceleration enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@xgbe_disable_vxlan.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgbe_disable_vxlan\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"VXLAN acceleration disabled\0A\00", [35 x i8] zeroinitializer }, align 32
@xgbe_set_vxlan_id.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgbe_set_vxlan_id\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"VXLAN tunnel id set to %hx\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1000, i64 2500, i64 10000]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 15]
@__sancov_gen_cov_switch_values.52 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.53 = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 1000, i64 2500, i64 10000]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 6]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 943, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 966, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 992, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1341, i32 29 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1318, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3278, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3235, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3349, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1731, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1751, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2019, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2030, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 3476, i32 29 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 459, i32 7 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2616, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2642, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2552, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2586, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2589, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2593, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2519, i32 9 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 576, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1537, i32 7 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 1555, i32 29 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2697, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2741, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2754, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 2763, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 507, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 524, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.203 = private constant [44 x i8] c"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.203, i32 488, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @xgbe_init_function_ptrs_dev(ptr noundef writeonly %hw_if) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hw_if to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @xgbe_tx_complete, ptr %hw_if, align 4
  %set_mac_address = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 1
  %1 = ptrtoint ptr %set_mac_address to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @xgbe_set_mac_address, ptr %set_mac_address, align 4
  %config_rx_mode = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 2
  %2 = ptrtoint ptr %config_rx_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @xgbe_config_rx_mode, ptr %config_rx_mode, align 4
  %enable_rx_csum = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 3
  %3 = ptrtoint ptr %enable_rx_csum to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @xgbe_enable_rx_csum, ptr %enable_rx_csum, align 4
  %disable_rx_csum = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 4
  %4 = ptrtoint ptr %disable_rx_csum to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @xgbe_disable_rx_csum, ptr %disable_rx_csum, align 4
  %enable_rx_vlan_stripping = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 5
  %5 = ptrtoint ptr %enable_rx_vlan_stripping to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @xgbe_enable_rx_vlan_stripping, ptr %enable_rx_vlan_stripping, align 4
  %disable_rx_vlan_stripping = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 6
  %6 = ptrtoint ptr %disable_rx_vlan_stripping to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @xgbe_disable_rx_vlan_stripping, ptr %disable_rx_vlan_stripping, align 4
  %enable_rx_vlan_filtering = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 7
  %7 = ptrtoint ptr %enable_rx_vlan_filtering to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @xgbe_enable_rx_vlan_filtering, ptr %enable_rx_vlan_filtering, align 4
  %disable_rx_vlan_filtering = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 8
  %8 = ptrtoint ptr %disable_rx_vlan_filtering to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @xgbe_disable_rx_vlan_filtering, ptr %disable_rx_vlan_filtering, align 4
  %update_vlan_hash_table = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 9
  %9 = ptrtoint ptr %update_vlan_hash_table to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @xgbe_update_vlan_hash_table, ptr %update_vlan_hash_table, align 4
  %read_mmd_regs = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 10
  %10 = ptrtoint ptr %read_mmd_regs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @xgbe_read_mmd_regs, ptr %read_mmd_regs, align 4
  %write_mmd_regs = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 11
  %11 = ptrtoint ptr %write_mmd_regs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @xgbe_write_mmd_regs, ptr %write_mmd_regs, align 4
  %set_speed = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 12
  %12 = ptrtoint ptr %set_speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @xgbe_set_speed, ptr %set_speed, align 4
  %set_ext_mii_mode = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 13
  %13 = ptrtoint ptr %set_ext_mii_mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @xgbe_set_ext_mii_mode, ptr %set_ext_mii_mode, align 4
  %read_ext_mii_regs = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 14
  %14 = ptrtoint ptr %read_ext_mii_regs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @xgbe_read_ext_mii_regs, ptr %read_ext_mii_regs, align 4
  %write_ext_mii_regs = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 15
  %15 = ptrtoint ptr %write_ext_mii_regs to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @xgbe_write_ext_mii_regs, ptr %write_ext_mii_regs, align 4
  %set_gpio = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 16
  %16 = ptrtoint ptr %set_gpio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @xgbe_set_gpio, ptr %set_gpio, align 4
  %clr_gpio = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 17
  %17 = ptrtoint ptr %clr_gpio to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @xgbe_clr_gpio, ptr %clr_gpio, align 4
  %enable_tx = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 18
  %18 = ptrtoint ptr %enable_tx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @xgbe_enable_tx, ptr %enable_tx, align 4
  %disable_tx = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 19
  %19 = ptrtoint ptr %disable_tx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @xgbe_disable_tx, ptr %disable_tx, align 4
  %enable_rx = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 20
  %20 = ptrtoint ptr %enable_rx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @xgbe_enable_rx, ptr %enable_rx, align 4
  %disable_rx = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 21
  %21 = ptrtoint ptr %disable_rx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @xgbe_disable_rx, ptr %disable_rx, align 4
  %powerup_tx = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 22
  %22 = ptrtoint ptr %powerup_tx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @xgbe_powerup_tx, ptr %powerup_tx, align 4
  %powerdown_tx = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 23
  %23 = ptrtoint ptr %powerdown_tx to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @xgbe_powerdown_tx, ptr %powerdown_tx, align 4
  %powerup_rx = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 24
  %24 = ptrtoint ptr %powerup_rx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @xgbe_powerup_rx, ptr %powerup_rx, align 4
  %powerdown_rx = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 25
  %25 = ptrtoint ptr %powerdown_rx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @xgbe_powerdown_rx, ptr %powerdown_rx, align 4
  %dev_xmit = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 30
  %26 = ptrtoint ptr %dev_xmit to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xgbe_dev_xmit, ptr %dev_xmit, align 4
  %dev_read = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 31
  %27 = ptrtoint ptr %dev_read to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @xgbe_dev_read, ptr %dev_read, align 4
  %enable_int = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 28
  %28 = ptrtoint ptr %enable_int to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @xgbe_enable_int, ptr %enable_int, align 4
  %disable_int = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 29
  %29 = ptrtoint ptr %disable_int to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @xgbe_disable_int, ptr %disable_int, align 4
  %init = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 26
  %30 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @xgbe_init, ptr %init, align 4
  %exit = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 27
  %31 = ptrtoint ptr %exit to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @xgbe_exit, ptr %exit, align 4
  %tx_desc_init = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 32
  %32 = ptrtoint ptr %tx_desc_init to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @xgbe_tx_desc_init, ptr %tx_desc_init, align 4
  %rx_desc_init = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 33
  %33 = ptrtoint ptr %rx_desc_init to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @xgbe_rx_desc_init, ptr %rx_desc_init, align 4
  %tx_desc_reset = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 34
  %34 = ptrtoint ptr %tx_desc_reset to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @xgbe_tx_desc_reset, ptr %tx_desc_reset, align 4
  %rx_desc_reset = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 35
  %35 = ptrtoint ptr %rx_desc_reset to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @xgbe_rx_desc_reset, ptr %rx_desc_reset, align 4
  %is_last_desc = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 36
  %36 = ptrtoint ptr %is_last_desc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @xgbe_is_last_desc, ptr %is_last_desc, align 4
  %is_context_desc = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 37
  %37 = ptrtoint ptr %is_context_desc to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @xgbe_is_context_desc, ptr %is_context_desc, align 4
  %tx_start_xmit = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 38
  %38 = ptrtoint ptr %tx_start_xmit to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xgbe_tx_start_xmit, ptr %tx_start_xmit, align 4
  %config_tx_flow_control = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 39
  %39 = ptrtoint ptr %config_tx_flow_control to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @xgbe_config_tx_flow_control, ptr %config_tx_flow_control, align 4
  %config_rx_flow_control = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 40
  %40 = ptrtoint ptr %config_rx_flow_control to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @xgbe_config_rx_flow_control, ptr %config_rx_flow_control, align 4
  %config_rx_coalesce = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 41
  %41 = ptrtoint ptr %config_rx_coalesce to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @xgbe_config_rx_coalesce, ptr %config_rx_coalesce, align 4
  %config_tx_coalesce = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 42
  %42 = ptrtoint ptr %config_tx_coalesce to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @xgbe_config_tx_coalesce, ptr %config_tx_coalesce, align 4
  %usec_to_riwt = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 43
  %43 = ptrtoint ptr %usec_to_riwt to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @xgbe_usec_to_riwt, ptr %usec_to_riwt, align 4
  %riwt_to_usec = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 44
  %44 = ptrtoint ptr %riwt_to_usec to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @xgbe_riwt_to_usec, ptr %riwt_to_usec, align 4
  %config_rx_threshold = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 45
  %45 = ptrtoint ptr %config_rx_threshold to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @xgbe_config_rx_threshold, ptr %config_rx_threshold, align 4
  %config_tx_threshold = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 46
  %46 = ptrtoint ptr %config_tx_threshold to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @xgbe_config_tx_threshold, ptr %config_tx_threshold, align 4
  %config_rsf_mode = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 47
  %47 = ptrtoint ptr %config_rsf_mode to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @xgbe_config_rsf_mode, ptr %config_rsf_mode, align 4
  %config_tsf_mode = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 48
  %48 = ptrtoint ptr %config_tsf_mode to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @xgbe_config_tsf_mode, ptr %config_tsf_mode, align 4
  %config_osp_mode = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 49
  %49 = ptrtoint ptr %config_osp_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @xgbe_config_osp_mode, ptr %config_osp_mode, align 4
  %tx_mmc_int = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 51
  %50 = ptrtoint ptr %tx_mmc_int to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @xgbe_tx_mmc_int, ptr %tx_mmc_int, align 4
  %rx_mmc_int = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 50
  %51 = ptrtoint ptr %rx_mmc_int to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @xgbe_rx_mmc_int, ptr %rx_mmc_int, align 4
  %read_mmc_stats = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 52
  %52 = ptrtoint ptr %read_mmc_stats to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @xgbe_read_mmc_stats, ptr %read_mmc_stats, align 4
  %config_tstamp = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 53
  %53 = ptrtoint ptr %config_tstamp to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @xgbe_config_tstamp, ptr %config_tstamp, align 4
  %update_tstamp_addend = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 54
  %54 = ptrtoint ptr %update_tstamp_addend to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @xgbe_update_tstamp_addend, ptr %update_tstamp_addend, align 4
  %set_tstamp_time = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 55
  %55 = ptrtoint ptr %set_tstamp_time to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @xgbe_set_tstamp_time, ptr %set_tstamp_time, align 4
  %get_tstamp_time = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 56
  %56 = ptrtoint ptr %get_tstamp_time to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @xgbe_get_tstamp_time, ptr %get_tstamp_time, align 4
  %get_tx_tstamp = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 57
  %57 = ptrtoint ptr %get_tx_tstamp to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @xgbe_get_tx_tstamp, ptr %get_tx_tstamp, align 4
  %config_tc = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 58
  %58 = ptrtoint ptr %config_tc to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @xgbe_config_tc, ptr %config_tc, align 4
  %config_dcb_tc = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 59
  %59 = ptrtoint ptr %config_dcb_tc to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @xgbe_config_dcb_tc, ptr %config_dcb_tc, align 4
  %config_dcb_pfc = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 60
  %60 = ptrtoint ptr %config_dcb_pfc to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @xgbe_config_dcb_pfc, ptr %config_dcb_pfc, align 4
  %enable_rss = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 61
  %61 = ptrtoint ptr %enable_rss to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @xgbe_enable_rss, ptr %enable_rss, align 4
  %disable_rss = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 62
  %62 = ptrtoint ptr %disable_rss to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @xgbe_disable_rss, ptr %disable_rss, align 4
  %set_rss_hash_key = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 63
  %63 = ptrtoint ptr %set_rss_hash_key to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @xgbe_set_rss_hash_key, ptr %set_rss_hash_key, align 4
  %set_rss_lookup_table = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 64
  %64 = ptrtoint ptr %set_rss_lookup_table to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @xgbe_set_rss_lookup_table, ptr %set_rss_lookup_table, align 4
  %disable_ecc_ded = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 65
  %65 = ptrtoint ptr %disable_ecc_ded to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @xgbe_disable_ecc_ded, ptr %disable_ecc_ded, align 4
  %disable_ecc_sec = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 66
  %66 = ptrtoint ptr %disable_ecc_sec to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @xgbe_disable_ecc_sec, ptr %disable_ecc_sec, align 4
  %enable_vxlan = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 67
  %67 = ptrtoint ptr %enable_vxlan to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @xgbe_enable_vxlan, ptr %enable_vxlan, align 4
  %disable_vxlan = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 68
  %68 = ptrtoint ptr %disable_vxlan to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @xgbe_disable_vxlan, ptr %disable_vxlan, align 4
  %set_vxlan_id = getelementptr inbounds %struct.xgbe_hw_if, ptr %hw_if, i32 0, i32 69
  %69 = ptrtoint ptr %set_vxlan_id to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @xgbe_set_vxlan_id, ptr %set_vxlan_id, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_tx_complete(ptr nocapture noundef readonly %rdesc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc3 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %rdesc, i32 0, i32 3
  %0 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc3, align 4
  %2 = lshr i32 %1, 7
  %.lobit = and i32 %2, 1
  %3 = xor i32 %.lobit, 1
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_mac_address(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %addr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %12 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #11, !srcloc !114
  %15 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr20 = getelementptr i8, ptr %16, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or18) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %17) #11, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_rx_mode(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  %hash_table.i.i = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
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
  tail call fastcc void @xgbe_set_promiscuous_mode(ptr noundef %pdata, i32 noundef %and.lobit)
  %4 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  %xgmac_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %5 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp ne i32 %8, 0
  %cmp.i = xor i1 %tobool.not.i, %9
  br i1 %cmp.i, label %entry.xgbe_set_all_multicast_mode.exit_crit_edge, label %do.body.i

entry.xgbe_set_all_multicast_mode.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_set_all_multicast_mode.exit

do.body.i:                                        ; preds = %entry
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %10 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable.i, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body16.i_crit_edge, label %do.body4.i

do.body.i.do.body16.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_set_all_multicast_mode.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_rx_mode, %if.then9.i)) #11
          to label %do.body16.i [label %if.then9.i], !srcloc !117

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 8
  %cond11.i = select i1 %tobool.not.i, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_set_all_multicast_mode.__UNIQUE_ID_ddebug362, ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond11.i) #11
  br label %do.body16.i

do.body16.i:                                      ; preds = %if.then9.i, %do.body4.i, %do.body.i.do.body16.i_crit_edge
  %14 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %15, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %17 = and i32 %16, -268435457
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  %19 = lshr exact i32 %4, 5
  %or.i = or i32 %18, %19
  %20 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %22) #11, !srcloc !114
  br label %xgbe_set_all_multicast_mode.exit

xgbe_set_all_multicast_mode.exit:                 ; preds = %do.body16.i, %entry.xgbe_set_all_multicast_mode.exit_crit_edge
  %hash_table_size.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 26
  %23 = ptrtoint ptr %hash_table_size.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hash_table_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i12 = icmp eq i32 %24, 0
  br i1 %tobool.not.i12, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %xgbe_set_all_multicast_mode.exit
  %25 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdata, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %hash_table.i.i) #11
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
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i.i

cond.end.i.i.for.end.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond102.preheader.i.i

for.cond102.preheader.i.i:                        ; preds = %cond.end87.i.i.for.cond102.preheader.i.i_crit_edge, %for.end.i.i.for.cond102.preheader.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp103175.not.i.i = icmp ult i32 %24, 32
  br i1 %cmp103175.not.i.i, label %for.cond102.preheader.i.i.xgbe_set_mac_hash_table.exit.i_crit_edge, label %for.body104.lr.ph.i.i

for.cond102.preheader.i.i.xgbe_set_mac_hash_table.exit.i_crit_edge: ; preds = %for.cond102.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_set_mac_hash_table.exit.i

for.body104.lr.ph.i.i:                            ; preds = %for.cond102.preheader.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div153.i.i, i32 1) #11
  br label %for.body104.i.i

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
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end87.i.i

cond.end87.i.i.for.cond102.preheader.i.i_crit_edge: ; preds = %cond.end87.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond102.preheader.i.i

for.body104.i.i:                                  ; preds = %for.body104.i.i.for.body104.i.i_crit_edge, %for.body104.lr.ph.i.i
  %hash_reg.0177.i.i = phi i32 [ 16, %for.body104.lr.ph.i.i ], [ %add.i.i, %for.body104.i.i.for.body104.i.i_crit_edge ]
  %i.0176.i.i = phi i32 [ 0, %for.body104.lr.ph.i.i ], [ %inc.i.i, %for.body104.i.i.for.body104.i.i_crit_edge ]
  %arrayidx105.i.i = getelementptr [8 x i32], ptr %hash_table.i.i, i32 0, i32 %i.0176.i.i
  %62 = ptrtoint ptr %arrayidx105.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx105.i.i, align 4
  %64 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr106.i.i = getelementptr i8, ptr %65, i32 %hash_reg.0177.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %66 = tail call i32 @llvm.bswap.i32(i32 %63) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106.i.i, i32 %66) #11, !srcloc !114
  %add.i.i = add nuw nsw i32 %hash_reg.0177.i.i, 4
  %inc.i.i = add nuw nsw i32 %i.0176.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body104.i.i.xgbe_set_mac_hash_table.exit.i_crit_edge, label %for.body104.i.i.for.body104.i.i_crit_edge

for.body104.i.i.for.body104.i.i_crit_edge:        ; preds = %for.body104.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body104.i.i

for.body104.i.i.xgbe_set_mac_hash_table.exit.i_crit_edge: ; preds = %for.body104.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_set_mac_hash_table.exit.i

xgbe_set_mac_hash_table.exit.i:                   ; preds = %for.body104.i.i.xgbe_set_mac_hash_table.exit.i_crit_edge, %for.cond102.preheader.i.i.xgbe_set_mac_hash_table.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %hash_table.i.i) #11
  br label %xgbe_add_mac_addresses.exit

if.else.i:                                        ; preds = %xgbe_set_all_multicast_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @xgbe_set_mac_addn_addrs(ptr noundef %pdata) #11
  br label %xgbe_add_mac_addresses.exit

xgbe_add_mac_addresses.exit:                      ; preds = %if.else.i, %xgbe_set_mac_hash_table.exit.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_enable_rx_csum(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = or i32 %2, 131072
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #11, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_disable_rx_csum(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = and i32 %2, -131073
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #11, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_enable_rx_vlan_stripping(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = or i32 %2, 1
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #11, !srcloc !114
  %6 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = or i32 %8, 4096
  %10 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %9) #11, !srcloc !114
  %12 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %15 = and i32 %14, -2049
  %16 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr31 = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %15) #11, !srcloc !114
  %18 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %21 = and i32 %20, -1025
  %22 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr45 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %21) #11, !srcloc !114
  %24 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr51 = getelementptr i8, ptr %25, i32 80
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %27 = or i32 %26, 24576
  %28 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr59 = getelementptr i8, ptr %29, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %27) #11, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_disable_rx_vlan_stripping(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = and i32 %2, -24577
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #11, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_enable_rx_vlan_filtering(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = or i32 %2, 256
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #11, !srcloc !114
  %6 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = or i32 %8, 2
  %10 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %9) #11, !srcloc !114
  %12 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 80
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %15 = and i32 %14, -513
  %16 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr31 = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %15) #11, !srcloc !114
  %18 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 80
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %21 = or i32 %20, 256
  %22 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr45 = getelementptr i8, ptr %23, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %21) #11, !srcloc !114
  %24 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr51 = getelementptr i8, ptr %25, i32 80
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %27 = and i32 %26, 65535
  %28 = or i32 %27, 16777216
  %29 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr59 = getelementptr i8, ptr %30, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %28) #11, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_disable_rx_vlan_filtering(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = and i32 %2, -257
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #11, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_update_vlan_hash_table(ptr noundef %pdata) #2 align 64 {
entry:
  %vid_le.addr.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %active_vlans = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 108
  %call = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef 0) #11
  %conv167 = and i32 %call, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %conv167)
  %cmp68 = icmp ult i32 %conv167, 4096
  br i1 %cmp68, label %entry.for.body_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %xgbe_vid_crc32_le.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %conv171 = phi i32 [ %conv1, %xgbe_vid_crc32_le.exit.for.body_crit_edge ], [ %conv167, %entry.for.body_crit_edge ]
  %vid.0.in70 = phi i32 [ %call33, %xgbe_vid_crc32_le.exit.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %vlan_hash_table.069 = phi i32 [ %or28, %xgbe_vid_crc32_le.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %vid.0 = trunc i32 %vid.0.in70 to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %vid.0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vid_le.addr.i)
  %1 = ptrtoint ptr %vid_le.addr.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %vid_le.addr.i, align 2
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body
  %i.019.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %data_byte.018.i = phi i8 [ 0, %for.body ], [ %5, %if.end.i.for.body.i_crit_edge ]
  %crc.017.i = phi i32 [ -1, %for.body ], [ %spec.select.i, %if.end.i.for.body.i_crit_edge ]
  %2 = and i32 %i.019.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.i = icmp eq i32 %2, 0
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %div16.i = lshr i32 %i.019.i, 3
  %arrayidx.i = getelementptr i8, ptr %vid_le.addr.i, i32 %div16.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %data_byte.1.i = phi i8 [ %4, %if.then.i ], [ %data_byte.018.i, %for.body.i.if.end.i_crit_edge ]
  %conv.i = zext i8 %data_byte.1.i to i32
  %xor.i = xor i32 %crc.017.i, %conv.i
  %and2.i = and i32 %xor.i, 1
  %shr.i = lshr i32 %crc.017.i, 1
  %5 = lshr i8 %data_byte.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i = icmp eq i32 %and2.i, 0
  %xor7.i = xor i32 %shr.i, -306674912
  %spec.select.i = select i1 %tobool.not.i, i32 %shr.i, i32 %xor7.i
  %inc.i = add nuw nsw i32 %i.019.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %xgbe_vid_crc32_le.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xgbe_vid_crc32_le.exit:                           ; preds = %if.end.i
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
  %or28 = or i32 %shl26, %vlan_hash_table.069
  %add = add nuw nsw i32 %conv171, 1
  %call33 = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef %add) #11
  %conv1 = and i32 %call33, 65535
  %cmp = icmp ult i32 %conv1, 4096
  br i1 %cmp, label %xgbe_vid_crc32_le.exit.for.body_crit_edge, label %do.body.loopexit

xgbe_vid_crc32_le.exit.for.body_crit_edge:        ; preds = %xgbe_vid_crc32_le.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body.loopexit:                                 ; preds = %xgbe_vid_crc32_le.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = and i32 %or28, 65535
  br label %do.body

do.body:                                          ; preds = %do.body.loopexit, %entry.do.body_crit_edge
  %vlan_hash_table.0.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ %phi.bo, %do.body.loopexit ]
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %10 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 88
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %13 = and i32 %12, 65535
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %or41 = or i32 %14, %vlan_hash_table.0.lcssa
  %15 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr43 = getelementptr i8, ptr %16, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or41) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %17) #11, !srcloc !114
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_read_mmd_regs(ptr noundef %pdata, i32 noundef %prtad, i32 noundef %mmd_reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdata = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %0 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdata, align 4
  %xpcs_access = getelementptr inbounds %struct.xgbe_version_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xpcs_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xpcs_access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond = icmp eq i32 %3, 0
  %and.i = and i32 %mmd_reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i = and i32 %mmd_reg, -1073741825
  br label %xgbe_read_mmd_regs_v1.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %mdio_mmd.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 141
  %4 = ptrtoint ptr %mdio_mmd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio_mmd.i, align 4
  %shl.i = shl i32 %5, 16
  %and2.i = and i32 %mmd_reg, 65535
  %or.i = or i32 %shl.i, %and2.i
  br label %xgbe_read_mmd_regs_v1.exit

xgbe_read_mmd_regs_v1.exit:                       ; preds = %if.else.i, %if.then.i
  %mmd_address.0.i = phi i32 [ %and1.i, %if.then.i ], [ %or.i, %if.else.i ]
  %xpcs_lock.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 22
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xpcs_lock.i) #11
  %xpcs_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 10
  %6 = ptrtoint ptr %xpcs_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xpcs_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 1020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %mmd_address.0.i) #11
  %9 = shl i32 %8, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #11, !srcloc !114
  %10 = ptrtoint ptr %xpcs_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xpcs_regs.i, align 8
  %and8.i = shl i32 %mmd_address.0.i, 2
  %shl9.i = and i32 %and8.i, 1020
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %shl9.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #11, !srcloc !115
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xpcs_lock.i, i32 noundef %call4.i) #11
  br label %return

sw.default:                                       ; preds = %entry
  br i1 %tobool.not.i, label %if.else.i15, label %if.then.i10

if.then.i10:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i9 = and i32 %mmd_reg, -1073741825
  br label %xgbe_read_mmd_regs_v2.exit

if.else.i15:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %mdio_mmd.i11 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 141
  %14 = ptrtoint ptr %mdio_mmd.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mdio_mmd.i11, align 4
  %shl.i12 = shl i32 %15, 16
  %and2.i13 = and i32 %mmd_reg, 65535
  %or.i14 = or i32 %shl.i12, %and2.i13
  br label %xgbe_read_mmd_regs_v2.exit

xgbe_read_mmd_regs_v2.exit:                       ; preds = %if.else.i15, %if.then.i10
  %mmd_address.0.i16 = phi i32 [ %and1.i9, %if.then.i10 ], [ %or.i14, %if.else.i15 ]
  %shl3.i = shl i32 %mmd_address.0.i16, 1
  %xpcs_window_mask.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 27
  %16 = ptrtoint ptr %xpcs_window_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xpcs_window_mask.i, align 4
  %neg.i = xor i32 %17, -1
  %and4.i = and i32 %shl3.i, %neg.i
  %xpcs_window.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 25
  %18 = ptrtoint ptr %xpcs_window.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xpcs_window.i, align 4
  %and6.i = and i32 %shl3.i, %17
  %add.i = add i32 %19, %and6.i
  %xpcs_lock.i17 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 22
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xpcs_lock.i17) #11
  %xpcs_regs.i18 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 10
  %20 = ptrtoint ptr %xpcs_regs.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xpcs_regs.i18, align 8
  %xpcs_window_sel_reg.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 24
  %22 = ptrtoint ptr %xpcs_window_sel_reg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %xpcs_window_sel_reg.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %24) #11, !srcloc !114
  %25 = ptrtoint ptr %xpcs_regs.i18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xpcs_regs.i18, align 8
  %add.ptr12.i = getelementptr i8, ptr %26, i32 %add.i
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12.i) #11, !srcloc !118
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !119
  %conv14.i = zext i16 %28 to i32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xpcs_lock.i17, i32 noundef %call8.i) #11
  br label %return

return:                                           ; preds = %xgbe_read_mmd_regs_v2.exit, %xgbe_read_mmd_regs_v1.exit
  %retval.0 = phi i32 [ %13, %xgbe_read_mmd_regs_v1.exit ], [ %conv14.i, %xgbe_read_mmd_regs_v2.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_write_mmd_regs(ptr noundef %pdata, i32 noundef %prtad, i32 noundef %mmd_reg, i32 noundef %mmd_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdata = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %0 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdata, align 4
  %xpcs_access = getelementptr inbounds %struct.xgbe_version_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %xpcs_access to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xpcs_access, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cond = icmp eq i32 %3, 0
  %and.i = and i32 %mmd_reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i = and i32 %mmd_reg, -1073741825
  br label %xgbe_write_mmd_regs_v1.exit

if.else.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %mdio_mmd.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 141
  %4 = ptrtoint ptr %mdio_mmd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mdio_mmd.i, align 4
  %shl.i = shl i32 %5, 16
  %and2.i = and i32 %mmd_reg, 65535
  %or.i = or i32 %shl.i, %and2.i
  br label %xgbe_write_mmd_regs_v1.exit

xgbe_write_mmd_regs_v1.exit:                      ; preds = %if.else.i, %if.then.i
  %mmd_address.0.i = phi i32 [ %and1.i, %if.then.i ], [ %or.i, %if.else.i ]
  %xpcs_lock.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 22
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xpcs_lock.i) #11
  %xpcs_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 10
  %6 = ptrtoint ptr %xpcs_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xpcs_regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %7, i32 1020
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %mmd_address.0.i) #11
  %9 = shl i32 %8, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #11, !srcloc !114
  %10 = ptrtoint ptr %xpcs_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xpcs_regs.i, align 8
  %and8.i = shl i32 %mmd_address.0.i, 2
  %shl9.i = and i32 %and8.i, 1020
  %add.ptr10.i = getelementptr i8, ptr %11, i32 %shl9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %mmd_data) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 %12) #11, !srcloc !114
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xpcs_lock.i, i32 noundef %call4.i) #11
  br label %return

sw.default:                                       ; preds = %entry
  br i1 %tobool.not.i, label %if.else.i15, label %if.then.i10

if.then.i10:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %and1.i9 = and i32 %mmd_reg, -1073741825
  br label %xgbe_write_mmd_regs_v2.exit

if.else.i15:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %mdio_mmd.i11 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 141
  %13 = ptrtoint ptr %mdio_mmd.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mdio_mmd.i11, align 4
  %shl.i12 = shl i32 %14, 16
  %and2.i13 = and i32 %mmd_reg, 65535
  %or.i14 = or i32 %shl.i12, %and2.i13
  br label %xgbe_write_mmd_regs_v2.exit

xgbe_write_mmd_regs_v2.exit:                      ; preds = %if.else.i15, %if.then.i10
  %mmd_address.0.i16 = phi i32 [ %and1.i9, %if.then.i10 ], [ %or.i14, %if.else.i15 ]
  %shl3.i = shl i32 %mmd_address.0.i16, 1
  %xpcs_window_mask.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 27
  %15 = ptrtoint ptr %xpcs_window_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xpcs_window_mask.i, align 4
  %neg.i = xor i32 %16, -1
  %and4.i = and i32 %shl3.i, %neg.i
  %xpcs_window.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 25
  %17 = ptrtoint ptr %xpcs_window.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xpcs_window.i, align 4
  %and6.i = and i32 %shl3.i, %16
  %add.i = add i32 %18, %and6.i
  %xpcs_lock.i17 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 22
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %xpcs_lock.i17) #11
  %xpcs_regs.i18 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 10
  %19 = ptrtoint ptr %xpcs_regs.i18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xpcs_regs.i18, align 8
  %xpcs_window_sel_reg.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 24
  %21 = ptrtoint ptr %xpcs_window_sel_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %xpcs_window_sel_reg.i, align 8
  %add.ptr.i19 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %23) #11, !srcloc !114
  %conv11.i = trunc i32 %mmd_data to i16
  %24 = ptrtoint ptr %xpcs_regs.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xpcs_regs.i18, align 8
  %add.ptr13.i = getelementptr i8, ptr %25, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !120
  tail call void @arm_heavy_mb() #11
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv11.i) #11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr13.i, i16 %26) #11, !srcloc !121
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %xpcs_lock.i17, i32 noundef %call8.i) #11
  br label %return

return:                                           ; preds = %xgbe_write_mmd_regs_v2.exit, %xgbe_write_mmd_regs_v1.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_speed(ptr nocapture noundef readonly %pdata, i32 noundef %speed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %speed to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %speed, label %entry.cleanup_crit_edge [
    i32 1000, label %entry.sw.epilog_crit_edge
    i32 2500, label %sw.bb1
    i32 10000, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %ss.0 = phi i32 [ 0, %sw.bb2 ], [ 2, %sw.bb1 ], [ 3, %entry.sw.epilog_crit_edge ]
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %1 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xgmac_regs, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %4 = lshr i32 %3, 5
  %and = and i32 %4, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %ss.0)
  %cmp.not = icmp eq i32 %and, %ss.0
  br i1 %cmp.not, label %sw.epilog.cleanup_crit_edge, label %do.body

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xgmac_regs, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %8 = and i32 %7, -97
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %shl = shl nuw nsw i32 %ss.0, 29
  %or = or i32 %9, %shl
  %10 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %12) #11, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %do.body, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_ext_mii_mode(ptr nocapture noundef readonly %pdata, i32 noundef %port, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 544
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %4 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %port)
  %cmp = icmp ugt i32 %port, 3
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl nuw nsw i32 1, %port
  %or = or i32 %3, %shl
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %entry.sw.epilog_crit_edge
  %reg_val.0 = phi i32 [ %3, %entry.sw.epilog_crit_edge ], [ %or, %if.end ]
  %5 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #11, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_read_ext_mii_regs(ptr noundef %pdata, i32 noundef %addr, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_complete = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 143
  %0 = ptrtoint ptr %mdio_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mdio_complete, align 4
  %and.i = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %1 = shl i32 %reg, 5
  %phi.bo25.i = and i32 %1, 65011712
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %phi.bo25.i
  %and2.i = and i32 %reg, 65535
  %and5.i = shl i32 %addr, 16
  %shl6.i = and i32 %and5.i, 2031616
  %or7.i = or i32 %and2.i, %shl6.i
  %or14.i = or i32 %or7.i, %cond.i
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !114
  %5 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr7 = getelementptr i8, ptr %6, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 17152) #11, !srcloc !114
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %mdio_complete, i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr11 = getelementptr i8, ptr %10, i32 516
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %12 = and i32 %11, -65536
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %13, %if.end ], [ -110, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_write_ext_mii_regs(ptr noundef %pdata, i32 noundef %addr, i32 noundef %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio_complete = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 143
  %0 = ptrtoint ptr %mdio_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mdio_complete, align 4
  %and.i = and i32 %reg, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %1 = shl i32 %reg, 5
  %phi.bo25.i = and i32 %1, 65011712
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %phi.bo25.i
  %and2.i = and i32 %reg, 65535
  %and5.i = shl i32 %addr, 16
  %shl6.i = and i32 %and5.i, 2031616
  %or7.i = or i32 %and2.i, %shl6.i
  %or14.i = or i32 %or7.i, %cond.i
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #11, !srcloc !114
  %conv = zext i16 %val to i32
  %or9 = or i32 %conv, 4259840
  %5 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr13 = getelementptr i8, ptr %6, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %or9) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %7) #11, !srcloc !114
  %call15 = tail call i32 @wait_for_completion_timeout(ptr noundef %mdio_complete, i32 noundef 100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %9, ptr noundef nonnull @.str.11) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_gpio(ptr nocapture noundef readonly %pdata, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %gpio)
  %cmp = icmp ugt i32 %gpio, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 636
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %shl = shl nuw i32 65536, %gpio
  %or = or i32 %3, %shl
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %6) #11, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_clr_gpio(ptr nocapture noundef readonly %pdata, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %gpio)
  %cmp = icmp ugt i32 %gpio, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 636
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %shl = shl nuw i32 65536, %gpio
  %neg = xor i32 %shl, -1
  %and = and i32 %3, %neg
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 636
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %and) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %6) #11, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_enable_tx(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp70.not = icmp eq i32 %1, 0
  br i1 %cmp70.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %do.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.071 = phi i32 [ %inc, %do.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.071
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %do.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body:                                          ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %dma_regs6 = getelementptr inbounds %struct.xgbe_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dma_regs6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs6, align 8
  %add.ptr7 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #11, !srcloc !114
  %inc = add nuw i32 %i.071, 1
  %14 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %16 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1172.not = icmp eq i32 %17, 0
  br i1 %cmp1172.not, label %for.end.do.body34_crit_edge, label %do.body13.lr.ph

for.end.do.body34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

do.body13.lr.ph:                                  ; preds = %for.end
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  br label %do.body13

do.body13:                                        ; preds = %do.body13.do.body13_crit_edge, %do.body13.lr.ph
  %i.173 = phi i32 [ 0, %do.body13.lr.ph ], [ %inc32, %do.body13.do.body13_crit_edge ]
  %18 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr15 = getelementptr i8, ptr %19, i32 4352
  %mul = shl i32 %i.173, 7
  %add.ptr16 = getelementptr i8, ptr %add.ptr15, i32 %mul
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %21 = and i32 %20, -201326593
  %22 = or i32 %21, 134217728
  %23 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr25 = getelementptr i8, ptr %24, i32 4352
  %add.ptr27 = getelementptr i8, ptr %add.ptr25, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %22) #11, !srcloc !114
  %inc32 = add nuw i32 %i.173, 1
  %25 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tx_q_count, align 4
  %cmp11 = icmp ult i32 %inc32, %26
  br i1 %cmp11, label %do.body13.do.body13_crit_edge, label %do.body13.do.body34_crit_edge

do.body13.do.body34_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body34

do.body13.do.body13_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body13

do.body34:                                        ; preds = %do.body13.do.body34_crit_edge, %for.end.do.body34_crit_edge
  %xgmac_regs36 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %27 = ptrtoint ptr %xgmac_regs36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xgmac_regs36, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %30 = or i32 %29, 16777216
  %31 = ptrtoint ptr %xgmac_regs36 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xgmac_regs36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #11, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_disable_tx(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %0 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp82.not = icmp eq i32 %1, 0
  br i1 %cmp82.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.083 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @xgbe_prepare_tx_stop(ptr noundef %pdata, i32 noundef %i.083)
  %inc = add nuw i32 %i.083, 1
  %2 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_q_count, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !114
  %10 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp884.not = icmp eq i32 %11, 0
  br i1 %cmp884.not, label %do.body.for.cond32.preheader_crit_edge, label %do.body.do.body10_crit_edge

do.body.do.body10_crit_edge:                      ; preds = %do.body
  br label %do.body10

do.body.for.cond32.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %do.body10.for.cond32.preheader_crit_edge, %do.body.for.cond32.preheader_crit_edge
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %12 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3386.not = icmp eq i32 %13, 0
  br i1 %cmp3386.not, label %for.cond32.preheader.for.end54_crit_edge, label %for.cond32.preheader.for.body34_crit_edge

for.cond32.preheader.for.body34_crit_edge:        ; preds = %for.cond32.preheader
  br label %for.body34

for.cond32.preheader.for.end54_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

do.body10:                                        ; preds = %do.body10.do.body10_crit_edge, %do.body.do.body10_crit_edge
  %i.185 = phi i32 [ %inc30, %do.body10.do.body10_crit_edge ], [ 0, %do.body.do.body10_crit_edge ]
  %14 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 4352
  %mul = shl i32 %i.185, 7
  %add.ptr14 = getelementptr i8, ptr %add.ptr13, i32 %mul
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %17 = and i32 %16, -201326593
  %18 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %19, i32 4352
  %add.ptr25 = getelementptr i8, ptr %add.ptr23, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %17) #11, !srcloc !114
  %inc30 = add nuw i32 %i.185, 1
  %20 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_q_count, align 4
  %cmp8 = icmp ult i32 %inc30, %21
  br i1 %cmp8, label %do.body10.do.body10_crit_edge, label %do.body10.for.cond32.preheader_crit_edge

do.body10.for.cond32.preheader_crit_edge:         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond32.preheader

do.body10.do.body10_crit_edge:                    ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

for.body34:                                       ; preds = %do.body35.for.body34_crit_edge, %for.cond32.preheader.for.body34_crit_edge
  %i.287 = phi i32 [ %inc53, %do.body35.for.body34_crit_edge ], [ 0, %for.cond32.preheader.for.body34_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.287
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_ring, align 4
  %tobool.not = icmp eq ptr %25, null
  br i1 %tobool.not, label %for.body34.for.end54_crit_edge, label %do.body35

for.body34.for.end54_crit_edge:                   ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

do.body35:                                        ; preds = %for.body34
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma_regs, align 8
  %add.ptr39 = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %29 = and i32 %28, -16777217
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx, align 4
  %dma_regs48 = getelementptr inbounds %struct.xgbe_channel, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %dma_regs48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_regs48, align 8
  %add.ptr49 = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %29) #11, !srcloc !114
  %inc53 = add nuw i32 %i.287, 1
  %34 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %channel_count, align 8
  %cmp33 = icmp ult i32 %inc53, %35
  br i1 %cmp33, label %do.body35.for.body34_crit_edge, label %do.body35.for.end54_crit_edge

do.body35.for.end54_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end54

do.body35.for.body34_crit_edge:                   ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body34

for.end54:                                        ; preds = %do.body35.for.end54_crit_edge, %for.body34.for.end54_crit_edge, %for.cond32.preheader.for.end54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_enable_rx(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp107.not = icmp eq i32 %1, 0
  br i1 %cmp107.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %do.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0108 = phi i32 [ %inc, %do.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.0108
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %do.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body:                                          ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %dma_regs7 = getelementptr inbounds %struct.xgbe_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dma_regs7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs7, align 8
  %add.ptr8 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #11, !srcloc !114
  %inc = add nuw i32 %i.0108, 1
  %14 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %rx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %16 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp12109.not = icmp eq i32 %17, 0
  br i1 %cmp12109.not, label %for.end.for.end18_crit_edge, label %for.end.for.body13_crit_edge

for.end.for.body13_crit_edge:                     ; preds = %for.end
  br label %for.body13

for.end.for.end18_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end18

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %for.end.for.body13_crit_edge
  %reg_val.0111 = phi i32 [ %or15, %for.body13.for.body13_crit_edge ], [ 0, %for.end.for.body13_crit_edge ]
  %i.1110 = phi i32 [ %inc17, %for.body13.for.body13_crit_edge ], [ 0, %for.end.for.body13_crit_edge ]
  %shl = shl i32 %i.1110, 1
  %shl14 = shl i32 2, %shl
  %or15 = or i32 %shl14, %reg_val.0111
  %inc17 = add nuw i32 %i.1110, 1
  %exitcond.not = icmp eq i32 %inc17, %17
  br i1 %exitcond.not, label %for.body13.for.end18_crit_edge, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13

for.body13.for.end18_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end18

for.end18:                                        ; preds = %for.body13.for.end18_crit_edge, %for.end.for.end18_crit_edge
  %reg_val.0.lcssa = phi i32 [ 0, %for.end.for.end18_crit_edge ], [ %or15, %for.body13.for.end18_crit_edge ]
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %18 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr19 = getelementptr i8, ptr %19, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %reg_val.0.lcssa) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %20) #11, !srcloc !114
  %21 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %22, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %24 = or i32 %23, 134217728
  %25 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr31 = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %24) #11, !srcloc !114
  %27 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr37 = getelementptr i8, ptr %28, i32 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %30 = or i32 %29, 67108864
  %31 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr45 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %30) #11, !srcloc !114
  %33 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr51 = getelementptr i8, ptr %34, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr51) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %36 = or i32 %35, 33554432
  %37 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr59 = getelementptr i8, ptr %38, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %36) #11, !srcloc !114
  %39 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr65 = getelementptr i8, ptr %40, i32 4
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %42 = or i32 %41, 16777216
  %43 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr73 = getelementptr i8, ptr %44, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %42) #11, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_disable_rx(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = and i32 %2, -134217729
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #11, !srcloc !114
  %6 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = and i32 %8, -67108865
  %10 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr17 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %9) #11, !srcloc !114
  %12 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %15 = and i32 %14, -33554433
  %16 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr31 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %15) #11, !srcloc !114
  %18 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr37 = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %21 = and i32 %20, -16777217
  %22 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr45 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %21) #11, !srcloc !114
  %rx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %24 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp104.not = icmp eq i32 %25, 0
  br i1 %cmp104.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %xgbe_prepare_rx_stop.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %xgbe_prepare_rx_stop.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %26, 100
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub15.i = sub i32 %27, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i)
  %cmp16.i = icmp slt i32 %sub15.i, 0
  br i1 %cmp16.i, label %while.body.lr.ph.i, label %for.body.while.end.i_crit_edge

for.body.while.end.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %for.body
  %mul.i = shl i32 %i.0105, 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %28 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 4352
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 72
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %31 = and i32 %30, 805371711
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %33, %add.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %for.body.while.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %sub7.i = sub i32 %34, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i)
  %cmp8.i = icmp slt i32 %sub7.i, 0
  br i1 %cmp8.i, label %while.end.i.xgbe_prepare_rx_stop.exit_crit_edge, label %if.then9.i

while.end.i.xgbe_prepare_rx_stop.exit_crit_edge:  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_prepare_rx_stop.exit

if.then9.i:                                       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %36, ptr noundef nonnull @.str.14, i32 noundef %i.0105) #15
  br label %xgbe_prepare_rx_stop.exit

xgbe_prepare_rx_stop.exit:                        ; preds = %if.then9.i, %while.end.i.xgbe_prepare_rx_stop.exit_crit_edge
  %inc = add nuw i32 %i.0105, 1
  %37 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx_q_count, align 8
  %cmp = icmp ult i32 %inc, %38
  br i1 %cmp, label %xgbe_prepare_rx_stop.exit.for.body_crit_edge, label %xgbe_prepare_rx_stop.exit.for.end_crit_edge

xgbe_prepare_rx_stop.exit.for.end_crit_edge:      ; preds = %xgbe_prepare_rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

xgbe_prepare_rx_stop.exit.for.body_crit_edge:     ; preds = %xgbe_prepare_rx_stop.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %xgbe_prepare_rx_stop.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %39 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr49 = getelementptr i8, ptr %40, i32 160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 0) #11, !srcloc !114
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %41 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp51108.not = icmp eq i32 %42, 0
  br i1 %cmp51108.not, label %for.end.for.end72_crit_edge, label %for.end.for.body52_crit_edge

for.end.for.body52_crit_edge:                     ; preds = %for.end
  br label %for.body52

for.end.for.end72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end72

for.body52:                                       ; preds = %do.body53.for.body52_crit_edge, %for.end.for.body52_crit_edge
  %i.1109 = phi i32 [ %inc71, %do.body53.for.body52_crit_edge ], [ 0, %for.end.for.body52_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.1109
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 4
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_ring, align 16
  %tobool.not = icmp eq ptr %46, null
  br i1 %tobool.not, label %for.body52.for.end72_crit_edge, label %do.body53

for.body52.for.end72_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end72

do.body53:                                        ; preds = %for.body52
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %44, i32 0, i32 3
  %47 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dma_regs, align 8
  %add.ptr57 = getelementptr i8, ptr %48, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %50 = and i32 %49, -16777217
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %dma_regs66 = getelementptr inbounds %struct.xgbe_channel, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %dma_regs66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dma_regs66, align 8
  %add.ptr67 = getelementptr i8, ptr %54, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %50) #11, !srcloc !114
  %inc71 = add nuw i32 %i.1109, 1
  %55 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %channel_count, align 8
  %cmp51 = icmp ult i32 %inc71, %56
  br i1 %cmp51, label %do.body53.for.body52_crit_edge, label %do.body53.for.end72_crit_edge

do.body53.for.end72_crit_edge:                    ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end72

do.body53.for.body52_crit_edge:                   ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body52

for.end72:                                        ; preds = %do.body53.for.end72_crit_edge, %for.body52.for.end72_crit_edge, %for.end.for.end72_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_powerup_tx(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp36.not = icmp eq i32 %1, 0
  br i1 %cmp36.not, label %entry.do.body10_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

for.body:                                         ; preds = %do.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %do.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.037
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.do.body10_crit_edge, label %do.body

for.body.do.body10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

do.body:                                          ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %dma_regs6 = getelementptr inbounds %struct.xgbe_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dma_regs6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs6, align 8
  %add.ptr7 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #11, !srcloc !114
  %inc = add nuw i32 %i.037, 1
  %14 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.do.body10_crit_edge

do.body.do.body10_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body10

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body10:                                        ; preds = %do.body.do.body10_crit_edge, %for.body.do.body10_crit_edge, %entry.do.body10_crit_edge
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %16 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xgmac_regs, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %19 = or i32 %18, 16777216
  %20 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xgmac_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #11, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_powerdown_tx(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %0 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp47.not = icmp eq i32 %1, 0
  br i1 %cmp47.not, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  tail call fastcc void @xgbe_prepare_tx_stop(ptr noundef %pdata, i32 noundef %i.048)
  %inc = add nuw i32 %i.048, 1
  %2 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_q_count, align 4
  %cmp = icmp ult i32 %inc, %3
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %entry.do.body_crit_edge
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %7 = and i32 %6, -16777217
  %8 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #11, !srcloc !114
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %10 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp749.not = icmp eq i32 %11, 0
  br i1 %cmp749.not, label %do.body.for.end28_crit_edge, label %do.body.for.body8_crit_edge

do.body.for.body8_crit_edge:                      ; preds = %do.body
  br label %for.body8

do.body.for.end28_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

for.body8:                                        ; preds = %do.body9.for.body8_crit_edge, %do.body.for.body8_crit_edge
  %i.150 = phi i32 [ %inc27, %do.body9.for.body8_crit_edge ], [ 0, %do.body.for.body8_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.150
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_ring, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %for.body8.for.end28_crit_edge, label %do.body9

for.body8.for.end28_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

do.body9:                                         ; preds = %for.body8
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_regs, align 8
  %add.ptr13 = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %19 = and i32 %18, -16777217
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %dma_regs22 = getelementptr inbounds %struct.xgbe_channel, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dma_regs22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_regs22, align 8
  %add.ptr23 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %19) #11, !srcloc !114
  %inc27 = add nuw i32 %i.150, 1
  %24 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel_count, align 8
  %cmp7 = icmp ult i32 %inc27, %25
  br i1 %cmp7, label %do.body9.for.body8_crit_edge, label %do.body9.for.end28_crit_edge

do.body9.for.end28_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end28

do.body9.for.body8_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.end28:                                        ; preds = %do.body9.for.end28_crit_edge, %for.body8.for.end28_crit_edge, %do.body.for.end28_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_powerup_rx(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %do.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %do.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.020
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %do.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body:                                          ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %dma_regs6 = getelementptr inbounds %struct.xgbe_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dma_regs6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs6, align 8
  %add.ptr7 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #11, !srcloc !114
  %inc = add nuw i32 %i.020, 1
  %14 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_powerdown_rx(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %do.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.020 = phi i32 [ %inc, %do.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.020
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %do.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body:                                          ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = and i32 %8, -16777217
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %dma_regs6 = getelementptr inbounds %struct.xgbe_channel, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dma_regs6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_regs6, align 8
  %add.ptr7 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #11, !srcloc !114
  %inc = add nuw i32 %i.020, 1
  %14 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_dev_xmit(ptr noundef %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 11
  %2 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_ring, align 4
  %cur = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur, align 4
  %tx_packets3 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 13
  %6 = ptrtoint ptr %tx_packets3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_packets3, align 8
  %tx_bytes4 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 14
  %8 = ptrtoint ptr %tx_bytes4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_bytes4, align 4
  %attributes = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %attributes, align 4
  %and = and i32 %11, 1
  %12 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %mss = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %mss to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mss, align 8
  %cur_mss = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 12, i32 0, i32 2
  %15 = ptrtoint ptr %cur_mss to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cur_mss, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %16)
  %cmp.not = icmp eq i16 %14, %16
  br i1 %cmp.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %tobool45.not = phi i1 [ true, %if.else ], [ false, %land.lhs.true.if.end_crit_edge ]
  %17 = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not = icmp eq i32 %17, 0
  br i1 %tobool16.not, label %if.end.if.else23_crit_edge, label %land.lhs.true17

if.end.if.else23_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23

land.lhs.true17:                                  ; preds = %if.end
  %vlan_ctag = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 9
  %18 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vlan_ctag, align 2
  %cur_vlan_ctag = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 12, i32 0, i32 3
  %20 = ptrtoint ptr %cur_vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cur_vlan_ctag, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp20.not = icmp eq i16 %19, %21
  br i1 %cmp20.not, label %land.lhs.true17.if.else23_crit_edge, label %land.lhs.true17.if.end24_crit_edge

land.lhs.true17.if.end24_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true17.if.else23_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else23

if.else23:                                        ; preds = %land.lhs.true17.if.else23_crit_edge, %if.end.if.else23_crit_edge
  br label %if.end24

if.end24:                                         ; preds = %if.else23, %land.lhs.true17.if.end24_crit_edge
  %tobool46.not = phi i1 [ true, %if.else23 ], [ false, %land.lhs.true17.if.end24_crit_edge ]
  %coalesce_count = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %coalesce_count to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %coalesce_count, align 4
  %add = add i32 %23, %7
  store i32 %add, ptr %coalesce_count, align 4
  %tx_frames = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 89
  %24 = ptrtoint ptr %tx_frames to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_frames, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool25.not = icmp eq i32 %25, 0
  br i1 %tobool25.not, label %if.end24.if.end41_crit_edge, label %if.else27

if.end24.if.end41_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.else27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %25)
  %cmp29 = icmp ugt i32 %7, %25
  br i1 %cmp29, label %if.else27.if.end41_crit_edge, label %if.else32

if.else27.if.end41_crit_edge:                     ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.else32:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_pc() #13
  %rem = urem i32 %add, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %7)
  %cmp35 = icmp uge i32 %rem, %7
  br label %if.end41

if.end41:                                         ; preds = %if.else32, %if.else27.if.end41_crit_edge, %if.end24.if.end41_crit_edge
  %tobool348.not = phi i1 [ true, %if.end24.if.end41_crit_edge ], [ false, %if.else27.if.end41_crit_edge ], [ %cmp35, %if.else32 ]
  %rdata42 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 5
  %26 = ptrtoint ptr %rdata42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rdata42, align 4
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rdesc_count, align 8
  %sub = add i32 %29, -1
  %and43 = and i32 %sub, %5
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %27, i32 %and43
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %brmerge.demorgan = and i1 %tobool45.not, %tobool46.not
  br i1 %brmerge.demorgan, label %if.end41.if.end154_crit_edge, label %if.then47

if.end41.if.end154_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end154

if.then47:                                        ; preds = %if.end41
  br i1 %tobool45.not, label %if.then47.if.end90_crit_edge, label %do.body50

if.then47.if.end90_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90

do.body50:                                        ; preds = %if.then47
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 134
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 4
  %and51 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.do.body67_crit_edge, label %do.body54

do.body50.do.body67_crit_edge:                    ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body67

do.body54:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dev_xmit.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dev_xmit, %if.then58)) #11
          to label %do.body67 [label %if.then58], !srcloc !117

if.then58:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %mss59 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 8
  %36 = ptrtoint ptr %mss59 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mss59, align 8
  %conv60 = zext i16 %37 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dev_xmit.__UNIQUE_ID_ddebug364, ptr noundef %35, ptr noundef nonnull @.str.16, i32 noundef %conv60) #11
  br label %do.body67

do.body67:                                        ; preds = %if.then58, %do.body54, %do.body50.do.body67_crit_edge
  %desc2 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %31, i32 0, i32 2
  %38 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %desc2, align 4
  %and68 = and i32 %39, 8454143
  store i32 %and68, ptr %desc2, align 4
  %mss69 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 8
  %40 = ptrtoint ptr %mss69 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mss69, align 8
  %42 = and i16 %41, 32767
  %and71 = zext i16 %42 to i32
  %43 = tail call i32 @llvm.bswap.i32(i32 %and71)
  %or = or i32 %43, %and68
  %44 = ptrtoint ptr %desc2 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %desc2, align 4
  %desc3 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %31, i32 0, i32 3
  %45 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %desc3, align 4
  %or85 = or i32 %46, 68
  store i32 %or85, ptr %desc3, align 4
  %47 = ptrtoint ptr %mss69 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mss69, align 8
  %cur_mss89 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 12, i32 0, i32 2
  %49 = ptrtoint ptr %cur_mss89 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %cur_mss89, align 8
  br label %if.end90

if.end90:                                         ; preds = %do.body67, %if.then47.if.end90_crit_edge
  br i1 %tobool46.not, label %if.end90.if.end147_crit_edge, label %do.body93

if.end90.if.end147_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end147

do.body93:                                        ; preds = %if.end90
  %msg_enable94 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 134
  %50 = ptrtoint ptr %msg_enable94 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %msg_enable94, align 4
  %and95 = and i32 %51, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.body93.do.body120_crit_edge, label %do.body98

do.body93.do.body120_crit_edge:                   ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body120

do.body98:                                        ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dev_xmit.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dev_xmit, %if.then110)) #11
          to label %do.body120 [label %if.then110], !srcloc !117

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %vlan_ctag112 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 9
  %54 = ptrtoint ptr %vlan_ctag112 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vlan_ctag112, align 2
  %conv113 = zext i16 %55 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dev_xmit.__UNIQUE_ID_ddebug365, ptr noundef %53, ptr noundef nonnull @.str.17, i32 noundef %conv113) #11
  br label %do.body120

do.body120:                                       ; preds = %if.then110, %do.body98, %do.body93.do.body120_crit_edge
  %desc3121 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %31, i32 0, i32 3
  %56 = ptrtoint ptr %desc3121 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %desc3121, align 4
  %or124 = and i32 %57, 65471
  %and129 = or i32 %or124, 64
  store i32 %and129, ptr %desc3121, align 4
  %vlan_ctag130 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 9
  %58 = ptrtoint ptr %vlan_ctag130 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vlan_ctag130, align 2
  %conv131 = zext i16 %59 to i32
  %60 = tail call i32 @llvm.bswap.i32(i32 %conv131)
  %and140 = or i32 %or124, %60
  %or142 = or i32 %and140, 320
  %61 = ptrtoint ptr %desc3121 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or142, ptr %desc3121, align 4
  %62 = ptrtoint ptr %vlan_ctag130 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vlan_ctag130, align 2
  %cur_vlan_ctag146 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 12, i32 0, i32 3
  %64 = ptrtoint ptr %cur_vlan_ctag146 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %cur_vlan_ctag146, align 2
  br label %if.end147

if.end147:                                        ; preds = %do.body120, %if.end90.if.end147_crit_edge
  %inc = add i32 %5, 1
  %65 = ptrtoint ptr %rdata42 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rdata42, align 4
  %67 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %rdesc_count, align 8
  %sub150 = add i32 %68, -1
  %and151 = and i32 %sub150, %inc
  %add.ptr152 = getelementptr %struct.xgbe_ring_data, ptr %66, i32 %and151
  %69 = ptrtoint ptr %add.ptr152 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr152, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.end147, %if.end41.if.end154_crit_edge
  %cur_index.0 = phi i32 [ %inc, %if.end147 ], [ %5, %if.end41.if.end154_crit_edge ]
  %rdesc.0 = phi ptr [ %70, %if.end147 ], [ %31, %if.end41.if.end154_crit_edge ]
  %rdata.0 = phi ptr [ %add.ptr152, %if.end147 ], [ %add.ptr, %if.end41.if.end154_crit_edge ]
  %skb_dma = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.0, i32 0, i32 3
  %71 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %skb_dma, align 4
  %73 = tail call i32 @llvm.bswap.i32(i32 %72)
  %74 = ptrtoint ptr %rdesc.0 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %rdesc.0, align 4
  %desc1 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %rdesc.0, i32 0, i32 1
  %75 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %desc1, align 4
  %desc2160 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %rdesc.0, i32 0, i32 2
  %76 = ptrtoint ptr %desc2160 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %desc2160, align 4
  %and161 = and i32 %77, 12648447
  store i32 %and161, ptr %desc2160, align 4
  %skb_dma_len = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.0, i32 0, i32 4
  %78 = ptrtoint ptr %skb_dma_len to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %skb_dma_len, align 4
  %and162 = and i32 %79, 16383
  %80 = tail call i32 @llvm.bswap.i32(i32 %and162)
  %or165 = or i32 %80, %and161
  %and172 = and i32 %or165, -12582913
  %or174 = or i32 %and172, 8388608
  %storemerge560 = select i1 %tobool16.not, i32 %or165, i32 %or174
  %81 = ptrtoint ptr %desc2160 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %storemerge560, ptr %desc2160, align 4
  %82 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %attributes, align 4
  %84 = and i32 %83, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool181.not = icmp eq i32 %84, 0
  br i1 %tobool181.not, label %if.end154.do.body191_crit_edge, label %do.body183

if.end154.do.body191_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body191

do.body183:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  %or187 = or i32 %storemerge560, 64
  %85 = ptrtoint ptr %desc2160 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %or187, ptr %desc2160, align 4
  br label %do.body191

do.body191:                                       ; preds = %do.body183, %if.end154.do.body191_crit_edge
  %desc3192 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %rdesc.0, i32 0, i32 3
  %86 = ptrtoint ptr %desc3192 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %desc3192, align 4
  %or195 = and i32 %87, -97
  call void @__sanitizer_cov_trace_cmp4(i32 %cur_index.0, i32 %5)
  %cmp205.not = icmp eq i32 %cur_index.0, %5
  %spec.select.v = select i1 %cmp205.not, i32 32, i32 160
  %spec.select = or i32 %or195, %spec.select.v
  %88 = ptrtoint ptr %desc3192 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select, ptr %desc3192, align 4
  br i1 %tobool.not, label %do.body246, label %do.body218

do.body218:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #13
  %or222 = and i32 %spec.select, 63679
  %and227 = or i32 %or222, 1024
  %89 = ptrtoint ptr %desc3192 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %and227, ptr %desc3192, align 4
  %tcp_payload_len = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 7
  %90 = ptrtoint ptr %tcp_payload_len to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %tcp_payload_len, align 4
  %and228 = and i32 %91, 262143
  %92 = tail call i32 @llvm.bswap.i32(i32 %and228)
  %and227.masked = and i32 %and227, 33983
  %and236 = or i32 %92, %and227.masked
  %93 = ptrtoint ptr %desc3192 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %and236, ptr %desc3192, align 4
  %tcp_header_len = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 6
  %94 = ptrtoint ptr %tcp_header_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %tcp_header_len, align 8
  %96 = shl i32 %95, 9
  %97 = and i32 %96, 30720
  %or240 = or i32 %97, %and236
  store i32 %or240, ptr %desc3192, align 4
  %conv243 = zext i32 %7 to i64
  %ext_stats = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 107
  %98 = ptrtoint ptr %ext_stats to i32
  call void @__asan_load8_noabort(i32 %98)
  %99 = load i64, ptr %ext_stats, align 8
  %add244 = add i64 %99, %conv243
  store i64 %add244, ptr %ext_stats, align 8
  br label %if.end272

do.body246:                                       ; preds = %do.body191
  call void @__sanitizer_cov_trace_pc() #13
  %and248 = and i32 %spec.select, 8454067
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool253.not = icmp eq i32 %and, 0
  %and257 = and i32 %spec.select, 8453299
  %or259 = or i32 %and257, 768
  %storemerge557 = select i1 %tobool253.not, i32 %and248, i32 %or259
  %100 = ptrtoint ptr %desc3192 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %storemerge557, ptr %desc3192, align 4
  %length = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 4
  %101 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %length, align 8
  %and266 = and i32 %102, 32767
  %103 = tail call i32 @llvm.bswap.i32(i32 %and266)
  %or269 = or i32 %103, %storemerge557
  %104 = ptrtoint ptr %desc3192 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or269, ptr %desc3192, align 4
  br label %if.end272

if.end272:                                        ; preds = %do.body246, %do.body218
  %105 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool273.not = icmp eq i32 %105, 0
  br i1 %tobool273.not, label %if.end272.if.end286_crit_edge, label %do.body275

if.end272.if.end286_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end286

do.body275:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %desc3192 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %desc3192, align 4
  %and277 = and i32 %107, -32772
  %or279 = or i32 %and277, 32769
  store i32 %or279, ptr %desc3192, align 4
  %108 = ptrtoint ptr %tx_packets3 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tx_packets3, align 8
  %conv283 = zext i32 %109 to i64
  %tx_vxlan_packets = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 107, i32 7
  %110 = ptrtoint ptr %tx_vxlan_packets to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %tx_vxlan_packets, align 8
  %add285 = add i64 %111, %conv283
  store i64 %add285, ptr %tx_vxlan_packets, align 8
  br label %if.end286

if.end286:                                        ; preds = %do.body275, %if.end272.if.end286_crit_edge
  %sub287 = sub i32 %cur_index.0, %5
  %rdesc_count289 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 3
  %i.0569 = add i32 %sub287, 1
  %112 = ptrtoint ptr %rdesc_count289 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %rdesc_count289, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0569, i32 %113)
  %cmp290570 = icmp ult i32 %i.0569, %113
  br i1 %cmp290570, label %for.body.lr.ph, label %if.end286.do.body341_crit_edge

if.end286.do.body341_crit_edge:                   ; preds = %if.end286
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body341

for.body.lr.ph:                                   ; preds = %if.end286
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool330.not = icmp eq i32 %and, 0
  %spec.select561.v = select i1 %tobool330.not, i32 128, i32 896
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0572 = phi i32 [ %i.0569, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %cur_index.1571 = phi i32 [ %cur_index.0, %for.body.lr.ph ], [ %inc292, %for.body.for.body_crit_edge ]
  %inc292 = add i32 %cur_index.1571, 1
  %114 = ptrtoint ptr %rdata42 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rdata42, align 4
  %116 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %rdesc_count, align 8
  %sub295 = add i32 %117, -1
  %and296 = and i32 %sub295, %inc292
  %add.ptr297 = getelementptr %struct.xgbe_ring_data, ptr %115, i32 %and296
  %118 = ptrtoint ptr %add.ptr297 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %add.ptr297, align 4
  %skb_dma299 = getelementptr %struct.xgbe_ring_data, ptr %115, i32 %and296, i32 3
  %120 = ptrtoint ptr %skb_dma299 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %skb_dma299, align 4
  %122 = tail call i32 @llvm.bswap.i32(i32 %121)
  %123 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %119, align 4
  %desc1305 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %119, i32 0, i32 1
  %124 = ptrtoint ptr %desc1305 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 0, ptr %desc1305, align 4
  %desc2307 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %119, i32 0, i32 2
  %125 = ptrtoint ptr %desc2307 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %desc2307, align 4
  %and308 = and i32 %126, 12648447
  store i32 %and308, ptr %desc2307, align 4
  %skb_dma_len309 = getelementptr %struct.xgbe_ring_data, ptr %115, i32 %and296, i32 4
  %127 = ptrtoint ptr %skb_dma_len309 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %skb_dma_len309, align 4
  %and310 = and i32 %128, 16383
  %129 = tail call i32 @llvm.bswap.i32(i32 %and310)
  %or313 = or i32 %129, %and308
  %130 = ptrtoint ptr %desc2307 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or313, ptr %desc2307, align 4
  %desc3317 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %119, i32 0, i32 3
  %131 = ptrtoint ptr %desc3317 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %desc3317, align 4
  %or320 = and i32 %132, -193
  %spec.select561 = or i32 %or320, %spec.select561.v
  store i32 %spec.select561, ptr %desc3317, align 4
  %i.0 = add nuw i32 %i.0572, 1
  %133 = ptrtoint ptr %rdesc_count289 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %rdesc_count289, align 4
  %cmp290 = icmp ult i32 %i.0, %134
  br i1 %cmp290, label %for.body.for.body_crit_edge, label %for.body.do.body341_crit_edge

for.body.do.body341_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body341

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.body341:                                       ; preds = %for.body.do.body341_crit_edge, %if.end286.do.body341_crit_edge
  %cur_index.1.lcssa = phi i32 [ %cur_index.0, %if.end286.do.body341_crit_edge ], [ %inc292, %for.body.do.body341_crit_edge ]
  %rdesc.1.lcssa = phi ptr [ %rdesc.0, %if.end286.do.body341_crit_edge ], [ %119, %for.body.do.body341_crit_edge ]
  %rdata.1.lcssa = phi ptr [ %rdata.0, %if.end286.do.body341_crit_edge ], [ %add.ptr297, %for.body.do.body341_crit_edge ]
  %desc3342 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %rdesc.1.lcssa, i32 0, i32 3
  %135 = ptrtoint ptr %desc3342 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %desc3342, align 4
  %or345 = or i32 %136, 16
  store i32 %or345, ptr %desc3342, align 4
  br i1 %tobool348.not, label %do.body341.if.end357_crit_edge, label %do.body350

do.body341.if.end357_crit_edge:                   ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end357

do.body350:                                       ; preds = %do.body341
  call void @__sanitizer_cov_trace_pc() #13
  %desc2351 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %rdesc.1.lcssa, i32 0, i32 2
  %137 = ptrtoint ptr %desc2351 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %desc2351, align 4
  %or354 = or i32 %138, 128
  store i32 %or354, ptr %desc2351, align 4
  br label %if.end357

if.end357:                                        ; preds = %do.body350, %do.body341.if.end357_crit_edge
  %tx = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.1.lcssa, i32 0, i32 5
  %139 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %7, ptr %tx, align 4
  %bytes = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata.1.lcssa, i32 0, i32 5, i32 1
  %140 = ptrtoint ptr %bytes to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %9, ptr %bytes, align 4
  %conv359 = zext i32 %7 to i64
  %queue_index = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 2
  %141 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %queue_index, align 4
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %1, i32 0, i32 107, i32 3, i32 %142
  %143 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx, align 8
  %add361 = add i64 %144, %conv359
  store i64 %add361, ptr %arrayidx, align 8
  %conv362 = zext i32 %9 to i64
  %145 = load i32, ptr %queue_index, align 4
  %arrayidx365 = getelementptr %struct.xgbe_prv_data, ptr %1, i32 0, i32 107, i32 4, i32 %145
  %146 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx365, align 8
  %add366 = add i64 %147, %conv362
  store i64 %add366, ptr %arrayidx365, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !122
  %148 = ptrtoint ptr %rdata42 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %rdata42, align 4
  %150 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %rdesc_count, align 8
  %sub369 = add i32 %151, -1
  %and370 = and i32 %sub369, %5
  %add.ptr371 = getelementptr %struct.xgbe_ring_data, ptr %149, i32 %and370
  %152 = ptrtoint ptr %add.ptr371 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr371, align 4
  %desc3374 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %153, i32 0, i32 3
  %154 = ptrtoint ptr %desc3374 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %desc3374, align 4
  %or377 = or i32 %155, 128
  store i32 %or377, ptr %desc3374, align 4
  %msg_enable380 = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 134
  %156 = ptrtoint ptr %msg_enable380 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %msg_enable380, align 4
  %and381 = and i32 %157, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and381)
  %tobool382.not = icmp eq i32 %and381, 0
  br i1 %tobool382.not, label %if.end357.do.end389_crit_edge, label %if.then383

if.end357.do.end389_crit_edge:                    ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end389

if.then383:                                       ; preds = %if.end357
  call void @__sanitizer_cov_trace_pc() #13
  %158 = ptrtoint ptr %rdesc_count289 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %rdesc_count289, align 4
  tail call void @xgbe_dump_tx_desc(ptr noundef %1, ptr noundef %3, i32 noundef %5, i32 noundef %159, i32 noundef 1) #11
  br label %do.end389

do.end389:                                        ; preds = %if.then383, %if.end357.do.end389_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !123
  %add392 = add i32 %cur_index.1.lcssa, 1
  %160 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %add392, ptr %cur, align 4
  %161 = tail call i32 @llvm.read_register.i32(metadata !103) #11
  %and.i.i = and i32 %161, -16384
  %162 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %164
  %165 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %166, ptrtoint (ptr getelementptr inbounds (%struct.softnet_data, ptr @softnet_data, i32 0, i32 11, i32 1) to i32)
  %167 = inttoptr i32 %add.i to ptr
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %167, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.i.not = icmp eq i8 %169, 0
  br i1 %tobool.i.not, label %do.end389.if.then401_crit_edge, label %lor.lhs.false395

do.end389.if.then401_crit_edge:                   ; preds = %do.end389
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then401

lor.lhs.false395:                                 ; preds = %do.end389
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 8
  %172 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %queue_index, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %171, i32 0, i32 103
  %174 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %_tx.i, align 128
  %state.i = getelementptr %struct.netdev_queue, ptr %175, i32 %173, i32 13
  %176 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %state.i, align 4
  %and.i = and i32 %177, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i566.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i566.not, label %if.else402, label %lor.lhs.false395.if.then401_crit_edge

lor.lhs.false395.if.then401_crit_edge:            ; preds = %lor.lhs.false395
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then401

if.then401:                                       ; preds = %lor.lhs.false395.if.then401_crit_edge, %do.end389.if.then401_crit_edge
  tail call void @xgbe_tx_start_xmit(ptr noundef %channel, ptr noundef %3)
  br label %do.end409

if.else402:                                       ; preds = %lor.lhs.false395
  call void @__sanitizer_cov_trace_pc() #13
  %xmit_more = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 12, i32 0, i32 1
  %178 = ptrtoint ptr %xmit_more to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %xmit_more, align 4
  br label %do.end409

do.end409:                                        ; preds = %if.else402, %if.then401
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_dev_read(ptr nocapture noundef readonly %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 12
  %2 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_ring, align 16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %rdata3 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %rdata3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rdata3, align 4
  %cur = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur, align 4
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rdesc_count, align 8
  %sub = add i32 %11, -1
  %and = and i32 %sub, %9
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %7, i32 %and
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr, align 4
  %desc3 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc3, align 4
  %16 = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !124
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 134
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 4
  %and6 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cur, align 4
  tail call void @xgbe_dump_rx_desc(ptr noundef %1, ptr noundef %3, i32 noundef %20) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %21 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc3, align 4
  %23 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool14.not = icmp eq i32 %23, 0
  br i1 %tobool14.not, label %do.body29, label %if.then15

if.then15:                                        ; preds = %if.end10
  %24 = and i32 %22, 1342177280
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %24)
  %25 = icmp eq i32 %24, 268435456
  br i1 %25, label %if.then.i, label %if.then15.xgbe_get_rx_tstamp.exit_crit_edge

if.then15.xgbe_get_rx_tstamp.exit_crit_edge:      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_rx_tstamp.exit

if.then.i:                                        ; preds = %if.then15
  %desc1.i = getelementptr inbounds %struct.xgbe_ring_desc, ptr %13, i32 0, i32 1
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
  br i1 %cmp.not.i, label %if.then.i.xgbe_get_rx_tstamp.exit_crit_edge, label %if.then7.i

if.then.i.xgbe_get_rx_tstamp.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_rx_tstamp.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = tail call i64 @llvm.bswap.i64(i64 %33) #11
  %rx_tstamp.i = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 10
  %35 = ptrtoint ptr %rx_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %34, ptr %rx_tstamp.i, align 8
  %attributes.i = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %attributes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %attributes.i, align 4
  %or10.i = or i32 %37, 32
  store i32 %or10.i, ptr %attributes.i, align 4
  br label %xgbe_get_rx_tstamp.exit

xgbe_get_rx_tstamp.exit:                          ; preds = %if.then7.i, %if.then.i.xgbe_get_rx_tstamp.exit_crit_edge, %if.then15.xgbe_get_rx_tstamp.exit_crit_edge
  %attributes = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %attributes to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %attributes, align 4
  %or = and i32 %39, -25
  %and23 = or i32 %or, 16
  store i32 %and23, ptr %attributes, align 4
  br label %cleanup

do.body29:                                        ; preds = %if.end10
  %attributes30 = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %attributes30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %attributes30, align 4
  %and31 = and i32 %41, -17
  store i32 %and31, ptr %attributes30, align 4
  %42 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %desc3, align 4
  %44 = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool39.not = icmp eq i32 %44, 0
  br i1 %tobool39.not, label %do.body29.if.end48_crit_edge, label %do.body41

do.body29.if.end48_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

do.body41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %and43 = and i32 %41, -25
  %or45 = or i32 %and43, 8
  %45 = ptrtoint ptr %attributes30 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or45, ptr %attributes30, align 4
  br label %if.end48

if.end48:                                         ; preds = %do.body41, %do.body29.if.end48_crit_edge
  %46 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %desc3, align 4
  %48 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool52.not = icmp eq i32 %48, 0
  %49 = ptrtoint ptr %attributes30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %attributes30, align 4
  br i1 %tobool52.not, label %do.body68, label %do.body54

do.body54:                                        ; preds = %if.end48
  %or58 = or i32 %50, 128
  %51 = ptrtoint ptr %attributes30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or58, ptr %attributes30, align 4
  %desc2 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %13, i32 0, i32 2
  %52 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %desc2, align 4
  %54 = and i32 %53, -16580608
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %conv = trunc i32 %55 to i16
  %hdr_len = getelementptr %struct.xgbe_ring_data, ptr %7, i32 %and, i32 6, i32 2
  %56 = ptrtoint ptr %hdr_len to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv, ptr %hdr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool65.not = icmp eq i16 %conv, 0
  br i1 %tobool65.not, label %do.body54.if.end75_crit_edge, label %if.then66

do.body54.if.end75_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end75

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #13
  %rx_split_header_packets = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 107, i32 1
  %57 = ptrtoint ptr %rx_split_header_packets to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %rx_split_header_packets, align 8
  %inc = add i64 %58, 1
  store i64 %inc, ptr %rx_split_header_packets, align 8
  br label %if.end75

do.body68:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %and70 = and i32 %50, -129
  %59 = ptrtoint ptr %attributes30 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and70, ptr %attributes30, align 4
  br label %if.end75

if.end75:                                         ; preds = %do.body68, %if.then66, %do.body54.if.end75_crit_edge
  %60 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %desc3, align 4
  %62 = and i32 %61, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool79.not = icmp eq i32 %62, 0
  br i1 %tobool79.not, label %if.end75.if.end92_crit_edge, label %do.body81

if.end75.if.end92_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

do.body81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %attributes30 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %attributes30, align 4
  %or85 = or i32 %64, 64
  store i32 %or85, ptr %attributes30, align 4
  %desc1 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %13, i32 0, i32 1
  %65 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %desc1, align 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %66)
  %rss_hash = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 11
  %68 = ptrtoint ptr %rss_hash to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %rss_hash, align 8
  %69 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %desc3, align 4
  %71 = lshr i32 %70, 12
  %and90 = and i32 %71, 15
  %72 = add nsw i32 %and90, -1
  %switch.and = and i32 %72, -10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %73 = select i1 %switch.selectcmp, i32 3, i32 2
  %rss_hash_type = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 12
  %74 = ptrtoint ptr %rss_hash_type to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %rss_hash_type, align 4
  br label %if.end92

if.end92:                                         ; preds = %do.body81, %if.end75.if.end92_crit_edge
  %75 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %desc3, align 4
  %77 = and i32 %76, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool96.not = icmp eq i32 %77, 0
  br i1 %tobool96.not, label %if.end92.cleanup_crit_edge, label %do.body99

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body99:                                        ; preds = %if.end92
  %78 = ptrtoint ptr %attributes30 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %attributes30, align 4
  %or103 = or i32 %79, 4
  store i32 %or103, ptr %attributes30, align 4
  %80 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %desc3, align 4
  %82 = and i32 %81, -12648448
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %conv109 = trunc i32 %83 to i16
  %len = getelementptr %struct.xgbe_ring_data, ptr %7, i32 %and, i32 6, i32 3
  %84 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv109, ptr %len, align 2
  %features = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 23
  %85 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %features, align 16
  %and111 = and i64 %86, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and111)
  %tobool112.not = icmp eq i64 %and111, 0
  br i1 %tobool112.not, label %do.body99.if.end128_crit_edge, label %do.body114

do.body99.if.end128_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

do.body114:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #13
  %87 = ptrtoint ptr %attributes30 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %attributes30, align 4
  %or125 = or i32 %88, 513
  store i32 %or125, ptr %attributes30, align 4
  br label %if.end128

if.end128:                                        ; preds = %do.body114, %do.body99.if.end128_crit_edge
  %desc2129 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %13, i32 0, i32 2
  %89 = ptrtoint ptr %desc2129 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %desc2129, align 4
  %91 = and i32 %90, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool132.not = icmp eq i32 %91, 0
  br i1 %tobool132.not, label %if.end128.if.end155_crit_edge, label %do.body134

if.end128.if.end155_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

do.body134:                                       ; preds = %if.end128
  %92 = ptrtoint ptr %attributes30 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %attributes30, align 4
  %or138 = or i32 %93, 256
  store i32 %or138, ptr %attributes30, align 4
  %rx_vxlan_packets = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 107, i32 8
  %94 = ptrtoint ptr %rx_vxlan_packets to i32
  call void @__asan_load8_noabort(i32 %94)
  %95 = load i64, ptr %rx_vxlan_packets, align 8
  %inc142 = add i64 %95, 1
  store i64 %inc142, ptr %rx_vxlan_packets, align 8
  %96 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %desc3, align 4
  %98 = lshr i32 %97, 12
  %and145 = and i32 %98, 15
  %99 = zext i32 %and145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %and145, label %do.body134.if.end155_crit_edge [
    i32 7, label %do.body134.do.body147_crit_edge
    i32 15, label %do.body134.do.body147_crit_edge401
  ]

do.body134.do.body147_crit_edge401:               ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147

do.body134.do.body147_crit_edge:                  ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body147

do.body134.if.end155_crit_edge:                   ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

do.body147:                                       ; preds = %do.body134.do.body147_crit_edge, %do.body134.do.body147_crit_edge401
  %100 = ptrtoint ptr %attributes30 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %attributes30, align 4
  %and149 = and i32 %101, -513
  store i32 %and149, ptr %attributes30, align 4
  br label %if.end155

if.end155:                                        ; preds = %do.body147, %do.body134.if.end155_crit_edge, %if.end128.if.end155_crit_edge
  %102 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %desc3, align 4
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  %shr157 = lshr i32 %104, 15
  %and158 = and i32 %shr157, 1
  %shr160 = lshr i32 %104, 16
  %and161 = and i32 %shr160, 15
  %105 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %msg_enable, align 4
  %and164 = and i32 %106, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  br i1 %tobool165.not, label %if.end155.do.end177_crit_edge, label %do.body167

if.end155.do.end177_crit_edge:                    ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end177

do.body167:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dev_read.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dev_read, %if.then171)) #11
          to label %do.end177 [label %if.then171], !srcloc !117

if.then171:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dev_read.__UNIQUE_ID_ddebug366, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %and158, i32 noundef %and161) #11
  br label %do.end177

do.end177:                                        ; preds = %if.then171, %do.body167, %if.end155.do.end177_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool178.not = icmp eq i32 %and158, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool179.not = icmp eq i32 %and161, 0
  %or.cond = select i1 %tobool178.not, i1 true, i1 %tobool179.not
  br i1 %or.cond, label %if.then180, label %if.else223

if.then180:                                       ; preds = %do.end177
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and161)
  %cmp = icmp eq i32 %and161, 9
  br i1 %cmp, label %land.lhs.true, label %if.then180.if.end283_crit_edge

if.then180.if.end283_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end283

land.lhs.true:                                    ; preds = %if.then180
  %107 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %features, align 16
  %and183 = and i64 %108, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and183)
  %tobool184.not = icmp eq i64 %and183, 0
  br i1 %tobool184.not, label %land.lhs.true.if.end283_crit_edge, label %do.body186

land.lhs.true.if.end283_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end283

do.body186:                                       ; preds = %land.lhs.true
  %109 = ptrtoint ptr %attributes30 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %attributes30, align 4
  %or190 = or i32 %110, 2
  store i32 %or190, ptr %attributes30, align 4
  %111 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %13, align 4
  %113 = and i32 %112, -65536
  %114 = tail call i32 @llvm.bswap.i32(i32 %113)
  %conv195 = trunc i32 %114 to i16
  %vlan_ctag = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 9
  %115 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 %conv195, ptr %vlan_ctag, align 2
  %116 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %msg_enable, align 4
  %and198 = and i32 %117, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %do.body186.if.end283_crit_edge, label %do.body201

do.body186.if.end283_crit_edge:                   ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end283

do.body201:                                       ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_dev_read.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_dev_read, %if.then213)) #11
          to label %if.end283 [label %if.then213], !srcloc !117

if.then213:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #13
  %118 = ptrtoint ptr %vlan_ctag to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %vlan_ctag, align 2
  %conv215 = zext i16 %119 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_dev_read.__UNIQUE_ID_ddebug367, ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %conv215) #11
  br label %if.end283

if.else223:                                       ; preds = %do.end177
  %120 = ptrtoint ptr %attributes30 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %attributes30, align 4
  %and161.off = add nsw i32 %and161, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and161.off)
  %switch = icmp ult i32 %and161.off, 2
  br i1 %switch, label %do.body233, label %if.else249

do.body233:                                       ; preds = %if.else223
  call void @__sanitizer_cov_trace_pc() #13
  %and242 = and i32 %121, -514
  %122 = ptrtoint ptr %attributes30 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %and242, ptr %attributes30, align 4
  %rx_csum_errors = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 107, i32 9
  %123 = ptrtoint ptr %rx_csum_errors to i32
  call void @__asan_load8_noabort(i32 %123)
  %124 = load i64, ptr %rx_csum_errors, align 8
  %inc248 = add i64 %124, 1
  store i64 %inc248, ptr %rx_csum_errors, align 8
  br label %if.end283

if.else249:                                       ; preds = %if.else223
  %125 = and i32 %121, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool250.not = icmp ne i32 %125, 0
  %and161.off393 = add nsw i32 %and161, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and161.off393)
  %switch394 = icmp ult i32 %and161.off393, 2
  %or.cond395 = select i1 %tobool250.not, i1 %switch394, i1 false
  br i1 %or.cond395, label %do.body258, label %do.body275

do.body258:                                       ; preds = %if.else249
  call void @__sanitizer_cov_trace_pc() #13
  %and267 = and i32 %121, -514
  %126 = ptrtoint ptr %attributes30 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %and267, ptr %attributes30, align 4
  %rx_vxlan_csum_errors = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 107, i32 10
  %127 = ptrtoint ptr %rx_vxlan_csum_errors to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %rx_vxlan_csum_errors, align 8
  %inc273 = add i64 %128, 1
  store i64 %inc273, ptr %rx_vxlan_csum_errors, align 8
  br label %if.end283

do.body275:                                       ; preds = %if.else249
  call void @__sanitizer_cov_trace_pc() #13
  %errors = getelementptr inbounds %struct.xgbe_ring, ptr %3, i32 0, i32 1, i32 2
  %129 = ptrtoint ptr %errors to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %errors, align 8
  %or278 = or i32 %130, 8
  store i32 %or278, ptr %errors, align 8
  br label %if.end283

if.end283:                                        ; preds = %do.body275, %do.body258, %do.body233, %if.then213, %do.body201, %do.body186.if.end283_crit_edge, %land.lhs.true.if.end283_crit_edge, %if.then180.if.end283_crit_edge
  %queue_index = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 2
  %131 = ptrtoint ptr %queue_index to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %queue_index, align 4
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %1, i32 0, i32 107, i32 5, i32 %132
  %133 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %133)
  %134 = load i64, ptr %arrayidx, align 8
  %inc285 = add i64 %134, 1
  store i64 %inc285, ptr %arrayidx, align 8
  %135 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %len, align 2
  %conv288 = zext i16 %136 to i64
  %137 = load i32, ptr %queue_index, align 4
  %arrayidx291 = getelementptr %struct.xgbe_prv_data, ptr %1, i32 0, i32 107, i32 6, i32 %137
  %138 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %arrayidx291, align 8
  %add = add i64 %139, %conv288
  store i64 %add, ptr %arrayidx291, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end283, %if.end92.cleanup_crit_edge, %xgbe_get_rx_tstamp.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %xgbe_get_rx_tstamp.exit ], [ 0, %if.end283 ], [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end92.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_enable_int(ptr nocapture noundef %channel, i32 noundef %int_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %int_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %int_id, label %entry.return_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %do.body3
    i32 2, label %do.body10
    i32 3, label %do.body17
    i32 4, label %do.body24
    i32 5, label %do.body31
    i32 6, label %do.body38
    i32 7, label %do.body51
    i32 8, label %sw.bb57
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %saved_ier = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 8
  %1 = ptrtoint ptr %saved_ier to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %saved_ier, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb57, %do.body51, %do.body38, %do.body31, %do.body24, %do.body17, %do.body10, %do.body3, %entry.sw.epilog_crit_edge
  %.sink82 = phi i32 [ %2, %sw.bb57 ], [ 4096, %do.body51 ], [ 65, %do.body38 ], [ 256, %do.body31 ], [ 128, %do.body24 ], [ 64, %do.body17 ], [ 4, %do.body10 ], [ 2, %do.body3 ], [ 1, %entry.sw.epilog_crit_edge ]
  %curr_ier58 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %3 = ptrtoint ptr %curr_ier58 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %curr_ier58, align 16
  %or59 = or i32 %4, %.sink82
  store i32 %or59, ptr %curr_ier58, align 16
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 3
  %5 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %or59) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #11, !srcloc !114
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_disable_int(ptr nocapture noundef %channel, i32 noundef %int_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %int_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %int_id, label %entry.return_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body3
    i32 2, label %do.body10
    i32 3, label %do.body17
    i32 4, label %do.body24
    i32 5, label %do.body31
    i32 6, label %do.body38
    i32 7, label %do.body51
    i32 8, label %sw.bb57
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curr_ier = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %1 = ptrtoint ptr %curr_ier to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %curr_ier, align 16
  %and = and i32 %2, -2
  store i32 %and, ptr %curr_ier, align 16
  br label %sw.epilog

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curr_ier4 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %3 = ptrtoint ptr %curr_ier4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %curr_ier4, align 16
  %and5 = and i32 %4, -3
  store i32 %and5, ptr %curr_ier4, align 16
  br label %sw.epilog

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curr_ier11 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %5 = ptrtoint ptr %curr_ier11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %curr_ier11, align 16
  %and12 = and i32 %6, -5
  store i32 %and12, ptr %curr_ier11, align 16
  br label %sw.epilog

do.body17:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curr_ier18 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %7 = ptrtoint ptr %curr_ier18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %curr_ier18, align 16
  %and19 = and i32 %8, -65
  store i32 %and19, ptr %curr_ier18, align 16
  br label %sw.epilog

do.body24:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curr_ier25 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %9 = ptrtoint ptr %curr_ier25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %curr_ier25, align 16
  %and26 = and i32 %10, -129
  store i32 %and26, ptr %curr_ier25, align 16
  br label %sw.epilog

do.body31:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curr_ier32 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %11 = ptrtoint ptr %curr_ier32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curr_ier32, align 16
  %and33 = and i32 %12, -257
  store i32 %and33, ptr %curr_ier32, align 16
  br label %sw.epilog

do.body38:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curr_ier39 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %13 = ptrtoint ptr %curr_ier39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %curr_ier39, align 16
  %and46 = and i32 %14, -66
  store i32 %and46, ptr %curr_ier39, align 16
  br label %sw.epilog

do.body51:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curr_ier52 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %15 = ptrtoint ptr %curr_ier52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %curr_ier52, align 16
  %and53 = and i32 %16, -4097
  store i32 %and53, ptr %curr_ier52, align 16
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %curr_ier58 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %17 = ptrtoint ptr %curr_ier58 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %curr_ier58, align 16
  %saved_ier = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 8
  %19 = ptrtoint ptr %saved_ier to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %saved_ier, align 4
  store i32 0, ptr %curr_ier58, align 16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb57, %do.body51, %do.body38, %do.body31, %do.body24, %do.body17, %do.body10, %do.body3, %do.body
  %curr_ier60 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 7
  %20 = ptrtoint ptr %curr_ier60 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %curr_ier60, align 16
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 3
  %22 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %23, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %21) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #11, !srcloc !114
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_init(ptr noundef %pdata) #2 align 64 {
entry:
  %fifo.i = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_feat.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130
  %0 = ptrtoint ptr %hw_feat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_feat.i, align 8
  %and.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %and.i)
  %cmp.i = icmp ult i32 %and.i, 33
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %for.cond.preheader.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %tx_q_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %2 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_q_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp148.not.i = icmp eq i32 %3, 0
  br i1 %cmp148.not.i, label %for.cond.preheader.i.if.end_crit_edge, label %do.body.lr.ph.i

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %xgmac_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  br label %do.body.i

for.cond13.preheader.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1551.not.i = icmp eq i32 %11, 0
  br i1 %cmp1551.not.i, label %for.cond13.preheader.i.if.end_crit_edge, label %for.cond13.preheader.i.while.cond.preheader.i_crit_edge

for.cond13.preheader.i.while.cond.preheader.i_crit_edge: ; preds = %for.cond13.preheader.i
  br label %while.cond.preheader.i

for.cond13.preheader.i.if.end_crit_edge:          ; preds = %for.cond13.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.049.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %4 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4352
  %mul.i = shl i32 %i.049.i, 7
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %7 = or i32 %6, 16777216
  %8 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %9, i32 4352
  %add.ptr9.i = getelementptr i8, ptr %add.ptr7.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %7) #11, !srcloc !114
  %inc.i = add nuw i32 %i.049.i, 1
  %10 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_q_count.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %11
  br i1 %cmp1.i, label %do.body.i.do.body.i_crit_edge, label %for.cond13.preheader.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

while.cond.preheader.i:                           ; preds = %for.inc29.i.while.cond.preheader.i_crit_edge, %for.cond13.preheader.i.while.cond.preheader.i_crit_edge
  %i.152.i = phi i32 [ %inc30.i, %for.inc29.i.while.cond.preheader.i_crit_edge ], [ 0, %for.cond13.preheader.i.while.cond.preheader.i_crit_edge ]
  %mul19.i = shl i32 %i.152.i, 7
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %while.cond.preheader.i
  %dec50.i = phi i32 [ 1999, %while.cond.preheader.i ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %12 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %13, i32 4352
  %add.ptr20.i = getelementptr i8, ptr %add.ptr18.i, i32 %mul19.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool25.not.i = icmp eq i32 %15, 0
  br i1 %tobool25.not.i, label %for.inc29.i, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #11
  %dec.i = add nsw i32 %dec50.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.then, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

for.inc29.i:                                      ; preds = %land.rhs.i
  %inc30.i = add nuw i32 %i.152.i, 1
  %16 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_q_count.i, align 4
  %cmp15.i = icmp ult i32 %inc30.i, %17
  br i1 %cmp15.i, label %for.inc29.i.while.cond.preheader.i_crit_edge, label %for.inc29.i.if.end_crit_edge

for.inc29.i.if.end_crit_edge:                     ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.inc29.i.while.cond.preheader.i_crit_edge:     ; preds = %for.inc29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader.i

if.then:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %19, ptr noundef nonnull @.str.22) #15
  br label %cleanup

if.end:                                           ; preds = %for.inc29.i.if.end_crit_edge, %for.cond13.preheader.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge, %entry.if.end_crit_edge
  %xgmac_regs.i56 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %20 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i57 = getelementptr i8, ptr %21, i32 12292
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %23 = and i32 %22, 15188160
  %blen.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 76
  %24 = ptrtoint ptr %blen.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %blen.i, align 4
  %26 = lshr i32 %25, 1
  %shl.i = and i32 %26, 254
  %aal.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 78
  %27 = ptrtoint ptr %aal.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %aal.i, align 4
  %and14.i = shl i32 %28, 12
  %shl15.i = and i32 %and14.i, 4096
  %rd_osr_limit.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 79
  %29 = ptrtoint ptr %rd_osr_limit.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rd_osr_limit.i, align 8
  %sub.i = shl i32 %30, 16
  %and21.i = add i32 %sub.i, 4128768
  %shl22.i = and i32 %and21.i, 4128768
  %wr_osr_limit.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 80
  %31 = ptrtoint ptr %wr_osr_limit.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wr_osr_limit.i, align 4
  %sub28.i = shl i32 %32, 24
  %and29.i = add i32 %sub28.i, 1056964608
  %shl30.i = and i32 %and29.i, 1056964608
  %33 = or i32 %23, 17301504
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #11
  %or9.i = or i32 %shl.i, %34
  %or16.i = or i32 %or9.i, %shl15.i
  %or23.i = or i32 %or16.i, %shl22.i
  %or31.i = or i32 %or23.i, %shl30.i
  %35 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr35.i = getelementptr i8, ptr %36, i32 12292
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %or31.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35.i, i32 %37) #11, !srcloc !114
  %vdata.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %38 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vdata.i, align 4
  %tx_desc_prefetch.i = getelementptr inbounds %struct.xgbe_version_data, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %tx_desc_prefetch.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tx_desc_prefetch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i58 = icmp eq i32 %41, 0
  br i1 %tobool.not.i58, label %if.end.if.end.i_crit_edge, label %do.body36.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.body36.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr38.i = getelementptr i8, ptr %43, i32 12352
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %45 = and i32 %44, -117440513
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  %47 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdata.i, align 4
  %tx_desc_prefetch43.i = getelementptr inbounds %struct.xgbe_version_data, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %tx_desc_prefetch43.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_desc_prefetch43.i, align 4
  %and44.i = and i32 %50, 7
  %or46.i = or i32 %and44.i, %46
  %51 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr50.i = getelementptr i8, ptr %52, i32 12352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %53 = tail call i32 @llvm.bswap.i32(i32 %or46.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %53) #11, !srcloc !114
  br label %if.end.i

if.end.i:                                         ; preds = %do.body36.i, %if.end.if.end.i_crit_edge
  %54 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vdata.i, align 4
  %rx_desc_prefetch.i = getelementptr inbounds %struct.xgbe_version_data, ptr %55, i32 0, i32 10
  %56 = ptrtoint ptr %rx_desc_prefetch.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rx_desc_prefetch.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool54.not.i = icmp eq i32 %57, 0
  br i1 %tobool54.not.i, label %if.end.i.xgbe_config_dma_bus.exit_crit_edge, label %do.body56.i

if.end.i.xgbe_config_dma_bus.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_dma_bus.exit

do.body56.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr59.i = getelementptr i8, ptr %59, i32 12356
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %61 = and i32 %60, -117440513
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #11
  %63 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdata.i, align 4
  %rx_desc_prefetch64.i = getelementptr inbounds %struct.xgbe_version_data, ptr %64, i32 0, i32 10
  %65 = ptrtoint ptr %rx_desc_prefetch64.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %rx_desc_prefetch64.i, align 4
  %and65.i = and i32 %66, 7
  %or67.i = or i32 %and65.i, %62
  %67 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr71.i = getelementptr i8, ptr %68, i32 12356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %69 = tail call i32 @llvm.bswap.i32(i32 %or67.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 %69) #11, !srcloc !114
  br label %xgbe_config_dma_bus.exit

xgbe_config_dma_bus.exit:                         ; preds = %do.body56.i, %if.end.i.xgbe_config_dma_bus.exit_crit_edge
  %arcr.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 56
  %70 = ptrtoint ptr %arcr.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arcr.i, align 4
  %72 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i60 = getelementptr i8, ptr %73, i32 12304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %74 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %74) #11, !srcloc !114
  %awcr.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 57
  %75 = ptrtoint ptr %awcr.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %awcr.i, align 8
  %77 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr2.i61 = getelementptr i8, ptr %78, i32 12312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %79 = tail call i32 @llvm.bswap.i32(i32 %76) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i61, i32 %79) #11, !srcloc !114
  %awarcr.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 58
  %80 = ptrtoint ptr %awarcr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %awarcr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i62 = icmp eq i32 %81, 0
  br i1 %tobool.not.i62, label %xgbe_config_dma_bus.exit.xgbe_config_dma_cache.exit_crit_edge, label %if.then.i

xgbe_config_dma_bus.exit.xgbe_config_dma_cache.exit_crit_edge: ; preds = %xgbe_config_dma_bus.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_dma_cache.exit

if.then.i:                                        ; preds = %xgbe_config_dma_bus.exit
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr5.i = getelementptr i8, ptr %83, i32 12316
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %84 = tail call i32 @llvm.bswap.i32(i32 %81) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %84) #11, !srcloc !114
  br label %xgbe_config_dma_cache.exit

xgbe_config_dma_cache.exit:                       ; preds = %if.then.i, %xgbe_config_dma_bus.exit.xgbe_config_dma_cache.exit_crit_edge
  %channel_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %85 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp21.not.i = icmp eq i32 %86, 0
  br i1 %cmp21.not.i, label %xgbe_config_dma_cache.exit.xgbe_config_tso_mode.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i

xgbe_config_dma_cache.exit.xgbe_config_tso_mode.exitthread-pre-split_crit_edge: ; preds = %xgbe_config_dma_cache.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_tso_mode.exitthread-pre-split

for.body.lr.ph.i:                                 ; preds = %xgbe_config_dma_cache.exit
  %tx_osp_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 83
  br label %for.body.i

for.body.i:                                       ; preds = %do.body.i69.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i67, %do.body.i69.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.022.i
  %87 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx.i, align 4
  %tx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %88, i32 0, i32 11
  %89 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tx_ring.i, align 4
  %tobool.not.i64 = icmp eq ptr %90, null
  br i1 %tobool.not.i64, label %xgbe_config_osp_mode.exitthread-pre-split, label %do.body.i69

do.body.i69:                                      ; preds = %for.body.i
  %dma_regs.i = getelementptr inbounds %struct.xgbe_channel, ptr %88, i32 0, i32 3
  %91 = ptrtoint ptr %dma_regs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dma_regs.i, align 8
  %add.ptr.i65 = getelementptr i8, ptr %92, i32 4
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %94 = and i32 %93, -268435457
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #11
  %96 = ptrtoint ptr %tx_osp_mode.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tx_osp_mode.i, align 8
  %and4.i = shl i32 %97, 4
  %shl.i66 = and i32 %and4.i, 16
  %or.i = or i32 %shl.i66, %95
  %98 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i, align 4
  %dma_regs7.i = getelementptr inbounds %struct.xgbe_channel, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %dma_regs7.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dma_regs7.i, align 8
  %add.ptr8.i = getelementptr i8, ptr %101, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %102 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %102) #11, !srcloc !114
  %inc.i67 = add nuw i32 %i.022.i, 1
  %103 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %channel_count.i, align 8
  %cmp.i68 = icmp ult i32 %inc.i67, %104
  br i1 %cmp.i68, label %do.body.i69.for.body.i_crit_edge, label %do.body.i69.xgbe_config_osp_mode.exit_crit_edge

do.body.i69.xgbe_config_osp_mode.exit_crit_edge:  ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_osp_mode.exit

do.body.i69.for.body.i_crit_edge:                 ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xgbe_config_osp_mode.exitthread-pre-split:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pr = load i32, ptr %channel_count.i, align 8
  br label %xgbe_config_osp_mode.exit

xgbe_config_osp_mode.exit:                        ; preds = %xgbe_config_osp_mode.exitthread-pre-split, %do.body.i69.xgbe_config_osp_mode.exit_crit_edge
  %106 = phi i32 [ %.pr, %xgbe_config_osp_mode.exitthread-pre-split ], [ %104, %do.body.i69.xgbe_config_osp_mode.exit_crit_edge ]
  %pbl1.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 77
  %107 = ptrtoint ptr %pbl1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pbl1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %108)
  %cmp.i70 = icmp ugt i32 %108, 32
  %spec.select1.i = select i1 %cmp.i70, i32 65536, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp32.not.i = icmp eq i32 %106, 0
  br i1 %cmp32.not.i, label %xgbe_config_pbl_val.exitthread-pre-split, label %do.body.lr.ph.i72

do.body.lr.ph.i72:                                ; preds = %xgbe_config_osp_mode.exit
  %shr.i = lshr i32 %108, 3
  %spec.select.i = select i1 %cmp.i70, i32 %shr.i, i32 %108
  %and24.i = shl i32 %spec.select.i, 16
  %shl25.i = and i32 %and24.i, 4128768
  br label %do.body.i78

do.body.i78:                                      ; preds = %for.inc.i.do.body.i78_crit_edge, %do.body.lr.ph.i72
  %i.03.i = phi i32 [ 0, %do.body.lr.ph.i72 ], [ %inc.i80, %for.inc.i.do.body.i78_crit_edge ]
  %arrayidx.i73 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.03.i
  %109 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i73, align 4
  %dma_regs.i74 = getelementptr inbounds %struct.xgbe_channel, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %dma_regs.i74 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dma_regs.i74, align 8
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %112) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %114 = and i32 %113, -257
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #11
  %or.i75 = or i32 %115, %spec.select1.i
  %116 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i73, align 4
  %dma_regs8.i = getelementptr inbounds %struct.xgbe_channel, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %dma_regs8.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dma_regs8.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %120 = tail call i32 @llvm.bswap.i32(i32 %or.i75) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %120) #11, !srcloc !114
  %121 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i73, align 4
  %tx_ring.i76 = getelementptr inbounds %struct.xgbe_channel, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %tx_ring.i76 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %tx_ring.i76, align 4
  %tobool.not.i77 = icmp eq ptr %124, null
  br i1 %tobool.not.i77, label %do.body.i78.if.end35.i_crit_edge, label %do.body15.i

do.body.i78.if.end35.i_crit_edge:                 ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

do.body15.i:                                      ; preds = %do.body.i78
  call void @__sanitizer_cov_trace_pc() #13
  %dma_regs19.i = getelementptr inbounds %struct.xgbe_channel, ptr %122, i32 0, i32 3
  %125 = ptrtoint ptr %dma_regs19.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dma_regs19.i, align 8
  %add.ptr20.i79 = getelementptr i8, ptr %126, i32 4
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i79) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %128 = and i32 %127, -16129
  %129 = tail call i32 @llvm.bswap.i32(i32 %128) #11
  %or26.i = or i32 %129, %shl25.i
  %130 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i73, align 4
  %dma_regs31.i = getelementptr inbounds %struct.xgbe_channel, ptr %131, i32 0, i32 3
  %132 = ptrtoint ptr %dma_regs31.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dma_regs31.i, align 8
  %add.ptr32.i = getelementptr i8, ptr %133, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %134 = tail call i32 @llvm.bswap.i32(i32 %or26.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %134) #11, !srcloc !114
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.body15.i, %do.body.i78.if.end35.i_crit_edge
  %135 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %arrayidx.i73, align 4
  %rx_ring.i = getelementptr inbounds %struct.xgbe_channel, ptr %136, i32 0, i32 12
  %137 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %rx_ring.i, align 16
  %tobool38.not.i = icmp eq ptr %138, null
  br i1 %tobool38.not.i, label %if.end35.i.for.inc.i_crit_edge, label %do.body40.i

if.end35.i.for.inc.i_crit_edge:                   ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

do.body40.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %dma_regs44.i = getelementptr inbounds %struct.xgbe_channel, ptr %136, i32 0, i32 3
  %139 = ptrtoint ptr %dma_regs44.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dma_regs44.i, align 8
  %add.ptr45.i = getelementptr i8, ptr %140, i32 8
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %142 = and i32 %141, -16129
  %143 = tail call i32 @llvm.bswap.i32(i32 %142) #11
  %or51.i = or i32 %143, %shl25.i
  %144 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx.i73, align 4
  %dma_regs56.i = getelementptr inbounds %struct.xgbe_channel, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %dma_regs56.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dma_regs56.i, align 8
  %add.ptr57.i = getelementptr i8, ptr %147, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %148 = tail call i32 @llvm.bswap.i32(i32 %or51.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57.i, i32 %148) #11, !srcloc !114
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.body40.i, %if.end35.i.for.inc.i_crit_edge
  %inc.i80 = add nuw i32 %i.03.i, 1
  %149 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %channel_count.i, align 8
  %cmp3.i = icmp ult i32 %inc.i80, %150
  br i1 %cmp3.i, label %for.inc.i.do.body.i78_crit_edge, label %for.inc.i.xgbe_config_pbl_val.exit_crit_edge

for.inc.i.xgbe_config_pbl_val.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_pbl_val.exit

for.inc.i.do.body.i78_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i78

xgbe_config_pbl_val.exitthread-pre-split:         ; preds = %xgbe_config_osp_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  %151 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %.pr313 = load i32, ptr %channel_count.i, align 8
  br label %xgbe_config_pbl_val.exit

xgbe_config_pbl_val.exit:                         ; preds = %xgbe_config_pbl_val.exitthread-pre-split, %for.inc.i.xgbe_config_pbl_val.exit_crit_edge
  %152 = phi i32 [ %.pr313, %xgbe_config_pbl_val.exitthread-pre-split ], [ %150, %for.inc.i.xgbe_config_pbl_val.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp21.not.i82 = icmp eq i32 %152, 0
  br i1 %cmp21.not.i82, label %xgbe_config_pbl_val.exit.xgbe_config_rx_coalesce.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i83

xgbe_config_pbl_val.exit.xgbe_config_rx_coalesce.exitthread-pre-split_crit_edge: ; preds = %xgbe_config_pbl_val.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rx_coalesce.exitthread-pre-split

for.body.lr.ph.i83:                               ; preds = %xgbe_config_pbl_val.exit
  %rx_riwt.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 90
  br label %for.body.i88

for.body.i88:                                     ; preds = %do.body.i97.for.body.i88_crit_edge, %for.body.lr.ph.i83
  %i.022.i84 = phi i32 [ 0, %for.body.lr.ph.i83 ], [ %inc.i95, %do.body.i97.for.body.i88_crit_edge ]
  %arrayidx.i85 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.022.i84
  %153 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %arrayidx.i85, align 4
  %rx_ring.i86 = getelementptr inbounds %struct.xgbe_channel, ptr %154, i32 0, i32 12
  %155 = ptrtoint ptr %rx_ring.i86 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %rx_ring.i86, align 16
  %tobool.not.i87 = icmp eq ptr %156, null
  br i1 %tobool.not.i87, label %for.body.i88.xgbe_config_rx_coalesce.exitthread-pre-split_crit_edge, label %do.body.i97

for.body.i88.xgbe_config_rx_coalesce.exitthread-pre-split_crit_edge: ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rx_coalesce.exitthread-pre-split

do.body.i97:                                      ; preds = %for.body.i88
  %dma_regs.i89 = getelementptr inbounds %struct.xgbe_channel, ptr %154, i32 0, i32 3
  %157 = ptrtoint ptr %dma_regs.i89 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dma_regs.i89, align 8
  %add.ptr.i90 = getelementptr i8, ptr %158, i32 60
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i90) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %160 = and i32 %159, 16777215
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #11
  %162 = ptrtoint ptr %rx_riwt.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %rx_riwt.i, align 4
  %and4.i91 = and i32 %163, 255
  %or.i92 = or i32 %and4.i91, %161
  %164 = ptrtoint ptr %arrayidx.i85 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i85, align 4
  %dma_regs7.i93 = getelementptr inbounds %struct.xgbe_channel, ptr %165, i32 0, i32 3
  %166 = ptrtoint ptr %dma_regs7.i93 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dma_regs7.i93, align 8
  %add.ptr8.i94 = getelementptr i8, ptr %167, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %168 = tail call i32 @llvm.bswap.i32(i32 %or.i92) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i94, i32 %168) #11, !srcloc !114
  %inc.i95 = add nuw i32 %i.022.i84, 1
  %169 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %channel_count.i, align 8
  %cmp.i96 = icmp ult i32 %inc.i95, %170
  br i1 %cmp.i96, label %do.body.i97.for.body.i88_crit_edge, label %do.body.i97.xgbe_config_rx_coalesce.exit_crit_edge

do.body.i97.xgbe_config_rx_coalesce.exit_crit_edge: ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rx_coalesce.exit

do.body.i97.for.body.i88_crit_edge:               ; preds = %do.body.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i88

xgbe_config_rx_coalesce.exitthread-pre-split:     ; preds = %for.body.i88.xgbe_config_rx_coalesce.exitthread-pre-split_crit_edge, %xgbe_config_pbl_val.exit.xgbe_config_rx_coalesce.exitthread-pre-split_crit_edge
  %171 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %.pr315 = load i32, ptr %channel_count.i, align 8
  br label %xgbe_config_rx_coalesce.exit

xgbe_config_rx_coalesce.exit:                     ; preds = %xgbe_config_rx_coalesce.exitthread-pre-split, %do.body.i97.xgbe_config_rx_coalesce.exit_crit_edge
  %172 = phi i32 [ %.pr315, %xgbe_config_rx_coalesce.exitthread-pre-split ], [ %170, %do.body.i97.xgbe_config_rx_coalesce.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp21.not.i99 = icmp eq i32 %172, 0
  br i1 %cmp21.not.i99, label %xgbe_config_rx_coalesce.exit.xgbe_config_rx_buffer_size.exitthread-pre-split_crit_edge, label %for.body.lr.ph.i100

xgbe_config_rx_coalesce.exit.xgbe_config_rx_buffer_size.exitthread-pre-split_crit_edge: ; preds = %xgbe_config_rx_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rx_buffer_size.exitthread-pre-split

for.body.lr.ph.i100:                              ; preds = %xgbe_config_rx_coalesce.exit
  %rx_buf_size.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 93
  br label %for.body.i105

for.body.i105:                                    ; preds = %do.body.i115.for.body.i105_crit_edge, %for.body.lr.ph.i100
  %i.022.i101 = phi i32 [ 0, %for.body.lr.ph.i100 ], [ %inc.i113, %do.body.i115.for.body.i105_crit_edge ]
  %arrayidx.i102 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.022.i101
  %173 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx.i102, align 4
  %rx_ring.i103 = getelementptr inbounds %struct.xgbe_channel, ptr %174, i32 0, i32 12
  %175 = ptrtoint ptr %rx_ring.i103 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %rx_ring.i103, align 16
  %tobool.not.i104 = icmp eq ptr %176, null
  br i1 %tobool.not.i104, label %for.body.i105.xgbe_config_rx_buffer_size.exitthread-pre-split_crit_edge, label %do.body.i115

for.body.i105.xgbe_config_rx_buffer_size.exitthread-pre-split_crit_edge: ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rx_buffer_size.exitthread-pre-split

do.body.i115:                                     ; preds = %for.body.i105
  %dma_regs.i106 = getelementptr inbounds %struct.xgbe_channel, ptr %174, i32 0, i32 3
  %177 = ptrtoint ptr %dma_regs.i106 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dma_regs.i106, align 8
  %add.ptr.i107 = getelementptr i8, ptr %178, i32 8
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %180 = and i32 %179, 25231359
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #11
  %182 = ptrtoint ptr %rx_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rx_buf_size.i, align 8
  %and4.i108 = shl i32 %183, 1
  %shl.i109 = and i32 %and4.i108, 32766
  %or.i110 = or i32 %shl.i109, %181
  %184 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx.i102, align 4
  %dma_regs7.i111 = getelementptr inbounds %struct.xgbe_channel, ptr %185, i32 0, i32 3
  %186 = ptrtoint ptr %dma_regs7.i111 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dma_regs7.i111, align 8
  %add.ptr8.i112 = getelementptr i8, ptr %187, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %188 = tail call i32 @llvm.bswap.i32(i32 %or.i110) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i112, i32 %188) #11, !srcloc !114
  %inc.i113 = add nuw i32 %i.022.i101, 1
  %189 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %channel_count.i, align 8
  %cmp.i114 = icmp ult i32 %inc.i113, %190
  br i1 %cmp.i114, label %do.body.i115.for.body.i105_crit_edge, label %do.body.i115.xgbe_config_rx_buffer_size.exit_crit_edge

do.body.i115.xgbe_config_rx_buffer_size.exit_crit_edge: ; preds = %do.body.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rx_buffer_size.exit

do.body.i115.for.body.i105_crit_edge:             ; preds = %do.body.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i105

xgbe_config_rx_buffer_size.exitthread-pre-split:  ; preds = %for.body.i105.xgbe_config_rx_buffer_size.exitthread-pre-split_crit_edge, %xgbe_config_rx_coalesce.exit.xgbe_config_rx_buffer_size.exitthread-pre-split_crit_edge
  %191 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %.pr317 = load i32, ptr %channel_count.i, align 8
  br label %xgbe_config_rx_buffer_size.exit

xgbe_config_rx_buffer_size.exit:                  ; preds = %xgbe_config_rx_buffer_size.exitthread-pre-split, %do.body.i115.xgbe_config_rx_buffer_size.exit_crit_edge
  %192 = phi i32 [ %.pr317, %xgbe_config_rx_buffer_size.exitthread-pre-split ], [ %190, %do.body.i115.xgbe_config_rx_buffer_size.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp19.not.i = icmp eq i32 %192, 0
  br i1 %cmp19.not.i, label %xgbe_config_rx_buffer_size.exit.xgbe_config_tso_mode.exitthread-pre-split_crit_edge, label %xgbe_config_rx_buffer_size.exit.for.body.i120_crit_edge

xgbe_config_rx_buffer_size.exit.for.body.i120_crit_edge: ; preds = %xgbe_config_rx_buffer_size.exit
  br label %for.body.i120

xgbe_config_rx_buffer_size.exit.xgbe_config_tso_mode.exitthread-pre-split_crit_edge: ; preds = %xgbe_config_rx_buffer_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_tso_mode.exitthread-pre-split

for.body.i120:                                    ; preds = %do.body.i126.for.body.i120_crit_edge, %xgbe_config_rx_buffer_size.exit.for.body.i120_crit_edge
  %i.020.i = phi i32 [ %inc.i124, %do.body.i126.for.body.i120_crit_edge ], [ 0, %xgbe_config_rx_buffer_size.exit.for.body.i120_crit_edge ]
  %arrayidx.i117 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.020.i
  %193 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %arrayidx.i117, align 4
  %tx_ring.i118 = getelementptr inbounds %struct.xgbe_channel, ptr %194, i32 0, i32 11
  %195 = ptrtoint ptr %tx_ring.i118 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %tx_ring.i118, align 4
  %tobool.not.i119 = icmp eq ptr %196, null
  br i1 %tobool.not.i119, label %for.body.i120.xgbe_config_tso_mode.exitthread-pre-split_crit_edge, label %do.body.i126

for.body.i120.xgbe_config_tso_mode.exitthread-pre-split_crit_edge: ; preds = %for.body.i120
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_tso_mode.exitthread-pre-split

do.body.i126:                                     ; preds = %for.body.i120
  %dma_regs.i121 = getelementptr inbounds %struct.xgbe_channel, ptr %194, i32 0, i32 3
  %197 = ptrtoint ptr %dma_regs.i121 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %dma_regs.i121, align 8
  %add.ptr.i122 = getelementptr i8, ptr %198, i32 4
  %199 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %200 = or i32 %199, 1048576
  %201 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %arrayidx.i117, align 4
  %dma_regs6.i = getelementptr inbounds %struct.xgbe_channel, ptr %202, i32 0, i32 3
  %203 = ptrtoint ptr %dma_regs6.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dma_regs6.i, align 8
  %add.ptr7.i123 = getelementptr i8, ptr %204, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i123, i32 %200) #11, !srcloc !114
  %inc.i124 = add nuw i32 %i.020.i, 1
  %205 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %channel_count.i, align 8
  %cmp.i125 = icmp ult i32 %inc.i124, %206
  br i1 %cmp.i125, label %do.body.i126.for.body.i120_crit_edge, label %do.body.i126.xgbe_config_tso_mode.exit_crit_edge

do.body.i126.xgbe_config_tso_mode.exit_crit_edge: ; preds = %do.body.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_tso_mode.exit

do.body.i126.for.body.i120_crit_edge:             ; preds = %do.body.i126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i120

xgbe_config_tso_mode.exitthread-pre-split:        ; preds = %for.body.i120.xgbe_config_tso_mode.exitthread-pre-split_crit_edge, %xgbe_config_rx_buffer_size.exit.xgbe_config_tso_mode.exitthread-pre-split_crit_edge, %xgbe_config_dma_cache.exit.xgbe_config_tso_mode.exitthread-pre-split_crit_edge
  %207 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %.pr319 = load i32, ptr %channel_count.i, align 8
  br label %xgbe_config_tso_mode.exit

xgbe_config_tso_mode.exit:                        ; preds = %xgbe_config_tso_mode.exitthread-pre-split, %do.body.i126.xgbe_config_tso_mode.exit_crit_edge
  %208 = phi i32 [ %.pr319, %xgbe_config_tso_mode.exitthread-pre-split ], [ %206, %do.body.i126.xgbe_config_tso_mode.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp36.not.i = icmp eq i32 %208, 0
  br i1 %cmp36.not.i, label %xgbe_config_tso_mode.exit.xgbe_config_sph_mode.exit_crit_edge, label %xgbe_config_tso_mode.exit.for.body.i131_crit_edge

xgbe_config_tso_mode.exit.for.body.i131_crit_edge: ; preds = %xgbe_config_tso_mode.exit
  br label %for.body.i131

xgbe_config_tso_mode.exit.xgbe_config_sph_mode.exit_crit_edge: ; preds = %xgbe_config_tso_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_sph_mode.exit

for.body.i131:                                    ; preds = %do.body.i136.for.body.i131_crit_edge, %xgbe_config_tso_mode.exit.for.body.i131_crit_edge
  %i.037.i = phi i32 [ %inc.i134, %do.body.i136.for.body.i131_crit_edge ], [ 0, %xgbe_config_tso_mode.exit.for.body.i131_crit_edge ]
  %arrayidx.i128 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.037.i
  %209 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx.i128, align 4
  %rx_ring.i129 = getelementptr inbounds %struct.xgbe_channel, ptr %210, i32 0, i32 12
  %211 = ptrtoint ptr %rx_ring.i129 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rx_ring.i129, align 16
  %tobool.not.i130 = icmp eq ptr %212, null
  br i1 %tobool.not.i130, label %for.body.i131.xgbe_config_sph_mode.exit_crit_edge, label %do.body.i136

for.body.i131.xgbe_config_sph_mode.exit_crit_edge: ; preds = %for.body.i131
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_sph_mode.exit

do.body.i136:                                     ; preds = %for.body.i131
  %dma_regs.i132 = getelementptr inbounds %struct.xgbe_channel, ptr %210, i32 0, i32 3
  %213 = ptrtoint ptr %dma_regs.i132 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %dma_regs.i132, align 8
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %214) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %216 = or i32 %215, 1
  %217 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx.i128, align 4
  %dma_regs6.i133 = getelementptr inbounds %struct.xgbe_channel, ptr %218, i32 0, i32 3
  %219 = ptrtoint ptr %dma_regs6.i133 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %dma_regs6.i133, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %216) #11, !srcloc !114
  %inc.i134 = add nuw i32 %i.037.i, 1
  %221 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %channel_count.i, align 8
  %cmp.i135 = icmp ult i32 %inc.i134, %222
  br i1 %cmp.i135, label %do.body.i136.for.body.i131_crit_edge, label %do.body.i136.xgbe_config_sph_mode.exit_crit_edge

do.body.i136.xgbe_config_sph_mode.exit_crit_edge: ; preds = %do.body.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_sph_mode.exit

do.body.i136.for.body.i131_crit_edge:             ; preds = %do.body.i136
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i131

xgbe_config_sph_mode.exit:                        ; preds = %do.body.i136.xgbe_config_sph_mode.exit_crit_edge, %for.body.i131.xgbe_config_sph_mode.exit_crit_edge, %xgbe_config_tso_mode.exit.xgbe_config_sph_mode.exit_crit_edge
  %223 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr12.i = getelementptr i8, ptr %224, i32 4
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %226 = and i32 %225, -7340033
  %227 = or i32 %226, 2097152
  %228 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr20.i138 = getelementptr i8, ptr %229, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i138, i32 %227) #11, !srcloc !114
  %rss.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 24
  %230 = ptrtoint ptr %rss.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %rss.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool.not.i139 = icmp eq i32 %231, 0
  br i1 %tobool.not.i139, label %xgbe_config_sph_mode.exit.xgbe_config_rss.exit_crit_edge, label %if.end.i141

xgbe_config_sph_mode.exit.xgbe_config_rss.exit_crit_edge: ; preds = %xgbe_config_sph_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rss.exit

if.end.i141:                                      ; preds = %xgbe_config_sph_mode.exit
  %232 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %pdata, align 8
  %features.i = getelementptr inbounds %struct.net_device, ptr %233, i32 0, i32 23
  %234 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %features.i, align 16
  %and.i140 = and i64 %235, 549755813888
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i140)
  %tobool1.not.i = icmp eq i64 %and.i140, 0
  br i1 %tobool1.not.i, label %if.end4.thread.i, label %if.end4.i

if.end4.thread.i:                                 ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #13
  %236 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i.i = getelementptr i8, ptr %237, i32 3200
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %239 = and i32 %238, -16777217
  %240 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %241, i32 3200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %239) #11, !srcloc !114
  br label %xgbe_config_rss.exit

if.end4.i:                                        ; preds = %if.end.i141
  %call.i = tail call i32 @xgbe_enable_rss(ptr noundef %pdata) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.xgbe_config_rss.exit_crit_edge, label %if.then6.i

if.end4.i.xgbe_config_rss.exit_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rss.exit

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %242 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %243, ptr noundef nonnull @.str.23) #15
  br label %xgbe_config_rss.exit

xgbe_config_rss.exit:                             ; preds = %if.then6.i, %if.end4.i.xgbe_config_rss.exit_crit_edge, %if.end4.thread.i, %xgbe_config_sph_mode.exit.xgbe_config_rss.exit_crit_edge
  %wrapper_tx_desc_init = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 53, i32 5
  %244 = ptrtoint ptr %wrapper_tx_desc_init to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %wrapper_tx_desc_init, align 4
  tail call void %245(ptr noundef %pdata) #11
  %wrapper_rx_desc_init = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 53, i32 6
  %246 = ptrtoint ptr %wrapper_rx_desc_init to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %wrapper_rx_desc_init, align 4
  tail call void %247(ptr noundef %pdata) #11
  %channel_irq_mode.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 49
  %248 = ptrtoint ptr %channel_irq_mode.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %channel_irq_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool.not.i142 = icmp eq i32 %249, 0
  br i1 %tobool.not.i142, label %xgbe_config_rss.exit.if.end.i150_crit_edge, label %do.body.i148

xgbe_config_rss.exit.if.end.i150_crit_edge:       ; preds = %xgbe_config_rss.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i150

do.body.i148:                                     ; preds = %xgbe_config_rss.exit
  call void @__sanitizer_cov_trace_pc() #13
  %250 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i144 = getelementptr i8, ptr %251, i32 12288
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %253 = and i32 %252, -3145729
  %254 = tail call i32 @llvm.bswap.i32(i32 %253) #11
  %255 = ptrtoint ptr %channel_irq_mode.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %channel_irq_mode.i, align 8
  %and3.i = shl i32 %256, 12
  %shl.i145 = and i32 %and3.i, 12288
  %or.i146 = or i32 %shl.i145, %254
  %257 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr5.i147 = getelementptr i8, ptr %258, i32 12288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %259 = tail call i32 @llvm.bswap.i32(i32 %or.i146) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i147, i32 %259) #11, !srcloc !114
  br label %if.end.i150

if.end.i150:                                      ; preds = %do.body.i148, %xgbe_config_rss.exit.if.end.i150_crit_edge
  %260 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %channel_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %261)
  %cmp130.not.i = icmp eq i32 %261, 0
  br i1 %cmp130.not.i, label %if.end.i150.xgbe_enable_dma_interrupts.exit_crit_edge, label %for.body.lr.ph.i152

if.end.i150.xgbe_enable_dma_interrupts.exit_crit_edge: ; preds = %if.end.i150
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_enable_dma_interrupts.exit

for.body.lr.ph.i152:                              ; preds = %if.end.i150
  %262 = ptrtoint ptr %hw_feat.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %hw_feat.i, align 8
  %and8.i = and i32 %263, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %and8.i)
  %cmp14.i = icmp ult i32 %and8.i, 33
  %..i = select i1 %cmp14.i, i32 102400, i32 53248
  %per_channel_irq.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 46
  %or62.i = or i32 %..i, 1
  br label %for.body.i156

for.body.i156:                                    ; preds = %if.end90.i.for.body.i156_crit_edge, %for.body.lr.ph.i152
  %i.0131.i = phi i32 [ 0, %for.body.lr.ph.i152 ], [ %inc.i159, %if.end90.i.for.body.i156_crit_edge ]
  %arrayidx.i153 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.0131.i
  %264 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %arrayidx.i153, align 4
  %dma_regs.i154 = getelementptr inbounds %struct.xgbe_channel, ptr %265, i32 0, i32 3
  %266 = ptrtoint ptr %dma_regs.i154 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %dma_regs.i154, align 8
  %add.ptr10.i = getelementptr i8, ptr %267, i32 96
  %268 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %269 = ptrtoint ptr %dma_regs.i154 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %dma_regs.i154, align 8
  %add.ptr13.i = getelementptr i8, ptr %270, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %268) #11, !srcloc !114
  %curr_ier.i = getelementptr inbounds %struct.xgbe_channel, ptr %265, i32 0, i32 7
  %271 = ptrtoint ptr %curr_ier.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %..i, ptr %curr_ier.i, align 16
  %tx_ring.i155 = getelementptr inbounds %struct.xgbe_channel, ptr %265, i32 0, i32 11
  %272 = ptrtoint ptr %tx_ring.i155 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %tx_ring.i155, align 4
  %tobool52.not.i = icmp eq ptr %273, null
  br i1 %tobool52.not.i, label %for.body.i156.if.end66.i_crit_edge, label %if.then53.i

for.body.i156.if.end66.i_crit_edge:               ; preds = %for.body.i156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66.i

if.then53.i:                                      ; preds = %for.body.i156
  %274 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool54.not.i157 = icmp eq i32 %275, 0
  br i1 %tobool54.not.i157, label %if.then53.i.do.body58.i_crit_edge, label %lor.lhs.false.i

if.then53.i.do.body58.i_crit_edge:                ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body58.i

lor.lhs.false.i:                                  ; preds = %if.then53.i
  %276 = ptrtoint ptr %channel_irq_mode.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %channel_irq_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %277)
  %tobool56.not.i = icmp eq i32 %277, 0
  br i1 %tobool56.not.i, label %lor.lhs.false.i.if.end66.i_crit_edge, label %lor.lhs.false.i.do.body58.i_crit_edge

lor.lhs.false.i.do.body58.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body58.i

lor.lhs.false.i.if.end66.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66.i

do.body58.i:                                      ; preds = %lor.lhs.false.i.do.body58.i_crit_edge, %if.then53.i.do.body58.i_crit_edge
  %278 = ptrtoint ptr %curr_ier.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %or62.i, ptr %curr_ier.i, align 16
  br label %if.end66.i

if.end66.i:                                       ; preds = %do.body58.i, %lor.lhs.false.i.if.end66.i_crit_edge, %for.body.i156.if.end66.i_crit_edge
  %rx_ring.i158 = getelementptr inbounds %struct.xgbe_channel, ptr %265, i32 0, i32 12
  %279 = ptrtoint ptr %rx_ring.i158 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %rx_ring.i158, align 16
  %tobool67.not.i = icmp eq ptr %280, null
  br i1 %tobool67.not.i, label %if.end66.i.if.end90.i_crit_edge, label %do.body69.i

if.end66.i.if.end90.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

do.body69.i:                                      ; preds = %if.end66.i
  %281 = ptrtoint ptr %curr_ier.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %curr_ier.i, align 16
  %or73.i = or i32 %282, 128
  store i32 %or73.i, ptr %curr_ier.i, align 16
  %283 = ptrtoint ptr %per_channel_irq.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %per_channel_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool77.not.i = icmp eq i32 %284, 0
  br i1 %tobool77.not.i, label %do.body69.i.do.body82.i_crit_edge, label %lor.lhs.false78.i

do.body69.i.do.body82.i_crit_edge:                ; preds = %do.body69.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82.i

lor.lhs.false78.i:                                ; preds = %do.body69.i
  %285 = ptrtoint ptr %channel_irq_mode.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %channel_irq_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %286)
  %tobool80.not.i = icmp eq i32 %286, 0
  br i1 %tobool80.not.i, label %lor.lhs.false78.i.if.end90.i_crit_edge, label %lor.lhs.false78.i.do.body82.i_crit_edge

lor.lhs.false78.i.do.body82.i_crit_edge:          ; preds = %lor.lhs.false78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body82.i

lor.lhs.false78.i.if.end90.i_crit_edge:           ; preds = %lor.lhs.false78.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end90.i

do.body82.i:                                      ; preds = %lor.lhs.false78.i.do.body82.i_crit_edge, %do.body69.i.do.body82.i_crit_edge
  %or86.i = or i32 %282, 192
  %287 = ptrtoint ptr %curr_ier.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store i32 %or86.i, ptr %curr_ier.i, align 16
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.body82.i, %lor.lhs.false78.i.if.end90.i_crit_edge, %if.end66.i.if.end90.i_crit_edge
  %288 = ptrtoint ptr %curr_ier.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %curr_ier.i, align 16
  %290 = ptrtoint ptr %dma_regs.i154 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dma_regs.i154, align 8
  %add.ptr93.i = getelementptr i8, ptr %291, i32 56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %292 = tail call i32 @llvm.bswap.i32(i32 %289) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93.i, i32 %292) #11, !srcloc !114
  %inc.i159 = add nuw i32 %i.0131.i, 1
  %293 = ptrtoint ptr %channel_count.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %channel_count.i, align 8
  %cmp.i160 = icmp ult i32 %inc.i159, %294
  br i1 %cmp.i160, label %if.end90.i.for.body.i156_crit_edge, label %if.end90.i.xgbe_enable_dma_interrupts.exit_crit_edge

if.end90.i.xgbe_enable_dma_interrupts.exit_crit_edge: ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_enable_dma_interrupts.exit

if.end90.i.for.body.i156_crit_edge:               ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i156

xgbe_enable_dma_interrupts.exit:                  ; preds = %if.end90.i.xgbe_enable_dma_interrupts.exit_crit_edge, %if.end.i150.xgbe_enable_dma_interrupts.exit_crit_edge
  %295 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i162 = getelementptr i8, ptr %296, i32 4096
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %298 = and i32 %297, -1610612737
  %299 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr3.i = getelementptr i8, ptr %300, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %298) #11, !srcloc !114
  %tc_cnt.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 25
  %301 = ptrtoint ptr %tc_cnt.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %tc_cnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %302)
  %cmp80.not.i = icmp eq i32 %302, 0
  br i1 %cmp80.not.i, label %xgbe_enable_dma_interrupts.exit.xgbe_config_mtl_mode.exit_crit_edge, label %xgbe_enable_dma_interrupts.exit.do.body6.i_crit_edge

xgbe_enable_dma_interrupts.exit.do.body6.i_crit_edge: ; preds = %xgbe_enable_dma_interrupts.exit
  br label %do.body6.i

xgbe_enable_dma_interrupts.exit.xgbe_config_mtl_mode.exit_crit_edge: ; preds = %xgbe_enable_dma_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_mtl_mode.exit

do.body6.i:                                       ; preds = %do.body6.i.do.body6.i_crit_edge, %xgbe_enable_dma_interrupts.exit.do.body6.i_crit_edge
  %i.081.i = phi i32 [ %inc.i165, %do.body6.i.do.body6.i_crit_edge ], [ 0, %xgbe_enable_dma_interrupts.exit.do.body6.i_crit_edge ]
  %303 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %xgmac_regs.i56, align 4
  %mul.i163 = shl i32 %i.081.i, 7
  %add.ptr10.i164 = getelementptr i8, ptr %304, i32 4368
  %add.ptr11.i = getelementptr i8, ptr %add.ptr10.i164, i32 %mul.i163
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %306 = and i32 %305, -50331649
  %307 = or i32 %306, 33554432
  %308 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr21.i = getelementptr i8, ptr %309, i32 4368
  %add.ptr22.i = getelementptr i8, ptr %add.ptr21.i, i32 %mul.i163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %307) #11, !srcloc !114
  %310 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr30.i = getelementptr i8, ptr %311, i32 4376
  %add.ptr31.i = getelementptr i8, ptr %add.ptr30.i, i32 %mul.i163
  %312 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %313 = and i32 %312, 57599
  %314 = or i32 %313, 16777216
  %315 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr41.i = getelementptr i8, ptr %316, i32 4376
  %add.ptr42.i = getelementptr i8, ptr %add.ptr41.i, i32 %mul.i163
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %314) #11, !srcloc !114
  %inc.i165 = add nuw i32 %i.081.i, 1
  %317 = ptrtoint ptr %tc_cnt.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %tc_cnt.i, align 4
  %cmp.i166 = icmp ult i32 %inc.i165, %318
  br i1 %cmp.i166, label %do.body6.i.do.body6.i_crit_edge, label %do.body6.i.xgbe_config_mtl_mode.exit_crit_edge

do.body6.i.xgbe_config_mtl_mode.exit_crit_edge:   ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_mtl_mode.exit

do.body6.i.do.body6.i_crit_edge:                  ; preds = %do.body6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6.i

xgbe_config_mtl_mode.exit:                        ; preds = %do.body6.i.xgbe_config_mtl_mode.exit_crit_edge, %xgbe_enable_dma_interrupts.exit.xgbe_config_mtl_mode.exit_crit_edge
  %319 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr48.i = getelementptr i8, ptr %320, i32 4096
  %321 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %322 = and i32 %321, -67108865
  %323 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr56.i = getelementptr i8, ptr %324, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %322) #11, !srcloc !114
  tail call fastcc void @xgbe_config_queue_mapping(ptr noundef %pdata)
  %tx_q_count.i167 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %325 = ptrtoint ptr %tx_q_count.i167 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %tx_q_count.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %cmp19.not.i168 = icmp eq i32 %326, 0
  br i1 %cmp19.not.i168, label %xgbe_config_mtl_mode.exit.xgbe_config_tsf_mode.exit_crit_edge, label %do.body.lr.ph.i172

xgbe_config_mtl_mode.exit.xgbe_config_tsf_mode.exit_crit_edge: ; preds = %xgbe_config_mtl_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_tsf_mode.exit

do.body.lr.ph.i172:                               ; preds = %xgbe_config_mtl_mode.exit
  %tx_sf_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 81
  %327 = ptrtoint ptr %tx_sf_mode to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %tx_sf_mode, align 8
  %and4.i170 = shl i32 %328, 1
  %shl.i171 = and i32 %and4.i170, 2
  br label %do.body.i180

do.body.i180:                                     ; preds = %do.body.i180.do.body.i180_crit_edge, %do.body.lr.ph.i172
  %i.020.i173 = phi i32 [ 0, %do.body.lr.ph.i172 ], [ %inc.i178, %do.body.i180.do.body.i180_crit_edge ]
  %329 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i174 = getelementptr i8, ptr %330, i32 4352
  %mul.i175 = shl i32 %i.020.i173, 7
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i174, i32 %mul.i175
  %331 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %332 = and i32 %331, -33554433
  %333 = tail call i32 @llvm.bswap.i32(i32 %332) #11
  %or.i176 = or i32 %333, %shl.i171
  %334 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr6.i = getelementptr i8, ptr %335, i32 4352
  %add.ptr8.i177 = getelementptr i8, ptr %add.ptr6.i, i32 %mul.i175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %336 = tail call i32 @llvm.bswap.i32(i32 %or.i176) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i177, i32 %336) #11, !srcloc !114
  %inc.i178 = add nuw i32 %i.020.i173, 1
  %337 = ptrtoint ptr %tx_q_count.i167 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %tx_q_count.i167, align 4
  %cmp.i179 = icmp ult i32 %inc.i178, %338
  br i1 %cmp.i179, label %do.body.i180.do.body.i180_crit_edge, label %do.body.i180.xgbe_config_tsf_mode.exit_crit_edge

do.body.i180.xgbe_config_tsf_mode.exit_crit_edge: ; preds = %do.body.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_tsf_mode.exit

do.body.i180.do.body.i180_crit_edge:              ; preds = %do.body.i180
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i180

xgbe_config_tsf_mode.exit:                        ; preds = %do.body.i180.xgbe_config_tsf_mode.exit_crit_edge, %xgbe_config_mtl_mode.exit.xgbe_config_tsf_mode.exit_crit_edge
  %rx_q_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %339 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %rx_q_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %340)
  %cmp19.not.i181 = icmp eq i32 %340, 0
  br i1 %cmp19.not.i181, label %xgbe_config_tsf_mode.exit.xgbe_config_rsf_mode.exit_crit_edge, label %do.body.lr.ph.i185

xgbe_config_tsf_mode.exit.xgbe_config_rsf_mode.exit_crit_edge: ; preds = %xgbe_config_tsf_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rsf_mode.exit

do.body.lr.ph.i185:                               ; preds = %xgbe_config_tsf_mode.exit
  %rx_sf_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 85
  %341 = ptrtoint ptr %rx_sf_mode to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %rx_sf_mode, align 8
  %and4.i183 = shl i32 %342, 5
  %shl.i184 = and i32 %and4.i183, 32
  br label %do.body.i195

do.body.i195:                                     ; preds = %do.body.i195.do.body.i195_crit_edge, %do.body.lr.ph.i185
  %i.020.i186 = phi i32 [ 0, %do.body.lr.ph.i185 ], [ %inc.i193, %do.body.i195.do.body.i195_crit_edge ]
  %343 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %xgmac_regs.i56, align 4
  %mul.i187 = shl i32 %i.020.i186, 7
  %add.ptr1.i188 = getelementptr i8, ptr %344, i32 4416
  %add.ptr2.i189 = getelementptr i8, ptr %add.ptr1.i188, i32 %mul.i187
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i189) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %346 = and i32 %345, -536870913
  %347 = tail call i32 @llvm.bswap.i32(i32 %346) #11
  %or.i190 = or i32 %347, %shl.i184
  %348 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr8.i191 = getelementptr i8, ptr %349, i32 4416
  %add.ptr9.i192 = getelementptr i8, ptr %add.ptr8.i191, i32 %mul.i187
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %350 = tail call i32 @llvm.bswap.i32(i32 %or.i190) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i192, i32 %350) #11, !srcloc !114
  %inc.i193 = add nuw i32 %i.020.i186, 1
  %351 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %rx_q_count.i, align 8
  %cmp.i194 = icmp ult i32 %inc.i193, %352
  br i1 %cmp.i194, label %do.body.i195.do.body.i195_crit_edge, label %do.body.i195.xgbe_config_rsf_mode.exit_crit_edge

do.body.i195.xgbe_config_rsf_mode.exit_crit_edge: ; preds = %do.body.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rsf_mode.exit

do.body.i195.do.body.i195_crit_edge:              ; preds = %do.body.i195
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i195

xgbe_config_rsf_mode.exit:                        ; preds = %do.body.i195.xgbe_config_rsf_mode.exit_crit_edge, %xgbe_config_tsf_mode.exit.xgbe_config_rsf_mode.exit_crit_edge
  %353 = ptrtoint ptr %tx_q_count.i167 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %tx_q_count.i167, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %cmp19.not.i197 = icmp eq i32 %354, 0
  br i1 %cmp19.not.i197, label %xgbe_config_rsf_mode.exit.xgbe_config_tx_threshold.exit_crit_edge, label %do.body.lr.ph.i201

xgbe_config_rsf_mode.exit.xgbe_config_tx_threshold.exit_crit_edge: ; preds = %xgbe_config_rsf_mode.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_tx_threshold.exit

do.body.lr.ph.i201:                               ; preds = %xgbe_config_rsf_mode.exit
  %tx_threshold = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 82
  %355 = ptrtoint ptr %tx_threshold to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %tx_threshold, align 4
  %and4.i199 = shl i32 %356, 4
  %shl.i200 = and i32 %and4.i199, 112
  br label %do.body.i211

do.body.i211:                                     ; preds = %do.body.i211.do.body.i211_crit_edge, %do.body.lr.ph.i201
  %i.020.i202 = phi i32 [ 0, %do.body.lr.ph.i201 ], [ %inc.i209, %do.body.i211.do.body.i211_crit_edge ]
  %357 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i203 = getelementptr i8, ptr %358, i32 4352
  %mul.i204 = shl i32 %i.020.i202, 7
  %add.ptr1.i205 = getelementptr i8, ptr %add.ptr.i203, i32 %mul.i204
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i205) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %360 = and i32 %359, -1879048193
  %361 = tail call i32 @llvm.bswap.i32(i32 %360) #11
  %or.i206 = or i32 %361, %shl.i200
  %362 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr6.i207 = getelementptr i8, ptr %363, i32 4352
  %add.ptr8.i208 = getelementptr i8, ptr %add.ptr6.i207, i32 %mul.i204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %364 = tail call i32 @llvm.bswap.i32(i32 %or.i206) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i208, i32 %364) #11, !srcloc !114
  %inc.i209 = add nuw i32 %i.020.i202, 1
  %365 = ptrtoint ptr %tx_q_count.i167 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %tx_q_count.i167, align 4
  %cmp.i210 = icmp ult i32 %inc.i209, %366
  br i1 %cmp.i210, label %do.body.i211.do.body.i211_crit_edge, label %do.body.i211.xgbe_config_tx_threshold.exit_crit_edge

do.body.i211.xgbe_config_tx_threshold.exit_crit_edge: ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_tx_threshold.exit

do.body.i211.do.body.i211_crit_edge:              ; preds = %do.body.i211
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i211

xgbe_config_tx_threshold.exit:                    ; preds = %do.body.i211.xgbe_config_tx_threshold.exit_crit_edge, %xgbe_config_rsf_mode.exit.xgbe_config_tx_threshold.exit_crit_edge
  %367 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %rx_q_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %cmp19.not.i213 = icmp eq i32 %368, 0
  br i1 %cmp19.not.i213, label %xgbe_config_tx_threshold.exit.xgbe_config_rx_threshold.exit_crit_edge, label %do.body.lr.ph.i216

xgbe_config_tx_threshold.exit.xgbe_config_rx_threshold.exit_crit_edge: ; preds = %xgbe_config_tx_threshold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rx_threshold.exit

do.body.lr.ph.i216:                               ; preds = %xgbe_config_tx_threshold.exit
  %rx_threshold = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 86
  %369 = ptrtoint ptr %rx_threshold to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %rx_threshold, align 4
  %and4.i215 = and i32 %370, 3
  br label %do.body.i226

do.body.i226:                                     ; preds = %do.body.i226.do.body.i226_crit_edge, %do.body.lr.ph.i216
  %i.020.i217 = phi i32 [ 0, %do.body.lr.ph.i216 ], [ %inc.i224, %do.body.i226.do.body.i226_crit_edge ]
  %371 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %xgmac_regs.i56, align 4
  %mul.i218 = shl i32 %i.020.i217, 7
  %add.ptr1.i219 = getelementptr i8, ptr %372, i32 4416
  %add.ptr2.i220 = getelementptr i8, ptr %add.ptr1.i219, i32 %mul.i218
  %373 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i220) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %374 = and i32 %373, -50331649
  %375 = tail call i32 @llvm.bswap.i32(i32 %374) #11
  %or.i221 = or i32 %375, %and4.i215
  %376 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr8.i222 = getelementptr i8, ptr %377, i32 4416
  %add.ptr9.i223 = getelementptr i8, ptr %add.ptr8.i222, i32 %mul.i218
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %378 = tail call i32 @llvm.bswap.i32(i32 %or.i221) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i223, i32 %378) #11, !srcloc !114
  %inc.i224 = add nuw i32 %i.020.i217, 1
  %379 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %rx_q_count.i, align 8
  %cmp.i225 = icmp ult i32 %inc.i224, %380
  br i1 %cmp.i225, label %do.body.i226.do.body.i226_crit_edge, label %do.body.i226.xgbe_config_rx_threshold.exit_crit_edge

do.body.i226.xgbe_config_rx_threshold.exit_crit_edge: ; preds = %do.body.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_rx_threshold.exit

do.body.i226.do.body.i226_crit_edge:              ; preds = %do.body.i226
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i226

xgbe_config_rx_threshold.exit:                    ; preds = %do.body.i226.xgbe_config_rx_threshold.exit_crit_edge, %xgbe_config_tx_threshold.exit.xgbe_config_rx_threshold.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fifo.i) #11
  %381 = call ptr @memset(ptr %fifo.i, i32 255, i32 64)
  %tx_max_fifo_size.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 84
  %382 = ptrtoint ptr %tx_max_fifo_size.i.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %tx_max_fifo_size.i.i, align 4
  %tx_fifo_size.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 17
  %384 = ptrtoint ptr %tx_fifo_size.i.i to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %tx_fifo_size.i.i, align 4
  %386 = tail call i32 @llvm.umin.i32(i32 %383, i32 %385) #11
  %387 = ptrtoint ptr %tx_q_count.i167 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %tx_q_count.i167, align 4
  %div.i.i = udiv i32 %386, %388
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i.i)
  %tobool.not.i.i = icmp ult i32 %div.i.i, 256
  %div17.i.i = lshr i32 %div.i.i, 8
  %dec.i.i = add nsw i32 %div17.i.i, -1
  %p_fifo.0.i.i = select i1 %tobool.not.i.i, i32 0, i32 %dec.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %cmp8.not.i.i = icmp eq i32 %388, 0
  br i1 %cmp8.not.i.i, label %xgbe_config_rx_threshold.exit.do.body14.i_crit_edge, label %xgbe_config_rx_threshold.exit.for.body.i.i_crit_edge

xgbe_config_rx_threshold.exit.for.body.i.i_crit_edge: ; preds = %xgbe_config_rx_threshold.exit
  br label %for.body.i.i

xgbe_config_rx_threshold.exit.do.body14.i_crit_edge: ; preds = %xgbe_config_rx_threshold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %xgbe_config_rx_threshold.exit.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %xgbe_config_rx_threshold.exit.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %fifo.i, i32 %i.09.i.i
  %389 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %p_fifo.0.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %388
  br i1 %exitcond.not.i.i, label %for.body.i.i.do.body.i240_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.body.i.i.do.body.i240_crit_edge:              ; preds = %for.body.i.i
  br label %do.body.i240

do.body.i240:                                     ; preds = %do.body.i240.do.body.i240_crit_edge, %for.body.i.i.do.body.i240_crit_edge
  %i.035.i = phi i32 [ %inc.i238, %do.body.i240.do.body.i240_crit_edge ], [ 0, %for.body.i.i.do.body.i240_crit_edge ]
  %390 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i230 = getelementptr i8, ptr %391, i32 4352
  %mul.i231 = shl i32 %i.035.i, 7
  %add.ptr2.i232 = getelementptr i8, ptr %add.ptr.i230, i32 %mul.i231
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i232) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %393 = and i32 %392, -65284
  %394 = tail call i32 @llvm.bswap.i32(i32 %393) #11
  %arrayidx.i233 = getelementptr [16 x i32], ptr %fifo.i, i32 0, i32 %i.035.i
  %395 = ptrtoint ptr %arrayidx.i233 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %arrayidx.i233, align 4
  %and6.i = shl i32 %396, 16
  %shl.i234 = and i32 %and6.i, 67043328
  %or.i235 = or i32 %shl.i234, %394
  %397 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr8.i236 = getelementptr i8, ptr %398, i32 4352
  %add.ptr10.i237 = getelementptr i8, ptr %add.ptr8.i236, i32 %mul.i231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %399 = tail call i32 @llvm.bswap.i32(i32 %or.i235) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i237, i32 %399) #11, !srcloc !114
  %inc.i238 = add nuw i32 %i.035.i, 1
  %400 = ptrtoint ptr %tx_q_count.i167 to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %tx_q_count.i167, align 4
  %cmp.i239 = icmp ult i32 %inc.i238, %401
  br i1 %cmp.i239, label %do.body.i240.do.body.i240_crit_edge, label %do.body.i240.do.body14.i_crit_edge

do.body.i240.do.body14.i_crit_edge:               ; preds = %do.body.i240
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body14.i

do.body.i240.do.body.i240_crit_edge:              ; preds = %do.body.i240
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i240

do.body14.i:                                      ; preds = %do.body.i240.do.body14.i_crit_edge, %xgbe_config_rx_threshold.exit.do.body14.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %xgbe_config_rx_threshold.exit.do.body14.i_crit_edge ], [ %401, %do.body.i240.do.body14.i_crit_edge ]
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %402 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %msg_enable.i, align 4
  %and15.i = and i32 %403, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i241 = icmp eq i32 %and15.i, 0
  br i1 %tobool.not.i241, label %do.body14.i.xgbe_config_tx_fifo_size.exit_crit_edge, label %if.then.i242

do.body14.i.xgbe_config_tx_fifo_size.exit_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_tx_fifo_size.exit

if.then.i242:                                     ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #13
  %404 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %pdata, align 8
  %406 = ptrtoint ptr %fifo.i to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %fifo.i, align 4
  %add.i = shl i32 %407, 8
  %mul18.i = add i32 %add.i, 256
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %405, ptr noundef nonnull @.str.27, i32 noundef %.lcssa.i, i32 noundef %mul18.i) #15
  br label %xgbe_config_tx_fifo_size.exit

xgbe_config_tx_fifo_size.exit:                    ; preds = %if.then.i242, %do.body14.i.xgbe_config_tx_fifo_size.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fifo.i) #11
  tail call fastcc void @xgbe_config_rx_fifo_size(ptr noundef %pdata)
  tail call void @xgbe_config_dcb_tc(ptr noundef %pdata)
  %tx_q_cnt.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 29
  %408 = ptrtoint ptr %tx_q_cnt.i to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %tx_q_cnt.i, align 4
  %rx_q_cnt.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 28
  %410 = ptrtoint ptr %rx_q_cnt.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %rx_q_cnt.i, align 8
  %412 = tail call i32 @llvm.umax.i32(i32 %409, i32 %411) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %412)
  %cmp226.not.i = icmp eq i32 %412, 0
  br i1 %cmp226.not.i, label %xgbe_config_tx_fifo_size.exit.xgbe_enable_mtl_interrupts.exit_crit_edge, label %xgbe_config_tx_fifo_size.exit.for.body.i251_crit_edge

xgbe_config_tx_fifo_size.exit.for.body.i251_crit_edge: ; preds = %xgbe_config_tx_fifo_size.exit
  br label %for.body.i251

xgbe_config_tx_fifo_size.exit.xgbe_enable_mtl_interrupts.exit_crit_edge: ; preds = %xgbe_config_tx_fifo_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_enable_mtl_interrupts.exit

for.body.i251:                                    ; preds = %for.body.i251.for.body.i251_crit_edge, %xgbe_config_tx_fifo_size.exit.for.body.i251_crit_edge
  %i.027.i = phi i32 [ %inc.i250, %for.body.i251.for.body.i251_crit_edge ], [ 0, %xgbe_config_tx_fifo_size.exit.for.body.i251_crit_edge ]
  %413 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %xgmac_regs.i56, align 4
  %mul.i245 = shl i32 %i.027.i, 7
  %add.ptr3.i246 = getelementptr i8, ptr %414, i32 4468
  %add.ptr4.i = getelementptr i8, ptr %add.ptr3.i246, i32 %mul.i245
  %415 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %416 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr8.i247 = getelementptr i8, ptr %417, i32 4468
  %add.ptr9.i248 = getelementptr i8, ptr %add.ptr8.i247, i32 %mul.i245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i248, i32 %415) #11, !srcloc !114
  %418 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr13.i249 = getelementptr i8, ptr %419, i32 4464
  %add.ptr14.i = getelementptr i8, ptr %add.ptr13.i249, i32 %mul.i245
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 0) #11, !srcloc !114
  %inc.i250 = add nuw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i250, %412
  br i1 %exitcond.not.i, label %for.body.i251.xgbe_enable_mtl_interrupts.exit_crit_edge, label %for.body.i251.for.body.i251_crit_edge

for.body.i251.for.body.i251_crit_edge:            ; preds = %for.body.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i251

for.body.i251.xgbe_enable_mtl_interrupts.exit_crit_edge: ; preds = %for.body.i251
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_enable_mtl_interrupts.exit

xgbe_enable_mtl_interrupts.exit:                  ; preds = %for.body.i251.xgbe_enable_mtl_interrupts.exit_crit_edge, %xgbe_config_tx_fifo_size.exit.xgbe_enable_mtl_interrupts.exit_crit_edge
  %420 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %pdata, align 8
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %421, i32 0, i32 86
  %422 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dev_addr.i, align 64
  %arrayidx.i.i252 = getelementptr i8, ptr %423, i32 5
  %424 = ptrtoint ptr %arrayidx.i.i252 to i32
  call void @__asan_load1_noabort(i32 %424)
  %425 = load i8, ptr %arrayidx.i.i252, align 1
  %conv.i.i = zext i8 %425 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 8
  %arrayidx1.i.i = getelementptr i8, ptr %423, i32 4
  %426 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load1_noabort(i32 %426)
  %427 = load i8, ptr %arrayidx1.i.i, align 1
  %conv2.i.i = zext i8 %427 to i32
  %or.i.i = or i32 %shl.i.i, %conv2.i.i
  %arrayidx4.i.i = getelementptr i8, ptr %423, i32 3
  %428 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load1_noabort(i32 %428)
  %429 = load i8, ptr %arrayidx4.i.i, align 1
  %conv5.i.i = zext i8 %429 to i32
  %shl6.i.i = shl nuw i32 %conv5.i.i, 24
  %arrayidx7.i.i = getelementptr i8, ptr %423, i32 2
  %430 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load1_noabort(i32 %430)
  %431 = load i8, ptr %arrayidx7.i.i, align 1
  %conv8.i.i = zext i8 %431 to i32
  %shl9.i.i = shl nuw nsw i32 %conv8.i.i, 16
  %or10.i.i = or i32 %shl9.i.i, %shl6.i.i
  %arrayidx11.i.i = getelementptr i8, ptr %423, i32 1
  %432 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load1_noabort(i32 %432)
  %433 = load i8, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = zext i8 %433 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 8
  %or14.i.i = or i32 %or10.i.i, %shl13.i.i
  %434 = ptrtoint ptr %423 to i32
  call void @__asan_load1_noabort(i32 %434)
  %435 = load i8, ptr %423, align 1
  %conv16.i.i = zext i8 %435 to i32
  %or18.i.i = or i32 %or14.i.i, %conv16.i.i
  %436 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i.i254 = getelementptr i8, ptr %437, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %438 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i254, i32 %438) #11, !srcloc !114
  %439 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %440, i32 772
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %441 = tail call i32 @llvm.bswap.i32(i32 %or18.i.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i.i, i32 %441) #11, !srcloc !114
  %hash_table_size.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 26
  %442 = ptrtoint ptr %hash_table_size.i to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %hash_table_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %443)
  %tobool.not.i255 = icmp eq i32 %443, 0
  br i1 %tobool.not.i255, label %xgbe_enable_mtl_interrupts.exit.xgbe_config_mac_address.exit_crit_edge, label %do.body.i261

xgbe_enable_mtl_interrupts.exit.xgbe_config_mac_address.exit_crit_edge: ; preds = %xgbe_enable_mtl_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_mac_address.exit

do.body.i261:                                     ; preds = %xgbe_enable_mtl_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #13
  %444 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i256 = getelementptr i8, ptr %445, i32 8
  %446 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i256) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %447 = or i32 %446, 262144
  %448 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr4.i257 = getelementptr i8, ptr %449, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i257, i32 %447) #11, !srcloc !114
  %450 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr10.i258 = getelementptr i8, ptr %451, i32 8
  %452 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i258) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %453 = or i32 %452, 33554432
  %454 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr18.i259 = getelementptr i8, ptr %455, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i259, i32 %453) #11, !srcloc !114
  %456 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr24.i = getelementptr i8, ptr %457, i32 8
  %458 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %459 = or i32 %458, 67108864
  %460 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr32.i260 = getelementptr i8, ptr %461, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i260, i32 %459) #11, !srcloc !114
  br label %xgbe_config_mac_address.exit

xgbe_config_mac_address.exit:                     ; preds = %do.body.i261, %xgbe_enable_mtl_interrupts.exit.xgbe_config_mac_address.exit_crit_edge
  %call10 = tail call i32 @xgbe_config_rx_mode(ptr noundef %pdata)
  %462 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %pdata, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %463, i32 0, i32 20
  %464 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load i32, ptr %mtu.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %465)
  %cmp.i263 = icmp ugt i32 %465, 1500
  %466 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %466)
  %467 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i265 = getelementptr i8, ptr %467, i32 4
  %468 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %469 = and i32 %468, -65537
  %470 = tail call i32 @llvm.bswap.i32(i32 %469) #11
  %shl.i266 = select i1 %cmp.i263, i32 256, i32 0
  %or.i267 = or i32 %470, %shl.i266
  %471 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr4.i268 = getelementptr i8, ptr %472, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %473 = tail call i32 @llvm.bswap.i32(i32 %or.i267) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i268, i32 %473) #11, !srcloc !114
  tail call fastcc void @xgbe_config_flow_control(ptr noundef %pdata)
  %phy_speed.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 137
  %474 = ptrtoint ptr %phy_speed.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load i32, ptr %phy_speed.i, align 8
  %476 = zext i32 %475 to i64
  call void @__sanitizer_cov_trace_switch(i64 %476, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %475, label %xgbe_config_mac_address.exit.xgbe_config_mac_speed.exit_crit_edge [
    i32 1000, label %xgbe_config_mac_address.exit.sw.epilog.i.i_crit_edge
    i32 2500, label %sw.bb1.i.i
    i32 10000, label %sw.bb2.i.i
  ]

xgbe_config_mac_address.exit.sw.epilog.i.i_crit_edge: ; preds = %xgbe_config_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

xgbe_config_mac_address.exit.xgbe_config_mac_speed.exit_crit_edge: ; preds = %xgbe_config_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_mac_speed.exit

sw.bb1.i.i:                                       ; preds = %xgbe_config_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

sw.bb2.i.i:                                       ; preds = %xgbe_config_mac_address.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %xgbe_config_mac_address.exit.sw.epilog.i.i_crit_edge
  %ss.0.i.i = phi i32 [ 0, %sw.bb2.i.i ], [ 2, %sw.bb1.i.i ], [ 3, %xgbe_config_mac_address.exit.sw.epilog.i.i_crit_edge ]
  %477 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %xgmac_regs.i56, align 4
  %479 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %478) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %480 = lshr i32 %479, 5
  %and.i.i = and i32 %480, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %ss.0.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, %ss.0.i.i
  br i1 %cmp.not.i.i, label %sw.epilog.i.i.xgbe_config_mac_speed.exit_crit_edge, label %do.body.i.i

sw.epilog.i.i.xgbe_config_mac_speed.exit_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_mac_speed.exit

do.body.i.i:                                      ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %481 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load ptr, ptr %xgmac_regs.i56, align 4
  %483 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %482) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %484 = and i32 %483, -97
  %485 = tail call i32 @llvm.bswap.i32(i32 %484) #11
  %shl.i.i270 = shl nuw nsw i32 %ss.0.i.i, 29
  %or.i.i271 = or i32 %485, %shl.i.i270
  %486 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load ptr, ptr %xgmac_regs.i56, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %488 = tail call i32 @llvm.bswap.i32(i32 %or.i.i271) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %487, i32 %488) #11, !srcloc !114
  br label %xgbe_config_mac_speed.exit

xgbe_config_mac_speed.exit:                       ; preds = %do.body.i.i, %sw.epilog.i.i.xgbe_config_mac_speed.exit_crit_edge, %xgbe_config_mac_address.exit.xgbe_config_mac_speed.exit_crit_edge
  %489 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load ptr, ptr %pdata, align 8
  %features.i272 = getelementptr inbounds %struct.net_device, ptr %490, i32 0, i32 23
  %491 = ptrtoint ptr %features.i272 to i32
  call void @__asan_load8_noabort(i32 %491)
  %492 = load i64, ptr %features.i272, align 16
  %and.i273 = and i64 %492, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i273)
  %tobool.not.i274 = icmp eq i64 %and.i273, 0
  %493 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %494, i32 4
  %495 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  br i1 %tobool.not.i274, label %if.else.i, label %if.then.i276

if.then.i276:                                     ; preds = %xgbe_config_mac_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %496 = or i32 %495, 131072
  %497 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr3.i.i275 = getelementptr i8, ptr %498, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i275, i32 %496) #11, !srcloc !114
  br label %xgbe_config_checksum_offload.exit

if.else.i:                                        ; preds = %xgbe_config_mac_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %499 = and i32 %495, -131073
  %500 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr3.i6.i = getelementptr i8, ptr %501, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i6.i, i32 %499) #11, !srcloc !114
  br label %xgbe_config_checksum_offload.exit

xgbe_config_checksum_offload.exit:                ; preds = %if.else.i, %if.then.i276
  %502 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i279 = getelementptr i8, ptr %503, i32 96
  %504 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i279) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %505 = and i32 %504, -2049
  %506 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr3.i280 = getelementptr i8, ptr %507, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i280, i32 %505) #11, !srcloc !114
  %508 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %508)
  %509 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr9.i281 = getelementptr i8, ptr %509, i32 96
  %510 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i281) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %511 = or i32 %510, 4096
  %512 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr17.i = getelementptr i8, ptr %513, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 %511) #11, !srcloc !114
  %call20.i = tail call i32 @xgbe_update_vlan_hash_table(ptr noundef %pdata) #11
  %514 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %514)
  %515 = load ptr, ptr %pdata, align 8
  %features.i282 = getelementptr inbounds %struct.net_device, ptr %515, i32 0, i32 23
  %516 = ptrtoint ptr %features.i282 to i32
  call void @__asan_load8_noabort(i32 %516)
  %517 = load i64, ptr %features.i282, align 16
  %and21.i283 = and i64 %517, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i283)
  %tobool.not.i284 = icmp eq i64 %and21.i283, 0
  br i1 %tobool.not.i284, label %if.else.i288, label %if.then.i285

if.then.i285:                                     ; preds = %xgbe_config_checksum_offload.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call22.i = tail call i32 @xgbe_enable_rx_vlan_filtering(ptr noundef %pdata) #11
  br label %if.end.i289

if.else.i288:                                     ; preds = %xgbe_config_checksum_offload.exit
  call void @__sanitizer_cov_trace_pc() #13
  %518 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i.i286 = getelementptr i8, ptr %519, i32 8
  %520 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i286) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %521 = and i32 %520, -257
  %522 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr3.i.i287 = getelementptr i8, ptr %523, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i287, i32 %521) #11, !srcloc !114
  br label %if.end.i289

if.end.i289:                                      ; preds = %if.else.i288, %if.then.i285
  %524 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %pdata, align 8
  %features25.i = getelementptr inbounds %struct.net_device, ptr %525, i32 0, i32 23
  %526 = ptrtoint ptr %features25.i to i32
  call void @__asan_load8_noabort(i32 %526)
  %527 = load i64, ptr %features25.i, align 16
  %and26.i = and i64 %527, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and26.i)
  %tobool27.not.i = icmp eq i64 %and26.i, 0
  br i1 %tobool27.not.i, label %if.else30.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #13
  %call29.i = tail call i32 @xgbe_enable_rx_vlan_stripping(ptr noundef %pdata) #11
  br label %xgbe_config_vlan_support.exit

if.else30.i:                                      ; preds = %if.end.i289
  call void @__sanitizer_cov_trace_pc() #13
  %528 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i48.i = getelementptr i8, ptr %529, i32 80
  %530 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %531 = and i32 %530, -24577
  %532 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr3.i49.i = getelementptr i8, ptr %533, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i49.i, i32 %531) #11, !srcloc !114
  br label %xgbe_config_vlan_support.exit

xgbe_config_vlan_support.exit:                    ; preds = %if.else30.i, %if.then28.i
  %534 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i291 = getelementptr i8, ptr %535, i32 2048
  %536 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i291) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %537 = or i32 %536, 67108864
  %538 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %538)
  %539 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr3.i292 = getelementptr i8, ptr %539, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i292, i32 %537) #11, !srcloc !114
  %540 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr9.i293 = getelementptr i8, ptr %541, i32 2048
  %542 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i293) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %543 = or i32 %542, 16777216
  %544 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr17.i294 = getelementptr i8, ptr %545, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i294, i32 %543) #11, !srcloc !114
  %546 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr.i296 = getelementptr i8, ptr %547, i32 180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i296, i32 1048576) #11, !srcloc !114
  %548 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %548)
  %549 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr3.i297 = getelementptr i8, ptr %549, i32 2060
  %550 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i297) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %551 = or i32 %550, -33024
  %552 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr10.i298 = getelementptr i8, ptr %553, i32 2060
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i298, i32 %551) #11, !srcloc !114
  %554 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr16.i = getelementptr i8, ptr %555, i32 2064
  %556 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %557 = or i32 %556, -64768
  %558 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr24.i299 = getelementptr i8, ptr %559, i32 2064
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i299, i32 %557) #11, !srcloc !114
  %560 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr30.i300 = getelementptr i8, ptr %561, i32 536
  %562 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i300) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %563 = or i32 %562, 1048576
  %564 = ptrtoint ptr %xgmac_regs.i56 to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load ptr, ptr %xgmac_regs.i56, align 4
  %add.ptr38.i301 = getelementptr i8, ptr %565, i32 536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i301, i32 %563) #11, !srcloc !114
  %566 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %566)
  %567 = load ptr, ptr %vdata.i, align 4
  %ecc_support.i = getelementptr inbounds %struct.xgbe_version_data, ptr %567, i32 0, i32 6
  %568 = ptrtoint ptr %ecc_support.i to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load i32, ptr %ecc_support.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %569)
  %tobool.not.i303 = icmp eq i32 %569, 0
  br i1 %tobool.not.i303, label %xgbe_config_vlan_support.exit.cleanup_crit_edge, label %if.end.i306

xgbe_config_vlan_support.exit.cleanup_crit_edge:  ; preds = %xgbe_config_vlan_support.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i306:                                      ; preds = %xgbe_config_vlan_support.exit
  call void @__sanitizer_cov_trace_pc() #13
  %xprop_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 14
  %570 = ptrtoint ptr %xprop_regs.i to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load ptr, ptr %xprop_regs.i, align 8
  %add.ptr.i304 = getelementptr i8, ptr %571, i32 48
  %572 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i304) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %573 = ptrtoint ptr %xprop_regs.i to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load ptr, ptr %xprop_regs.i, align 8
  %add.ptr2.i305 = getelementptr i8, ptr %574, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i305, i32 %572) #11, !srcloc !114
  %575 = ptrtoint ptr %xprop_regs.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %xprop_regs.i, align 8
  %add.ptr29.i = getelementptr i8, ptr %576, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 1056964608) #11, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end.i306, %xgbe_config_vlan_support.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ 0, %xgbe_config_vlan_support.exit.cleanup_crit_edge ], [ 0, %if.end.i306 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_exit(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 12288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = or i32 %2, 16777216
  %4 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %5, i32 12288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %3) #11, !srcloc !114
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #11
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %entry
  %dec23.i = phi i32 [ 1999, %entry ], [ %dec.i, %while.body.i.land.rhs.i_crit_edge ]
  %6 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %7, i32 12288
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not.i = icmp eq i32 %9, 0
  br i1 %tobool13.not.i, label %if.end, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #11
  %dec.i = add nsw i32 %dec23.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.rhs.i
  %10 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %11, i32 12288
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %13 = or i32 %12, 16777216
  %14 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr6.i6 = getelementptr i8, ptr %15, i32 12288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i6, i32 %13) #11, !srcloc !114
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 15, i32 noundef 2) #11
  br label %land.rhs.i10

land.rhs.i10:                                     ; preds = %while.body.i13.land.rhs.i10_crit_edge, %if.end
  %dec23.i7 = phi i32 [ 1999, %if.end ], [ %dec.i11, %while.body.i13.land.rhs.i10_crit_edge ]
  %16 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr10.i8 = getelementptr i8, ptr %17, i32 12288
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i8) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %19 = and i32 %18, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not.i9 = icmp eq i32 %19, 0
  br i1 %tobool13.not.i9, label %land.rhs.i10.cleanup_crit_edge, label %while.body.i13

land.rhs.i10.cleanup_crit_edge:                   ; preds = %land.rhs.i10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.i13:                                   ; preds = %land.rhs.i10
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #11
  %dec.i11 = add nsw i32 %dec23.i7, -1
  %tobool.not.i12 = icmp eq i32 %dec.i11, 0
  br i1 %tobool.not.i12, label %while.body.i13.cleanup_crit_edge, label %while.body.i13.land.rhs.i10_crit_edge

while.body.i13.land.rhs.i10_crit_edge:            ; preds = %while.body.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i10

while.body.i13.cleanup_crit_edge:                 ; preds = %while.body.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %while.body.i13.cleanup_crit_edge, %land.rhs.i10.cleanup_crit_edge, %while.body.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.rhs.i10.cleanup_crit_edge ], [ -16, %while.body.i13.cleanup_crit_edge ], [ -16, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_tx_desc_init(ptr nocapture noundef readonly %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 11
  %0 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring, align 4
  %cur = getelementptr inbounds %struct.xgbe_ring, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur, align 4
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rdesc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp34.not = icmp eq i32 %5, 0
  br i1 %cmp34.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rdata1 = getelementptr inbounds %struct.xgbe_ring, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %13, %for.body.for.body_crit_edge ]
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %rdata1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rdata1, align 4
  %sub = add i32 %6, -1
  %and = and i32 %sub, %i.035
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %8, i32 %and
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  %inc = add nuw i32 %i.035, 1
  %12 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rdesc_count, align 8
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end.loopexit

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = add i32 %13, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 3
  %14 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_regs, align 8
  %add.ptr5 = getelementptr i8, ptr %15, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %.lcssa) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %16) #11, !srcloc !114
  %rdata6 = getelementptr inbounds %struct.xgbe_ring, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %rdata6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rdata6, align 4
  %19 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rdesc_count, align 8
  %sub8 = add i32 %20, -1
  %and9 = and i32 %sub8, %3
  %rdesc_dma = getelementptr %struct.xgbe_ring_data, ptr %18, i32 %and9, i32 1
  %21 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_regs, align 8
  %add.ptr13 = getelementptr i8, ptr %22, i32 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #11, !srcloc !114
  %23 = ptrtoint ptr %rdesc_dma to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rdesc_dma, align 4
  %25 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_regs, align 8
  %add.ptr17 = getelementptr i8, ptr %26, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %27 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %27) #11, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_rx_desc_init(ptr nocapture noundef readonly %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 12
  %0 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_ring, align 16
  %cur = getelementptr inbounds %struct.xgbe_ring, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur, align 4
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rdesc_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp54.not = icmp eq i32 %5, 0
  br i1 %cmp54.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pdata1 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 1
  %6 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata1, align 16
  %rdata2 = getelementptr inbounds %struct.xgbe_ring, ptr %1, i32 0, i32 5
  %rx_usecs2.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %7, i32 0, i32 91
  %rx_frames3.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %7, i32 0, i32 92
  br label %for.body

for.body:                                         ; preds = %xgbe_rx_desc_reset.exit.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %5, %for.body.lr.ph ], [ %34, %xgbe_rx_desc_reset.exit.for.body_crit_edge ]
  %i.055 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %xgbe_rx_desc_reset.exit.for.body_crit_edge ]
  %9 = ptrtoint ptr %rdata2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rdata2, align 4
  %sub = add i32 %8, -1
  %and = and i32 %sub, %i.055
  %add.ptr = getelementptr %struct.xgbe_ring_data, ptr %10, i32 %and
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  %13 = ptrtoint ptr %rx_usecs2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_usecs2.i, align 8
  %15 = ptrtoint ptr %rx_frames3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_frames3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i = icmp eq i32 %16, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool4.not.i, i1 false
  br i1 %or.cond.i, label %for.body.xgbe_rx_desc_reset.exit_crit_edge, label %if.else.i

for.body.xgbe_rx_desc_reset.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_rx_desc_reset.exit

if.else.i:                                        ; preds = %for.body
  br i1 %tobool4.not.i, label %if.else.i.if.else9.i_crit_edge, label %land.lhs.true6.i

if.else.i.if.else9.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else9.i

land.lhs.true6.i:                                 ; preds = %if.else.i
  %add.i = add nuw i32 %i.055, 1
  %rem.i = urem i32 %add.i, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool7.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true6.i.xgbe_rx_desc_reset.exit_crit_edge, label %land.lhs.true6.i.if.else9.i_crit_edge

land.lhs.true6.i.if.else9.i_crit_edge:            ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else9.i

land.lhs.true6.i.xgbe_rx_desc_reset.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_rx_desc_reset.exit

if.else9.i:                                       ; preds = %land.lhs.true6.i.if.else9.i_crit_edge, %if.else.i.if.else9.i_crit_edge
  br label %xgbe_rx_desc_reset.exit

xgbe_rx_desc_reset.exit:                          ; preds = %if.else9.i, %land.lhs.true6.i.xgbe_rx_desc_reset.exit_crit_edge, %for.body.xgbe_rx_desc_reset.exit_crit_edge
  %inte.0.i = phi i32 [ 0, %if.else9.i ], [ 64, %for.body.xgbe_rx_desc_reset.exit_crit_edge ], [ 64, %land.lhs.true6.i.xgbe_rx_desc_reset.exit_crit_edge ]
  %dma_base.i = getelementptr %struct.xgbe_ring_data, ptr %10, i32 %and, i32 6, i32 0, i32 2
  %17 = ptrtoint ptr %dma_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_base.i, align 4
  %dma_off.i = getelementptr %struct.xgbe_ring_data, ptr %10, i32 %and, i32 6, i32 0, i32 3
  %19 = ptrtoint ptr %dma_off.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_off.i, align 4
  %add13.i = add i32 %20, %18
  %dma_base15.i = getelementptr %struct.xgbe_ring_data, ptr %10, i32 %and, i32 6, i32 1, i32 2
  %21 = ptrtoint ptr %dma_base15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_base15.i, align 4
  %dma_off18.i = getelementptr %struct.xgbe_ring_data, ptr %10, i32 %and, i32 6, i32 1, i32 3
  %23 = ptrtoint ptr %dma_off18.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_off18.i, align 4
  %add19.i = add i32 %24, %22
  %25 = tail call i32 @llvm.bswap.i32(i32 %add13.i) #11
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %12, align 4
  %desc1.i = getelementptr inbounds %struct.xgbe_ring_desc, ptr %12, i32 0, i32 1
  %27 = ptrtoint ptr %desc1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %desc1.i, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %add19.i) #11
  %desc2.i = getelementptr inbounds %struct.xgbe_ring_desc, ptr %12, i32 0, i32 2
  %29 = ptrtoint ptr %desc2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %desc2.i, align 4
  %desc3.i = getelementptr inbounds %struct.xgbe_ring_desc, ptr %12, i32 0, i32 3
  %30 = ptrtoint ptr %desc3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %inte.0.i, ptr %desc3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %31 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc3.i, align 4
  %or32.i = or i32 %32, 128
  store i32 %or32.i, ptr %desc3.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  %inc = add nuw i32 %i.055, 1
  %33 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rdesc_count, align 8
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %xgbe_rx_desc_reset.exit.for.body_crit_edge, label %for.end.loopexit

xgbe_rx_desc_reset.exit.for.body_crit_edge:       ; preds = %xgbe_rx_desc_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %xgbe_rx_desc_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  %phi.bo = add i32 %34, -1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ -1, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 3
  %35 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dma_regs, align 8
  %add.ptr6 = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %37 = tail call i32 @llvm.bswap.i32(i32 %.lcssa) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %37) #11, !srcloc !114
  %rdata7 = getelementptr inbounds %struct.xgbe_ring, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %rdata7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rdata7, align 4
  %40 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rdesc_count, align 8
  %sub9 = add i32 %41, -1
  %and10 = and i32 %sub9, %3
  %rdesc_dma = getelementptr %struct.xgbe_ring_data, ptr %39, i32 %and10, i32 1
  %42 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dma_regs, align 8
  %add.ptr14 = getelementptr i8, ptr %43, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 0) #11, !srcloc !114
  %44 = ptrtoint ptr %rdesc_dma to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rdesc_dma, align 4
  %46 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_regs, align 8
  %add.ptr18 = getelementptr i8, ptr %47, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %48 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %48) #11, !srcloc !114
  %49 = ptrtoint ptr %rdata7 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rdata7, align 4
  %51 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rdesc_count, align 8
  %add = add i32 %52, -1
  %sub21 = add i32 %add, %3
  %and24 = and i32 %sub21, %add
  %rdesc_dma26 = getelementptr %struct.xgbe_ring_data, ptr %50, i32 %and24, i32 1
  %53 = ptrtoint ptr %rdesc_dma26 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rdesc_dma26, align 4
  %55 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_regs, align 8
  %add.ptr29 = getelementptr i8, ptr %56, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %57 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %57) #11, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_tx_desc_reset(ptr nocapture noundef readonly %rdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata, align 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_rx_desc_reset(ptr nocapture noundef readonly %pdata, ptr nocapture noundef readonly %rdata, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdata, align 4
  %rx_usecs2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 91
  %2 = ptrtoint ptr %rx_usecs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_usecs2, align 8
  %rx_frames3 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 92
  %4 = ptrtoint ptr %rx_frames3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_frames3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  br i1 %or.cond, label %entry.if.end10_crit_edge, label %if.else

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.else:                                          ; preds = %entry
  br i1 %tobool4.not, label %if.else.if.else9_crit_edge, label %land.lhs.true6

if.else.if.else9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else9

land.lhs.true6:                                   ; preds = %if.else
  %add = add i32 %index, 1
  %rem = urem i32 %add, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool7.not = icmp eq i32 %rem, 0
  br i1 %tobool7.not, label %land.lhs.true6.if.end10_crit_edge, label %land.lhs.true6.if.else9_crit_edge

land.lhs.true6.if.else9_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else9

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.else9:                                         ; preds = %land.lhs.true6.if.else9_crit_edge, %if.else.if.else9_crit_edge
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %land.lhs.true6.if.end10_crit_edge, %entry.if.end10_crit_edge
  %inte.0 = phi i32 [ 0, %if.else9 ], [ 64, %entry.if.end10_crit_edge ], [ 64, %land.lhs.true6.if.end10_crit_edge ]
  %dma_base = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 0, i32 2
  %6 = ptrtoint ptr %dma_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_base, align 4
  %dma_off = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 0, i32 3
  %8 = ptrtoint ptr %dma_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_off, align 4
  %add13 = add i32 %9, %7
  %dma_base15 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 1, i32 2
  %10 = ptrtoint ptr %dma_base15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_base15, align 4
  %dma_off18 = getelementptr inbounds %struct.xgbe_ring_data, ptr %rdata, i32 0, i32 6, i32 1, i32 3
  %12 = ptrtoint ptr %dma_off18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_off18, align 4
  %add19 = add i32 %13, %11
  %14 = tail call i32 @llvm.bswap.i32(i32 %add13)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %1, align 4
  %desc1 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %desc1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %desc1, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %add19)
  %desc2 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %desc2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %desc2, align 4
  %desc3 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %desc3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inte.0, ptr %desc3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !126
  %20 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %desc3, align 4
  %or32 = or i32 %21, 128
  store i32 %or32, ptr %desc3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_is_last_desc(ptr nocapture noundef readonly %rdesc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc3 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %rdesc, i32 0, i32 3
  %0 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc3, align 4
  %2 = lshr i32 %1, 4
  %and = and i32 %2, 1
  ret i32 %and
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_is_context_desc(ptr nocapture noundef readonly %rdesc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc3 = getelementptr inbounds %struct.xgbe_ring_desc, ptr %rdesc, i32 0, i32 3
  %0 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc3, align 4
  %2 = lshr i32 %1, 6
  %and = and i32 %2, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_tx_start_xmit(ptr noundef %channel, ptr nocapture noundef %ring) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 1
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %rdata2 = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 5
  %2 = ptrtoint ptr %rdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rdata2, align 4
  %cur = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 9
  %4 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cur, align 4
  %rdesc_count = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %rdesc_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rdesc_count, align 8
  %sub = add i32 %7, -1
  %and = and i32 %sub, %5
  %rdesc_dma = getelementptr %struct.xgbe_ring_data, ptr %3, i32 %and, i32 1
  %8 = ptrtoint ptr %rdesc_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rdesc_dma, align 4
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 3
  %10 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_regs, align 8
  %add.ptr4 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %9) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #11, !srcloc !114
  %tx_usecs = getelementptr inbounds %struct.xgbe_prv_data, ptr %1, i32 0, i32 88
  %13 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %tx_timer_active = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 9
  %15 = ptrtoint ptr %tx_timer_active to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_timer_active, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %tx_timer_active to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %tx_timer_active, align 8
  %tx_timer = getelementptr inbounds %struct.xgbe_channel, ptr %channel, i32 0, i32 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %19 = ptrtoint ptr %tx_usecs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tx_usecs, align 4
  %call3.i = tail call i32 @__usecs_to_jiffies(i32 noundef %20) #11
  %add = add i32 %call3.i, %18
  %call8 = tail call i32 @mod_timer(ptr noundef %tx_timer, i32 noundef %add) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %xmit_more = getelementptr inbounds %struct.xgbe_ring, ptr %ring, i32 0, i32 12, i32 0, i32 1
  %21 = ptrtoint ptr %xmit_more to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %xmit_more, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_tx_flow_control(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pfc1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 124
  %0 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc1, align 4
  %tx_pause = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 95
  %2 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_pause, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.if.else_crit_edge, label %land.lhs.true

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfc_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @xgbe_enable_tx_flow_control(ptr noundef %pdata)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %rx_q_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %6 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_q_count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1.not.i = icmp eq i32 %7, 0
  br i1 %cmp1.not.i, label %if.else.for.end.i_crit_edge, label %do.body.lr.ph.i

if.else.for.end.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body.lr.ph.i:                                  ; preds = %if.else
  %xgmac_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.02.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i, %do.body.i.do.body.i_crit_edge ]
  %8 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs.i, align 4
  %mul.i = shl i32 %i.02.i, 7
  %add.ptr2.i = getelementptr i8, ptr %9, i32 4416
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 %mul.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %11 = and i32 %10, 2147483647
  %12 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %13, i32 4416
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %11) #11, !srcloc !114
  %inc.i = add nuw i32 %i.02.i, 1
  %14 = ptrtoint ptr %rx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rx_q_count.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.end.i_crit_edge

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

for.end.i:                                        ; preds = %do.body.i.for.end.i_crit_edge, %if.else.for.end.i_crit_edge
  %tx_q_count.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %16 = ptrtoint ptr %tx_q_count.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_q_count.i, align 4
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp143.not.i = icmp eq i32 %18, 0
  br i1 %cmp143.not.i, label %for.end.i.if.end_crit_edge, label %for.body15.lr.ph.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body15.lr.ph.i:                               ; preds = %for.end.i
  %xgmac_regs16.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %19 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %20, i32 112
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %22 = and i32 %21, -33554433
  %23 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr25.i = getelementptr i8, ptr %24, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %22) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %exitcond.not.i = icmp eq i32 %18, 1
  br i1 %exitcond.not.i, label %for.body15.lr.ph.i.if.end_crit_edge, label %for.body15.i.1

for.body15.lr.ph.i.if.end_crit_edge:              ; preds = %for.body15.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body15.i.1:                                   ; preds = %for.body15.lr.ph.i
  %25 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr17.i.1 = getelementptr i8, ptr %26, i32 116
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.1) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %28 = and i32 %27, -33554433
  %29 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr25.i.1 = getelementptr i8, ptr %30, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.1, i32 %28) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %exitcond.not.i.1 = icmp eq i32 %18, 2
  br i1 %exitcond.not.i.1, label %for.body15.i.1.if.end_crit_edge, label %for.body15.i.2

for.body15.i.1.if.end_crit_edge:                  ; preds = %for.body15.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body15.i.2:                                   ; preds = %for.body15.i.1
  %31 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr17.i.2 = getelementptr i8, ptr %32, i32 120
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.2) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %34 = and i32 %33, -33554433
  %35 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr25.i.2 = getelementptr i8, ptr %36, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.2, i32 %34) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %exitcond.not.i.2 = icmp eq i32 %18, 3
  br i1 %exitcond.not.i.2, label %for.body15.i.2.if.end_crit_edge, label %for.body15.i.3

for.body15.i.2.if.end_crit_edge:                  ; preds = %for.body15.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body15.i.3:                                   ; preds = %for.body15.i.2
  %37 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr17.i.3 = getelementptr i8, ptr %38, i32 124
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.3) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %40 = and i32 %39, -33554433
  %41 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr25.i.3 = getelementptr i8, ptr %42, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.3, i32 %40) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %exitcond.not.i.3 = icmp eq i32 %18, 4
  br i1 %exitcond.not.i.3, label %for.body15.i.3.if.end_crit_edge, label %for.body15.i.4

for.body15.i.3.if.end_crit_edge:                  ; preds = %for.body15.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body15.i.4:                                   ; preds = %for.body15.i.3
  %43 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr17.i.4 = getelementptr i8, ptr %44, i32 128
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.4) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %46 = and i32 %45, -33554433
  %47 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr25.i.4 = getelementptr i8, ptr %48, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.4, i32 %46) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %exitcond.not.i.4 = icmp eq i32 %18, 5
  br i1 %exitcond.not.i.4, label %for.body15.i.4.if.end_crit_edge, label %for.body15.i.5

for.body15.i.4.if.end_crit_edge:                  ; preds = %for.body15.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body15.i.5:                                   ; preds = %for.body15.i.4
  %49 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr17.i.5 = getelementptr i8, ptr %50, i32 132
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.5) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %52 = and i32 %51, -33554433
  %53 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr25.i.5 = getelementptr i8, ptr %54, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.5, i32 %52) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %18)
  %exitcond.not.i.5 = icmp eq i32 %18, 6
  br i1 %exitcond.not.i.5, label %for.body15.i.5.if.end_crit_edge, label %for.body15.i.6

for.body15.i.5.if.end_crit_edge:                  ; preds = %for.body15.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body15.i.6:                                   ; preds = %for.body15.i.5
  %55 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr17.i.6 = getelementptr i8, ptr %56, i32 136
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.6) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %58 = and i32 %57, -33554433
  %59 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr25.i.6 = getelementptr i8, ptr %60, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.6, i32 %58) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %18)
  %exitcond.not.i.6 = icmp eq i32 %18, 7
  br i1 %exitcond.not.i.6, label %for.body15.i.6.if.end_crit_edge, label %for.body15.i.7

for.body15.i.6.if.end_crit_edge:                  ; preds = %for.body15.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body15.i.7:                                   ; preds = %for.body15.i.6
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr17.i.7 = getelementptr i8, ptr %62, i32 140
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i.7) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %64 = and i32 %63, -33554433
  %65 = ptrtoint ptr %xgmac_regs16.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xgmac_regs16.i, align 4
  %add.ptr25.i.7 = getelementptr i8, ptr %66, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.7, i32 %64) #11, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %for.body15.i.7, %for.body15.i.6.if.end_crit_edge, %for.body15.i.5.if.end_crit_edge, %for.body15.i.4.if.end_crit_edge, %for.body15.i.3.if.end_crit_edge, %for.body15.i.2.if.end_crit_edge, %for.body15.i.1.if.end_crit_edge, %for.body15.lr.ph.i.if.end_crit_edge, %for.end.i.if.end_crit_edge, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_rx_flow_control(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pfc1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 124
  %0 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc1, align 4
  %rx_pause = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 96
  %2 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %lor.lhs.false.if.else_crit_edge, label %land.lhs.true

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pfc_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %entry.if.then_crit_edge
  %xgmac_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %6 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 144
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = or i32 %8, 16777216
  %10 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #11, !srcloc !114
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %xgmac_regs.i9 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %12 = ptrtoint ptr %xgmac_regs.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %13, i32 144
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %15 = and i32 %14, -16777217
  %16 = ptrtoint ptr %xgmac_regs.i9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xgmac_regs.i9, align 4
  %add.ptr3.i11 = getelementptr i8, ptr %17, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i11, i32 %15) #11, !srcloc !114
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_rx_coalesce(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rx_riwt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 90
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.022
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %rx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_ring, align 16
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %do.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body:                                          ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 60
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = and i32 %8, 16777215
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %rx_riwt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_riwt, align 4
  %and4 = and i32 %12, 255
  %or = or i32 %and4, %10
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %dma_regs7 = getelementptr inbounds %struct.xgbe_channel, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dma_regs7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_regs7, align 8
  %add.ptr8 = getelementptr i8, ptr %16, i32 60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %17) #11, !srcloc !114
  %inc = add nuw i32 %i.022, 1
  %18 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_config_tx_coalesce(ptr nocapture noundef readnone %pdata) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_usec_to_riwt(ptr nocapture noundef readonly %pdata, i32 noundef %usec) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sysclk_rate = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 110
  %0 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysclk_rate, align 4
  %div = udiv i32 %1, 1000000
  %mul = mul i32 %div, %usec
  %div15 = lshr i32 %mul, 8
  ret i32 %div15
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @xgbe_riwt_to_usec(ptr nocapture noundef readonly %pdata, i32 noundef %riwt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sysclk_rate = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 110
  %0 = ptrtoint ptr %sysclk_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysclk_rate, align 4
  %mul = shl i32 %riwt, 8
  %div = udiv i32 %1, 1000000
  %div1 = udiv i32 %mul, %div
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_rx_threshold(ptr nocapture noundef readonly %pdata, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %0 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %and4 = and i32 %val, 3
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.020 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %mul = shl i32 %i.020, 7
  %add.ptr1 = getelementptr i8, ptr %3, i32 4416
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %5 = and i32 %4, -50331649
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %and4
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 4416
  %add.ptr9 = getelementptr i8, ptr %add.ptr8, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #11, !srcloc !114
  %inc = add nuw i32 %i.020, 1
  %10 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_q_count, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_tx_threshold(ptr nocapture noundef readonly %pdata, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %0 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %and4 = shl i32 %val, 4
  %shl = and i32 %and4, 112
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.020 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4352
  %mul = shl i32 %i.020, 7
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %5 = and i32 %4, -1879048193
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %shl
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 4352
  %add.ptr8 = getelementptr i8, ptr %add.ptr6, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #11, !srcloc !114
  %inc = add nuw i32 %i.020, 1
  %10 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_q_count, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_rsf_mode(ptr nocapture noundef readonly %pdata, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %0 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %and4 = shl i32 %val, 5
  %shl = and i32 %and4, 32
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.020 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %mul = shl i32 %i.020, 7
  %add.ptr1 = getelementptr i8, ptr %3, i32 4416
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %5 = and i32 %4, -536870913
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %shl
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8 = getelementptr i8, ptr %8, i32 4416
  %add.ptr9 = getelementptr i8, ptr %add.ptr8, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #11, !srcloc !114
  %inc = add nuw i32 %i.020, 1
  %10 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_q_count, align 8
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_tsf_mode(ptr nocapture noundef readonly %pdata, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %0 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_q_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp19.not = icmp eq i32 %1, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %and4 = shl i32 %val, 1
  %shl = and i32 %and4, 2
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.020 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4352
  %mul = shl i32 %i.020, 7
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %5 = and i32 %4, -33554433
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %or = or i32 %6, %shl
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 4352
  %add.ptr8 = getelementptr i8, ptr %add.ptr6, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %9) #11, !srcloc !114
  %inc = add nuw i32 %i.020, 1
  %10 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_q_count, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_osp_mode(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channel_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 65
  %0 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %channel_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp21.not = icmp eq i32 %1, 0
  br i1 %cmp21.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tx_osp_mode = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 83
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 62, i32 %i.022
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tx_ring = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_ring, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %do.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body:                                          ; preds = %for.body
  %dma_regs = getelementptr inbounds %struct.xgbe_channel, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dma_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_regs, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = and i32 %8, -268435457
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %tx_osp_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_osp_mode, align 8
  %and4 = shl i32 %12, 4
  %shl = and i32 %and4, 16
  %or = or i32 %shl, %10
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %dma_regs7 = getelementptr inbounds %struct.xgbe_channel, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dma_regs7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_regs7, align 8
  %add.ptr8 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %17) #11, !srcloc !114
  %inc = add nuw i32 %i.022, 1
  %18 = ptrtoint ptr %channel_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel_count, align 8
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_tx_mmc_int(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2056
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mmc_stats = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 2068
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %8, i32 2072
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %10 = zext i32 %9 to i64
  %11 = zext i32 %6 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13)
  %15 = ptrtoint ptr %mmc_stats to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %mmc_stats, align 8
  %add = add i64 %14, %16
  store i64 %add, ptr %mmc_stats, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not = icmp eq i32 %17, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %vdata.i175 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %18 = ptrtoint ptr %vdata.i175 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdata.i175, align 4
  %mmc_64bit.i176 = getelementptr inbounds %struct.xgbe_version_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %mmc_64bit.i176 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mmc_64bit.i176, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i177.not = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i181 = getelementptr i8, ptr %23, i32 2076
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #11, !srcloc !115
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i182 = zext i32 %25 to i64
  br i1 %tobool.not.i177.not, label %if.then5.xgbe_mmc_read.exit188_crit_edge, label %if.then5.i

if.then5.xgbe_mmc_read.exit188_crit_edge:         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit188

if.then5.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  %26 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i184 = getelementptr i8, ptr %27, i32 2080
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i184) #11, !srcloc !115
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i185 = zext i32 %29 to i64
  %shl.i186 = shl nuw i64 %conv10.i185, 32
  %or.i187 = or i64 %shl.i186, %conv.i182
  br label %xgbe_mmc_read.exit188

xgbe_mmc_read.exit188:                            ; preds = %if.then5.i, %if.then5.xgbe_mmc_read.exit188_crit_edge
  %val.0.i = phi i64 [ %or.i187, %if.then5.i ], [ %conv.i182, %if.then5.xgbe_mmc_read.exit188_crit_edge ]
  %txframecount_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 1
  %30 = ptrtoint ptr %txframecount_gb to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %txframecount_gb, align 8
  %add7 = add i64 %31, %val.0.i
  store i64 %add7, ptr %txframecount_gb, align 8
  br label %if.end8

if.end8:                                          ; preds = %xgbe_mmc_read.exit188, %if.end.if.end8_crit_edge
  %32 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %if.then12

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then12:                                        ; preds = %if.end8
  %vdata.i189 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %33 = ptrtoint ptr %vdata.i189 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdata.i189, align 4
  %mmc_64bit.i190 = getelementptr inbounds %struct.xgbe_version_data, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %mmc_64bit.i190 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mmc_64bit.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i191.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i196 = getelementptr i8, ptr %38, i32 2084
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #11, !srcloc !115
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i197 = zext i32 %40 to i64
  br i1 %tobool.not.i191.not, label %if.then12.xgbe_mmc_read.exit206_crit_edge, label %if.then5.i204

if.then12.xgbe_mmc_read.exit206_crit_edge:        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit206

if.then5.i204:                                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i200 = getelementptr i8, ptr %42, i32 2088
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i200) #11, !srcloc !115
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i201 = zext i32 %44 to i64
  %shl.i202 = shl nuw i64 %conv10.i201, 32
  %or.i203 = or i64 %shl.i202, %conv.i197
  br label %xgbe_mmc_read.exit206

xgbe_mmc_read.exit206:                            ; preds = %if.then5.i204, %if.then12.xgbe_mmc_read.exit206_crit_edge
  %val.0.i205 = phi i64 [ %or.i203, %if.then5.i204 ], [ %conv.i197, %if.then12.xgbe_mmc_read.exit206_crit_edge ]
  %txbroadcastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 2
  %45 = ptrtoint ptr %txbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %txbroadcastframes_g, align 8
  %add14 = add i64 %46, %val.0.i205
  store i64 %add14, ptr %txbroadcastframes_g, align 8
  br label %if.end15

if.end15:                                         ; preds = %xgbe_mmc_read.exit206, %if.end8.if.end15_crit_edge
  %47 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool18.not = icmp eq i32 %47, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  %vdata.i207 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %48 = ptrtoint ptr %vdata.i207 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vdata.i207, align 4
  %mmc_64bit.i208 = getelementptr inbounds %struct.xgbe_version_data, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %mmc_64bit.i208 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mmc_64bit.i208, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i209.not = icmp eq i32 %51, 0
  %52 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i214 = getelementptr i8, ptr %53, i32 2092
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i214) #11, !srcloc !115
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i215 = zext i32 %55 to i64
  br i1 %tobool.not.i209.not, label %if.then19.xgbe_mmc_read.exit224_crit_edge, label %if.then5.i222

if.then19.xgbe_mmc_read.exit224_crit_edge:        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit224

if.then5.i222:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i218 = getelementptr i8, ptr %57, i32 2096
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i218) #11, !srcloc !115
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i219 = zext i32 %59 to i64
  %shl.i220 = shl nuw i64 %conv10.i219, 32
  %or.i221 = or i64 %shl.i220, %conv.i215
  br label %xgbe_mmc_read.exit224

xgbe_mmc_read.exit224:                            ; preds = %if.then5.i222, %if.then19.xgbe_mmc_read.exit224_crit_edge
  %val.0.i223 = phi i64 [ %or.i221, %if.then5.i222 ], [ %conv.i215, %if.then19.xgbe_mmc_read.exit224_crit_edge ]
  %txmulticastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 3
  %60 = ptrtoint ptr %txmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %txmulticastframes_g, align 8
  %add21 = add i64 %61, %val.0.i223
  store i64 %add21, ptr %txmulticastframes_g, align 8
  br label %if.end22

if.end22:                                         ; preds = %xgbe_mmc_read.exit224, %if.end15.if.end22_crit_edge
  %62 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool25.not = icmp eq i32 %62, 0
  br i1 %tobool25.not, label %if.end22.if.end29_crit_edge, label %if.then26

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then26:                                        ; preds = %if.end22
  %vdata.i225 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %63 = ptrtoint ptr %vdata.i225 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vdata.i225, align 4
  %mmc_64bit.i226 = getelementptr inbounds %struct.xgbe_version_data, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %mmc_64bit.i226 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mmc_64bit.i226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool.not.i227.not = icmp eq i32 %66, 0
  %67 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i232 = getelementptr i8, ptr %68, i32 2100
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #11, !srcloc !115
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i233 = zext i32 %70 to i64
  br i1 %tobool.not.i227.not, label %if.then26.xgbe_mmc_read.exit242_crit_edge, label %if.then5.i240

if.then26.xgbe_mmc_read.exit242_crit_edge:        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit242

if.then5.i240:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i236 = getelementptr i8, ptr %72, i32 2104
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i236) #11, !srcloc !115
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i237 = zext i32 %74 to i64
  %shl.i238 = shl nuw i64 %conv10.i237, 32
  %or.i239 = or i64 %shl.i238, %conv.i233
  br label %xgbe_mmc_read.exit242

xgbe_mmc_read.exit242:                            ; preds = %if.then5.i240, %if.then26.xgbe_mmc_read.exit242_crit_edge
  %val.0.i241 = phi i64 [ %or.i239, %if.then5.i240 ], [ %conv.i233, %if.then26.xgbe_mmc_read.exit242_crit_edge ]
  %tx64octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 4
  %75 = ptrtoint ptr %tx64octets_gb to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %tx64octets_gb, align 8
  %add28 = add i64 %76, %val.0.i241
  store i64 %add28, ptr %tx64octets_gb, align 8
  br label %if.end29

if.end29:                                         ; preds = %xgbe_mmc_read.exit242, %if.end22.if.end29_crit_edge
  %77 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool32.not = icmp eq i32 %77, 0
  br i1 %tobool32.not, label %if.end29.if.end36_crit_edge, label %if.then33

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %if.end29
  %vdata.i243 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %78 = ptrtoint ptr %vdata.i243 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %vdata.i243, align 4
  %mmc_64bit.i244 = getelementptr inbounds %struct.xgbe_version_data, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %mmc_64bit.i244 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mmc_64bit.i244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i245.not = icmp eq i32 %81, 0
  %82 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i250 = getelementptr i8, ptr %83, i32 2108
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i250) #11, !srcloc !115
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i251 = zext i32 %85 to i64
  br i1 %tobool.not.i245.not, label %if.then33.xgbe_mmc_read.exit260_crit_edge, label %if.then5.i258

if.then33.xgbe_mmc_read.exit260_crit_edge:        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit260

if.then5.i258:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %86 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i254 = getelementptr i8, ptr %87, i32 2112
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i254) #11, !srcloc !115
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i255 = zext i32 %89 to i64
  %shl.i256 = shl nuw i64 %conv10.i255, 32
  %or.i257 = or i64 %shl.i256, %conv.i251
  br label %xgbe_mmc_read.exit260

xgbe_mmc_read.exit260:                            ; preds = %if.then5.i258, %if.then33.xgbe_mmc_read.exit260_crit_edge
  %val.0.i259 = phi i64 [ %or.i257, %if.then5.i258 ], [ %conv.i251, %if.then33.xgbe_mmc_read.exit260_crit_edge ]
  %tx65to127octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 5
  %90 = ptrtoint ptr %tx65to127octets_gb to i32
  call void @__asan_load8_noabort(i32 %90)
  %91 = load i64, ptr %tx65to127octets_gb, align 8
  %add35 = add i64 %91, %val.0.i259
  store i64 %add35, ptr %tx65to127octets_gb, align 8
  br label %if.end36

if.end36:                                         ; preds = %xgbe_mmc_read.exit260, %if.end29.if.end36_crit_edge
  %92 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool39.not = icmp eq i32 %92, 0
  br i1 %tobool39.not, label %if.end36.if.end43_crit_edge, label %if.then40

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

if.then40:                                        ; preds = %if.end36
  %vdata.i261 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %93 = ptrtoint ptr %vdata.i261 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %vdata.i261, align 4
  %mmc_64bit.i262 = getelementptr inbounds %struct.xgbe_version_data, ptr %94, i32 0, i32 2
  %95 = ptrtoint ptr %mmc_64bit.i262 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mmc_64bit.i262, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i263.not = icmp eq i32 %96, 0
  %97 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i268 = getelementptr i8, ptr %98, i32 2116
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i268) #11, !srcloc !115
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i269 = zext i32 %100 to i64
  br i1 %tobool.not.i263.not, label %if.then40.xgbe_mmc_read.exit278_crit_edge, label %if.then5.i276

if.then40.xgbe_mmc_read.exit278_crit_edge:        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit278

if.then5.i276:                                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i272 = getelementptr i8, ptr %102, i32 2120
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i272) #11, !srcloc !115
  %104 = tail call i32 @llvm.bswap.i32(i32 %103) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i273 = zext i32 %104 to i64
  %shl.i274 = shl nuw i64 %conv10.i273, 32
  %or.i275 = or i64 %shl.i274, %conv.i269
  br label %xgbe_mmc_read.exit278

xgbe_mmc_read.exit278:                            ; preds = %if.then5.i276, %if.then40.xgbe_mmc_read.exit278_crit_edge
  %val.0.i277 = phi i64 [ %or.i275, %if.then5.i276 ], [ %conv.i269, %if.then40.xgbe_mmc_read.exit278_crit_edge ]
  %tx128to255octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 6
  %105 = ptrtoint ptr %tx128to255octets_gb to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %tx128to255octets_gb, align 8
  %add42 = add i64 %106, %val.0.i277
  store i64 %add42, ptr %tx128to255octets_gb, align 8
  br label %if.end43

if.end43:                                         ; preds = %xgbe_mmc_read.exit278, %if.end36.if.end43_crit_edge
  %107 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %tobool46.not = icmp eq i32 %107, 0
  br i1 %tobool46.not, label %if.end43.if.end50_crit_edge, label %if.then47

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

if.then47:                                        ; preds = %if.end43
  %vdata.i279 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %108 = ptrtoint ptr %vdata.i279 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %vdata.i279, align 4
  %mmc_64bit.i280 = getelementptr inbounds %struct.xgbe_version_data, ptr %109, i32 0, i32 2
  %110 = ptrtoint ptr %mmc_64bit.i280 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %mmc_64bit.i280, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool.not.i281.not = icmp eq i32 %111, 0
  %112 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i286 = getelementptr i8, ptr %113, i32 2124
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i286) #11, !srcloc !115
  %115 = tail call i32 @llvm.bswap.i32(i32 %114) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i287 = zext i32 %115 to i64
  br i1 %tobool.not.i281.not, label %if.then47.xgbe_mmc_read.exit296_crit_edge, label %if.then5.i294

if.then47.xgbe_mmc_read.exit296_crit_edge:        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit296

if.then5.i294:                                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #13
  %116 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i290 = getelementptr i8, ptr %117, i32 2128
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i290) #11, !srcloc !115
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i291 = zext i32 %119 to i64
  %shl.i292 = shl nuw i64 %conv10.i291, 32
  %or.i293 = or i64 %shl.i292, %conv.i287
  br label %xgbe_mmc_read.exit296

xgbe_mmc_read.exit296:                            ; preds = %if.then5.i294, %if.then47.xgbe_mmc_read.exit296_crit_edge
  %val.0.i295 = phi i64 [ %or.i293, %if.then5.i294 ], [ %conv.i287, %if.then47.xgbe_mmc_read.exit296_crit_edge ]
  %tx256to511octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 7
  %120 = ptrtoint ptr %tx256to511octets_gb to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %tx256to511octets_gb, align 8
  %add49 = add i64 %121, %val.0.i295
  store i64 %add49, ptr %tx256to511octets_gb, align 8
  br label %if.end50

if.end50:                                         ; preds = %xgbe_mmc_read.exit296, %if.end43.if.end50_crit_edge
  %122 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool53.not = icmp eq i32 %122, 0
  br i1 %tobool53.not, label %if.end50.if.end57_crit_edge, label %if.then54

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then54:                                        ; preds = %if.end50
  %vdata.i297 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %123 = ptrtoint ptr %vdata.i297 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %vdata.i297, align 4
  %mmc_64bit.i298 = getelementptr inbounds %struct.xgbe_version_data, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %mmc_64bit.i298 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %mmc_64bit.i298, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i299.not = icmp eq i32 %126, 0
  %127 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i304 = getelementptr i8, ptr %128, i32 2132
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i304) #11, !srcloc !115
  %130 = tail call i32 @llvm.bswap.i32(i32 %129) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i305 = zext i32 %130 to i64
  br i1 %tobool.not.i299.not, label %if.then54.xgbe_mmc_read.exit314_crit_edge, label %if.then5.i312

if.then54.xgbe_mmc_read.exit314_crit_edge:        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit314

if.then5.i312:                                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i308 = getelementptr i8, ptr %132, i32 2136
  %133 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i308) #11, !srcloc !115
  %134 = tail call i32 @llvm.bswap.i32(i32 %133) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i309 = zext i32 %134 to i64
  %shl.i310 = shl nuw i64 %conv10.i309, 32
  %or.i311 = or i64 %shl.i310, %conv.i305
  br label %xgbe_mmc_read.exit314

xgbe_mmc_read.exit314:                            ; preds = %if.then5.i312, %if.then54.xgbe_mmc_read.exit314_crit_edge
  %val.0.i313 = phi i64 [ %or.i311, %if.then5.i312 ], [ %conv.i305, %if.then54.xgbe_mmc_read.exit314_crit_edge ]
  %tx512to1023octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 8
  %135 = ptrtoint ptr %tx512to1023octets_gb to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %tx512to1023octets_gb, align 8
  %add56 = add i64 %136, %val.0.i313
  store i64 %add56, ptr %tx512to1023octets_gb, align 8
  br label %if.end57

if.end57:                                         ; preds = %xgbe_mmc_read.exit314, %if.end50.if.end57_crit_edge
  %137 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool60.not = icmp eq i32 %137, 0
  br i1 %tobool60.not, label %if.end57.if.end64_crit_edge, label %if.then61

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then61:                                        ; preds = %if.end57
  %vdata.i315 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %138 = ptrtoint ptr %vdata.i315 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %vdata.i315, align 4
  %mmc_64bit.i316 = getelementptr inbounds %struct.xgbe_version_data, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %mmc_64bit.i316 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %mmc_64bit.i316, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i317.not = icmp eq i32 %141, 0
  %142 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i322 = getelementptr i8, ptr %143, i32 2140
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i322) #11, !srcloc !115
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i323 = zext i32 %145 to i64
  br i1 %tobool.not.i317.not, label %if.then61.xgbe_mmc_read.exit332_crit_edge, label %if.then5.i330

if.then61.xgbe_mmc_read.exit332_crit_edge:        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit332

if.then5.i330:                                    ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %146 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i326 = getelementptr i8, ptr %147, i32 2144
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i326) #11, !srcloc !115
  %149 = tail call i32 @llvm.bswap.i32(i32 %148) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i327 = zext i32 %149 to i64
  %shl.i328 = shl nuw i64 %conv10.i327, 32
  %or.i329 = or i64 %shl.i328, %conv.i323
  br label %xgbe_mmc_read.exit332

xgbe_mmc_read.exit332:                            ; preds = %if.then5.i330, %if.then61.xgbe_mmc_read.exit332_crit_edge
  %val.0.i331 = phi i64 [ %or.i329, %if.then5.i330 ], [ %conv.i323, %if.then61.xgbe_mmc_read.exit332_crit_edge ]
  %tx1024tomaxoctets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 9
  %150 = ptrtoint ptr %tx1024tomaxoctets_gb to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %tx1024tomaxoctets_gb, align 8
  %add63 = add i64 %151, %val.0.i331
  store i64 %add63, ptr %tx1024tomaxoctets_gb, align 8
  br label %if.end64

if.end64:                                         ; preds = %xgbe_mmc_read.exit332, %if.end57.if.end64_crit_edge
  %152 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool67.not = icmp eq i32 %152, 0
  br i1 %tobool67.not, label %if.end64.if.end71_crit_edge, label %if.then68

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then68:                                        ; preds = %if.end64
  %vdata.i333 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %153 = ptrtoint ptr %vdata.i333 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %vdata.i333, align 4
  %mmc_64bit.i334 = getelementptr inbounds %struct.xgbe_version_data, ptr %154, i32 0, i32 2
  %155 = ptrtoint ptr %mmc_64bit.i334 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %mmc_64bit.i334, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i335.not = icmp eq i32 %156, 0
  %157 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i340 = getelementptr i8, ptr %158, i32 2148
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i340) #11, !srcloc !115
  %160 = tail call i32 @llvm.bswap.i32(i32 %159) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i341 = zext i32 %160 to i64
  br i1 %tobool.not.i335.not, label %if.then68.xgbe_mmc_read.exit350_crit_edge, label %if.then5.i348

if.then68.xgbe_mmc_read.exit350_crit_edge:        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit350

if.then5.i348:                                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  %161 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i344 = getelementptr i8, ptr %162, i32 2152
  %163 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i344) #11, !srcloc !115
  %164 = tail call i32 @llvm.bswap.i32(i32 %163) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i345 = zext i32 %164 to i64
  %shl.i346 = shl nuw i64 %conv10.i345, 32
  %or.i347 = or i64 %shl.i346, %conv.i341
  br label %xgbe_mmc_read.exit350

xgbe_mmc_read.exit350:                            ; preds = %if.then5.i348, %if.then68.xgbe_mmc_read.exit350_crit_edge
  %val.0.i349 = phi i64 [ %or.i347, %if.then5.i348 ], [ %conv.i341, %if.then68.xgbe_mmc_read.exit350_crit_edge ]
  %txunicastframes_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 10
  %165 = ptrtoint ptr %txunicastframes_gb to i32
  call void @__asan_load8_noabort(i32 %165)
  %166 = load i64, ptr %txunicastframes_gb, align 8
  %add70 = add i64 %166, %val.0.i349
  store i64 %add70, ptr %txunicastframes_gb, align 8
  br label %if.end71

if.end71:                                         ; preds = %xgbe_mmc_read.exit350, %if.end64.if.end71_crit_edge
  %167 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool74.not = icmp eq i32 %167, 0
  br i1 %tobool74.not, label %if.end71.if.end78_crit_edge, label %if.then75

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then75:                                        ; preds = %if.end71
  %vdata.i351 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %168 = ptrtoint ptr %vdata.i351 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %vdata.i351, align 4
  %mmc_64bit.i352 = getelementptr inbounds %struct.xgbe_version_data, ptr %169, i32 0, i32 2
  %170 = ptrtoint ptr %mmc_64bit.i352 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mmc_64bit.i352, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool.not.i353.not = icmp eq i32 %171, 0
  %172 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i358 = getelementptr i8, ptr %173, i32 2156
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i358) #11, !srcloc !115
  %175 = tail call i32 @llvm.bswap.i32(i32 %174) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i359 = zext i32 %175 to i64
  br i1 %tobool.not.i353.not, label %if.then75.xgbe_mmc_read.exit368_crit_edge, label %if.then5.i366

if.then75.xgbe_mmc_read.exit368_crit_edge:        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit368

if.then5.i366:                                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i362 = getelementptr i8, ptr %177, i32 2160
  %178 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i362) #11, !srcloc !115
  %179 = tail call i32 @llvm.bswap.i32(i32 %178) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i363 = zext i32 %179 to i64
  %shl.i364 = shl nuw i64 %conv10.i363, 32
  %or.i365 = or i64 %shl.i364, %conv.i359
  br label %xgbe_mmc_read.exit368

xgbe_mmc_read.exit368:                            ; preds = %if.then5.i366, %if.then75.xgbe_mmc_read.exit368_crit_edge
  %val.0.i367 = phi i64 [ %or.i365, %if.then5.i366 ], [ %conv.i359, %if.then75.xgbe_mmc_read.exit368_crit_edge ]
  %txmulticastframes_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 11
  %180 = ptrtoint ptr %txmulticastframes_gb to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %txmulticastframes_gb, align 8
  %add77 = add i64 %181, %val.0.i367
  store i64 %add77, ptr %txmulticastframes_gb, align 8
  br label %if.end78

if.end78:                                         ; preds = %xgbe_mmc_read.exit368, %if.end71.if.end78_crit_edge
  %182 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool81.not = icmp eq i32 %182, 0
  br i1 %tobool81.not, label %if.end78.if.end86_crit_edge, label %if.then82

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end86

if.then82:                                        ; preds = %if.end78
  %vdata.i369 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %183 = ptrtoint ptr %vdata.i369 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %vdata.i369, align 4
  %mmc_64bit.i370 = getelementptr inbounds %struct.xgbe_version_data, ptr %184, i32 0, i32 2
  %185 = ptrtoint ptr %mmc_64bit.i370 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %mmc_64bit.i370, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool.not.i371.not = icmp eq i32 %186, 0
  %187 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i376 = getelementptr i8, ptr %188, i32 2164
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i376) #11, !srcloc !115
  %190 = tail call i32 @llvm.bswap.i32(i32 %189) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i377 = zext i32 %190 to i64
  br i1 %tobool.not.i371.not, label %if.then82.xgbe_mmc_read.exit386_crit_edge, label %if.then5.i384

if.then82.xgbe_mmc_read.exit386_crit_edge:        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit386

if.then5.i384:                                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  %191 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i380 = getelementptr i8, ptr %192, i32 2168
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i380) #11, !srcloc !115
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i381 = zext i32 %194 to i64
  %shl.i382 = shl nuw i64 %conv10.i381, 32
  %or.i383 = or i64 %shl.i382, %conv.i377
  br label %xgbe_mmc_read.exit386

xgbe_mmc_read.exit386:                            ; preds = %if.then5.i384, %if.then82.xgbe_mmc_read.exit386_crit_edge
  %val.0.i385 = phi i64 [ %or.i383, %if.then5.i384 ], [ %conv.i377, %if.then82.xgbe_mmc_read.exit386_crit_edge ]
  %txbroadcastframes_g84 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 2
  %195 = ptrtoint ptr %txbroadcastframes_g84 to i32
  call void @__asan_load8_noabort(i32 %195)
  %196 = load i64, ptr %txbroadcastframes_g84, align 8
  %add85 = add i64 %196, %val.0.i385
  store i64 %add85, ptr %txbroadcastframes_g84, align 8
  br label %if.end86

if.end86:                                         ; preds = %xgbe_mmc_read.exit386, %if.end78.if.end86_crit_edge
  %197 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool89.not = icmp eq i32 %197, 0
  br i1 %tobool89.not, label %if.end86.if.end93_crit_edge, label %if.then90

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then90:                                        ; preds = %if.end86
  %vdata.i387 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %198 = ptrtoint ptr %vdata.i387 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %vdata.i387, align 4
  %mmc_64bit.i388 = getelementptr inbounds %struct.xgbe_version_data, ptr %199, i32 0, i32 2
  %200 = ptrtoint ptr %mmc_64bit.i388 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %mmc_64bit.i388, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool.not.i389.not = icmp eq i32 %201, 0
  %202 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i394 = getelementptr i8, ptr %203, i32 2172
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i394) #11, !srcloc !115
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i395 = zext i32 %205 to i64
  br i1 %tobool.not.i389.not, label %if.then90.xgbe_mmc_read.exit404_crit_edge, label %if.then5.i402

if.then90.xgbe_mmc_read.exit404_crit_edge:        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit404

if.then5.i402:                                    ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #13
  %206 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i398 = getelementptr i8, ptr %207, i32 2176
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i398) #11, !srcloc !115
  %209 = tail call i32 @llvm.bswap.i32(i32 %208) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i399 = zext i32 %209 to i64
  %shl.i400 = shl nuw i64 %conv10.i399, 32
  %or.i401 = or i64 %shl.i400, %conv.i395
  br label %xgbe_mmc_read.exit404

xgbe_mmc_read.exit404:                            ; preds = %if.then5.i402, %if.then90.xgbe_mmc_read.exit404_crit_edge
  %val.0.i403 = phi i64 [ %or.i401, %if.then5.i402 ], [ %conv.i395, %if.then90.xgbe_mmc_read.exit404_crit_edge ]
  %txunderflowerror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 13
  %210 = ptrtoint ptr %txunderflowerror to i32
  call void @__asan_load8_noabort(i32 %210)
  %211 = load i64, ptr %txunderflowerror, align 8
  %add92 = add i64 %211, %val.0.i403
  store i64 %add92, ptr %txunderflowerror, align 8
  br label %if.end93

if.end93:                                         ; preds = %xgbe_mmc_read.exit404, %if.end86.if.end93_crit_edge
  %212 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool96.not = icmp eq i32 %212, 0
  br i1 %tobool96.not, label %if.end93.if.end100_crit_edge, label %xgbe_mmc_read.exit422

if.end93.if.end100_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

xgbe_mmc_read.exit422:                            ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  %213 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i412 = getelementptr i8, ptr %214, i32 2180
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %216 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i416 = getelementptr i8, ptr %217, i32 2184
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i416) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %219 = zext i32 %218 to i64
  %220 = zext i32 %215 to i64
  %221 = shl nuw i64 %220, 32
  %222 = or i64 %221, %219
  %223 = tail call i64 @llvm.bswap.i64(i64 %222)
  %txoctetcount_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 14
  %224 = ptrtoint ptr %txoctetcount_g to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %txoctetcount_g, align 8
  %add99 = add i64 %223, %225
  store i64 %add99, ptr %txoctetcount_g, align 8
  br label %if.end100

if.end100:                                        ; preds = %xgbe_mmc_read.exit422, %if.end93.if.end100_crit_edge
  %226 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool103.not = icmp eq i32 %226, 0
  br i1 %tobool103.not, label %if.end100.if.end107_crit_edge, label %if.then104

if.end100.if.end107_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end107

if.then104:                                       ; preds = %if.end100
  %vdata.i423 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %227 = ptrtoint ptr %vdata.i423 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %vdata.i423, align 4
  %mmc_64bit.i424 = getelementptr inbounds %struct.xgbe_version_data, ptr %228, i32 0, i32 2
  %229 = ptrtoint ptr %mmc_64bit.i424 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %mmc_64bit.i424, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool.not.i425.not = icmp eq i32 %230, 0
  %231 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i430 = getelementptr i8, ptr %232, i32 2188
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i430) #11, !srcloc !115
  %234 = tail call i32 @llvm.bswap.i32(i32 %233) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i431 = zext i32 %234 to i64
  br i1 %tobool.not.i425.not, label %if.then104.xgbe_mmc_read.exit440_crit_edge, label %if.then5.i438

if.then104.xgbe_mmc_read.exit440_crit_edge:       ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit440

if.then5.i438:                                    ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  %235 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i434 = getelementptr i8, ptr %236, i32 2192
  %237 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i434) #11, !srcloc !115
  %238 = tail call i32 @llvm.bswap.i32(i32 %237) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i435 = zext i32 %238 to i64
  %shl.i436 = shl nuw i64 %conv10.i435, 32
  %or.i437 = or i64 %shl.i436, %conv.i431
  br label %xgbe_mmc_read.exit440

xgbe_mmc_read.exit440:                            ; preds = %if.then5.i438, %if.then104.xgbe_mmc_read.exit440_crit_edge
  %val.0.i439 = phi i64 [ %or.i437, %if.then5.i438 ], [ %conv.i431, %if.then104.xgbe_mmc_read.exit440_crit_edge ]
  %txframecount_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 15
  %239 = ptrtoint ptr %txframecount_g to i32
  call void @__asan_load8_noabort(i32 %239)
  %240 = load i64, ptr %txframecount_g, align 8
  %add106 = add i64 %240, %val.0.i439
  store i64 %add106, ptr %txframecount_g, align 8
  br label %if.end107

if.end107:                                        ; preds = %xgbe_mmc_read.exit440, %if.end100.if.end107_crit_edge
  %241 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool110.not = icmp eq i32 %241, 0
  br i1 %tobool110.not, label %if.end107.if.end114_crit_edge, label %if.then111

if.end107.if.end114_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end114

if.then111:                                       ; preds = %if.end107
  %vdata.i441 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %242 = ptrtoint ptr %vdata.i441 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %vdata.i441, align 4
  %mmc_64bit.i442 = getelementptr inbounds %struct.xgbe_version_data, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %mmc_64bit.i442 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %mmc_64bit.i442, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not.i443.not = icmp eq i32 %245, 0
  %246 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i448 = getelementptr i8, ptr %247, i32 2196
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i448) #11, !srcloc !115
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i449 = zext i32 %249 to i64
  br i1 %tobool.not.i443.not, label %if.then111.xgbe_mmc_read.exit458_crit_edge, label %if.then5.i456

if.then111.xgbe_mmc_read.exit458_crit_edge:       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit458

if.then5.i456:                                    ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #13
  %250 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i452 = getelementptr i8, ptr %251, i32 2200
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i452) #11, !srcloc !115
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i453 = zext i32 %253 to i64
  %shl.i454 = shl nuw i64 %conv10.i453, 32
  %or.i455 = or i64 %shl.i454, %conv.i449
  br label %xgbe_mmc_read.exit458

xgbe_mmc_read.exit458:                            ; preds = %if.then5.i456, %if.then111.xgbe_mmc_read.exit458_crit_edge
  %val.0.i457 = phi i64 [ %or.i455, %if.then5.i456 ], [ %conv.i449, %if.then111.xgbe_mmc_read.exit458_crit_edge ]
  %txpauseframes = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 16
  %254 = ptrtoint ptr %txpauseframes to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %txpauseframes, align 8
  %add113 = add i64 %255, %val.0.i457
  store i64 %add113, ptr %txpauseframes, align 8
  br label %if.end114

if.end114:                                        ; preds = %xgbe_mmc_read.exit458, %if.end107.if.end114_crit_edge
  %256 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool117.not = icmp eq i32 %256, 0
  br i1 %tobool117.not, label %if.end114.if.end121_crit_edge, label %if.then118

if.end114.if.end121_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end121

if.then118:                                       ; preds = %if.end114
  %vdata.i459 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %257 = ptrtoint ptr %vdata.i459 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %vdata.i459, align 4
  %mmc_64bit.i460 = getelementptr inbounds %struct.xgbe_version_data, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %mmc_64bit.i460 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %mmc_64bit.i460, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %260)
  %tobool.not.i461.not = icmp eq i32 %260, 0
  %261 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i466 = getelementptr i8, ptr %262, i32 2204
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i466) #11, !srcloc !115
  %264 = tail call i32 @llvm.bswap.i32(i32 %263) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i467 = zext i32 %264 to i64
  br i1 %tobool.not.i461.not, label %if.then118.xgbe_mmc_read.exit476_crit_edge, label %if.then5.i474

if.then118.xgbe_mmc_read.exit476_crit_edge:       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit476

if.then5.i474:                                    ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  %265 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i470 = getelementptr i8, ptr %266, i32 2208
  %267 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i470) #11, !srcloc !115
  %268 = tail call i32 @llvm.bswap.i32(i32 %267) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i471 = zext i32 %268 to i64
  %shl.i472 = shl nuw i64 %conv10.i471, 32
  %or.i473 = or i64 %shl.i472, %conv.i467
  br label %xgbe_mmc_read.exit476

xgbe_mmc_read.exit476:                            ; preds = %if.then5.i474, %if.then118.xgbe_mmc_read.exit476_crit_edge
  %val.0.i475 = phi i64 [ %or.i473, %if.then5.i474 ], [ %conv.i467, %if.then118.xgbe_mmc_read.exit476_crit_edge ]
  %txvlanframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 17
  %269 = ptrtoint ptr %txvlanframes_g to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %txvlanframes_g, align 8
  %add120 = add i64 %270, %val.0.i475
  store i64 %add120, ptr %txvlanframes_g, align 8
  br label %if.end121

if.end121:                                        ; preds = %xgbe_mmc_read.exit476, %if.end114.if.end121_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_rx_mmc_int(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2052
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %vdata.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %4 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i = getelementptr inbounds %struct.xgbe_version_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %mmc_64bit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mmc_64bit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.not = icmp eq i32 %7, 0
  %8 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 2304
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i = zext i32 %11 to i64
  br i1 %tobool.not.i.not, label %if.then.xgbe_mmc_read.exit_crit_edge, label %if.then5.i

if.then.xgbe_mmc_read.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit

if.then5.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %13, i32 2308
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #11, !srcloc !115
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i = zext i32 %15 to i64
  %shl.i = shl nuw i64 %conv10.i, 32
  %or.i = or i64 %shl.i, %conv.i
  br label %xgbe_mmc_read.exit

xgbe_mmc_read.exit:                               ; preds = %if.then5.i, %if.then.xgbe_mmc_read.exit_crit_edge
  %val.0.i = phi i64 [ %or.i, %if.then5.i ], [ %conv.i, %if.then.xgbe_mmc_read.exit_crit_edge ]
  %rxframecount_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 18
  %16 = ptrtoint ptr %rxframecount_gb to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %rxframecount_gb, align 8
  %add = add i64 %17, %val.0.i
  store i64 %add, ptr %rxframecount_gb, align 8
  br label %if.end

if.end:                                           ; preds = %xgbe_mmc_read.exit, %entry.if.end_crit_edge
  %18 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %if.end.if.end8_crit_edge, label %xgbe_mmc_read.exit241

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

xgbe_mmc_read.exit241:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i231 = getelementptr i8, ptr %20, i32 2312
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %22 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i235 = getelementptr i8, ptr %23, i32 2316
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i235) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %25 = zext i32 %24 to i64
  %26 = zext i32 %21 to i64
  %27 = shl nuw i64 %26, 32
  %28 = or i64 %27, %25
  %29 = tail call i64 @llvm.bswap.i64(i64 %28)
  %rxoctetcount_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 19
  %30 = ptrtoint ptr %rxoctetcount_gb to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %rxoctetcount_gb, align 8
  %add7 = add i64 %29, %31
  store i64 %add7, ptr %rxoctetcount_gb, align 8
  br label %if.end8

if.end8:                                          ; preds = %xgbe_mmc_read.exit241, %if.end.if.end8_crit_edge
  %32 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool11.not = icmp eq i32 %32, 0
  br i1 %tobool11.not, label %if.end8.if.end15_crit_edge, label %xgbe_mmc_read.exit259

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

xgbe_mmc_read.exit259:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i249 = getelementptr i8, ptr %34, i32 2320
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %36 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i253 = getelementptr i8, ptr %37, i32 2324
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i253) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %39 = zext i32 %38 to i64
  %40 = zext i32 %35 to i64
  %41 = shl nuw i64 %40, 32
  %42 = or i64 %41, %39
  %43 = tail call i64 @llvm.bswap.i64(i64 %42)
  %rxoctetcount_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 20
  %44 = ptrtoint ptr %rxoctetcount_g to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %rxoctetcount_g, align 8
  %add14 = add i64 %43, %45
  store i64 %add14, ptr %rxoctetcount_g, align 8
  br label %if.end15

if.end15:                                         ; preds = %xgbe_mmc_read.exit259, %if.end8.if.end15_crit_edge
  %46 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool18.not = icmp eq i32 %46, 0
  br i1 %tobool18.not, label %if.end15.if.end22_crit_edge, label %if.then19

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then19:                                        ; preds = %if.end15
  %vdata.i260 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %47 = ptrtoint ptr %vdata.i260 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdata.i260, align 4
  %mmc_64bit.i261 = getelementptr inbounds %struct.xgbe_version_data, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %mmc_64bit.i261 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mmc_64bit.i261, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i262.not = icmp eq i32 %50, 0
  %51 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i267 = getelementptr i8, ptr %52, i32 2328
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267) #11, !srcloc !115
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i268 = zext i32 %54 to i64
  br i1 %tobool.not.i262.not, label %if.then19.xgbe_mmc_read.exit277_crit_edge, label %if.then5.i275

if.then19.xgbe_mmc_read.exit277_crit_edge:        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit277

if.then5.i275:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i271 = getelementptr i8, ptr %56, i32 2332
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i271) #11, !srcloc !115
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i272 = zext i32 %58 to i64
  %shl.i273 = shl nuw i64 %conv10.i272, 32
  %or.i274 = or i64 %shl.i273, %conv.i268
  br label %xgbe_mmc_read.exit277

xgbe_mmc_read.exit277:                            ; preds = %if.then5.i275, %if.then19.xgbe_mmc_read.exit277_crit_edge
  %val.0.i276 = phi i64 [ %or.i274, %if.then5.i275 ], [ %conv.i268, %if.then19.xgbe_mmc_read.exit277_crit_edge ]
  %rxbroadcastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 21
  %59 = ptrtoint ptr %rxbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %rxbroadcastframes_g, align 8
  %add21 = add i64 %60, %val.0.i276
  store i64 %add21, ptr %rxbroadcastframes_g, align 8
  br label %if.end22

if.end22:                                         ; preds = %xgbe_mmc_read.exit277, %if.end15.if.end22_crit_edge
  %61 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool25.not = icmp eq i32 %61, 0
  br i1 %tobool25.not, label %if.end22.if.end29_crit_edge, label %if.then26

if.end22.if.end29_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then26:                                        ; preds = %if.end22
  %vdata.i278 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %62 = ptrtoint ptr %vdata.i278 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %vdata.i278, align 4
  %mmc_64bit.i279 = getelementptr inbounds %struct.xgbe_version_data, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %mmc_64bit.i279 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mmc_64bit.i279, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i280.not = icmp eq i32 %65, 0
  %66 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i285 = getelementptr i8, ptr %67, i32 2336
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i285) #11, !srcloc !115
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i286 = zext i32 %69 to i64
  br i1 %tobool.not.i280.not, label %if.then26.xgbe_mmc_read.exit295_crit_edge, label %if.then5.i293

if.then26.xgbe_mmc_read.exit295_crit_edge:        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit295

if.then5.i293:                                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i289 = getelementptr i8, ptr %71, i32 2340
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i289) #11, !srcloc !115
  %73 = tail call i32 @llvm.bswap.i32(i32 %72) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i290 = zext i32 %73 to i64
  %shl.i291 = shl nuw i64 %conv10.i290, 32
  %or.i292 = or i64 %shl.i291, %conv.i286
  br label %xgbe_mmc_read.exit295

xgbe_mmc_read.exit295:                            ; preds = %if.then5.i293, %if.then26.xgbe_mmc_read.exit295_crit_edge
  %val.0.i294 = phi i64 [ %or.i292, %if.then5.i293 ], [ %conv.i286, %if.then26.xgbe_mmc_read.exit295_crit_edge ]
  %rxmulticastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 22
  %74 = ptrtoint ptr %rxmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %rxmulticastframes_g, align 8
  %add28 = add i64 %75, %val.0.i294
  store i64 %add28, ptr %rxmulticastframes_g, align 8
  br label %if.end29

if.end29:                                         ; preds = %xgbe_mmc_read.exit295, %if.end22.if.end29_crit_edge
  %76 = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool32.not = icmp eq i32 %76, 0
  br i1 %tobool32.not, label %if.end29.if.end36_crit_edge, label %if.then33

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then33:                                        ; preds = %if.end29
  %vdata.i296 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %77 = ptrtoint ptr %vdata.i296 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %vdata.i296, align 4
  %mmc_64bit.i297 = getelementptr inbounds %struct.xgbe_version_data, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %mmc_64bit.i297 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %mmc_64bit.i297, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i298.not = icmp eq i32 %80, 0
  %81 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i303 = getelementptr i8, ptr %82, i32 2344
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i303) #11, !srcloc !115
  %84 = tail call i32 @llvm.bswap.i32(i32 %83) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i304 = zext i32 %84 to i64
  br i1 %tobool.not.i298.not, label %if.then33.xgbe_mmc_read.exit313_crit_edge, label %if.then5.i311

if.then33.xgbe_mmc_read.exit313_crit_edge:        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit313

if.then5.i311:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %85 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i307 = getelementptr i8, ptr %86, i32 2348
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i307) #11, !srcloc !115
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i308 = zext i32 %88 to i64
  %shl.i309 = shl nuw i64 %conv10.i308, 32
  %or.i310 = or i64 %shl.i309, %conv.i304
  br label %xgbe_mmc_read.exit313

xgbe_mmc_read.exit313:                            ; preds = %if.then5.i311, %if.then33.xgbe_mmc_read.exit313_crit_edge
  %val.0.i312 = phi i64 [ %or.i310, %if.then5.i311 ], [ %conv.i304, %if.then33.xgbe_mmc_read.exit313_crit_edge ]
  %rxcrcerror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 23
  %89 = ptrtoint ptr %rxcrcerror to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %rxcrcerror, align 8
  %add35 = add i64 %90, %val.0.i312
  store i64 %add35, ptr %rxcrcerror, align 8
  br label %if.end36

if.end36:                                         ; preds = %xgbe_mmc_read.exit313, %if.end29.if.end36_crit_edge
  %91 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool39.not = icmp eq i32 %91, 0
  br i1 %tobool39.not, label %if.end36.if.end43_crit_edge, label %xgbe_mmc_read.exit331

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

xgbe_mmc_read.exit331:                            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i321 = getelementptr i8, ptr %93, i32 2352
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i321) #11, !srcloc !115
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i322 = zext i32 %95 to i64
  %rxrunterror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 24
  %96 = ptrtoint ptr %rxrunterror to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %rxrunterror, align 8
  %add42 = add i64 %97, %conv.i322
  store i64 %add42, ptr %rxrunterror, align 8
  br label %if.end43

if.end43:                                         ; preds = %xgbe_mmc_read.exit331, %if.end36.if.end43_crit_edge
  %98 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool46.not = icmp eq i32 %98, 0
  br i1 %tobool46.not, label %if.end43.if.end50_crit_edge, label %xgbe_mmc_read.exit349

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50

xgbe_mmc_read.exit349:                            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i339 = getelementptr i8, ptr %100, i32 2356
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i339) #11, !srcloc !115
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i340 = zext i32 %102 to i64
  %rxjabbererror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 25
  %103 = ptrtoint ptr %rxjabbererror to i32
  call void @__asan_load8_noabort(i32 %103)
  %104 = load i64, ptr %rxjabbererror, align 8
  %add49 = add i64 %104, %conv.i340
  store i64 %add49, ptr %rxjabbererror, align 8
  br label %if.end50

if.end50:                                         ; preds = %xgbe_mmc_read.exit349, %if.end43.if.end50_crit_edge
  %105 = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool53.not = icmp eq i32 %105, 0
  br i1 %tobool53.not, label %if.end50.if.end57_crit_edge, label %xgbe_mmc_read.exit367

if.end50.if.end57_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

xgbe_mmc_read.exit367:                            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i357 = getelementptr i8, ptr %107, i32 2360
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i357) #11, !srcloc !115
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i358 = zext i32 %109 to i64
  %rxundersize_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 26
  %110 = ptrtoint ptr %rxundersize_g to i32
  call void @__asan_load8_noabort(i32 %110)
  %111 = load i64, ptr %rxundersize_g, align 8
  %add56 = add i64 %111, %conv.i358
  store i64 %add56, ptr %rxundersize_g, align 8
  br label %if.end57

if.end57:                                         ; preds = %xgbe_mmc_read.exit367, %if.end50.if.end57_crit_edge
  %112 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool60.not = icmp eq i32 %112, 0
  br i1 %tobool60.not, label %if.end57.if.end64_crit_edge, label %xgbe_mmc_read.exit385

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

xgbe_mmc_read.exit385:                            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #13
  %113 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i375 = getelementptr i8, ptr %114, i32 2364
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i375) #11, !srcloc !115
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i376 = zext i32 %116 to i64
  %rxoversize_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 27
  %117 = ptrtoint ptr %rxoversize_g to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %rxoversize_g, align 8
  %add63 = add i64 %118, %conv.i376
  store i64 %add63, ptr %rxoversize_g, align 8
  br label %if.end64

if.end64:                                         ; preds = %xgbe_mmc_read.exit385, %if.end57.if.end64_crit_edge
  %119 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool67.not = icmp eq i32 %119, 0
  br i1 %tobool67.not, label %if.end64.if.end71_crit_edge, label %if.then68

if.end64.if.end71_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end71

if.then68:                                        ; preds = %if.end64
  %vdata.i386 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %120 = ptrtoint ptr %vdata.i386 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %vdata.i386, align 4
  %mmc_64bit.i387 = getelementptr inbounds %struct.xgbe_version_data, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %mmc_64bit.i387 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mmc_64bit.i387, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool.not.i388.not = icmp eq i32 %123, 0
  %124 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i393 = getelementptr i8, ptr %125, i32 2368
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i393) #11, !srcloc !115
  %127 = tail call i32 @llvm.bswap.i32(i32 %126) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i394 = zext i32 %127 to i64
  br i1 %tobool.not.i388.not, label %if.then68.xgbe_mmc_read.exit403_crit_edge, label %if.then5.i401

if.then68.xgbe_mmc_read.exit403_crit_edge:        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit403

if.then5.i401:                                    ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i397 = getelementptr i8, ptr %129, i32 2372
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i397) #11, !srcloc !115
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i398 = zext i32 %131 to i64
  %shl.i399 = shl nuw i64 %conv10.i398, 32
  %or.i400 = or i64 %shl.i399, %conv.i394
  br label %xgbe_mmc_read.exit403

xgbe_mmc_read.exit403:                            ; preds = %if.then5.i401, %if.then68.xgbe_mmc_read.exit403_crit_edge
  %val.0.i402 = phi i64 [ %or.i400, %if.then5.i401 ], [ %conv.i394, %if.then68.xgbe_mmc_read.exit403_crit_edge ]
  %rx64octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 28
  %132 = ptrtoint ptr %rx64octets_gb to i32
  call void @__asan_load8_noabort(i32 %132)
  %133 = load i64, ptr %rx64octets_gb, align 8
  %add70 = add i64 %133, %val.0.i402
  store i64 %add70, ptr %rx64octets_gb, align 8
  br label %if.end71

if.end71:                                         ; preds = %xgbe_mmc_read.exit403, %if.end64.if.end71_crit_edge
  %134 = and i32 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool74.not = icmp eq i32 %134, 0
  br i1 %tobool74.not, label %if.end71.if.end78_crit_edge, label %if.then75

if.end71.if.end78_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

if.then75:                                        ; preds = %if.end71
  %vdata.i404 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %135 = ptrtoint ptr %vdata.i404 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %vdata.i404, align 4
  %mmc_64bit.i405 = getelementptr inbounds %struct.xgbe_version_data, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %mmc_64bit.i405 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mmc_64bit.i405, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i406.not = icmp eq i32 %138, 0
  %139 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i411 = getelementptr i8, ptr %140, i32 2376
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i411) #11, !srcloc !115
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i412 = zext i32 %142 to i64
  br i1 %tobool.not.i406.not, label %if.then75.xgbe_mmc_read.exit421_crit_edge, label %if.then5.i419

if.then75.xgbe_mmc_read.exit421_crit_edge:        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit421

if.then5.i419:                                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #13
  %143 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i415 = getelementptr i8, ptr %144, i32 2380
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i415) #11, !srcloc !115
  %146 = tail call i32 @llvm.bswap.i32(i32 %145) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i416 = zext i32 %146 to i64
  %shl.i417 = shl nuw i64 %conv10.i416, 32
  %or.i418 = or i64 %shl.i417, %conv.i412
  br label %xgbe_mmc_read.exit421

xgbe_mmc_read.exit421:                            ; preds = %if.then5.i419, %if.then75.xgbe_mmc_read.exit421_crit_edge
  %val.0.i420 = phi i64 [ %or.i418, %if.then5.i419 ], [ %conv.i412, %if.then75.xgbe_mmc_read.exit421_crit_edge ]
  %rx65to127octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 29
  %147 = ptrtoint ptr %rx65to127octets_gb to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %rx65to127octets_gb, align 8
  %add77 = add i64 %148, %val.0.i420
  store i64 %add77, ptr %rx65to127octets_gb, align 8
  br label %if.end78

if.end78:                                         ; preds = %xgbe_mmc_read.exit421, %if.end71.if.end78_crit_edge
  %149 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool81.not = icmp eq i32 %149, 0
  br i1 %tobool81.not, label %if.end78.if.end85_crit_edge, label %if.then82

if.end78.if.end85_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end85

if.then82:                                        ; preds = %if.end78
  %vdata.i422 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %150 = ptrtoint ptr %vdata.i422 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %vdata.i422, align 4
  %mmc_64bit.i423 = getelementptr inbounds %struct.xgbe_version_data, ptr %151, i32 0, i32 2
  %152 = ptrtoint ptr %mmc_64bit.i423 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mmc_64bit.i423, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool.not.i424.not = icmp eq i32 %153, 0
  %154 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i429 = getelementptr i8, ptr %155, i32 2384
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i429) #11, !srcloc !115
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i430 = zext i32 %157 to i64
  br i1 %tobool.not.i424.not, label %if.then82.xgbe_mmc_read.exit439_crit_edge, label %if.then5.i437

if.then82.xgbe_mmc_read.exit439_crit_edge:        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit439

if.then5.i437:                                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  %158 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i433 = getelementptr i8, ptr %159, i32 2388
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i433) #11, !srcloc !115
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i434 = zext i32 %161 to i64
  %shl.i435 = shl nuw i64 %conv10.i434, 32
  %or.i436 = or i64 %shl.i435, %conv.i430
  br label %xgbe_mmc_read.exit439

xgbe_mmc_read.exit439:                            ; preds = %if.then5.i437, %if.then82.xgbe_mmc_read.exit439_crit_edge
  %val.0.i438 = phi i64 [ %or.i436, %if.then5.i437 ], [ %conv.i430, %if.then82.xgbe_mmc_read.exit439_crit_edge ]
  %rx128to255octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 30
  %162 = ptrtoint ptr %rx128to255octets_gb to i32
  call void @__asan_load8_noabort(i32 %162)
  %163 = load i64, ptr %rx128to255octets_gb, align 8
  %add84 = add i64 %163, %val.0.i438
  store i64 %add84, ptr %rx128to255octets_gb, align 8
  br label %if.end85

if.end85:                                         ; preds = %xgbe_mmc_read.exit439, %if.end78.if.end85_crit_edge
  %164 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %164)
  %tobool88.not = icmp eq i32 %164, 0
  br i1 %tobool88.not, label %if.end85.if.end92_crit_edge, label %if.then89

if.end85.if.end92_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then89:                                        ; preds = %if.end85
  %vdata.i440 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %165 = ptrtoint ptr %vdata.i440 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %vdata.i440, align 4
  %mmc_64bit.i441 = getelementptr inbounds %struct.xgbe_version_data, ptr %166, i32 0, i32 2
  %167 = ptrtoint ptr %mmc_64bit.i441 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %mmc_64bit.i441, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool.not.i442.not = icmp eq i32 %168, 0
  %169 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i447 = getelementptr i8, ptr %170, i32 2392
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i447) #11, !srcloc !115
  %172 = tail call i32 @llvm.bswap.i32(i32 %171) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i448 = zext i32 %172 to i64
  br i1 %tobool.not.i442.not, label %if.then89.xgbe_mmc_read.exit457_crit_edge, label %if.then5.i455

if.then89.xgbe_mmc_read.exit457_crit_edge:        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit457

if.then5.i455:                                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #13
  %173 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i451 = getelementptr i8, ptr %174, i32 2396
  %175 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i451) #11, !srcloc !115
  %176 = tail call i32 @llvm.bswap.i32(i32 %175) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i452 = zext i32 %176 to i64
  %shl.i453 = shl nuw i64 %conv10.i452, 32
  %or.i454 = or i64 %shl.i453, %conv.i448
  br label %xgbe_mmc_read.exit457

xgbe_mmc_read.exit457:                            ; preds = %if.then5.i455, %if.then89.xgbe_mmc_read.exit457_crit_edge
  %val.0.i456 = phi i64 [ %or.i454, %if.then5.i455 ], [ %conv.i448, %if.then89.xgbe_mmc_read.exit457_crit_edge ]
  %rx256to511octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 31
  %177 = ptrtoint ptr %rx256to511octets_gb to i32
  call void @__asan_load8_noabort(i32 %177)
  %178 = load i64, ptr %rx256to511octets_gb, align 8
  %add91 = add i64 %178, %val.0.i456
  store i64 %add91, ptr %rx256to511octets_gb, align 8
  br label %if.end92

if.end92:                                         ; preds = %xgbe_mmc_read.exit457, %if.end85.if.end92_crit_edge
  %179 = and i32 %3, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool95.not = icmp eq i32 %179, 0
  br i1 %tobool95.not, label %if.end92.if.end99_crit_edge, label %if.then96

if.end92.if.end99_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end99

if.then96:                                        ; preds = %if.end92
  %vdata.i458 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %180 = ptrtoint ptr %vdata.i458 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %vdata.i458, align 4
  %mmc_64bit.i459 = getelementptr inbounds %struct.xgbe_version_data, ptr %181, i32 0, i32 2
  %182 = ptrtoint ptr %mmc_64bit.i459 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mmc_64bit.i459, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i460.not = icmp eq i32 %183, 0
  %184 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i465 = getelementptr i8, ptr %185, i32 2400
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i465) #11, !srcloc !115
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i466 = zext i32 %187 to i64
  br i1 %tobool.not.i460.not, label %if.then96.xgbe_mmc_read.exit475_crit_edge, label %if.then5.i473

if.then96.xgbe_mmc_read.exit475_crit_edge:        ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit475

if.then5.i473:                                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  %188 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i469 = getelementptr i8, ptr %189, i32 2404
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i469) #11, !srcloc !115
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i470 = zext i32 %191 to i64
  %shl.i471 = shl nuw i64 %conv10.i470, 32
  %or.i472 = or i64 %shl.i471, %conv.i466
  br label %xgbe_mmc_read.exit475

xgbe_mmc_read.exit475:                            ; preds = %if.then5.i473, %if.then96.xgbe_mmc_read.exit475_crit_edge
  %val.0.i474 = phi i64 [ %or.i472, %if.then5.i473 ], [ %conv.i466, %if.then96.xgbe_mmc_read.exit475_crit_edge ]
  %rx512to1023octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 32
  %192 = ptrtoint ptr %rx512to1023octets_gb to i32
  call void @__asan_load8_noabort(i32 %192)
  %193 = load i64, ptr %rx512to1023octets_gb, align 8
  %add98 = add i64 %193, %val.0.i474
  store i64 %add98, ptr %rx512to1023octets_gb, align 8
  br label %if.end99

if.end99:                                         ; preds = %xgbe_mmc_read.exit475, %if.end92.if.end99_crit_edge
  %194 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %tobool102.not = icmp eq i32 %194, 0
  br i1 %tobool102.not, label %if.end99.if.end106_crit_edge, label %if.then103

if.end99.if.end106_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.then103:                                       ; preds = %if.end99
  %vdata.i476 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %195 = ptrtoint ptr %vdata.i476 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %vdata.i476, align 4
  %mmc_64bit.i477 = getelementptr inbounds %struct.xgbe_version_data, ptr %196, i32 0, i32 2
  %197 = ptrtoint ptr %mmc_64bit.i477 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %mmc_64bit.i477, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool.not.i478.not = icmp eq i32 %198, 0
  %199 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i483 = getelementptr i8, ptr %200, i32 2408
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i483) #11, !srcloc !115
  %202 = tail call i32 @llvm.bswap.i32(i32 %201) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i484 = zext i32 %202 to i64
  br i1 %tobool.not.i478.not, label %if.then103.xgbe_mmc_read.exit493_crit_edge, label %if.then5.i491

if.then103.xgbe_mmc_read.exit493_crit_edge:       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit493

if.then5.i491:                                    ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #13
  %203 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i487 = getelementptr i8, ptr %204, i32 2412
  %205 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i487) #11, !srcloc !115
  %206 = tail call i32 @llvm.bswap.i32(i32 %205) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i488 = zext i32 %206 to i64
  %shl.i489 = shl nuw i64 %conv10.i488, 32
  %or.i490 = or i64 %shl.i489, %conv.i484
  br label %xgbe_mmc_read.exit493

xgbe_mmc_read.exit493:                            ; preds = %if.then5.i491, %if.then103.xgbe_mmc_read.exit493_crit_edge
  %val.0.i492 = phi i64 [ %or.i490, %if.then5.i491 ], [ %conv.i484, %if.then103.xgbe_mmc_read.exit493_crit_edge ]
  %rx1024tomaxoctets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 33
  %207 = ptrtoint ptr %rx1024tomaxoctets_gb to i32
  call void @__asan_load8_noabort(i32 %207)
  %208 = load i64, ptr %rx1024tomaxoctets_gb, align 8
  %add105 = add i64 %208, %val.0.i492
  store i64 %add105, ptr %rx1024tomaxoctets_gb, align 8
  br label %if.end106

if.end106:                                        ; preds = %xgbe_mmc_read.exit493, %if.end99.if.end106_crit_edge
  %209 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %tobool109.not = icmp eq i32 %209, 0
  br i1 %tobool109.not, label %if.end106.if.end113_crit_edge, label %if.then110

if.end106.if.end113_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end113

if.then110:                                       ; preds = %if.end106
  %vdata.i494 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %210 = ptrtoint ptr %vdata.i494 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %vdata.i494, align 4
  %mmc_64bit.i495 = getelementptr inbounds %struct.xgbe_version_data, ptr %211, i32 0, i32 2
  %212 = ptrtoint ptr %mmc_64bit.i495 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %mmc_64bit.i495, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool.not.i496.not = icmp eq i32 %213, 0
  %214 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i501 = getelementptr i8, ptr %215, i32 2416
  %216 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i501) #11, !srcloc !115
  %217 = tail call i32 @llvm.bswap.i32(i32 %216) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i502 = zext i32 %217 to i64
  br i1 %tobool.not.i496.not, label %if.then110.xgbe_mmc_read.exit511_crit_edge, label %if.then5.i509

if.then110.xgbe_mmc_read.exit511_crit_edge:       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit511

if.then5.i509:                                    ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  %218 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i505 = getelementptr i8, ptr %219, i32 2420
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i505) #11, !srcloc !115
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i506 = zext i32 %221 to i64
  %shl.i507 = shl nuw i64 %conv10.i506, 32
  %or.i508 = or i64 %shl.i507, %conv.i502
  br label %xgbe_mmc_read.exit511

xgbe_mmc_read.exit511:                            ; preds = %if.then5.i509, %if.then110.xgbe_mmc_read.exit511_crit_edge
  %val.0.i510 = phi i64 [ %or.i508, %if.then5.i509 ], [ %conv.i502, %if.then110.xgbe_mmc_read.exit511_crit_edge ]
  %rxunicastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 34
  %222 = ptrtoint ptr %rxunicastframes_g to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %rxunicastframes_g, align 8
  %add112 = add i64 %223, %val.0.i510
  store i64 %add112, ptr %rxunicastframes_g, align 8
  br label %if.end113

if.end113:                                        ; preds = %xgbe_mmc_read.exit511, %if.end106.if.end113_crit_edge
  %224 = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %224)
  %tobool116.not = icmp eq i32 %224, 0
  br i1 %tobool116.not, label %if.end113.if.end120_crit_edge, label %if.then117

if.end113.if.end120_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end120

if.then117:                                       ; preds = %if.end113
  %vdata.i512 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %225 = ptrtoint ptr %vdata.i512 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %vdata.i512, align 4
  %mmc_64bit.i513 = getelementptr inbounds %struct.xgbe_version_data, ptr %226, i32 0, i32 2
  %227 = ptrtoint ptr %mmc_64bit.i513 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %mmc_64bit.i513, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %tobool.not.i514.not = icmp eq i32 %228, 0
  %229 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i519 = getelementptr i8, ptr %230, i32 2424
  %231 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i519) #11, !srcloc !115
  %232 = tail call i32 @llvm.bswap.i32(i32 %231) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i520 = zext i32 %232 to i64
  br i1 %tobool.not.i514.not, label %if.then117.xgbe_mmc_read.exit529_crit_edge, label %if.then5.i527

if.then117.xgbe_mmc_read.exit529_crit_edge:       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit529

if.then5.i527:                                    ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #13
  %233 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i523 = getelementptr i8, ptr %234, i32 2428
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i523) #11, !srcloc !115
  %236 = tail call i32 @llvm.bswap.i32(i32 %235) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i524 = zext i32 %236 to i64
  %shl.i525 = shl nuw i64 %conv10.i524, 32
  %or.i526 = or i64 %shl.i525, %conv.i520
  br label %xgbe_mmc_read.exit529

xgbe_mmc_read.exit529:                            ; preds = %if.then5.i527, %if.then117.xgbe_mmc_read.exit529_crit_edge
  %val.0.i528 = phi i64 [ %or.i526, %if.then5.i527 ], [ %conv.i520, %if.then117.xgbe_mmc_read.exit529_crit_edge ]
  %rxlengtherror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 35
  %237 = ptrtoint ptr %rxlengtherror to i32
  call void @__asan_load8_noabort(i32 %237)
  %238 = load i64, ptr %rxlengtherror, align 8
  %add119 = add i64 %238, %val.0.i528
  store i64 %add119, ptr %rxlengtherror, align 8
  br label %if.end120

if.end120:                                        ; preds = %xgbe_mmc_read.exit529, %if.end113.if.end120_crit_edge
  %239 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool123.not = icmp eq i32 %239, 0
  br i1 %tobool123.not, label %if.end120.if.end127_crit_edge, label %if.then124

if.end120.if.end127_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end127

if.then124:                                       ; preds = %if.end120
  %vdata.i530 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %240 = ptrtoint ptr %vdata.i530 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %vdata.i530, align 4
  %mmc_64bit.i531 = getelementptr inbounds %struct.xgbe_version_data, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %mmc_64bit.i531 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %mmc_64bit.i531, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool.not.i532.not = icmp eq i32 %243, 0
  %244 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i537 = getelementptr i8, ptr %245, i32 2432
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i537) #11, !srcloc !115
  %247 = tail call i32 @llvm.bswap.i32(i32 %246) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i538 = zext i32 %247 to i64
  br i1 %tobool.not.i532.not, label %if.then124.xgbe_mmc_read.exit547_crit_edge, label %if.then5.i545

if.then124.xgbe_mmc_read.exit547_crit_edge:       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit547

if.then5.i545:                                    ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  %248 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i541 = getelementptr i8, ptr %249, i32 2436
  %250 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i541) #11, !srcloc !115
  %251 = tail call i32 @llvm.bswap.i32(i32 %250) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i542 = zext i32 %251 to i64
  %shl.i543 = shl nuw i64 %conv10.i542, 32
  %or.i544 = or i64 %shl.i543, %conv.i538
  br label %xgbe_mmc_read.exit547

xgbe_mmc_read.exit547:                            ; preds = %if.then5.i545, %if.then124.xgbe_mmc_read.exit547_crit_edge
  %val.0.i546 = phi i64 [ %or.i544, %if.then5.i545 ], [ %conv.i538, %if.then124.xgbe_mmc_read.exit547_crit_edge ]
  %rxoutofrangetype = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 36
  %252 = ptrtoint ptr %rxoutofrangetype to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %rxoutofrangetype, align 8
  %add126 = add i64 %253, %val.0.i546
  store i64 %add126, ptr %rxoutofrangetype, align 8
  br label %if.end127

if.end127:                                        ; preds = %xgbe_mmc_read.exit547, %if.end120.if.end127_crit_edge
  %254 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %254)
  %tobool130.not = icmp eq i32 %254, 0
  br i1 %tobool130.not, label %if.end127.if.end134_crit_edge, label %if.then131

if.end127.if.end134_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end134

if.then131:                                       ; preds = %if.end127
  %vdata.i548 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %255 = ptrtoint ptr %vdata.i548 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %vdata.i548, align 4
  %mmc_64bit.i549 = getelementptr inbounds %struct.xgbe_version_data, ptr %256, i32 0, i32 2
  %257 = ptrtoint ptr %mmc_64bit.i549 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %mmc_64bit.i549, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool.not.i550.not = icmp eq i32 %258, 0
  %259 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i555 = getelementptr i8, ptr %260, i32 2440
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i555) #11, !srcloc !115
  %262 = tail call i32 @llvm.bswap.i32(i32 %261) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i556 = zext i32 %262 to i64
  br i1 %tobool.not.i550.not, label %if.then131.xgbe_mmc_read.exit565_crit_edge, label %if.then5.i563

if.then131.xgbe_mmc_read.exit565_crit_edge:       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit565

if.then5.i563:                                    ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #13
  %263 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i559 = getelementptr i8, ptr %264, i32 2444
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i559) #11, !srcloc !115
  %266 = tail call i32 @llvm.bswap.i32(i32 %265) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i560 = zext i32 %266 to i64
  %shl.i561 = shl nuw i64 %conv10.i560, 32
  %or.i562 = or i64 %shl.i561, %conv.i556
  br label %xgbe_mmc_read.exit565

xgbe_mmc_read.exit565:                            ; preds = %if.then5.i563, %if.then131.xgbe_mmc_read.exit565_crit_edge
  %val.0.i564 = phi i64 [ %or.i562, %if.then5.i563 ], [ %conv.i556, %if.then131.xgbe_mmc_read.exit565_crit_edge ]
  %rxpauseframes = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 37
  %267 = ptrtoint ptr %rxpauseframes to i32
  call void @__asan_load8_noabort(i32 %267)
  %268 = load i64, ptr %rxpauseframes, align 8
  %add133 = add i64 %268, %val.0.i564
  store i64 %add133, ptr %rxpauseframes, align 8
  br label %if.end134

if.end134:                                        ; preds = %xgbe_mmc_read.exit565, %if.end127.if.end134_crit_edge
  %269 = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool137.not = icmp eq i32 %269, 0
  br i1 %tobool137.not, label %if.end134.if.end141_crit_edge, label %if.then138

if.end134.if.end141_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end141

if.then138:                                       ; preds = %if.end134
  %vdata.i566 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %270 = ptrtoint ptr %vdata.i566 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %vdata.i566, align 4
  %mmc_64bit.i567 = getelementptr inbounds %struct.xgbe_version_data, ptr %271, i32 0, i32 2
  %272 = ptrtoint ptr %mmc_64bit.i567 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %mmc_64bit.i567, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool.not.i568.not = icmp eq i32 %273, 0
  %274 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i573 = getelementptr i8, ptr %275, i32 2448
  %276 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i573) #11, !srcloc !115
  %277 = tail call i32 @llvm.bswap.i32(i32 %276) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i574 = zext i32 %277 to i64
  br i1 %tobool.not.i568.not, label %if.then138.xgbe_mmc_read.exit583_crit_edge, label %if.then5.i581

if.then138.xgbe_mmc_read.exit583_crit_edge:       ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit583

if.then5.i581:                                    ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #13
  %278 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i577 = getelementptr i8, ptr %279, i32 2452
  %280 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i577) #11, !srcloc !115
  %281 = tail call i32 @llvm.bswap.i32(i32 %280) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i578 = zext i32 %281 to i64
  %shl.i579 = shl nuw i64 %conv10.i578, 32
  %or.i580 = or i64 %shl.i579, %conv.i574
  br label %xgbe_mmc_read.exit583

xgbe_mmc_read.exit583:                            ; preds = %if.then5.i581, %if.then138.xgbe_mmc_read.exit583_crit_edge
  %val.0.i582 = phi i64 [ %or.i580, %if.then5.i581 ], [ %conv.i574, %if.then138.xgbe_mmc_read.exit583_crit_edge ]
  %rxfifooverflow = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 38
  %282 = ptrtoint ptr %rxfifooverflow to i32
  call void @__asan_load8_noabort(i32 %282)
  %283 = load i64, ptr %rxfifooverflow, align 8
  %add140 = add i64 %283, %val.0.i582
  store i64 %add140, ptr %rxfifooverflow, align 8
  br label %if.end141

if.end141:                                        ; preds = %xgbe_mmc_read.exit583, %if.end134.if.end141_crit_edge
  %284 = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %284)
  %tobool144.not = icmp eq i32 %284, 0
  br i1 %tobool144.not, label %if.end141.if.end148_crit_edge, label %if.then145

if.end141.if.end148_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.then145:                                       ; preds = %if.end141
  %vdata.i584 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %285 = ptrtoint ptr %vdata.i584 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %vdata.i584, align 4
  %mmc_64bit.i585 = getelementptr inbounds %struct.xgbe_version_data, ptr %286, i32 0, i32 2
  %287 = ptrtoint ptr %mmc_64bit.i585 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %mmc_64bit.i585, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool.not.i586.not = icmp eq i32 %288, 0
  %289 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i591 = getelementptr i8, ptr %290, i32 2456
  %291 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i591) #11, !srcloc !115
  %292 = tail call i32 @llvm.bswap.i32(i32 %291) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i592 = zext i32 %292 to i64
  br i1 %tobool.not.i586.not, label %if.then145.xgbe_mmc_read.exit601_crit_edge, label %if.then5.i599

if.then145.xgbe_mmc_read.exit601_crit_edge:       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit601

if.then5.i599:                                    ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #13
  %293 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i595 = getelementptr i8, ptr %294, i32 2460
  %295 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i595) #11, !srcloc !115
  %296 = tail call i32 @llvm.bswap.i32(i32 %295) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i596 = zext i32 %296 to i64
  %shl.i597 = shl nuw i64 %conv10.i596, 32
  %or.i598 = or i64 %shl.i597, %conv.i592
  br label %xgbe_mmc_read.exit601

xgbe_mmc_read.exit601:                            ; preds = %if.then5.i599, %if.then145.xgbe_mmc_read.exit601_crit_edge
  %val.0.i600 = phi i64 [ %or.i598, %if.then5.i599 ], [ %conv.i592, %if.then145.xgbe_mmc_read.exit601_crit_edge ]
  %rxvlanframes_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 39
  %297 = ptrtoint ptr %rxvlanframes_gb to i32
  call void @__asan_load8_noabort(i32 %297)
  %298 = load i64, ptr %rxvlanframes_gb, align 8
  %add147 = add i64 %298, %val.0.i600
  store i64 %add147, ptr %rxvlanframes_gb, align 8
  br label %if.end148

if.end148:                                        ; preds = %xgbe_mmc_read.exit601, %if.end141.if.end148_crit_edge
  %299 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool151.not = icmp eq i32 %299, 0
  br i1 %tobool151.not, label %if.end148.if.end155_crit_edge, label %xgbe_mmc_read.exit619

if.end148.if.end155_crit_edge:                    ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end155

xgbe_mmc_read.exit619:                            ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #13
  %300 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i609 = getelementptr i8, ptr %301, i32 2464
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i609) #11, !srcloc !115
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i610 = zext i32 %303 to i64
  %rxwatchdogerror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 40
  %304 = ptrtoint ptr %rxwatchdogerror to i32
  call void @__asan_load8_noabort(i32 %304)
  %305 = load i64, ptr %rxwatchdogerror, align 8
  %add154 = add i64 %305, %conv.i610
  store i64 %add154, ptr %rxwatchdogerror, align 8
  br label %if.end155

if.end155:                                        ; preds = %xgbe_mmc_read.exit619, %if.end148.if.end155_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_read_mmc_stats(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mmc_stats = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = or i32 %2, 134217728
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #11, !srcloc !114
  %vdata.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %6 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2068
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %10, i32 2072
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %12 = zext i32 %11 to i64
  %13 = zext i32 %8 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15)
  %17 = ptrtoint ptr %mmc_stats to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %mmc_stats, align 8
  %add = add i64 %16, %18
  store i64 %add, ptr %mmc_stats, align 8
  %19 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i192 = getelementptr inbounds %struct.xgbe_version_data, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %mmc_64bit.i192 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mmc_64bit.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i193.not = icmp eq i32 %22, 0
  %23 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i197 = getelementptr i8, ptr %24, i32 2076
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #11, !srcloc !115
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i198 = zext i32 %26 to i64
  br i1 %tobool.not.i193.not, label %entry.xgbe_mmc_read.exit204_crit_edge, label %if.then5.i

entry.xgbe_mmc_read.exit204_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit204

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i200 = getelementptr i8, ptr %28, i32 2080
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i200) #11, !srcloc !115
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i201 = zext i32 %30 to i64
  %shl.i202 = shl nuw i64 %conv10.i201, 32
  %or.i203 = or i64 %shl.i202, %conv.i198
  br label %xgbe_mmc_read.exit204

xgbe_mmc_read.exit204:                            ; preds = %if.then5.i, %entry.xgbe_mmc_read.exit204_crit_edge
  %val.0.i = phi i64 [ %or.i203, %if.then5.i ], [ %conv.i198, %entry.xgbe_mmc_read.exit204_crit_edge ]
  %txframecount_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 1
  %31 = ptrtoint ptr %txframecount_gb to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %txframecount_gb, align 8
  %add8 = add i64 %32, %val.0.i
  store i64 %add8, ptr %txframecount_gb, align 8
  %33 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i206 = getelementptr inbounds %struct.xgbe_version_data, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %mmc_64bit.i206 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mmc_64bit.i206, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i207.not = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i212 = getelementptr i8, ptr %38, i32 2084
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i212) #11, !srcloc !115
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i213 = zext i32 %40 to i64
  br i1 %tobool.not.i207.not, label %xgbe_mmc_read.exit204.xgbe_mmc_read.exit222_crit_edge, label %if.then5.i220

xgbe_mmc_read.exit204.xgbe_mmc_read.exit222_crit_edge: ; preds = %xgbe_mmc_read.exit204
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit222

if.then5.i220:                                    ; preds = %xgbe_mmc_read.exit204
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i216 = getelementptr i8, ptr %42, i32 2088
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i216) #11, !srcloc !115
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i217 = zext i32 %44 to i64
  %shl.i218 = shl nuw i64 %conv10.i217, 32
  %or.i219 = or i64 %shl.i218, %conv.i213
  br label %xgbe_mmc_read.exit222

xgbe_mmc_read.exit222:                            ; preds = %if.then5.i220, %xgbe_mmc_read.exit204.xgbe_mmc_read.exit222_crit_edge
  %val.0.i221 = phi i64 [ %or.i219, %if.then5.i220 ], [ %conv.i213, %xgbe_mmc_read.exit204.xgbe_mmc_read.exit222_crit_edge ]
  %txbroadcastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 2
  %45 = ptrtoint ptr %txbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %txbroadcastframes_g, align 8
  %add10 = add i64 %46, %val.0.i221
  store i64 %add10, ptr %txbroadcastframes_g, align 8
  %47 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i224 = getelementptr inbounds %struct.xgbe_version_data, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %mmc_64bit.i224 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mmc_64bit.i224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not.i225.not = icmp eq i32 %50, 0
  %51 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i230 = getelementptr i8, ptr %52, i32 2092
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #11, !srcloc !115
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i231 = zext i32 %54 to i64
  br i1 %tobool.not.i225.not, label %xgbe_mmc_read.exit222.xgbe_mmc_read.exit240_crit_edge, label %if.then5.i238

xgbe_mmc_read.exit222.xgbe_mmc_read.exit240_crit_edge: ; preds = %xgbe_mmc_read.exit222
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit240

if.then5.i238:                                    ; preds = %xgbe_mmc_read.exit222
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i234 = getelementptr i8, ptr %56, i32 2096
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i234) #11, !srcloc !115
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i235 = zext i32 %58 to i64
  %shl.i236 = shl nuw i64 %conv10.i235, 32
  %or.i237 = or i64 %shl.i236, %conv.i231
  br label %xgbe_mmc_read.exit240

xgbe_mmc_read.exit240:                            ; preds = %if.then5.i238, %xgbe_mmc_read.exit222.xgbe_mmc_read.exit240_crit_edge
  %val.0.i239 = phi i64 [ %or.i237, %if.then5.i238 ], [ %conv.i231, %xgbe_mmc_read.exit222.xgbe_mmc_read.exit240_crit_edge ]
  %txmulticastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 3
  %59 = ptrtoint ptr %txmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %txmulticastframes_g, align 8
  %add12 = add i64 %60, %val.0.i239
  store i64 %add12, ptr %txmulticastframes_g, align 8
  %61 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i242 = getelementptr inbounds %struct.xgbe_version_data, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %mmc_64bit.i242 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mmc_64bit.i242, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i243.not = icmp eq i32 %64, 0
  %65 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i248 = getelementptr i8, ptr %66, i32 2100
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i248) #11, !srcloc !115
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i249 = zext i32 %68 to i64
  br i1 %tobool.not.i243.not, label %xgbe_mmc_read.exit240.xgbe_mmc_read.exit258_crit_edge, label %if.then5.i256

xgbe_mmc_read.exit240.xgbe_mmc_read.exit258_crit_edge: ; preds = %xgbe_mmc_read.exit240
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit258

if.then5.i256:                                    ; preds = %xgbe_mmc_read.exit240
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i252 = getelementptr i8, ptr %70, i32 2104
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i252) #11, !srcloc !115
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i253 = zext i32 %72 to i64
  %shl.i254 = shl nuw i64 %conv10.i253, 32
  %or.i255 = or i64 %shl.i254, %conv.i249
  br label %xgbe_mmc_read.exit258

xgbe_mmc_read.exit258:                            ; preds = %if.then5.i256, %xgbe_mmc_read.exit240.xgbe_mmc_read.exit258_crit_edge
  %val.0.i257 = phi i64 [ %or.i255, %if.then5.i256 ], [ %conv.i249, %xgbe_mmc_read.exit240.xgbe_mmc_read.exit258_crit_edge ]
  %tx64octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 4
  %73 = ptrtoint ptr %tx64octets_gb to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %tx64octets_gb, align 8
  %add14 = add i64 %74, %val.0.i257
  store i64 %add14, ptr %tx64octets_gb, align 8
  %75 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i260 = getelementptr inbounds %struct.xgbe_version_data, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %mmc_64bit.i260 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mmc_64bit.i260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i261.not = icmp eq i32 %78, 0
  %79 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i266 = getelementptr i8, ptr %80, i32 2108
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i266) #11, !srcloc !115
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i267 = zext i32 %82 to i64
  br i1 %tobool.not.i261.not, label %xgbe_mmc_read.exit258.xgbe_mmc_read.exit276_crit_edge, label %if.then5.i274

xgbe_mmc_read.exit258.xgbe_mmc_read.exit276_crit_edge: ; preds = %xgbe_mmc_read.exit258
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit276

if.then5.i274:                                    ; preds = %xgbe_mmc_read.exit258
  call void @__sanitizer_cov_trace_pc() #13
  %83 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i270 = getelementptr i8, ptr %84, i32 2112
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i270) #11, !srcloc !115
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i271 = zext i32 %86 to i64
  %shl.i272 = shl nuw i64 %conv10.i271, 32
  %or.i273 = or i64 %shl.i272, %conv.i267
  br label %xgbe_mmc_read.exit276

xgbe_mmc_read.exit276:                            ; preds = %if.then5.i274, %xgbe_mmc_read.exit258.xgbe_mmc_read.exit276_crit_edge
  %val.0.i275 = phi i64 [ %or.i273, %if.then5.i274 ], [ %conv.i267, %xgbe_mmc_read.exit258.xgbe_mmc_read.exit276_crit_edge ]
  %tx65to127octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 5
  %87 = ptrtoint ptr %tx65to127octets_gb to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %tx65to127octets_gb, align 8
  %add16 = add i64 %88, %val.0.i275
  store i64 %add16, ptr %tx65to127octets_gb, align 8
  %89 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i278 = getelementptr inbounds %struct.xgbe_version_data, ptr %90, i32 0, i32 2
  %91 = ptrtoint ptr %mmc_64bit.i278 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %mmc_64bit.i278, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i279.not = icmp eq i32 %92, 0
  %93 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i284 = getelementptr i8, ptr %94, i32 2116
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i284) #11, !srcloc !115
  %96 = tail call i32 @llvm.bswap.i32(i32 %95) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i285 = zext i32 %96 to i64
  br i1 %tobool.not.i279.not, label %xgbe_mmc_read.exit276.xgbe_mmc_read.exit294_crit_edge, label %if.then5.i292

xgbe_mmc_read.exit276.xgbe_mmc_read.exit294_crit_edge: ; preds = %xgbe_mmc_read.exit276
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit294

if.then5.i292:                                    ; preds = %xgbe_mmc_read.exit276
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i288 = getelementptr i8, ptr %98, i32 2120
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i288) #11, !srcloc !115
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i289 = zext i32 %100 to i64
  %shl.i290 = shl nuw i64 %conv10.i289, 32
  %or.i291 = or i64 %shl.i290, %conv.i285
  br label %xgbe_mmc_read.exit294

xgbe_mmc_read.exit294:                            ; preds = %if.then5.i292, %xgbe_mmc_read.exit276.xgbe_mmc_read.exit294_crit_edge
  %val.0.i293 = phi i64 [ %or.i291, %if.then5.i292 ], [ %conv.i285, %xgbe_mmc_read.exit276.xgbe_mmc_read.exit294_crit_edge ]
  %tx128to255octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 6
  %101 = ptrtoint ptr %tx128to255octets_gb to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %tx128to255octets_gb, align 8
  %add18 = add i64 %102, %val.0.i293
  store i64 %add18, ptr %tx128to255octets_gb, align 8
  %103 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i296 = getelementptr inbounds %struct.xgbe_version_data, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %mmc_64bit.i296 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mmc_64bit.i296, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.not.i297.not = icmp eq i32 %106, 0
  %107 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i302 = getelementptr i8, ptr %108, i32 2124
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i302) #11, !srcloc !115
  %110 = tail call i32 @llvm.bswap.i32(i32 %109) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i303 = zext i32 %110 to i64
  br i1 %tobool.not.i297.not, label %xgbe_mmc_read.exit294.xgbe_mmc_read.exit312_crit_edge, label %if.then5.i310

xgbe_mmc_read.exit294.xgbe_mmc_read.exit312_crit_edge: ; preds = %xgbe_mmc_read.exit294
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit312

if.then5.i310:                                    ; preds = %xgbe_mmc_read.exit294
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i306 = getelementptr i8, ptr %112, i32 2128
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i306) #11, !srcloc !115
  %114 = tail call i32 @llvm.bswap.i32(i32 %113) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i307 = zext i32 %114 to i64
  %shl.i308 = shl nuw i64 %conv10.i307, 32
  %or.i309 = or i64 %shl.i308, %conv.i303
  br label %xgbe_mmc_read.exit312

xgbe_mmc_read.exit312:                            ; preds = %if.then5.i310, %xgbe_mmc_read.exit294.xgbe_mmc_read.exit312_crit_edge
  %val.0.i311 = phi i64 [ %or.i309, %if.then5.i310 ], [ %conv.i303, %xgbe_mmc_read.exit294.xgbe_mmc_read.exit312_crit_edge ]
  %tx256to511octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 7
  %115 = ptrtoint ptr %tx256to511octets_gb to i32
  call void @__asan_load8_noabort(i32 %115)
  %116 = load i64, ptr %tx256to511octets_gb, align 8
  %add20 = add i64 %116, %val.0.i311
  store i64 %add20, ptr %tx256to511octets_gb, align 8
  %117 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i314 = getelementptr inbounds %struct.xgbe_version_data, ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %mmc_64bit.i314 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mmc_64bit.i314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool.not.i315.not = icmp eq i32 %120, 0
  %121 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i320 = getelementptr i8, ptr %122, i32 2132
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i320) #11, !srcloc !115
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i321 = zext i32 %124 to i64
  br i1 %tobool.not.i315.not, label %xgbe_mmc_read.exit312.xgbe_mmc_read.exit330_crit_edge, label %if.then5.i328

xgbe_mmc_read.exit312.xgbe_mmc_read.exit330_crit_edge: ; preds = %xgbe_mmc_read.exit312
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit330

if.then5.i328:                                    ; preds = %xgbe_mmc_read.exit312
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i324 = getelementptr i8, ptr %126, i32 2136
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i324) #11, !srcloc !115
  %128 = tail call i32 @llvm.bswap.i32(i32 %127) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i325 = zext i32 %128 to i64
  %shl.i326 = shl nuw i64 %conv10.i325, 32
  %or.i327 = or i64 %shl.i326, %conv.i321
  br label %xgbe_mmc_read.exit330

xgbe_mmc_read.exit330:                            ; preds = %if.then5.i328, %xgbe_mmc_read.exit312.xgbe_mmc_read.exit330_crit_edge
  %val.0.i329 = phi i64 [ %or.i327, %if.then5.i328 ], [ %conv.i321, %xgbe_mmc_read.exit312.xgbe_mmc_read.exit330_crit_edge ]
  %tx512to1023octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 8
  %129 = ptrtoint ptr %tx512to1023octets_gb to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %tx512to1023octets_gb, align 8
  %add22 = add i64 %130, %val.0.i329
  store i64 %add22, ptr %tx512to1023octets_gb, align 8
  %131 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i332 = getelementptr inbounds %struct.xgbe_version_data, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %mmc_64bit.i332 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mmc_64bit.i332, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i333.not = icmp eq i32 %134, 0
  %135 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i338 = getelementptr i8, ptr %136, i32 2140
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i338) #11, !srcloc !115
  %138 = tail call i32 @llvm.bswap.i32(i32 %137) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i339 = zext i32 %138 to i64
  br i1 %tobool.not.i333.not, label %xgbe_mmc_read.exit330.xgbe_mmc_read.exit348_crit_edge, label %if.then5.i346

xgbe_mmc_read.exit330.xgbe_mmc_read.exit348_crit_edge: ; preds = %xgbe_mmc_read.exit330
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit348

if.then5.i346:                                    ; preds = %xgbe_mmc_read.exit330
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i342 = getelementptr i8, ptr %140, i32 2144
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i342) #11, !srcloc !115
  %142 = tail call i32 @llvm.bswap.i32(i32 %141) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i343 = zext i32 %142 to i64
  %shl.i344 = shl nuw i64 %conv10.i343, 32
  %or.i345 = or i64 %shl.i344, %conv.i339
  br label %xgbe_mmc_read.exit348

xgbe_mmc_read.exit348:                            ; preds = %if.then5.i346, %xgbe_mmc_read.exit330.xgbe_mmc_read.exit348_crit_edge
  %val.0.i347 = phi i64 [ %or.i345, %if.then5.i346 ], [ %conv.i339, %xgbe_mmc_read.exit330.xgbe_mmc_read.exit348_crit_edge ]
  %tx1024tomaxoctets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 9
  %143 = ptrtoint ptr %tx1024tomaxoctets_gb to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %tx1024tomaxoctets_gb, align 8
  %add24 = add i64 %144, %val.0.i347
  store i64 %add24, ptr %tx1024tomaxoctets_gb, align 8
  %145 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i350 = getelementptr inbounds %struct.xgbe_version_data, ptr %146, i32 0, i32 2
  %147 = ptrtoint ptr %mmc_64bit.i350 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %mmc_64bit.i350, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool.not.i351.not = icmp eq i32 %148, 0
  %149 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i356 = getelementptr i8, ptr %150, i32 2148
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i356) #11, !srcloc !115
  %152 = tail call i32 @llvm.bswap.i32(i32 %151) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i357 = zext i32 %152 to i64
  br i1 %tobool.not.i351.not, label %xgbe_mmc_read.exit348.xgbe_mmc_read.exit366_crit_edge, label %if.then5.i364

xgbe_mmc_read.exit348.xgbe_mmc_read.exit366_crit_edge: ; preds = %xgbe_mmc_read.exit348
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit366

if.then5.i364:                                    ; preds = %xgbe_mmc_read.exit348
  call void @__sanitizer_cov_trace_pc() #13
  %153 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i360 = getelementptr i8, ptr %154, i32 2152
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i360) #11, !srcloc !115
  %156 = tail call i32 @llvm.bswap.i32(i32 %155) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i361 = zext i32 %156 to i64
  %shl.i362 = shl nuw i64 %conv10.i361, 32
  %or.i363 = or i64 %shl.i362, %conv.i357
  br label %xgbe_mmc_read.exit366

xgbe_mmc_read.exit366:                            ; preds = %if.then5.i364, %xgbe_mmc_read.exit348.xgbe_mmc_read.exit366_crit_edge
  %val.0.i365 = phi i64 [ %or.i363, %if.then5.i364 ], [ %conv.i357, %xgbe_mmc_read.exit348.xgbe_mmc_read.exit366_crit_edge ]
  %txunicastframes_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 10
  %157 = ptrtoint ptr %txunicastframes_gb to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %txunicastframes_gb, align 8
  %add26 = add i64 %158, %val.0.i365
  store i64 %add26, ptr %txunicastframes_gb, align 8
  %159 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i368 = getelementptr inbounds %struct.xgbe_version_data, ptr %160, i32 0, i32 2
  %161 = ptrtoint ptr %mmc_64bit.i368 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mmc_64bit.i368, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i369.not = icmp eq i32 %162, 0
  %163 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i374 = getelementptr i8, ptr %164, i32 2156
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i374) #11, !srcloc !115
  %166 = tail call i32 @llvm.bswap.i32(i32 %165) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i375 = zext i32 %166 to i64
  br i1 %tobool.not.i369.not, label %xgbe_mmc_read.exit366.xgbe_mmc_read.exit384_crit_edge, label %if.then5.i382

xgbe_mmc_read.exit366.xgbe_mmc_read.exit384_crit_edge: ; preds = %xgbe_mmc_read.exit366
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit384

if.then5.i382:                                    ; preds = %xgbe_mmc_read.exit366
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i378 = getelementptr i8, ptr %168, i32 2160
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i378) #11, !srcloc !115
  %170 = tail call i32 @llvm.bswap.i32(i32 %169) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i379 = zext i32 %170 to i64
  %shl.i380 = shl nuw i64 %conv10.i379, 32
  %or.i381 = or i64 %shl.i380, %conv.i375
  br label %xgbe_mmc_read.exit384

xgbe_mmc_read.exit384:                            ; preds = %if.then5.i382, %xgbe_mmc_read.exit366.xgbe_mmc_read.exit384_crit_edge
  %val.0.i383 = phi i64 [ %or.i381, %if.then5.i382 ], [ %conv.i375, %xgbe_mmc_read.exit366.xgbe_mmc_read.exit384_crit_edge ]
  %txmulticastframes_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 11
  %171 = ptrtoint ptr %txmulticastframes_gb to i32
  call void @__asan_load8_noabort(i32 %171)
  %172 = load i64, ptr %txmulticastframes_gb, align 8
  %add28 = add i64 %172, %val.0.i383
  store i64 %add28, ptr %txmulticastframes_gb, align 8
  %173 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i386 = getelementptr inbounds %struct.xgbe_version_data, ptr %174, i32 0, i32 2
  %175 = ptrtoint ptr %mmc_64bit.i386 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %mmc_64bit.i386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool.not.i387.not = icmp eq i32 %176, 0
  %177 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i392 = getelementptr i8, ptr %178, i32 2164
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i392) #11, !srcloc !115
  %180 = tail call i32 @llvm.bswap.i32(i32 %179) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i393 = zext i32 %180 to i64
  br i1 %tobool.not.i387.not, label %xgbe_mmc_read.exit384.xgbe_mmc_read.exit402_crit_edge, label %if.then5.i400

xgbe_mmc_read.exit384.xgbe_mmc_read.exit402_crit_edge: ; preds = %xgbe_mmc_read.exit384
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit402

if.then5.i400:                                    ; preds = %xgbe_mmc_read.exit384
  call void @__sanitizer_cov_trace_pc() #13
  %181 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i396 = getelementptr i8, ptr %182, i32 2168
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i396) #11, !srcloc !115
  %184 = tail call i32 @llvm.bswap.i32(i32 %183) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i397 = zext i32 %184 to i64
  %shl.i398 = shl nuw i64 %conv10.i397, 32
  %or.i399 = or i64 %shl.i398, %conv.i393
  br label %xgbe_mmc_read.exit402

xgbe_mmc_read.exit402:                            ; preds = %if.then5.i400, %xgbe_mmc_read.exit384.xgbe_mmc_read.exit402_crit_edge
  %val.0.i401 = phi i64 [ %or.i399, %if.then5.i400 ], [ %conv.i393, %xgbe_mmc_read.exit384.xgbe_mmc_read.exit402_crit_edge ]
  %185 = ptrtoint ptr %txbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %185)
  %186 = load i64, ptr %txbroadcastframes_g, align 8
  %add31 = add i64 %186, %val.0.i401
  store i64 %add31, ptr %txbroadcastframes_g, align 8
  %187 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i404 = getelementptr inbounds %struct.xgbe_version_data, ptr %188, i32 0, i32 2
  %189 = ptrtoint ptr %mmc_64bit.i404 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %mmc_64bit.i404, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool.not.i405.not = icmp eq i32 %190, 0
  %191 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i410 = getelementptr i8, ptr %192, i32 2172
  %193 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i410) #11, !srcloc !115
  %194 = tail call i32 @llvm.bswap.i32(i32 %193) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i411 = zext i32 %194 to i64
  br i1 %tobool.not.i405.not, label %xgbe_mmc_read.exit402.xgbe_mmc_read.exit420_crit_edge, label %if.then5.i418

xgbe_mmc_read.exit402.xgbe_mmc_read.exit420_crit_edge: ; preds = %xgbe_mmc_read.exit402
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit420

if.then5.i418:                                    ; preds = %xgbe_mmc_read.exit402
  call void @__sanitizer_cov_trace_pc() #13
  %195 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i414 = getelementptr i8, ptr %196, i32 2176
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i414) #11, !srcloc !115
  %198 = tail call i32 @llvm.bswap.i32(i32 %197) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i415 = zext i32 %198 to i64
  %shl.i416 = shl nuw i64 %conv10.i415, 32
  %or.i417 = or i64 %shl.i416, %conv.i411
  br label %xgbe_mmc_read.exit420

xgbe_mmc_read.exit420:                            ; preds = %if.then5.i418, %xgbe_mmc_read.exit402.xgbe_mmc_read.exit420_crit_edge
  %val.0.i419 = phi i64 [ %or.i417, %if.then5.i418 ], [ %conv.i411, %xgbe_mmc_read.exit402.xgbe_mmc_read.exit420_crit_edge ]
  %txunderflowerror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 13
  %199 = ptrtoint ptr %txunderflowerror to i32
  call void @__asan_load8_noabort(i32 %199)
  %200 = load i64, ptr %txunderflowerror, align 8
  %add33 = add i64 %200, %val.0.i419
  store i64 %add33, ptr %txunderflowerror, align 8
  %201 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i428 = getelementptr i8, ptr %202, i32 2180
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i428) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %204 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i432 = getelementptr i8, ptr %205, i32 2184
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i432) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %207 = zext i32 %206 to i64
  %208 = zext i32 %203 to i64
  %209 = shl nuw i64 %208, 32
  %210 = or i64 %209, %207
  %211 = tail call i64 @llvm.bswap.i64(i64 %210)
  %txoctetcount_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 14
  %212 = ptrtoint ptr %txoctetcount_g to i32
  call void @__asan_load8_noabort(i32 %212)
  %213 = load i64, ptr %txoctetcount_g, align 8
  %add35 = add i64 %211, %213
  store i64 %add35, ptr %txoctetcount_g, align 8
  %214 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i440 = getelementptr inbounds %struct.xgbe_version_data, ptr %215, i32 0, i32 2
  %216 = ptrtoint ptr %mmc_64bit.i440 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %mmc_64bit.i440, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool.not.i441.not = icmp eq i32 %217, 0
  %218 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i446 = getelementptr i8, ptr %219, i32 2188
  %220 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i446) #11, !srcloc !115
  %221 = tail call i32 @llvm.bswap.i32(i32 %220) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i447 = zext i32 %221 to i64
  br i1 %tobool.not.i441.not, label %xgbe_mmc_read.exit420.xgbe_mmc_read.exit456_crit_edge, label %if.then5.i454

xgbe_mmc_read.exit420.xgbe_mmc_read.exit456_crit_edge: ; preds = %xgbe_mmc_read.exit420
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit456

if.then5.i454:                                    ; preds = %xgbe_mmc_read.exit420
  call void @__sanitizer_cov_trace_pc() #13
  %222 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i450 = getelementptr i8, ptr %223, i32 2192
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i450) #11, !srcloc !115
  %225 = tail call i32 @llvm.bswap.i32(i32 %224) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i451 = zext i32 %225 to i64
  %shl.i452 = shl nuw i64 %conv10.i451, 32
  %or.i453 = or i64 %shl.i452, %conv.i447
  br label %xgbe_mmc_read.exit456

xgbe_mmc_read.exit456:                            ; preds = %if.then5.i454, %xgbe_mmc_read.exit420.xgbe_mmc_read.exit456_crit_edge
  %val.0.i455 = phi i64 [ %or.i453, %if.then5.i454 ], [ %conv.i447, %xgbe_mmc_read.exit420.xgbe_mmc_read.exit456_crit_edge ]
  %txframecount_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 15
  %226 = ptrtoint ptr %txframecount_g to i32
  call void @__asan_load8_noabort(i32 %226)
  %227 = load i64, ptr %txframecount_g, align 8
  %add37 = add i64 %227, %val.0.i455
  store i64 %add37, ptr %txframecount_g, align 8
  %228 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i458 = getelementptr inbounds %struct.xgbe_version_data, ptr %229, i32 0, i32 2
  %230 = ptrtoint ptr %mmc_64bit.i458 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %mmc_64bit.i458, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %tobool.not.i459.not = icmp eq i32 %231, 0
  %232 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i464 = getelementptr i8, ptr %233, i32 2196
  %234 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464) #11, !srcloc !115
  %235 = tail call i32 @llvm.bswap.i32(i32 %234) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i465 = zext i32 %235 to i64
  br i1 %tobool.not.i459.not, label %xgbe_mmc_read.exit456.xgbe_mmc_read.exit474_crit_edge, label %if.then5.i472

xgbe_mmc_read.exit456.xgbe_mmc_read.exit474_crit_edge: ; preds = %xgbe_mmc_read.exit456
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit474

if.then5.i472:                                    ; preds = %xgbe_mmc_read.exit456
  call void @__sanitizer_cov_trace_pc() #13
  %236 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i468 = getelementptr i8, ptr %237, i32 2200
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i468) #11, !srcloc !115
  %239 = tail call i32 @llvm.bswap.i32(i32 %238) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i469 = zext i32 %239 to i64
  %shl.i470 = shl nuw i64 %conv10.i469, 32
  %or.i471 = or i64 %shl.i470, %conv.i465
  br label %xgbe_mmc_read.exit474

xgbe_mmc_read.exit474:                            ; preds = %if.then5.i472, %xgbe_mmc_read.exit456.xgbe_mmc_read.exit474_crit_edge
  %val.0.i473 = phi i64 [ %or.i471, %if.then5.i472 ], [ %conv.i465, %xgbe_mmc_read.exit456.xgbe_mmc_read.exit474_crit_edge ]
  %txpauseframes = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 16
  %240 = ptrtoint ptr %txpauseframes to i32
  call void @__asan_load8_noabort(i32 %240)
  %241 = load i64, ptr %txpauseframes, align 8
  %add39 = add i64 %241, %val.0.i473
  store i64 %add39, ptr %txpauseframes, align 8
  %242 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i476 = getelementptr inbounds %struct.xgbe_version_data, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %mmc_64bit.i476 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %mmc_64bit.i476, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not.i477.not = icmp eq i32 %245, 0
  %246 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i482 = getelementptr i8, ptr %247, i32 2204
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i482) #11, !srcloc !115
  %249 = tail call i32 @llvm.bswap.i32(i32 %248) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i483 = zext i32 %249 to i64
  br i1 %tobool.not.i477.not, label %xgbe_mmc_read.exit474.xgbe_mmc_read.exit492_crit_edge, label %if.then5.i490

xgbe_mmc_read.exit474.xgbe_mmc_read.exit492_crit_edge: ; preds = %xgbe_mmc_read.exit474
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit492

if.then5.i490:                                    ; preds = %xgbe_mmc_read.exit474
  call void @__sanitizer_cov_trace_pc() #13
  %250 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i486 = getelementptr i8, ptr %251, i32 2208
  %252 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i486) #11, !srcloc !115
  %253 = tail call i32 @llvm.bswap.i32(i32 %252) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i487 = zext i32 %253 to i64
  %shl.i488 = shl nuw i64 %conv10.i487, 32
  %or.i489 = or i64 %shl.i488, %conv.i483
  br label %xgbe_mmc_read.exit492

xgbe_mmc_read.exit492:                            ; preds = %if.then5.i490, %xgbe_mmc_read.exit474.xgbe_mmc_read.exit492_crit_edge
  %val.0.i491 = phi i64 [ %or.i489, %if.then5.i490 ], [ %conv.i483, %xgbe_mmc_read.exit474.xgbe_mmc_read.exit492_crit_edge ]
  %txvlanframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 17
  %254 = ptrtoint ptr %txvlanframes_g to i32
  call void @__asan_load8_noabort(i32 %254)
  %255 = load i64, ptr %txvlanframes_g, align 8
  %add41 = add i64 %255, %val.0.i491
  store i64 %add41, ptr %txvlanframes_g, align 8
  %256 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i494 = getelementptr inbounds %struct.xgbe_version_data, ptr %257, i32 0, i32 2
  %258 = ptrtoint ptr %mmc_64bit.i494 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %mmc_64bit.i494, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %259)
  %tobool.not.i495.not = icmp eq i32 %259, 0
  %260 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i500 = getelementptr i8, ptr %261, i32 2304
  %262 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i500) #11, !srcloc !115
  %263 = tail call i32 @llvm.bswap.i32(i32 %262) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i501 = zext i32 %263 to i64
  br i1 %tobool.not.i495.not, label %xgbe_mmc_read.exit492.xgbe_mmc_read.exit510_crit_edge, label %if.then5.i508

xgbe_mmc_read.exit492.xgbe_mmc_read.exit510_crit_edge: ; preds = %xgbe_mmc_read.exit492
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit510

if.then5.i508:                                    ; preds = %xgbe_mmc_read.exit492
  call void @__sanitizer_cov_trace_pc() #13
  %264 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i504 = getelementptr i8, ptr %265, i32 2308
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i504) #11, !srcloc !115
  %267 = tail call i32 @llvm.bswap.i32(i32 %266) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i505 = zext i32 %267 to i64
  %shl.i506 = shl nuw i64 %conv10.i505, 32
  %or.i507 = or i64 %shl.i506, %conv.i501
  br label %xgbe_mmc_read.exit510

xgbe_mmc_read.exit510:                            ; preds = %if.then5.i508, %xgbe_mmc_read.exit492.xgbe_mmc_read.exit510_crit_edge
  %val.0.i509 = phi i64 [ %or.i507, %if.then5.i508 ], [ %conv.i501, %xgbe_mmc_read.exit492.xgbe_mmc_read.exit510_crit_edge ]
  %rxframecount_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 18
  %268 = ptrtoint ptr %rxframecount_gb to i32
  call void @__asan_load8_noabort(i32 %268)
  %269 = load i64, ptr %rxframecount_gb, align 8
  %add43 = add i64 %269, %val.0.i509
  store i64 %add43, ptr %rxframecount_gb, align 8
  %270 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i518 = getelementptr i8, ptr %271, i32 2312
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i518) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %273 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i522 = getelementptr i8, ptr %274, i32 2316
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i522) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %276 = zext i32 %275 to i64
  %277 = zext i32 %272 to i64
  %278 = shl nuw i64 %277, 32
  %279 = or i64 %278, %276
  %280 = tail call i64 @llvm.bswap.i64(i64 %279)
  %rxoctetcount_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 19
  %281 = ptrtoint ptr %rxoctetcount_gb to i32
  call void @__asan_load8_noabort(i32 %281)
  %282 = load i64, ptr %rxoctetcount_gb, align 8
  %add45 = add i64 %280, %282
  store i64 %add45, ptr %rxoctetcount_gb, align 8
  %283 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i536 = getelementptr i8, ptr %284, i32 2320
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i536) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %286 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i540 = getelementptr i8, ptr %287, i32 2324
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i540) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %289 = zext i32 %288 to i64
  %290 = zext i32 %285 to i64
  %291 = shl nuw i64 %290, 32
  %292 = or i64 %291, %289
  %293 = tail call i64 @llvm.bswap.i64(i64 %292)
  %rxoctetcount_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 20
  %294 = ptrtoint ptr %rxoctetcount_g to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %rxoctetcount_g, align 8
  %add47 = add i64 %293, %295
  store i64 %add47, ptr %rxoctetcount_g, align 8
  %296 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i548 = getelementptr inbounds %struct.xgbe_version_data, ptr %297, i32 0, i32 2
  %298 = ptrtoint ptr %mmc_64bit.i548 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load i32, ptr %mmc_64bit.i548, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool.not.i549.not = icmp eq i32 %299, 0
  %300 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i554 = getelementptr i8, ptr %301, i32 2328
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i554) #11, !srcloc !115
  %303 = tail call i32 @llvm.bswap.i32(i32 %302) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i555 = zext i32 %303 to i64
  br i1 %tobool.not.i549.not, label %xgbe_mmc_read.exit510.xgbe_mmc_read.exit564_crit_edge, label %if.then5.i562

xgbe_mmc_read.exit510.xgbe_mmc_read.exit564_crit_edge: ; preds = %xgbe_mmc_read.exit510
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit564

if.then5.i562:                                    ; preds = %xgbe_mmc_read.exit510
  call void @__sanitizer_cov_trace_pc() #13
  %304 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i558 = getelementptr i8, ptr %305, i32 2332
  %306 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i558) #11, !srcloc !115
  %307 = tail call i32 @llvm.bswap.i32(i32 %306) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i559 = zext i32 %307 to i64
  %shl.i560 = shl nuw i64 %conv10.i559, 32
  %or.i561 = or i64 %shl.i560, %conv.i555
  br label %xgbe_mmc_read.exit564

xgbe_mmc_read.exit564:                            ; preds = %if.then5.i562, %xgbe_mmc_read.exit510.xgbe_mmc_read.exit564_crit_edge
  %val.0.i563 = phi i64 [ %or.i561, %if.then5.i562 ], [ %conv.i555, %xgbe_mmc_read.exit510.xgbe_mmc_read.exit564_crit_edge ]
  %rxbroadcastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 21
  %308 = ptrtoint ptr %rxbroadcastframes_g to i32
  call void @__asan_load8_noabort(i32 %308)
  %309 = load i64, ptr %rxbroadcastframes_g, align 8
  %add49 = add i64 %309, %val.0.i563
  store i64 %add49, ptr %rxbroadcastframes_g, align 8
  %310 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i566 = getelementptr inbounds %struct.xgbe_version_data, ptr %311, i32 0, i32 2
  %312 = ptrtoint ptr %mmc_64bit.i566 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %mmc_64bit.i566, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %313)
  %tobool.not.i567.not = icmp eq i32 %313, 0
  %314 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i572 = getelementptr i8, ptr %315, i32 2336
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i572) #11, !srcloc !115
  %317 = tail call i32 @llvm.bswap.i32(i32 %316) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i573 = zext i32 %317 to i64
  br i1 %tobool.not.i567.not, label %xgbe_mmc_read.exit564.xgbe_mmc_read.exit582_crit_edge, label %if.then5.i580

xgbe_mmc_read.exit564.xgbe_mmc_read.exit582_crit_edge: ; preds = %xgbe_mmc_read.exit564
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit582

if.then5.i580:                                    ; preds = %xgbe_mmc_read.exit564
  call void @__sanitizer_cov_trace_pc() #13
  %318 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i576 = getelementptr i8, ptr %319, i32 2340
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i576) #11, !srcloc !115
  %321 = tail call i32 @llvm.bswap.i32(i32 %320) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i577 = zext i32 %321 to i64
  %shl.i578 = shl nuw i64 %conv10.i577, 32
  %or.i579 = or i64 %shl.i578, %conv.i573
  br label %xgbe_mmc_read.exit582

xgbe_mmc_read.exit582:                            ; preds = %if.then5.i580, %xgbe_mmc_read.exit564.xgbe_mmc_read.exit582_crit_edge
  %val.0.i581 = phi i64 [ %or.i579, %if.then5.i580 ], [ %conv.i573, %xgbe_mmc_read.exit564.xgbe_mmc_read.exit582_crit_edge ]
  %rxmulticastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 22
  %322 = ptrtoint ptr %rxmulticastframes_g to i32
  call void @__asan_load8_noabort(i32 %322)
  %323 = load i64, ptr %rxmulticastframes_g, align 8
  %add51 = add i64 %323, %val.0.i581
  store i64 %add51, ptr %rxmulticastframes_g, align 8
  %324 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i584 = getelementptr inbounds %struct.xgbe_version_data, ptr %325, i32 0, i32 2
  %326 = ptrtoint ptr %mmc_64bit.i584 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %mmc_64bit.i584, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %327)
  %tobool.not.i585.not = icmp eq i32 %327, 0
  %328 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i590 = getelementptr i8, ptr %329, i32 2344
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i590) #11, !srcloc !115
  %331 = tail call i32 @llvm.bswap.i32(i32 %330) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i591 = zext i32 %331 to i64
  br i1 %tobool.not.i585.not, label %xgbe_mmc_read.exit582.xgbe_mmc_read.exit600_crit_edge, label %if.then5.i598

xgbe_mmc_read.exit582.xgbe_mmc_read.exit600_crit_edge: ; preds = %xgbe_mmc_read.exit582
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit600

if.then5.i598:                                    ; preds = %xgbe_mmc_read.exit582
  call void @__sanitizer_cov_trace_pc() #13
  %332 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i594 = getelementptr i8, ptr %333, i32 2348
  %334 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i594) #11, !srcloc !115
  %335 = tail call i32 @llvm.bswap.i32(i32 %334) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i595 = zext i32 %335 to i64
  %shl.i596 = shl nuw i64 %conv10.i595, 32
  %or.i597 = or i64 %shl.i596, %conv.i591
  br label %xgbe_mmc_read.exit600

xgbe_mmc_read.exit600:                            ; preds = %if.then5.i598, %xgbe_mmc_read.exit582.xgbe_mmc_read.exit600_crit_edge
  %val.0.i599 = phi i64 [ %or.i597, %if.then5.i598 ], [ %conv.i591, %xgbe_mmc_read.exit582.xgbe_mmc_read.exit600_crit_edge ]
  %rxcrcerror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 23
  %336 = ptrtoint ptr %rxcrcerror to i32
  call void @__asan_load8_noabort(i32 %336)
  %337 = load i64, ptr %rxcrcerror, align 8
  %add53 = add i64 %337, %val.0.i599
  store i64 %add53, ptr %rxcrcerror, align 8
  %338 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i608 = getelementptr i8, ptr %339, i32 2352
  %340 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i608) #11, !srcloc !115
  %341 = tail call i32 @llvm.bswap.i32(i32 %340) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i609 = zext i32 %341 to i64
  %rxrunterror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 24
  %342 = ptrtoint ptr %rxrunterror to i32
  call void @__asan_load8_noabort(i32 %342)
  %343 = load i64, ptr %rxrunterror, align 8
  %add55 = add i64 %343, %conv.i609
  store i64 %add55, ptr %rxrunterror, align 8
  %344 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i626 = getelementptr i8, ptr %345, i32 2356
  %346 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i626) #11, !srcloc !115
  %347 = tail call i32 @llvm.bswap.i32(i32 %346) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i627 = zext i32 %347 to i64
  %rxjabbererror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 25
  %348 = ptrtoint ptr %rxjabbererror to i32
  call void @__asan_load8_noabort(i32 %348)
  %349 = load i64, ptr %rxjabbererror, align 8
  %add57 = add i64 %349, %conv.i627
  store i64 %add57, ptr %rxjabbererror, align 8
  %350 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i644 = getelementptr i8, ptr %351, i32 2360
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i644) #11, !srcloc !115
  %353 = tail call i32 @llvm.bswap.i32(i32 %352) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i645 = zext i32 %353 to i64
  %rxundersize_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 26
  %354 = ptrtoint ptr %rxundersize_g to i32
  call void @__asan_load8_noabort(i32 %354)
  %355 = load i64, ptr %rxundersize_g, align 8
  %add59 = add i64 %355, %conv.i645
  store i64 %add59, ptr %rxundersize_g, align 8
  %356 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i662 = getelementptr i8, ptr %357, i32 2364
  %358 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i662) #11, !srcloc !115
  %359 = tail call i32 @llvm.bswap.i32(i32 %358) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i663 = zext i32 %359 to i64
  %rxoversize_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 27
  %360 = ptrtoint ptr %rxoversize_g to i32
  call void @__asan_load8_noabort(i32 %360)
  %361 = load i64, ptr %rxoversize_g, align 8
  %add61 = add i64 %361, %conv.i663
  store i64 %add61, ptr %rxoversize_g, align 8
  %362 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i674 = getelementptr inbounds %struct.xgbe_version_data, ptr %363, i32 0, i32 2
  %364 = ptrtoint ptr %mmc_64bit.i674 to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %mmc_64bit.i674, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %365)
  %tobool.not.i675.not = icmp eq i32 %365, 0
  %366 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i680 = getelementptr i8, ptr %367, i32 2368
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i680) #11, !srcloc !115
  %369 = tail call i32 @llvm.bswap.i32(i32 %368) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i681 = zext i32 %369 to i64
  br i1 %tobool.not.i675.not, label %xgbe_mmc_read.exit600.xgbe_mmc_read.exit690_crit_edge, label %if.then5.i688

xgbe_mmc_read.exit600.xgbe_mmc_read.exit690_crit_edge: ; preds = %xgbe_mmc_read.exit600
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit690

if.then5.i688:                                    ; preds = %xgbe_mmc_read.exit600
  call void @__sanitizer_cov_trace_pc() #13
  %370 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i684 = getelementptr i8, ptr %371, i32 2372
  %372 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i684) #11, !srcloc !115
  %373 = tail call i32 @llvm.bswap.i32(i32 %372) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i685 = zext i32 %373 to i64
  %shl.i686 = shl nuw i64 %conv10.i685, 32
  %or.i687 = or i64 %shl.i686, %conv.i681
  br label %xgbe_mmc_read.exit690

xgbe_mmc_read.exit690:                            ; preds = %if.then5.i688, %xgbe_mmc_read.exit600.xgbe_mmc_read.exit690_crit_edge
  %val.0.i689 = phi i64 [ %or.i687, %if.then5.i688 ], [ %conv.i681, %xgbe_mmc_read.exit600.xgbe_mmc_read.exit690_crit_edge ]
  %rx64octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 28
  %374 = ptrtoint ptr %rx64octets_gb to i32
  call void @__asan_load8_noabort(i32 %374)
  %375 = load i64, ptr %rx64octets_gb, align 8
  %add63 = add i64 %375, %val.0.i689
  store i64 %add63, ptr %rx64octets_gb, align 8
  %376 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i692 = getelementptr inbounds %struct.xgbe_version_data, ptr %377, i32 0, i32 2
  %378 = ptrtoint ptr %mmc_64bit.i692 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %mmc_64bit.i692, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %379)
  %tobool.not.i693.not = icmp eq i32 %379, 0
  %380 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i698 = getelementptr i8, ptr %381, i32 2376
  %382 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i698) #11, !srcloc !115
  %383 = tail call i32 @llvm.bswap.i32(i32 %382) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i699 = zext i32 %383 to i64
  br i1 %tobool.not.i693.not, label %xgbe_mmc_read.exit690.xgbe_mmc_read.exit708_crit_edge, label %if.then5.i706

xgbe_mmc_read.exit690.xgbe_mmc_read.exit708_crit_edge: ; preds = %xgbe_mmc_read.exit690
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit708

if.then5.i706:                                    ; preds = %xgbe_mmc_read.exit690
  call void @__sanitizer_cov_trace_pc() #13
  %384 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i702 = getelementptr i8, ptr %385, i32 2380
  %386 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i702) #11, !srcloc !115
  %387 = tail call i32 @llvm.bswap.i32(i32 %386) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i703 = zext i32 %387 to i64
  %shl.i704 = shl nuw i64 %conv10.i703, 32
  %or.i705 = or i64 %shl.i704, %conv.i699
  br label %xgbe_mmc_read.exit708

xgbe_mmc_read.exit708:                            ; preds = %if.then5.i706, %xgbe_mmc_read.exit690.xgbe_mmc_read.exit708_crit_edge
  %val.0.i707 = phi i64 [ %or.i705, %if.then5.i706 ], [ %conv.i699, %xgbe_mmc_read.exit690.xgbe_mmc_read.exit708_crit_edge ]
  %rx65to127octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 29
  %388 = ptrtoint ptr %rx65to127octets_gb to i32
  call void @__asan_load8_noabort(i32 %388)
  %389 = load i64, ptr %rx65to127octets_gb, align 8
  %add65 = add i64 %389, %val.0.i707
  store i64 %add65, ptr %rx65to127octets_gb, align 8
  %390 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i710 = getelementptr inbounds %struct.xgbe_version_data, ptr %391, i32 0, i32 2
  %392 = ptrtoint ptr %mmc_64bit.i710 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %mmc_64bit.i710, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool.not.i711.not = icmp eq i32 %393, 0
  %394 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i716 = getelementptr i8, ptr %395, i32 2384
  %396 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i716) #11, !srcloc !115
  %397 = tail call i32 @llvm.bswap.i32(i32 %396) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i717 = zext i32 %397 to i64
  br i1 %tobool.not.i711.not, label %xgbe_mmc_read.exit708.xgbe_mmc_read.exit726_crit_edge, label %if.then5.i724

xgbe_mmc_read.exit708.xgbe_mmc_read.exit726_crit_edge: ; preds = %xgbe_mmc_read.exit708
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit726

if.then5.i724:                                    ; preds = %xgbe_mmc_read.exit708
  call void @__sanitizer_cov_trace_pc() #13
  %398 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i720 = getelementptr i8, ptr %399, i32 2388
  %400 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i720) #11, !srcloc !115
  %401 = tail call i32 @llvm.bswap.i32(i32 %400) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i721 = zext i32 %401 to i64
  %shl.i722 = shl nuw i64 %conv10.i721, 32
  %or.i723 = or i64 %shl.i722, %conv.i717
  br label %xgbe_mmc_read.exit726

xgbe_mmc_read.exit726:                            ; preds = %if.then5.i724, %xgbe_mmc_read.exit708.xgbe_mmc_read.exit726_crit_edge
  %val.0.i725 = phi i64 [ %or.i723, %if.then5.i724 ], [ %conv.i717, %xgbe_mmc_read.exit708.xgbe_mmc_read.exit726_crit_edge ]
  %rx128to255octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 30
  %402 = ptrtoint ptr %rx128to255octets_gb to i32
  call void @__asan_load8_noabort(i32 %402)
  %403 = load i64, ptr %rx128to255octets_gb, align 8
  %add67 = add i64 %403, %val.0.i725
  store i64 %add67, ptr %rx128to255octets_gb, align 8
  %404 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i728 = getelementptr inbounds %struct.xgbe_version_data, ptr %405, i32 0, i32 2
  %406 = ptrtoint ptr %mmc_64bit.i728 to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %mmc_64bit.i728, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %407)
  %tobool.not.i729.not = icmp eq i32 %407, 0
  %408 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i734 = getelementptr i8, ptr %409, i32 2392
  %410 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i734) #11, !srcloc !115
  %411 = tail call i32 @llvm.bswap.i32(i32 %410) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i735 = zext i32 %411 to i64
  br i1 %tobool.not.i729.not, label %xgbe_mmc_read.exit726.xgbe_mmc_read.exit744_crit_edge, label %if.then5.i742

xgbe_mmc_read.exit726.xgbe_mmc_read.exit744_crit_edge: ; preds = %xgbe_mmc_read.exit726
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit744

if.then5.i742:                                    ; preds = %xgbe_mmc_read.exit726
  call void @__sanitizer_cov_trace_pc() #13
  %412 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i738 = getelementptr i8, ptr %413, i32 2396
  %414 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i738) #11, !srcloc !115
  %415 = tail call i32 @llvm.bswap.i32(i32 %414) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i739 = zext i32 %415 to i64
  %shl.i740 = shl nuw i64 %conv10.i739, 32
  %or.i741 = or i64 %shl.i740, %conv.i735
  br label %xgbe_mmc_read.exit744

xgbe_mmc_read.exit744:                            ; preds = %if.then5.i742, %xgbe_mmc_read.exit726.xgbe_mmc_read.exit744_crit_edge
  %val.0.i743 = phi i64 [ %or.i741, %if.then5.i742 ], [ %conv.i735, %xgbe_mmc_read.exit726.xgbe_mmc_read.exit744_crit_edge ]
  %rx256to511octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 31
  %416 = ptrtoint ptr %rx256to511octets_gb to i32
  call void @__asan_load8_noabort(i32 %416)
  %417 = load i64, ptr %rx256to511octets_gb, align 8
  %add69 = add i64 %417, %val.0.i743
  store i64 %add69, ptr %rx256to511octets_gb, align 8
  %418 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i746 = getelementptr inbounds %struct.xgbe_version_data, ptr %419, i32 0, i32 2
  %420 = ptrtoint ptr %mmc_64bit.i746 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %mmc_64bit.i746, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %421)
  %tobool.not.i747.not = icmp eq i32 %421, 0
  %422 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i752 = getelementptr i8, ptr %423, i32 2400
  %424 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i752) #11, !srcloc !115
  %425 = tail call i32 @llvm.bswap.i32(i32 %424) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i753 = zext i32 %425 to i64
  br i1 %tobool.not.i747.not, label %xgbe_mmc_read.exit744.xgbe_mmc_read.exit762_crit_edge, label %if.then5.i760

xgbe_mmc_read.exit744.xgbe_mmc_read.exit762_crit_edge: ; preds = %xgbe_mmc_read.exit744
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit762

if.then5.i760:                                    ; preds = %xgbe_mmc_read.exit744
  call void @__sanitizer_cov_trace_pc() #13
  %426 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i756 = getelementptr i8, ptr %427, i32 2404
  %428 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i756) #11, !srcloc !115
  %429 = tail call i32 @llvm.bswap.i32(i32 %428) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i757 = zext i32 %429 to i64
  %shl.i758 = shl nuw i64 %conv10.i757, 32
  %or.i759 = or i64 %shl.i758, %conv.i753
  br label %xgbe_mmc_read.exit762

xgbe_mmc_read.exit762:                            ; preds = %if.then5.i760, %xgbe_mmc_read.exit744.xgbe_mmc_read.exit762_crit_edge
  %val.0.i761 = phi i64 [ %or.i759, %if.then5.i760 ], [ %conv.i753, %xgbe_mmc_read.exit744.xgbe_mmc_read.exit762_crit_edge ]
  %rx512to1023octets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 32
  %430 = ptrtoint ptr %rx512to1023octets_gb to i32
  call void @__asan_load8_noabort(i32 %430)
  %431 = load i64, ptr %rx512to1023octets_gb, align 8
  %add71 = add i64 %431, %val.0.i761
  store i64 %add71, ptr %rx512to1023octets_gb, align 8
  %432 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i764 = getelementptr inbounds %struct.xgbe_version_data, ptr %433, i32 0, i32 2
  %434 = ptrtoint ptr %mmc_64bit.i764 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load i32, ptr %mmc_64bit.i764, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %435)
  %tobool.not.i765.not = icmp eq i32 %435, 0
  %436 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i770 = getelementptr i8, ptr %437, i32 2408
  %438 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i770) #11, !srcloc !115
  %439 = tail call i32 @llvm.bswap.i32(i32 %438) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i771 = zext i32 %439 to i64
  br i1 %tobool.not.i765.not, label %xgbe_mmc_read.exit762.xgbe_mmc_read.exit780_crit_edge, label %if.then5.i778

xgbe_mmc_read.exit762.xgbe_mmc_read.exit780_crit_edge: ; preds = %xgbe_mmc_read.exit762
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit780

if.then5.i778:                                    ; preds = %xgbe_mmc_read.exit762
  call void @__sanitizer_cov_trace_pc() #13
  %440 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i774 = getelementptr i8, ptr %441, i32 2412
  %442 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i774) #11, !srcloc !115
  %443 = tail call i32 @llvm.bswap.i32(i32 %442) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i775 = zext i32 %443 to i64
  %shl.i776 = shl nuw i64 %conv10.i775, 32
  %or.i777 = or i64 %shl.i776, %conv.i771
  br label %xgbe_mmc_read.exit780

xgbe_mmc_read.exit780:                            ; preds = %if.then5.i778, %xgbe_mmc_read.exit762.xgbe_mmc_read.exit780_crit_edge
  %val.0.i779 = phi i64 [ %or.i777, %if.then5.i778 ], [ %conv.i771, %xgbe_mmc_read.exit762.xgbe_mmc_read.exit780_crit_edge ]
  %rx1024tomaxoctets_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 33
  %444 = ptrtoint ptr %rx1024tomaxoctets_gb to i32
  call void @__asan_load8_noabort(i32 %444)
  %445 = load i64, ptr %rx1024tomaxoctets_gb, align 8
  %add73 = add i64 %445, %val.0.i779
  store i64 %add73, ptr %rx1024tomaxoctets_gb, align 8
  %446 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i782 = getelementptr inbounds %struct.xgbe_version_data, ptr %447, i32 0, i32 2
  %448 = ptrtoint ptr %mmc_64bit.i782 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %mmc_64bit.i782, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %449)
  %tobool.not.i783.not = icmp eq i32 %449, 0
  %450 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i788 = getelementptr i8, ptr %451, i32 2416
  %452 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i788) #11, !srcloc !115
  %453 = tail call i32 @llvm.bswap.i32(i32 %452) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i789 = zext i32 %453 to i64
  br i1 %tobool.not.i783.not, label %xgbe_mmc_read.exit780.xgbe_mmc_read.exit798_crit_edge, label %if.then5.i796

xgbe_mmc_read.exit780.xgbe_mmc_read.exit798_crit_edge: ; preds = %xgbe_mmc_read.exit780
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit798

if.then5.i796:                                    ; preds = %xgbe_mmc_read.exit780
  call void @__sanitizer_cov_trace_pc() #13
  %454 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i792 = getelementptr i8, ptr %455, i32 2420
  %456 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i792) #11, !srcloc !115
  %457 = tail call i32 @llvm.bswap.i32(i32 %456) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i793 = zext i32 %457 to i64
  %shl.i794 = shl nuw i64 %conv10.i793, 32
  %or.i795 = or i64 %shl.i794, %conv.i789
  br label %xgbe_mmc_read.exit798

xgbe_mmc_read.exit798:                            ; preds = %if.then5.i796, %xgbe_mmc_read.exit780.xgbe_mmc_read.exit798_crit_edge
  %val.0.i797 = phi i64 [ %or.i795, %if.then5.i796 ], [ %conv.i789, %xgbe_mmc_read.exit780.xgbe_mmc_read.exit798_crit_edge ]
  %rxunicastframes_g = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 34
  %458 = ptrtoint ptr %rxunicastframes_g to i32
  call void @__asan_load8_noabort(i32 %458)
  %459 = load i64, ptr %rxunicastframes_g, align 8
  %add75 = add i64 %459, %val.0.i797
  store i64 %add75, ptr %rxunicastframes_g, align 8
  %460 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %460)
  %461 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i800 = getelementptr inbounds %struct.xgbe_version_data, ptr %461, i32 0, i32 2
  %462 = ptrtoint ptr %mmc_64bit.i800 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %mmc_64bit.i800, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %463)
  %tobool.not.i801.not = icmp eq i32 %463, 0
  %464 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %464)
  %465 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i806 = getelementptr i8, ptr %465, i32 2424
  %466 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i806) #11, !srcloc !115
  %467 = tail call i32 @llvm.bswap.i32(i32 %466) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i807 = zext i32 %467 to i64
  br i1 %tobool.not.i801.not, label %xgbe_mmc_read.exit798.xgbe_mmc_read.exit816_crit_edge, label %if.then5.i814

xgbe_mmc_read.exit798.xgbe_mmc_read.exit816_crit_edge: ; preds = %xgbe_mmc_read.exit798
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit816

if.then5.i814:                                    ; preds = %xgbe_mmc_read.exit798
  call void @__sanitizer_cov_trace_pc() #13
  %468 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %468)
  %469 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i810 = getelementptr i8, ptr %469, i32 2428
  %470 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i810) #11, !srcloc !115
  %471 = tail call i32 @llvm.bswap.i32(i32 %470) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i811 = zext i32 %471 to i64
  %shl.i812 = shl nuw i64 %conv10.i811, 32
  %or.i813 = or i64 %shl.i812, %conv.i807
  br label %xgbe_mmc_read.exit816

xgbe_mmc_read.exit816:                            ; preds = %if.then5.i814, %xgbe_mmc_read.exit798.xgbe_mmc_read.exit816_crit_edge
  %val.0.i815 = phi i64 [ %or.i813, %if.then5.i814 ], [ %conv.i807, %xgbe_mmc_read.exit798.xgbe_mmc_read.exit816_crit_edge ]
  %rxlengtherror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 35
  %472 = ptrtoint ptr %rxlengtherror to i32
  call void @__asan_load8_noabort(i32 %472)
  %473 = load i64, ptr %rxlengtherror, align 8
  %add77 = add i64 %473, %val.0.i815
  store i64 %add77, ptr %rxlengtherror, align 8
  %474 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %474)
  %475 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i818 = getelementptr inbounds %struct.xgbe_version_data, ptr %475, i32 0, i32 2
  %476 = ptrtoint ptr %mmc_64bit.i818 to i32
  call void @__asan_load4_noabort(i32 %476)
  %477 = load i32, ptr %mmc_64bit.i818, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %477)
  %tobool.not.i819.not = icmp eq i32 %477, 0
  %478 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i824 = getelementptr i8, ptr %479, i32 2432
  %480 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i824) #11, !srcloc !115
  %481 = tail call i32 @llvm.bswap.i32(i32 %480) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i825 = zext i32 %481 to i64
  br i1 %tobool.not.i819.not, label %xgbe_mmc_read.exit816.xgbe_mmc_read.exit834_crit_edge, label %if.then5.i832

xgbe_mmc_read.exit816.xgbe_mmc_read.exit834_crit_edge: ; preds = %xgbe_mmc_read.exit816
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit834

if.then5.i832:                                    ; preds = %xgbe_mmc_read.exit816
  call void @__sanitizer_cov_trace_pc() #13
  %482 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i828 = getelementptr i8, ptr %483, i32 2436
  %484 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i828) #11, !srcloc !115
  %485 = tail call i32 @llvm.bswap.i32(i32 %484) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i829 = zext i32 %485 to i64
  %shl.i830 = shl nuw i64 %conv10.i829, 32
  %or.i831 = or i64 %shl.i830, %conv.i825
  br label %xgbe_mmc_read.exit834

xgbe_mmc_read.exit834:                            ; preds = %if.then5.i832, %xgbe_mmc_read.exit816.xgbe_mmc_read.exit834_crit_edge
  %val.0.i833 = phi i64 [ %or.i831, %if.then5.i832 ], [ %conv.i825, %xgbe_mmc_read.exit816.xgbe_mmc_read.exit834_crit_edge ]
  %rxoutofrangetype = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 36
  %486 = ptrtoint ptr %rxoutofrangetype to i32
  call void @__asan_load8_noabort(i32 %486)
  %487 = load i64, ptr %rxoutofrangetype, align 8
  %add79 = add i64 %487, %val.0.i833
  store i64 %add79, ptr %rxoutofrangetype, align 8
  %488 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i836 = getelementptr inbounds %struct.xgbe_version_data, ptr %489, i32 0, i32 2
  %490 = ptrtoint ptr %mmc_64bit.i836 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %mmc_64bit.i836, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %491)
  %tobool.not.i837.not = icmp eq i32 %491, 0
  %492 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i842 = getelementptr i8, ptr %493, i32 2440
  %494 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i842) #11, !srcloc !115
  %495 = tail call i32 @llvm.bswap.i32(i32 %494) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i843 = zext i32 %495 to i64
  br i1 %tobool.not.i837.not, label %xgbe_mmc_read.exit834.xgbe_mmc_read.exit852_crit_edge, label %if.then5.i850

xgbe_mmc_read.exit834.xgbe_mmc_read.exit852_crit_edge: ; preds = %xgbe_mmc_read.exit834
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit852

if.then5.i850:                                    ; preds = %xgbe_mmc_read.exit834
  call void @__sanitizer_cov_trace_pc() #13
  %496 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i846 = getelementptr i8, ptr %497, i32 2444
  %498 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i846) #11, !srcloc !115
  %499 = tail call i32 @llvm.bswap.i32(i32 %498) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i847 = zext i32 %499 to i64
  %shl.i848 = shl nuw i64 %conv10.i847, 32
  %or.i849 = or i64 %shl.i848, %conv.i843
  br label %xgbe_mmc_read.exit852

xgbe_mmc_read.exit852:                            ; preds = %if.then5.i850, %xgbe_mmc_read.exit834.xgbe_mmc_read.exit852_crit_edge
  %val.0.i851 = phi i64 [ %or.i849, %if.then5.i850 ], [ %conv.i843, %xgbe_mmc_read.exit834.xgbe_mmc_read.exit852_crit_edge ]
  %rxpauseframes = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 37
  %500 = ptrtoint ptr %rxpauseframes to i32
  call void @__asan_load8_noabort(i32 %500)
  %501 = load i64, ptr %rxpauseframes, align 8
  %add81 = add i64 %501, %val.0.i851
  store i64 %add81, ptr %rxpauseframes, align 8
  %502 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i854 = getelementptr inbounds %struct.xgbe_version_data, ptr %503, i32 0, i32 2
  %504 = ptrtoint ptr %mmc_64bit.i854 to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load i32, ptr %mmc_64bit.i854, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %505)
  %tobool.not.i855.not = icmp eq i32 %505, 0
  %506 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %506)
  %507 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i860 = getelementptr i8, ptr %507, i32 2448
  %508 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i860) #11, !srcloc !115
  %509 = tail call i32 @llvm.bswap.i32(i32 %508) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i861 = zext i32 %509 to i64
  br i1 %tobool.not.i855.not, label %xgbe_mmc_read.exit852.xgbe_mmc_read.exit870_crit_edge, label %if.then5.i868

xgbe_mmc_read.exit852.xgbe_mmc_read.exit870_crit_edge: ; preds = %xgbe_mmc_read.exit852
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit870

if.then5.i868:                                    ; preds = %xgbe_mmc_read.exit852
  call void @__sanitizer_cov_trace_pc() #13
  %510 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i864 = getelementptr i8, ptr %511, i32 2452
  %512 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i864) #11, !srcloc !115
  %513 = tail call i32 @llvm.bswap.i32(i32 %512) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i865 = zext i32 %513 to i64
  %shl.i866 = shl nuw i64 %conv10.i865, 32
  %or.i867 = or i64 %shl.i866, %conv.i861
  br label %xgbe_mmc_read.exit870

xgbe_mmc_read.exit870:                            ; preds = %if.then5.i868, %xgbe_mmc_read.exit852.xgbe_mmc_read.exit870_crit_edge
  %val.0.i869 = phi i64 [ %or.i867, %if.then5.i868 ], [ %conv.i861, %xgbe_mmc_read.exit852.xgbe_mmc_read.exit870_crit_edge ]
  %rxfifooverflow = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 38
  %514 = ptrtoint ptr %rxfifooverflow to i32
  call void @__asan_load8_noabort(i32 %514)
  %515 = load i64, ptr %rxfifooverflow, align 8
  %add83 = add i64 %515, %val.0.i869
  store i64 %add83, ptr %rxfifooverflow, align 8
  %516 = ptrtoint ptr %vdata.i to i32
  call void @__asan_load4_noabort(i32 %516)
  %517 = load ptr, ptr %vdata.i, align 4
  %mmc_64bit.i872 = getelementptr inbounds %struct.xgbe_version_data, ptr %517, i32 0, i32 2
  %518 = ptrtoint ptr %mmc_64bit.i872 to i32
  call void @__asan_load4_noabort(i32 %518)
  %519 = load i32, ptr %mmc_64bit.i872, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %519)
  %tobool.not.i873.not = icmp eq i32 %519, 0
  %520 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i878 = getelementptr i8, ptr %521, i32 2456
  %522 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i878) #11, !srcloc !115
  %523 = tail call i32 @llvm.bswap.i32(i32 %522) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i879 = zext i32 %523 to i64
  br i1 %tobool.not.i873.not, label %xgbe_mmc_read.exit870.xgbe_mmc_read.exit888_crit_edge, label %if.then5.i886

xgbe_mmc_read.exit870.xgbe_mmc_read.exit888_crit_edge: ; preds = %xgbe_mmc_read.exit870
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_mmc_read.exit888

if.then5.i886:                                    ; preds = %xgbe_mmc_read.exit870
  call void @__sanitizer_cov_trace_pc() #13
  %524 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8.i882 = getelementptr i8, ptr %525, i32 2460
  %526 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i882) #11, !srcloc !115
  %527 = tail call i32 @llvm.bswap.i32(i32 %526) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv10.i883 = zext i32 %527 to i64
  %shl.i884 = shl nuw i64 %conv10.i883, 32
  %or.i885 = or i64 %shl.i884, %conv.i879
  br label %xgbe_mmc_read.exit888

xgbe_mmc_read.exit888:                            ; preds = %if.then5.i886, %xgbe_mmc_read.exit870.xgbe_mmc_read.exit888_crit_edge
  %val.0.i887 = phi i64 [ %or.i885, %if.then5.i886 ], [ %conv.i879, %xgbe_mmc_read.exit870.xgbe_mmc_read.exit888_crit_edge ]
  %rxvlanframes_gb = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 39
  %528 = ptrtoint ptr %rxvlanframes_gb to i32
  call void @__asan_load8_noabort(i32 %528)
  %529 = load i64, ptr %rxvlanframes_gb, align 8
  %add85 = add i64 %529, %val.0.i887
  store i64 %add85, ptr %rxvlanframes_gb, align 8
  %530 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i896 = getelementptr i8, ptr %531, i32 2464
  %532 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i896) #11, !srcloc !115
  %533 = tail call i32 @llvm.bswap.i32(i32 %532) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv.i897 = zext i32 %533 to i64
  %rxwatchdogerror = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 106, i32 40
  %534 = ptrtoint ptr %rxwatchdogerror to i32
  call void @__asan_load8_noabort(i32 %534)
  %535 = load i64, ptr %rxwatchdogerror, align 8
  %add87 = add i64 %535, %conv.i897
  store i64 %add87, ptr %rxwatchdogerror, align 8
  %536 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr91 = getelementptr i8, ptr %537, i32 2048
  %538 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %539 = and i32 %538, -134217729
  %540 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %540)
  %541 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr99 = getelementptr i8, ptr %541, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 %539) #11, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_config_tstamp(ptr noundef %pdata, i32 noundef %mac_tscr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %or7 = or i32 %mac_tscr, 16777730
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or7) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #11, !srcloc !114
  %and9 = and i32 %mac_tscr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool.not = icmp eq i32 %and9, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body10

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr12 = getelementptr i8, ptr %4, i32 3332
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %6 = and i32 %5, -65281
  %7 = or i32 %6, 5120
  %8 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 3332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %7) #11, !srcloc !114
  %10 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr24 = getelementptr i8, ptr %11, i32 3332
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %13 = and i32 %12, -16711681
  %14 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr32 = getelementptr i8, ptr %15, i32 3332
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %13) #11, !srcloc !114
  %tstamp_addend = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 119
  %16 = ptrtoint ptr %tstamp_addend to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tstamp_addend, align 8
  tail call void @xgbe_update_tstamp_addend(ptr noundef %pdata, i32 noundef %17)
  tail call void @xgbe_set_tstamp_time(ptr noundef %pdata, i32 noundef 0, i32 noundef 0)
  %tstamp_tc = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 118
  %tstamp_cc = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 117
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  tail call void @timecounter_init(ptr noundef %tstamp_tc, ptr noundef %tstamp_cc, i64 noundef %call.i) #11
  br label %return

return:                                           ; preds = %do.body10, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_update_tstamp_addend(ptr nocapture noundef readonly %pdata, i32 noundef %addend) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3352
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %addend) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #11, !srcloc !114
  %3 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 3328
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %6 = or i32 %5, 536870912
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 3328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #11, !srcloc !114
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %dec21 = phi i32 [ 9999, %entry ], [ %dec, %while.body.land.rhs_crit_edge ]
  %9 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 3328
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %12 = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.not = icmp eq i32 %12, 0
  br i1 %tobool12.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 1073740) #11
  %dec = add nsw i32 %dec21, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then.critedge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.then.critedge:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str.36) #15
  br label %if.end

if.end:                                           ; preds = %if.then.critedge, %land.rhs.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_set_tstamp_time(ptr nocapture noundef readonly %pdata, i32 noundef %sec, i32 noundef %nsec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3344
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %sec) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #11, !srcloc !114
  %3 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 3348
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %nsec) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %5) #11, !srcloc !114
  %6 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 3328
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %9 = or i32 %8, 67108864
  %10 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr7 = getelementptr i8, ptr %11, i32 3328
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %9) #11, !srcloc !114
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry
  %dec24 = phi i32 [ 9999, %entry ], [ %dec, %while.body.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr11 = getelementptr i8, ptr %13, i32 3328
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %15 = and i32 %14, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %land.rhs.if.end_crit_edge, label %while.body

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

while.body:                                       ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 1073740) #11
  %dec = add nsw i32 %dec24, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then.critedge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

if.then.critedge:                                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %18, ptr noundef nonnull @.str.37) #15
  br label %if.end

if.end:                                           ; preds = %if.then.critedge, %land.rhs.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xgbe_get_tstamp_time(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3336
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv = zext i32 %3 to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 3340
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %conv4 = zext i32 %7 to i64
  %add = add nuw nsw i64 %mul, %conv4
  ret i64 %add
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @xgbe_get_tx_tstamp(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdata = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 7
  %0 = ptrtoint ptr %vdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdata, align 4
  %tx_tstamp_workaround = getelementptr inbounds %struct.xgbe_version_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tx_tstamp_workaround to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_tstamp_workaround, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %xgmac_regs4 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %4 = ptrtoint ptr %xgmac_regs4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs4, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %5, i32 3376
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %8 = ptrtoint ptr %xgmac_regs4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs4, align 4
  %add.ptr2 = getelementptr i8, ptr %9, i32 3380
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #11, !srcloc !115
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr5 = getelementptr i8, ptr %5, i32 3380
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #11, !srcloc !115
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %14 = ptrtoint ptr %xgmac_regs4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs4, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 3376
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #11, !srcloc !115
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tx_snr.0 = phi i32 [ %7, %if.then ], [ %17, %if.else ]
  %tx_ssr.0 = phi i32 [ %11, %if.then ], [ %13, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %tx_snr.0)
  %tobool10.not = icmp sgt i32 %tx_snr.0, -1
  br i1 %tobool10.not, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i32 %tx_ssr.0 to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %conv13 = zext i32 %tx_snr.0 to i64
  %add = add nuw nsw i64 %mul, %conv13
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge
  %retval.0 = phi i64 [ %add, %if.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i64 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_config_tc(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  tail call void @netdev_reset_tc(ptr noundef %1) #11
  %num_tcs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 129
  %2 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 8
  %call = tail call i32 @netdev_set_num_tc(ptr noundef %5, i8 noundef zeroext %3) #11
  %6 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_tcs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp79.not = icmp eq i8 %7, 0
  br i1 %cmp79.not, label %if.end.for.end_crit_edge, label %while.cond.preheader.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

while.cond.preheader.lr.ph:                       ; preds = %if.end
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end24.while.cond.preheader_crit_edge, %while.cond.preheader.lr.ph
  %indvars.iv = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %indvars.iv.next, %do.end24.while.cond.preheader_crit_edge ]
  %offset.081 = phi i32 [ 0, %while.cond.preheader.lr.ph ], [ %queue.1.lcssa, %do.end24.while.cond.preheader_crit_edge ]
  %8 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_q_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.081, i32 %9)
  %cmp676 = icmp ult i32 %offset.081, %9
  br i1 %cmp676, label %while.cond.preheader.land.rhs_crit_edge, label %while.cond.preheader.do.body_crit_edge

while.cond.preheader.do.body_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

while.cond.preheader.land.rhs_crit_edge:          ; preds = %while.cond.preheader
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %while.cond.preheader.land.rhs_crit_edge
  %queue.177 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ %offset.081, %while.cond.preheader.land.rhs_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 125, i32 %queue.177
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %indvars.iv)
  %cmp9 = icmp eq i32 %11, %indvars.iv
  br i1 %cmp9, label %while.body, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

while.body:                                       ; preds = %land.rhs
  %inc = add i32 %queue.177, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %while.body.do.body_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body:                                          ; preds = %while.body.do.body_crit_edge, %land.rhs.do.body_crit_edge, %while.cond.preheader.do.body_crit_edge
  %queue.1.lcssa = phi i32 [ %offset.081, %while.cond.preheader.do.body_crit_edge ], [ %queue.177, %land.rhs.do.body_crit_edge ], [ %9, %while.body.do.body_crit_edge ]
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body.do.end24_crit_edge, label %do.body13

do.body.do.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

do.body13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_tc.__UNIQUE_ID_ddebug385, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_tc, %if.then18)) #11
          to label %do.end24 [label %if.then18], !srcloc !117

if.then18:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  %sub = add i32 %queue.1.lcssa, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_tc.__UNIQUE_ID_ddebug385, ptr noundef %15, ptr noundef nonnull @.str.39, i32 noundef %indvars.iv, i32 noundef %offset.081, i32 noundef %sub) #11
  br label %do.end24

do.end24:                                         ; preds = %if.then18, %do.body13, %do.body.do.end24_crit_edge
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 8
  %sub26 = sub i32 %queue.1.lcssa, %offset.081
  %conv27 = trunc i32 %sub26 to i16
  %conv28 = trunc i32 %offset.081 to i16
  %18 = trunc i32 %indvars.iv to i8
  %call29 = tail call i32 @netdev_set_tc_queue(ptr noundef %17, i8 noundef zeroext %18, i16 noundef zeroext %conv27, i16 noundef zeroext %conv28) #11
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %19 = ptrtoint ptr %num_tcs to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %num_tcs, align 4
  %21 = zext i8 %20 to i32
  %cmp = icmp ult i32 %indvars.iv.next, %21
  br i1 %cmp, label %do.end24.while.cond.preheader_crit_edge, label %do.end24.for.end_crit_edge

do.end24.for.end_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end24.while.cond.preheader_crit_edge:          ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.preheader

for.end:                                          ; preds = %do.end24.for.end_crit_edge, %if.end.for.end_crit_edge
  %ets = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 123
  %22 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ets, align 8
  %tobool31.not = icmp eq ptr %23, null
  br i1 %tobool31.not, label %for.end.cleanup_crit_edge, label %for.body37.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body37.preheader:                             ; preds = %for.end
  %24 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata, align 8
  %26 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ets, align 8
  %arrayidx41 = getelementptr %struct.ieee_ets, ptr %27, i32 0, i32 6, i32 0
  %28 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx41, align 1
  %conv.i = zext i8 %29 to i32
  %num_tc.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 140
  %30 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %num_tc.i, align 4
  %conv1.i = sext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %conv1.i)
  %cmp.not.i = icmp slt i32 %conv.i, %conv1.i
  br i1 %cmp.not.i, label %if.end.i, label %for.body37.preheader.netdev_set_prio_tc_map.exit_crit_edge

for.body37.preheader.netdev_set_prio_tc_map.exit_crit_edge: ; preds = %for.body37.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_set_prio_tc_map.exit

if.end.i:                                         ; preds = %for.body37.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i8 %29, 15
  %arrayidx.i = getelementptr %struct.net_device, ptr %25, i32 0, i32 142, i32 0
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %and.i, ptr %arrayidx.i, align 1
  br label %netdev_set_prio_tc_map.exit

netdev_set_prio_tc_map.exit:                      ; preds = %if.end.i, %for.body37.preheader.netdev_set_prio_tc_map.exit_crit_edge
  %33 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdata, align 8
  %35 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ets, align 8
  %arrayidx41.1 = getelementptr %struct.ieee_ets, ptr %36, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx41.1, align 1
  %conv.i.1 = zext i8 %38 to i32
  %num_tc.i.1 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 140
  %39 = ptrtoint ptr %num_tc.i.1 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %num_tc.i.1, align 4
  %conv1.i.1 = sext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.1, i32 %conv1.i.1)
  %cmp.not.i.1 = icmp slt i32 %conv.i.1, %conv1.i.1
  br i1 %cmp.not.i.1, label %if.end.i.1, label %netdev_set_prio_tc_map.exit.netdev_set_prio_tc_map.exit.1_crit_edge

netdev_set_prio_tc_map.exit.netdev_set_prio_tc_map.exit.1_crit_edge: ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_set_prio_tc_map.exit.1

if.end.i.1:                                       ; preds = %netdev_set_prio_tc_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.1 = and i8 %38, 15
  %arrayidx.i.1 = getelementptr %struct.net_device, ptr %34, i32 0, i32 142, i32 1
  %41 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %and.i.1, ptr %arrayidx.i.1, align 1
  br label %netdev_set_prio_tc_map.exit.1

netdev_set_prio_tc_map.exit.1:                    ; preds = %if.end.i.1, %netdev_set_prio_tc_map.exit.netdev_set_prio_tc_map.exit.1_crit_edge
  %42 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdata, align 8
  %44 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ets, align 8
  %arrayidx41.2 = getelementptr %struct.ieee_ets, ptr %45, i32 0, i32 6, i32 2
  %46 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx41.2, align 1
  %conv.i.2 = zext i8 %47 to i32
  %num_tc.i.2 = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 140
  %48 = ptrtoint ptr %num_tc.i.2 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %num_tc.i.2, align 4
  %conv1.i.2 = sext i16 %49 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.2, i32 %conv1.i.2)
  %cmp.not.i.2 = icmp slt i32 %conv.i.2, %conv1.i.2
  br i1 %cmp.not.i.2, label %if.end.i.2, label %netdev_set_prio_tc_map.exit.1.netdev_set_prio_tc_map.exit.2_crit_edge

netdev_set_prio_tc_map.exit.1.netdev_set_prio_tc_map.exit.2_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_set_prio_tc_map.exit.2

if.end.i.2:                                       ; preds = %netdev_set_prio_tc_map.exit.1
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.2 = and i8 %47, 15
  %arrayidx.i.2 = getelementptr %struct.net_device, ptr %43, i32 0, i32 142, i32 2
  %50 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %and.i.2, ptr %arrayidx.i.2, align 1
  br label %netdev_set_prio_tc_map.exit.2

netdev_set_prio_tc_map.exit.2:                    ; preds = %if.end.i.2, %netdev_set_prio_tc_map.exit.1.netdev_set_prio_tc_map.exit.2_crit_edge
  %51 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdata, align 8
  %53 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ets, align 8
  %arrayidx41.3 = getelementptr %struct.ieee_ets, ptr %54, i32 0, i32 6, i32 3
  %55 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx41.3, align 1
  %conv.i.3 = zext i8 %56 to i32
  %num_tc.i.3 = getelementptr inbounds %struct.net_device, ptr %52, i32 0, i32 140
  %57 = ptrtoint ptr %num_tc.i.3 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %num_tc.i.3, align 4
  %conv1.i.3 = sext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.3, i32 %conv1.i.3)
  %cmp.not.i.3 = icmp slt i32 %conv.i.3, %conv1.i.3
  br i1 %cmp.not.i.3, label %if.end.i.3, label %netdev_set_prio_tc_map.exit.2.netdev_set_prio_tc_map.exit.3_crit_edge

netdev_set_prio_tc_map.exit.2.netdev_set_prio_tc_map.exit.3_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_set_prio_tc_map.exit.3

if.end.i.3:                                       ; preds = %netdev_set_prio_tc_map.exit.2
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.3 = and i8 %56, 15
  %arrayidx.i.3 = getelementptr %struct.net_device, ptr %52, i32 0, i32 142, i32 3
  %59 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %and.i.3, ptr %arrayidx.i.3, align 1
  br label %netdev_set_prio_tc_map.exit.3

netdev_set_prio_tc_map.exit.3:                    ; preds = %if.end.i.3, %netdev_set_prio_tc_map.exit.2.netdev_set_prio_tc_map.exit.3_crit_edge
  %60 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdata, align 8
  %62 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ets, align 8
  %arrayidx41.4 = getelementptr %struct.ieee_ets, ptr %63, i32 0, i32 6, i32 4
  %64 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx41.4, align 1
  %conv.i.4 = zext i8 %65 to i32
  %num_tc.i.4 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 140
  %66 = ptrtoint ptr %num_tc.i.4 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %num_tc.i.4, align 4
  %conv1.i.4 = sext i16 %67 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.4, i32 %conv1.i.4)
  %cmp.not.i.4 = icmp slt i32 %conv.i.4, %conv1.i.4
  br i1 %cmp.not.i.4, label %if.end.i.4, label %netdev_set_prio_tc_map.exit.3.netdev_set_prio_tc_map.exit.4_crit_edge

netdev_set_prio_tc_map.exit.3.netdev_set_prio_tc_map.exit.4_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_set_prio_tc_map.exit.4

if.end.i.4:                                       ; preds = %netdev_set_prio_tc_map.exit.3
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.4 = and i8 %65, 15
  %arrayidx.i.4 = getelementptr %struct.net_device, ptr %61, i32 0, i32 142, i32 4
  %68 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %and.i.4, ptr %arrayidx.i.4, align 1
  br label %netdev_set_prio_tc_map.exit.4

netdev_set_prio_tc_map.exit.4:                    ; preds = %if.end.i.4, %netdev_set_prio_tc_map.exit.3.netdev_set_prio_tc_map.exit.4_crit_edge
  %69 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdata, align 8
  %71 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ets, align 8
  %arrayidx41.5 = getelementptr %struct.ieee_ets, ptr %72, i32 0, i32 6, i32 5
  %73 = ptrtoint ptr %arrayidx41.5 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx41.5, align 1
  %conv.i.5 = zext i8 %74 to i32
  %num_tc.i.5 = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 140
  %75 = ptrtoint ptr %num_tc.i.5 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %num_tc.i.5, align 4
  %conv1.i.5 = sext i16 %76 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.5, i32 %conv1.i.5)
  %cmp.not.i.5 = icmp slt i32 %conv.i.5, %conv1.i.5
  br i1 %cmp.not.i.5, label %if.end.i.5, label %netdev_set_prio_tc_map.exit.4.netdev_set_prio_tc_map.exit.5_crit_edge

netdev_set_prio_tc_map.exit.4.netdev_set_prio_tc_map.exit.5_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_set_prio_tc_map.exit.5

if.end.i.5:                                       ; preds = %netdev_set_prio_tc_map.exit.4
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.5 = and i8 %74, 15
  %arrayidx.i.5 = getelementptr %struct.net_device, ptr %70, i32 0, i32 142, i32 5
  %77 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %and.i.5, ptr %arrayidx.i.5, align 1
  br label %netdev_set_prio_tc_map.exit.5

netdev_set_prio_tc_map.exit.5:                    ; preds = %if.end.i.5, %netdev_set_prio_tc_map.exit.4.netdev_set_prio_tc_map.exit.5_crit_edge
  %78 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdata, align 8
  %80 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ets, align 8
  %arrayidx41.6 = getelementptr %struct.ieee_ets, ptr %81, i32 0, i32 6, i32 6
  %82 = ptrtoint ptr %arrayidx41.6 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx41.6, align 1
  %conv.i.6 = zext i8 %83 to i32
  %num_tc.i.6 = getelementptr inbounds %struct.net_device, ptr %79, i32 0, i32 140
  %84 = ptrtoint ptr %num_tc.i.6 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %num_tc.i.6, align 4
  %conv1.i.6 = sext i16 %85 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.6, i32 %conv1.i.6)
  %cmp.not.i.6 = icmp slt i32 %conv.i.6, %conv1.i.6
  br i1 %cmp.not.i.6, label %if.end.i.6, label %netdev_set_prio_tc_map.exit.5.netdev_set_prio_tc_map.exit.6_crit_edge

netdev_set_prio_tc_map.exit.5.netdev_set_prio_tc_map.exit.6_crit_edge: ; preds = %netdev_set_prio_tc_map.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %netdev_set_prio_tc_map.exit.6

if.end.i.6:                                       ; preds = %netdev_set_prio_tc_map.exit.5
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.6 = and i8 %83, 15
  %arrayidx.i.6 = getelementptr %struct.net_device, ptr %79, i32 0, i32 142, i32 6
  %86 = ptrtoint ptr %arrayidx.i.6 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %and.i.6, ptr %arrayidx.i.6, align 1
  br label %netdev_set_prio_tc_map.exit.6

netdev_set_prio_tc_map.exit.6:                    ; preds = %if.end.i.6, %netdev_set_prio_tc_map.exit.5.netdev_set_prio_tc_map.exit.6_crit_edge
  %87 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %pdata, align 8
  %89 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ets, align 8
  %arrayidx41.7 = getelementptr %struct.ieee_ets, ptr %90, i32 0, i32 6, i32 7
  %91 = ptrtoint ptr %arrayidx41.7 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx41.7, align 1
  %conv.i.7 = zext i8 %92 to i32
  %num_tc.i.7 = getelementptr inbounds %struct.net_device, ptr %88, i32 0, i32 140
  %93 = ptrtoint ptr %num_tc.i.7 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %num_tc.i.7, align 4
  %conv1.i.7 = sext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.7, i32 %conv1.i.7)
  %cmp.not.i.7 = icmp slt i32 %conv.i.7, %conv1.i.7
  br i1 %cmp.not.i.7, label %if.end.i.7, label %netdev_set_prio_tc_map.exit.6.cleanup_crit_edge

netdev_set_prio_tc_map.exit.6.cleanup_crit_edge:  ; preds = %netdev_set_prio_tc_map.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.7:                                       ; preds = %netdev_set_prio_tc_map.exit.6
  call void @__sanitizer_cov_trace_pc() #13
  %and.i.7 = and i8 %92, 15
  %arrayidx.i.7 = getelementptr %struct.net_device, ptr %88, i32 0, i32 142, i32 7
  %95 = ptrtoint ptr %arrayidx.i.7 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %and.i.7, ptr %arrayidx.i.7, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.7, %netdev_set_prio_tc_map.exit.6.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_config_dcb_tc(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ets1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 123
  %0 = ptrtoint ptr %ets1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ets1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4096
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %5 = and i32 %4, -1610612737
  %6 = or i32 %5, 1073741824
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr5 = getelementptr i8, ptr %8, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %6) #11, !srcloc !114
  %9 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdata, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mtu, align 4
  %tc_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 25
  %13 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tc_cnt, align 4
  %mul = mul i32 %14, %12
  %div = udiv i32 %mul, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul)
  %15 = icmp ult i32 %mul, 100
  %spec.store.select = select i1 %15, i32 1, i32 %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp270.not = icmp eq i32 %14, 0
  br i1 %cmp270.not, label %do.body.for.end184_crit_edge, label %for.cond13.preheader.lr.ph

do.body.for.end184_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end184

for.cond13.preheader.lr.ph:                       ; preds = %do.body
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %arrayidx = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 6, i32 0
  %arrayidx.1 = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 6, i32 1
  %arrayidx.2 = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 6, i32 2
  %arrayidx.3 = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 6, i32 3
  %arrayidx.4 = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 6, i32 4
  %arrayidx.5 = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 6, i32 5
  %arrayidx.6 = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 6, i32 6
  %arrayidx.7 = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 6, i32 7
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.inc182.for.cond13.preheader_crit_edge, %for.cond13.preheader.lr.ph
  %i.0271 = phi i32 [ 0, %for.cond13.preheader.lr.ph ], [ %inc183, %for.inc182.for.cond13.preheader_crit_edge ]
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0271, i32 %conv)
  %cmp16 = icmp eq i32 %i.0271, %conv
  %or19 = zext i1 %cmp16 to i32
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0271, i32 %conv.1)
  %cmp16.1 = icmp eq i32 %i.0271, %conv.1
  %or19.1 = select i1 %cmp16.1, i32 2, i32 0
  %mask.1.1 = or i32 %or19.1, %or19
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %21 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0271, i32 %conv.2)
  %cmp16.2 = icmp eq i32 %i.0271, %conv.2
  %or19.2 = select i1 %cmp16.2, i32 4, i32 0
  %mask.1.2 = or i32 %or19.2, %mask.1.1
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0271, i32 %conv.3)
  %cmp16.3 = icmp eq i32 %i.0271, %conv.3
  %or19.3 = select i1 %cmp16.3, i32 8, i32 0
  %mask.1.3 = or i32 %or19.3, %mask.1.2
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0271, i32 %conv.4)
  %cmp16.4 = icmp eq i32 %i.0271, %conv.4
  %or19.4 = select i1 %cmp16.4, i32 16, i32 0
  %mask.1.4 = or i32 %or19.4, %mask.1.3
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0271, i32 %conv.5)
  %cmp16.5 = icmp eq i32 %i.0271, %conv.5
  %or19.5 = select i1 %cmp16.5, i32 32, i32 0
  %28 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0271, i32 %conv.6)
  %cmp16.6 = icmp eq i32 %i.0271, %conv.6
  %or19.6 = select i1 %cmp16.6, i32 64, i32 0
  %30 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0271, i32 %conv.7)
  %cmp16.7 = icmp eq i32 %i.0271, %conv.7
  %or19.7 = select i1 %cmp16.7, i32 128, i32 0
  %mask.1.5.masked = or i32 %or19.5, %mask.1.4
  %mask.1.6.masked = or i32 %or19.6, %mask.1.5.masked
  %and21 = or i32 %or19.7, %mask.1.6.masked
  %32 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_enable, align 4
  %and23 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %for.cond13.preheader.do.end38_crit_edge, label %do.body26

for.cond13.preheader.do.end38_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

do.body26:                                        ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_dcb_tc.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_dcb_tc, %if.then31)) #11
          to label %do.end38 [label %if.then31], !srcloc !117

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_dcb_tc.__UNIQUE_ID_ddebug386, ptr noundef %35, ptr noundef nonnull @.str.41, i32 noundef %i.0271, i32 noundef %and21) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %do.body26, %for.cond13.preheader.do.end38_crit_edge
  %36 = add i32 %i.0271, 4160
  %add = and i32 %36, -4
  %37 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr42 = getelementptr i8, ptr %38, i32 %add
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #11, !srcloc !115
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %rem = shl i32 %i.0271, 3
  %shl44 = and i32 %rem, 24
  %shl45 = shl nuw i32 255, %shl44
  %neg = xor i32 %shl45, -1
  %and46 = and i32 %40, %neg
  %shl49 = shl nuw i32 %and21, %shl44
  %or50 = or i32 %and46, %shl49
  %41 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr52 = getelementptr i8, ptr %42, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %or50) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %43) #11, !srcloc !114
  %arrayidx53 = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 5, i32 %i.0271
  %44 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx53, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %45, label %do.end38.for.inc182_crit_edge [
    i8 0, label %do.body55
    i8 2, label %sw.bb100
  ]

do.end38.for.inc182_crit_edge:                    ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc182

do.body55:                                        ; preds = %do.end38
  %47 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %msg_enable, align 4
  %and57 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %do.body55.do.body80_crit_edge, label %do.body60

do.body55.do.body80_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body80

do.body60:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_dcb_tc.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_dcb_tc, %if.then72)) #11
          to label %do.body80 [label %if.then72], !srcloc !117

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_dcb_tc.__UNIQUE_ID_ddebug387, ptr noundef %50, ptr noundef nonnull @.str.42, i32 noundef %i.0271) #11
  br label %do.body80

do.body80:                                        ; preds = %if.then72, %do.body60, %do.body55.do.body80_crit_edge
  %51 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xgmac_regs, align 4
  %mul84 = shl i32 %i.0271, 7
  %add.ptr85 = getelementptr i8, ptr %52, i32 4368
  %add.ptr86 = getelementptr i8, ptr %add.ptr85, i32 %mul84
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr86) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %54 = and i32 %53, -50331649
  %55 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr96 = getelementptr i8, ptr %56, i32 4368
  %add.ptr97 = getelementptr i8, ptr %add.ptr96, i32 %mul84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97, i32 %54) #11, !srcloc !114
  br label %for.inc182

sw.bb100:                                         ; preds = %do.end38
  %arrayidx101 = getelementptr %struct.ieee_ets, ptr %1, i32 0, i32 3, i32 %i.0271
  %57 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx101, align 1
  %conv102 = zext i8 %58 to i32
  %mul103 = mul i32 %mul, %conv102
  %div104 = udiv i32 %mul103, 100
  %59 = tail call i32 @llvm.umax.i32(i32 %div104, i32 %spec.store.select)
  %60 = tail call i32 @llvm.umin.i32(i32 %59, i32 %mul)
  %61 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %msg_enable, align 4
  %and117 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %sw.bb100.do.body140_crit_edge, label %do.body120

sw.bb100.do.body140_crit_edge:                    ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body140

do.body120:                                       ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_dcb_tc.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_dcb_tc, %if.then132)) #11
          to label %do.body140 [label %if.then132], !srcloc !117

if.then132:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #13
  %63 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_dcb_tc.__UNIQUE_ID_ddebug392, ptr noundef %64, ptr noundef nonnull @.str.43, i32 noundef %i.0271, i32 noundef %60) #11
  br label %do.body140

do.body140:                                       ; preds = %if.then132, %do.body120, %sw.bb100.do.body140_crit_edge
  %65 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %xgmac_regs, align 4
  %mul144 = shl i32 %i.0271, 7
  %add.ptr145 = getelementptr i8, ptr %66, i32 4368
  %add.ptr146 = getelementptr i8, ptr %add.ptr145, i32 %mul144
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %68 = and i32 %67, -50331649
  %69 = or i32 %68, 33554432
  %70 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr156 = getelementptr i8, ptr %71, i32 4368
  %add.ptr157 = getelementptr i8, ptr %add.ptr156, i32 %mul144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr157, i32 %69) #11, !srcloc !114
  %72 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr165 = getelementptr i8, ptr %73, i32 4376
  %add.ptr166 = getelementptr i8, ptr %add.ptr165, i32 %mul144
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %75 = and i32 %74, 57599
  %76 = tail call i32 @llvm.bswap.i32(i32 %75)
  %and170 = and i32 %60, 2097151
  %or172 = or i32 %76, %and170
  %77 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr178 = getelementptr i8, ptr %78, i32 4376
  %add.ptr179 = getelementptr i8, ptr %add.ptr178, i32 %mul144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %79 = tail call i32 @llvm.bswap.i32(i32 %or172) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr179, i32 %79) #11, !srcloc !114
  br label %for.inc182

for.inc182:                                       ; preds = %do.body140, %do.body80, %do.end38.for.inc182_crit_edge
  %inc183 = add nuw i32 %i.0271, 1
  %80 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tc_cnt, align 4
  %cmp = icmp ult i32 %inc183, %81
  br i1 %cmp, label %for.inc182.for.cond13.preheader_crit_edge, label %for.inc182.for.end184_crit_edge

for.inc182.for.end184_crit_edge:                  ; preds = %for.inc182
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end184

for.inc182.for.cond13.preheader_crit_edge:        ; preds = %for.inc182
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond13.preheader

for.end184:                                       ; preds = %for.inc182.for.end184_crit_edge, %do.body.for.end184_crit_edge
  tail call void @xgbe_config_tc(ptr noundef %pdata)
  br label %cleanup

cleanup:                                          ; preds = %for.end184, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_config_dcb_pfc(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_state = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 29
  %0 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %dev_state, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  tail call void @netif_tx_stop_all_queues(ptr noundef %3) #11
  %disable_rx = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 21
  %4 = ptrtoint ptr %disable_rx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable_rx, align 4
  tail call void %5(ptr noundef %pdata) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call fastcc void @xgbe_config_rx_fifo_size(ptr noundef %pdata)
  tail call fastcc void @xgbe_config_flow_control(ptr noundef %pdata)
  %6 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %dev_state, align 4
  %and1.i17 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i17)
  %tobool3.not = icmp eq i32 %and1.i17, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.end
  %enable_rx = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 51, i32 20
  %8 = ptrtoint ptr %enable_rx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %enable_rx, align 4
  tail call void %9(ptr noundef %pdata) #11
  %10 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdata, align 8
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 104
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp4.not.i = icmp eq i32 %13, 0
  br i1 %cmp4.not.i, label %if.then4.if.end7_crit_edge, label %for.body.lr.ph.i

if.then4.if.end7_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

for.body.lr.ph.i:                                 ; preds = %if.then4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %14 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %15, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %inc.i = add nuw i32 %i.05.i, 1
  %16 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end7_crit_edge

for.body.i.if.end7_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.end7:                                          ; preds = %for.body.i.if.end7_crit_edge, %if.then4.if.end7_crit_edge, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_enable_rss(ptr noundef %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rss = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 24
  %0 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @xgbe_write_rss_hash_key(ptr noundef %pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.for.body.i_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 100, i32 %i.07.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 0, i32 noundef %i.07.i, i32 noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %inc.i = add nuw nsw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %xgbe_write_rss_lookup_table.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xgbe_write_rss_lookup_table.exit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %xgbe_write_rss_lookup_table.exit.cleanup_crit_edge

xgbe_write_rss_lookup_table.exit.cleanup_crit_edge: ; preds = %xgbe_write_rss_lookup_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %xgbe_write_rss_lookup_table.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rss_options = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 101
  %4 = ptrtoint ptr %rss_options to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rss_options, align 8
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %6 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 3200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #11, !srcloc !114
  %9 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 3200
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %12 = or i32 %11, 16777216
  %13 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr13 = getelementptr i8, ptr %14, i32 3200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %12) #11, !srcloc !114
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %xgbe_write_rss_lookup_table.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -95, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call.i, %xgbe_write_rss_lookup_table.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_disable_rss(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rss = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 24
  %0 = ptrtoint ptr %rss to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 3200
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %5 = and i32 %4, -16777217
  %6 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 3200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #11, !srcloc !114
  br label %return

return:                                           ; preds = %do.body, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_rss_hash_key(ptr noundef %pdata, ptr nocapture noundef readonly %key) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_key = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99
  %0 = call ptr @memcpy(ptr %rss_key, ptr %key, i32 40)
  %call = tail call fastcc i32 @xgbe_write_rss_hash_key(ptr noundef %pdata)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgbe_set_rss_lookup_table(ptr noundef %pdata, ptr nocapture noundef readonly %table) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %i.011 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 100, i32 %i.011
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = and i32 %1, -16
  store i32 %and, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr i32, ptr %table, i32 %i.011
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx1, align 4
  %and2 = and i32 %3, 15
  %or = or i32 %and2, %and
  store i32 %or, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %do.body.for.body.i_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body.for.body.i_crit_edge:                     ; preds = %do.body
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %do.body.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 100, i32 %i.07.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call.i = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 0, i32 noundef %i.07.i, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp ne i32 %call.i, 0
  %inc.i = add nuw nsw i32 %i.07.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %xgbe_write_rss_lookup_table.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xgbe_write_rss_lookup_table.exit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_disable_ecc_ded(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 14
  %0 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprop_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = and i32 %2, -704643073
  %4 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xprop_regs, align 8
  %add.ptr12 = getelementptr i8, ptr %5, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %3) #11, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_disable_ecc_sec(ptr nocapture noundef readonly %pdata, i32 noundef %sec) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xprop_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 14
  %0 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprop_regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 52
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %4 = zext i32 %sec to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %sec, label %entry.sw.epilog_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body2
    i32 2, label %do.body8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %3, -2
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and3 = and i32 %3, -5
  br label %sw.epilog

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %and9 = and i32 %3, -17
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body8, %do.body2, %do.body, %entry.sw.epilog_crit_edge
  %ecc_ier.0 = phi i32 [ %3, %entry.sw.epilog_crit_edge ], [ %and9, %do.body8 ], [ %and3, %do.body2 ], [ %and, %do.body ]
  %5 = ptrtoint ptr %xprop_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %xprop_regs, align 8
  %add.ptr14 = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %7 = tail call i32 @llvm.bswap.i32(i32 %ecc_ier.0) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %7) #11, !srcloc !114
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_enable_vxlan(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vxn = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 15
  %0 = ptrtoint ptr %vxn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vxn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end49_crit_edge, label %if.end

entry.do.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

if.end:                                           ; preds = %entry
  %xgmac_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 224
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %5 = and i32 %4, 65535
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %vxlan_port.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 102
  %7 = ptrtoint ptr %vxlan_port.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vxlan_port.i, align 4
  %conv.i = zext i16 %8 to i32
  %or.i = or i32 %6, %conv.i
  %9 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %10, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %11) #11, !srcloc !114
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %12 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable.i, align 4
  %and8.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool.not.i, label %if.end.xgbe_set_vxlan_id.exit_crit_edge, label %do.body9.i

if.end.xgbe_set_vxlan_id.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_set_vxlan_id.exit

do.body9.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_set_vxlan_id.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_enable_vxlan, %if.then14.i)) #11
          to label %xgbe_set_vxlan_id.exit [label %if.then14.i], !srcloc !117

if.then14.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  %16 = ptrtoint ptr %vxlan_port.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vxlan_port.i, align 4
  %conv16.i = zext i16 %17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_set_vxlan_id.__UNIQUE_ID_ddebug351, ptr noundef %15, ptr noundef nonnull @.str.49, i32 noundef %conv16.i) #11
  br label %xgbe_set_vxlan_id.exit

xgbe_set_vxlan_id.exit:                           ; preds = %if.then14.i, %do.body9.i, %if.end.xgbe_set_vxlan_id.exit_crit_edge
  %18 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %21 = or i32 %20, 16384
  %22 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr3 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %21) #11, !srcloc !114
  %24 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xgmac_regs.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %27 = and i32 %26, -3
  %28 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xgmac_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #11, !srcloc !114
  %30 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xgmac_regs.i, align 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %33 = or i32 %32, 1
  %34 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xgmac_regs.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #11, !srcloc !114
  %36 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msg_enable.i, align 4
  %and35 = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %xgbe_set_vxlan_id.exit.do.end49_crit_edge, label %do.body38

xgbe_set_vxlan_id.exit.do.end49_crit_edge:        ; preds = %xgbe_set_vxlan_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

do.body38:                                        ; preds = %xgbe_set_vxlan_id.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_enable_vxlan.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_enable_vxlan, %if.then43)) #11
          to label %do.end49 [label %if.then43], !srcloc !117

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_enable_vxlan.__UNIQUE_ID_ddebug352, ptr noundef %39, ptr noundef nonnull @.str.45) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.body38, %xgbe_set_vxlan_id.exit.do.end49_crit_edge, %entry.do.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_disable_vxlan(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vxn = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 15
  %0 = ptrtoint ptr %vxn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vxn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.do.end49_crit_edge, label %do.body

entry.do.end49_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

do.body:                                          ; preds = %entry
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %2 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xgmac_regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %5 = and i32 %4, -2
  %6 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xgmac_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #11, !srcloc !114
  %8 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %11 = and i32 %10, -16385
  %12 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr17 = getelementptr i8, ptr %13, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %11) #11, !srcloc !114
  %14 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %15, i32 224
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %17 = and i32 %16, 65535
  %18 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr31 = getelementptr i8, ptr %19, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %17) #11, !srcloc !114
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %20 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_enable, align 4
  %and35 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body.do.end49_crit_edge, label %do.body38

do.body.do.end49_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end49

do.body38:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_disable_vxlan.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_disable_vxlan, %if.then43)) #11
          to label %do.end49 [label %if.then43], !srcloc !117

if.then43:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_disable_vxlan.__UNIQUE_ID_ddebug353, ptr noundef %23, ptr noundef nonnull @.str.47) #11
  br label %do.end49

do.end49:                                         ; preds = %if.then43, %do.body38, %do.body.do.end49_crit_edge, %entry.do.end49_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgbe_set_vxlan_id(ptr nocapture noundef readonly %pdata) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 224
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = and i32 %2, 65535
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %vxlan_port = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 102
  %5 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vxlan_port, align 4
  %conv = zext i16 %6 to i32
  %or = or i32 %4, %conv
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %9) #11, !srcloc !114
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %10 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_enable, align 4
  %and8 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %entry.do.end21_crit_edge, label %do.body9

entry.do.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

do.body9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_set_vxlan_id.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_set_vxlan_id, %if.then14)) #11
          to label %do.end21 [label %if.then14], !srcloc !117

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata, align 8
  %14 = ptrtoint ptr %vxlan_port to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vxlan_port, align 4
  %conv16 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_set_vxlan_id.__UNIQUE_ID_ddebug351, ptr noundef %13, ptr noundef nonnull @.str.49, i32 noundef %conv16) #11
  br label %do.end21

do.end21:                                         ; preds = %if.then14, %do.body9, %entry.do.end21_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_set_promiscuous_mode(ptr nocapture noundef readonly %pdata, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %not.tobool.not = xor i1 %tobool.not, true
  %cond = zext i1 %not.tobool.not to i32
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %cond)
  %cmp = icmp eq i32 %and, %cond
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 4
  %and1 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.do.body16_crit_edge, label %do.body4

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_set_promiscuous_mode.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_set_promiscuous_mode, %if.then9)) #11
          to label %do.body16 [label %if.then9], !srcloc !117

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 8
  %cond11 = select i1 %tobool.not, ptr @.str.5, ptr @.str.4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_set_promiscuous_mode.__UNIQUE_ID_ddebug361, ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull %cond11) #11
  br label %do.body16

do.body16:                                        ; preds = %if.then9, %do.body4, %do.body.do.body16_crit_edge
  %8 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr18 = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %11 = and i32 %10, -16777217
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %or = or i32 %12, %cond
  %13 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr26 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %15 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %15) #11, !srcloc !114
  br i1 %tobool.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %19 = and i32 %18, -257
  %20 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr3.i = getelementptr i8, ptr %21, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #11, !srcloc !114
  br label %cleanup

if.else:                                          ; preds = %do.body16
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 23
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %features, align 16
  %and33 = and i64 %25, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.else.cleanup_crit_edge, label %if.then35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 @xgbe_enable_rx_vlan_filtering(ptr noundef %pdata)
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.else.cleanup_crit_edge, %if.then30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_set_mac_addn_addrs(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  %mac_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mac_reg) #11
  %2 = ptrtoint ptr %mac_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 776, ptr %mac_reg, align 4
  %addn_mac = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 12
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @xgbe_set_promiscuous_mode(ptr noundef %pdata, i32 noundef 1)
  br label %if.end38

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %ha.065 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.062, %for.cond.preheader.for.body_crit_edge ]
  %addn_macs.064 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %4, %for.cond.preheader.for.body_crit_edge ]
  call fastcc void @xgbe_set_mac_reg(ptr noundef %pdata, ptr noundef %ha.065, ptr noundef nonnull %mac_reg)
  %dec = add i32 %addn_macs.064, -1
  %8 = ptrtoint ptr %ha.065 to i32
  call void @__asan_load4_noabort(i32 %8)
  %ha.0 = load ptr, ptr %ha.065, align 4
  %cmp6.not = icmp eq ptr %ha.0, %uc
  br i1 %cmp6.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.then14:                                        ; preds = %for.end
  %xgmac_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %12 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %15 = and i32 %14, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %.not = icmp eq i32 %15, 0
  br i1 %.not, label %do.body.i, label %if.then14.if.end38_crit_edge

if.then14.if.end38_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

do.body.i:                                        ; preds = %if.then14
  %msg_enable.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %16 = ptrtoint ptr %msg_enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_enable.i, align 4
  %and1.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %do.body.i.do.body16.i_crit_edge, label %do.body4.i

do.body.i.do.body16.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body16.i

do.body4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_set_all_multicast_mode.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_set_mac_addn_addrs, %if.then9.i)) #11
          to label %do.body16.i [label %if.then9.i], !srcloc !117

if.then9.i:                                       ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_set_all_multicast_mode.__UNIQUE_ID_ddebug362, ptr noundef %19, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4) #11
  br label %do.body16.i

do.body16.i:                                      ; preds = %if.then9.i, %do.body4.i, %do.body.i.do.body16.i_crit_edge
  %20 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %23 = or i32 %22, 268435456
  %24 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %25, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 %23) #11, !srcloc !114
  br label %if.end38

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.cond23.preheader.for.body29_crit_edge
  %ha.169 = phi ptr [ %ha.1, %for.body29.for.body29_crit_edge ], [ %ha.166, %for.cond23.preheader.for.body29_crit_edge ]
  %addn_macs.168 = phi i32 [ %dec30, %for.body29.for.body29_crit_edge ], [ %addn_macs.0.lcssa, %for.cond23.preheader.for.body29_crit_edge ]
  call fastcc void @xgbe_set_mac_reg(ptr noundef %pdata, ptr noundef %ha.169, ptr noundef nonnull %mac_reg)
  %dec30 = add i32 %addn_macs.168, -1
  %26 = ptrtoint ptr %ha.169 to i32
  call void @__asan_load4_noabort(i32 %26)
  %ha.1 = load ptr, ptr %ha.169, align 4
  %cmp27.not = icmp eq ptr %ha.1, %mc
  br i1 %cmp27.not, label %for.body29.if.end38_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body29

for.body29.if.end38_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end38

if.end38:                                         ; preds = %for.body29.if.end38_crit_edge, %do.body16.i, %if.then14.if.end38_crit_edge, %for.cond23.preheader.if.end38_crit_edge, %if.then
  %addn_macs.2 = phi i32 [ %4, %if.then ], [ %addn_macs.0.lcssa, %if.then14.if.end38_crit_edge ], [ %addn_macs.0.lcssa, %do.body16.i ], [ %addn_macs.0.lcssa, %for.cond23.preheader.if.end38_crit_edge ], [ %dec30, %for.body29.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addn_macs.2)
  %tobool.not72 = icmp eq i32 %addn_macs.2, 0
  br i1 %tobool.not72, label %if.end38.while.end_crit_edge, label %while.body.lr.ph

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end38
  %27 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %27)
  %mac_reg.promoted = load i32, ptr %mac_reg, align 4
  %xgmac_regs.i60 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %addn_macs.374 = phi i32 [ %addn_macs.2, %while.body.lr.ph ], [ %dec39, %while.body.while.body_crit_edge ]
  %add35.i7173 = phi i32 [ %mac_reg.promoted, %while.body.lr.ph ], [ %add35.i, %while.body.while.body_crit_edge ]
  %dec39 = add i32 %addn_macs.374, -1
  %28 = ptrtoint ptr %xgmac_regs.i60 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xgmac_regs.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %29, i32 %add35.i7173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 0) #11, !srcloc !114
  %add.i = add i32 %add35.i7173, 4
  %30 = ptrtoint ptr %xgmac_regs.i60 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xgmac_regs.i60, align 4
  %add.ptr34.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 0) #11, !srcloc !114
  %add35.i = add i32 %add35.i7173, 8
  %tobool.not = icmp eq i32 %dec39, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end38.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mac_reg) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_set_mac_reg(ptr nocapture noundef readonly %pdata, ptr noundef %ha, ptr nocapture noundef %mac_reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ha, null
  br i1 %tobool.not, label %entry.if.end32_crit_edge, label %if.then

entry.if.end32_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

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
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then.do.body28_crit_edge, label %do.body19

if.then.do.body28_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body28

do.body19:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_set_mac_reg.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_set_mac_reg, %if.then23)) #11
          to label %do.body28 [label %if.then23], !srcloc !117

if.then23:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 8
  %16 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mac_reg, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_set_mac_reg.__UNIQUE_ID_ddebug363, ptr noundef %15, ptr noundef nonnull @.str.9, ptr noundef %addr, i32 noundef %17) #11
  br label %do.body28

do.body28:                                        ; preds = %if.then23, %do.body19, %if.then.do.body28_crit_edge
  %18 = and i8 %9, 127
  %mac_addr_hi.sroa.0.0.insert.shift.masked = zext i8 %18 to i32
  %mac_addr_hi.sroa.10.0.insert.ext68 = zext i8 %11 to i32
  %mac_addr_hi.sroa.10.0.insert.shift69 = shl nuw nsw i32 %mac_addr_hi.sroa.10.0.insert.ext68, 16
  %mac_addr_hi.sroa.0.0.insert.shift57 = shl nuw nsw i32 %mac_addr_hi.sroa.0.0.insert.shift.masked, 24
  %mac_addr_hi.sroa.0.0.extract.shift60 = or i32 %mac_addr_hi.sroa.0.0.insert.shift57, %mac_addr_hi.sroa.10.0.insert.shift69
  %19 = or i32 %mac_addr_hi.sroa.0.0.extract.shift60, -2147483648
  %phi.cast = zext i8 %7 to i32
  %phi.cast90 = zext i8 %5 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast90, 8
  %phi.cast91 = zext i8 %3 to i32
  %phi.bo92 = shl nuw nsw i32 %phi.cast91, 16
  %phi.cast94 = zext i8 %1 to i32
  %phi.bo95 = shl nuw i32 %phi.cast94, 24
  br label %if.end32

if.end32:                                         ; preds = %do.body28, %entry.if.end32_crit_edge
  %mac_addr_lo.sroa.8.0 = phi i32 [ %phi.cast, %do.body28 ], [ 0, %entry.if.end32_crit_edge ]
  %mac_addr_lo.sroa.7.0 = phi i32 [ %phi.bo, %do.body28 ], [ 0, %entry.if.end32_crit_edge ]
  %mac_addr_lo.sroa.6.0 = phi i32 [ %phi.bo92, %do.body28 ], [ 0, %entry.if.end32_crit_edge ]
  %mac_addr_lo.sroa.0.0 = phi i32 [ %phi.bo95, %do.body28 ], [ 0, %entry.if.end32_crit_edge ]
  %mac_addr_hi.sroa.0.0.insert.insert66 = phi i32 [ %19, %do.body28 ], [ 0, %entry.if.end32_crit_edge ]
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %20 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xgmac_regs, align 4
  %22 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mac_reg, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %23
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %24 = tail call i32 @llvm.bswap.i32(i32 %mac_addr_hi.sroa.0.0.insert.insert66) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %24) #11, !srcloc !114
  %25 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mac_reg, align 4
  %add = add i32 %26, 4
  store i32 %add, ptr %mac_reg, align 4
  %mac_addr_lo.sroa.6.0.insert.mask = or i32 %mac_addr_lo.sroa.7.0, %mac_addr_lo.sroa.8.0
  %mac_addr_lo.sroa.6.0.insert.insert = or i32 %mac_addr_lo.sroa.6.0.insert.mask, %mac_addr_lo.sroa.6.0
  %mac_addr_lo.sroa.0.0.insert.mask = and i32 %mac_addr_lo.sroa.6.0.insert.insert, 16777215
  %mac_addr_lo.sroa.0.0.insert.insert = or i32 %mac_addr_lo.sroa.0.0.insert.mask, %mac_addr_lo.sroa.0.0
  %27 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr34 = getelementptr i8, ptr %28, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %mac_addr_lo.sroa.0.0.insert.insert) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %29) #11, !srcloc !114
  %30 = ptrtoint ptr %mac_reg to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mac_reg, align 4
  %add35 = add i32 %31, 4
  store i32 %add35, ptr %mac_reg, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #6 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_prepare_tx_stop(ptr nocapture noundef readonly %pdata, i32 noundef %queue) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_feat = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130
  %0 = ptrtoint ptr %hw_feat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hw_feat, align 8
  %and = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and)
  %cmp = icmp ugt i32 %and, 32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %2, 100
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub15.i = sub i32 %3, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub15.i)
  %cmp16.i = icmp slt i32 %sub15.i, 0
  br i1 %cmp16.i, label %while.body.lr.ph.i, label %if.then.while.end.i_crit_edge

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.then
  %xgmac_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %mul.i = shl i32 %queue, 7
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %4 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 4352
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !115
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %8 = and i32 %7, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp3.not.i = icmp ne i32 %8, 2
  %9 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6.i = icmp eq i32 %9, 0
  %or.cond.i = and i1 %cmp3.not.i, %cmp6.i
  br i1 %or.cond.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %10, %add.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.end.i:                                      ; preds = %if.end.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub7.i = sub i32 %11, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub7.i)
  %cmp8.i = icmp slt i32 %sub7.i, 0
  br i1 %cmp8.i, label %while.end.i.cleanup_crit_edge, label %while.end.i.cleanup.sink.split_crit_edge

while.end.i.cleanup.sink.split_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

while.end.i.cleanup_crit_edge:                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %queue)
  %cmp1 = icmp ult i32 %queue, 3
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl nuw nsw i32 %queue, 3
  %add = add nuw nsw i32 %mul, 12
  br label %if.end7

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %12 = add i32 %queue, 12321
  %add4 = and i32 %12, -4
  %sub = shl i32 %queue, 3
  %rem = add i32 %sub, 8
  %mul5 = and i32 %rem, 24
  %add6 = or i32 %mul5, 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %tx_dsr.0 = phi i32 [ 12320, %if.then2 ], [ %add4, %if.else ]
  %tx_pos.0 = phi i32 [ %add, %if.then2 ], [ %add6, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add8 = add i32 %13, 100
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub937 = sub i32 %14, %add8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub937)
  %cmp1038 = icmp slt i32 %sub937, 0
  br i1 %cmp1038, label %while.body.lr.ph, label %if.end7.while.end_crit_edge

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end16.while.body_crit_edge, %while.body.lr.ph
  %15 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %tx_dsr.0
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %shr11 = lshr i32 %18, %tx_pos.0
  %and12 = and i32 %shr11, 15
  %19 = zext i32 %and12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %and12, label %if.end16 [
    i32 0, label %while.body.while.end_crit_edge
    i32 6, label %while.body.while.end_crit_edge40
  ]

while.body.while.end_crit_edge40:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end16:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 1000, i32 noundef 2) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub9 = sub i32 %20, %add8
  %cmp10 = icmp slt i32 %sub9, 0
  br i1 %cmp10, label %if.end16.while.body_crit_edge, label %if.end16.while.end_crit_edge

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %while.body.while.end_crit_edge, %while.body.while.end_crit_edge40, %if.end7.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub17 = sub i32 %21, %add8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub17)
  %cmp18 = icmp slt i32 %sub17, 0
  br i1 %cmp18, label %while.end.cleanup_crit_edge, label %while.end.cleanup.sink.split_crit_edge

while.end.cleanup.sink.split_crit_edge:           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %while.end.cleanup.sink.split_crit_edge, %while.end.i.cleanup.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.13, %while.end.i.cleanup.sink.split_crit_edge ], [ @.str.12, %while.end.cleanup.sink.split_crit_edge ]
  %22 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %23, ptr noundef nonnull %.str.13.sink, i32 noundef %queue) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %while.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_dump_tx_desc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @xgbe_dump_rx_desc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_config_queue_mapping(ptr nocapture noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %0 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_q_count, align 4
  %tc_cnt = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 25
  %2 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tc_cnt, align 4
  %.frozen = freeze i32 %1
  %.frozen314 = freeze i32 %3
  %div = udiv i32 %.frozen, %.frozen314
  %4 = mul i32 %div, %.frozen314
  %rem.decomposed = sub i32 %.frozen, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp297.not = icmp eq i32 %3, 0
  br i1 %cmp297.not, label %entry.for.end90_crit_edge, label %for.cond6.preheader.lr.ph

entry.for.end90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end90

for.cond6.preheader.lr.ph:                        ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp7294.not = icmp ugt i32 %3, %1
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.inc88.for.cond6.preheader_crit_edge, %for.cond6.preheader.lr.ph
  %queue.0301 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %queue.2, %for.inc88.for.cond6.preheader_crit_edge ]
  %i.0298 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc89, %for.inc88.for.cond6.preheader_crit_edge ]
  br i1 %cmp7294.not, label %for.cond6.preheader.for.end_crit_edge, label %do.body.lr.ph

for.cond6.preheader.for.end_crit_edge:            ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.body.lr.ph:                                    ; preds = %for.cond6.preheader
  %and24 = shl i32 %i.0298, 8
  %shl = and i32 %and24, 1792
  br label %do.body

do.body:                                          ; preds = %do.body17.do.body_crit_edge, %do.body.lr.ph
  %queue.1296 = phi i32 [ %queue.0301, %do.body.lr.ph ], [ %inc, %do.body17.do.body_crit_edge ]
  %j.0295 = phi i32 [ 0, %do.body.lr.ph ], [ %inc34, %do.body17.do.body_crit_edge ]
  %5 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_enable, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body17_crit_edge, label %do.body9

do.body.do.body17_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_queue_mapping, %if.then13)) #11
          to label %do.body17 [label %if.then13], !srcloc !117

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug379, ptr noundef %8, ptr noundef nonnull @.str.25, i32 noundef %queue.1296, i32 noundef %i.0298) #11
  br label %do.body17

do.body17:                                        ; preds = %if.then13, %do.body9, %do.body.do.body17_crit_edge
  %9 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4352
  %mul = shl i32 %queue.1296, 7
  %add.ptr19 = getelementptr i8, ptr %add.ptr, i32 %mul
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %12 = and i32 %11, -458753
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or = or i32 %13, %shl
  %14 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr28 = getelementptr i8, ptr %15, i32 4352
  %add.ptr30 = getelementptr i8, ptr %add.ptr28, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %16) #11, !srcloc !114
  %inc = add i32 %queue.1296, 1
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 125, i32 %queue.1296
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.0298, ptr %arrayidx, align 4
  %inc34 = add nuw i32 %j.0295, 1
  %exitcond.not = icmp eq i32 %inc34, %umax
  br i1 %exitcond.not, label %do.body17.for.end_crit_edge, label %do.body17.do.body_crit_edge

do.body17.do.body_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.body17.for.end_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %do.body17.for.end_crit_edge, %for.cond6.preheader.for.end_crit_edge
  %queue.1.lcssa = phi i32 [ %queue.0301, %for.cond6.preheader.for.end_crit_edge ], [ %inc, %do.body17.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0298, i32 %rem.decomposed)
  %cmp35 = icmp ult i32 %i.0298, %rem.decomposed
  br i1 %cmp35, label %do.body37, label %for.end.for.inc88_crit_edge

for.end.for.inc88_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc88

do.body37:                                        ; preds = %for.end
  %18 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_enable, align 4
  %and39 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.body37.do.body62_crit_edge, label %do.body42

do.body37.do.body62_crit_edge:                    ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body62

do.body42:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_queue_mapping, %if.then54)) #11
          to label %do.body62 [label %if.then54], !srcloc !117

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug380, ptr noundef %21, ptr noundef nonnull @.str.25, i32 noundef %queue.1.lcssa, i32 noundef %i.0298) #11
  br label %do.body62

do.body62:                                        ; preds = %if.then54, %do.body42, %do.body37.do.body62_crit_edge
  %22 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr65 = getelementptr i8, ptr %23, i32 4352
  %mul66 = shl i32 %queue.1.lcssa, 7
  %add.ptr67 = getelementptr i8, ptr %add.ptr65, i32 %mul66
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %25 = and i32 %24, -458753
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %and72 = shl i32 %i.0298, 8
  %shl73 = and i32 %and72, 1792
  %or74 = or i32 %26, %shl73
  %27 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr78 = getelementptr i8, ptr %28, i32 4352
  %add.ptr80 = getelementptr i8, ptr %add.ptr78, i32 %mul66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %or74) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %29) #11, !srcloc !114
  %inc85 = add i32 %queue.1.lcssa, 1
  %arrayidx86 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 125, i32 %queue.1.lcssa
  %30 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.0298, ptr %arrayidx86, align 4
  br label %for.inc88

for.inc88:                                        ; preds = %do.body62, %for.end.for.inc88_crit_edge
  %queue.2 = phi i32 [ %inc85, %do.body62 ], [ %queue.1.lcssa, %for.end.for.inc88_crit_edge ]
  %inc89 = add nuw i32 %i.0298, 1
  %31 = ptrtoint ptr %tc_cnt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tc_cnt, align 4
  %cmp = icmp ult i32 %inc89, %32
  br i1 %cmp, label %for.inc88.for.cond6.preheader_crit_edge, label %for.inc88.for.end90_crit_edge

for.inc88.for.end90_crit_edge:                    ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end90

for.inc88.for.cond6.preheader_crit_edge:          ; preds = %for.inc88
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond6.preheader

for.end90:                                        ; preds = %for.inc88.for.end90_crit_edge, %entry.for.end90_crit_edge
  %rx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %33 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rx_q_count, align 8
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 8)
  %div93.rhs.trunc = trunc i32 %35 to i8
  %div93.rhs.trunc.frozen = freeze i8 %div93.rhs.trunc
  %div93292 = udiv i8 8, %div93.rhs.trunc.frozen
  %div93.zext = zext i8 %div93292 to i32
  %36 = mul i8 %div93292, %div93.rhs.trunc.frozen
  %rem94293.decomposed = sub i8 8, %36
  %rem94.zext = zext i8 %rem94293.decomposed to i32
  %msg_enable102 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %xgmac_regs176 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  br label %for.cond95.outer

for.cond95.outer:                                 ; preds = %if.end175, %for.end90
  %reg.0.ph = phi i32 [ %add, %if.end175 ], [ 168, %for.end90 ]
  %i.1.ph = phi i32 [ %inc166, %if.end175 ], [ 0, %for.end90 ]
  %prio.0.ph = phi i32 [ %prio.2, %if.end175 ], [ 0, %for.end90 ]
  %umax309 = call i32 @llvm.umax.i32(i32 %i.1.ph, i32 %35)
  br label %for.cond95

for.cond95:                                       ; preds = %if.end165.for.cond95_crit_edge, %for.cond95.outer
  %reg_val.0 = phi i32 [ %or170, %if.end165.for.cond95_crit_edge ], [ 0, %for.cond95.outer ]
  %i.1 = phi i32 [ %inc166, %if.end165.for.cond95_crit_edge ], [ %i.1.ph, %for.cond95.outer ]
  %prio.0 = phi i32 [ %prio.2, %if.end165.for.cond95_crit_edge ], [ %prio.0.ph, %for.cond95.outer ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %umax309)
  %exitcond310.not = icmp eq i32 %i.1, %umax309
  br i1 %exitcond310.not, label %for.cond95.for.cond179.outer_crit_edge, label %do.body101.preheader

for.cond95.for.cond179.outer_crit_edge:           ; preds = %for.cond95
  br label %for.cond179.outer

do.body101.preheader:                             ; preds = %for.cond95
  %37 = add i32 %prio.0, %div93.zext
  br label %do.body101

do.body101:                                       ; preds = %do.end125.do.body101_crit_edge, %do.body101.preheader
  %prio.1305 = phi i32 [ %inc128, %do.end125.do.body101_crit_edge ], [ %prio.0, %do.body101.preheader ]
  %mask.0304 = phi i32 [ %or127, %do.end125.do.body101_crit_edge ], [ 0, %do.body101.preheader ]
  %38 = ptrtoint ptr %msg_enable102 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %msg_enable102, align 4
  %and103 = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body101.do.end125_crit_edge, label %do.body106

do.body101.do.end125_crit_edge:                   ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end125

do.body106:                                       ; preds = %do.body101
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_queue_mapping, %if.then118)) #11
          to label %do.end125 [label %if.then118], !srcloc !117

if.then118:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug383, ptr noundef %41, ptr noundef nonnull @.str.26, i32 noundef %prio.1305, i32 noundef %i.1) #11
  br label %do.end125

do.end125:                                        ; preds = %if.then118, %do.body106, %do.body101.do.end125_crit_edge
  %shl126 = shl nuw i32 1, %prio.1305
  %or127 = or i32 %shl126, %mask.0304
  %inc128 = add i32 %prio.1305, 1
  %arrayidx129 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 %prio.1305
  %42 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %i.1, ptr %arrayidx129, align 4
  %exitcond308.not = icmp eq i32 %inc128, %37
  br i1 %exitcond308.not, label %for.end132, label %do.end125.do.body101_crit_edge

do.end125.do.body101_crit_edge:                   ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body101

for.end132:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %rem94.zext)
  %cmp133 = icmp ult i32 %i.1, %rem94.zext
  br i1 %cmp133, label %do.body135, label %for.end132.if.end165_crit_edge

for.end132.if.end165_crit_edge:                   ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end165

do.body135:                                       ; preds = %for.end132
  %43 = ptrtoint ptr %msg_enable102 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %msg_enable102, align 4
  %and137 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %do.body135.do.end159_crit_edge, label %do.body140

do.body135.do.end159_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end159

do.body140:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug384, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_config_queue_mapping, %if.then152)) #11
          to label %do.end159 [label %if.then152], !srcloc !117

if.then152:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug384, ptr noundef %46, ptr noundef nonnull @.str.26, i32 noundef %37, i32 noundef %i.1) #11
  br label %do.end159

do.end159:                                        ; preds = %if.then152, %do.body140, %do.body135.do.end159_crit_edge
  %shl160 = shl nuw i32 1, %37
  %or161 = or i32 %shl160, %or127
  %inc163 = add i32 %37, 1
  %arrayidx164 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 %37
  %47 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %i.1, ptr %arrayidx164, align 4
  br label %if.end165

if.end165:                                        ; preds = %do.end159, %for.end132.if.end165_crit_edge
  %mask.1 = phi i32 [ %or161, %do.end159 ], [ %or127, %for.end132.if.end165_crit_edge ]
  %prio.2 = phi i32 [ %inc163, %do.end159 ], [ %37, %for.end132.if.end165_crit_edge ]
  %inc166 = add i32 %i.1, 1
  %rem167 = shl i32 %i.1, 3
  %shl168 = and i32 %rem167, 24
  %shl169 = shl i32 %mask.1, %shl168
  %or170 = or i32 %shl169, %reg_val.0
  %rem171 = and i32 %inc166, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem171)
  %tobool172.not = icmp eq i32 %rem171, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %inc166, i32 %35)
  %cmp173.not = icmp eq i32 %inc166, %35
  %or.cond = select i1 %tobool172.not, i1 true, i1 %cmp173.not
  br i1 %or.cond, label %if.end175, label %if.end165.for.cond95_crit_edge

if.end165.for.cond95_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond95

if.end175:                                        ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %xgmac_regs176 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xgmac_regs176, align 4
  %add.ptr177 = getelementptr i8, ptr %49, i32 %reg.0.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %50 = tail call i32 @llvm.bswap.i32(i32 %or170) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr177, i32 %50) #11, !srcloc !114
  %add = add i32 %reg.0.ph, 4
  br label %for.cond95.outer

for.body182:                                      ; preds = %for.cond179.outer
  %inc183 = add i32 %i.2.ph, 1
  %rem184 = shl i32 %i.2.ph, 3
  %shl185 = and i32 %rem184, 24
  %shl186 = shl nuw i32 128, %shl185
  call void @__sanitizer_cov_trace_cmp4(i32 %inc183, i32 %64)
  %exitcond313 = icmp eq i32 %inc183, %64
  br i1 %exitcond313, label %for.body182.if.end194_crit_edge, label %for.body182.1.critedge

for.body182.if.end194_crit_edge:                  ; preds = %for.body182
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

for.body182.1.critedge:                           ; preds = %for.body182
  %inc183.1 = add i32 %i.2.ph, 2
  %rem184.1 = shl i32 %inc183, 3
  %shl185.1 = and i32 %rem184.1, 24
  %shl186.1 = shl nuw i32 128, %shl185.1
  %or187.1 = or i32 %shl186.1, %shl186
  call void @__sanitizer_cov_trace_cmp4(i32 %inc183.1, i32 %64)
  %exitcond313.1 = icmp eq i32 %inc183.1, %64
  br i1 %exitcond313.1, label %for.body182.1.critedge.if.end194_crit_edge, label %for.body182.2.critedge

for.body182.1.critedge.if.end194_crit_edge:       ; preds = %for.body182.1.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

for.body182.2.critedge:                           ; preds = %for.body182.1.critedge
  %inc183.2 = add i32 %i.2.ph, 3
  %rem184.2 = shl i32 %inc183.1, 3
  %shl185.2 = and i32 %rem184.2, 24
  %shl186.2 = shl nuw i32 128, %shl185.2
  %or187.2 = or i32 %shl186.2, %or187.1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc183.2, i32 %64)
  %exitcond313.2 = icmp eq i32 %inc183.2, %64
  br i1 %exitcond313.2, label %for.body182.2.critedge.if.end194_crit_edge, label %for.body182.3.critedge

for.body182.2.critedge.if.end194_crit_edge:       ; preds = %for.body182.2.critedge
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end194

for.body182.3.critedge:                           ; preds = %for.body182.2.critedge
  call void @__sanitizer_cov_trace_pc() #13
  %rem184.3 = shl i32 %inc183.2, 3
  %shl185.3 = and i32 %rem184.3, 24
  %shl186.3 = shl nuw i32 128, %shl185.3
  %or187.3 = or i32 %shl186.3, %or187.2
  br label %if.end194

if.end194:                                        ; preds = %for.body182.3.critedge, %for.body182.2.critedge.if.end194_crit_edge, %for.body182.1.critedge.if.end194_crit_edge, %for.body182.if.end194_crit_edge
  %or187.lcssa = phi i32 [ %shl186, %for.body182.if.end194_crit_edge ], [ %or187.1, %for.body182.1.critedge.if.end194_crit_edge ], [ %or187.2, %for.body182.2.critedge.if.end194_crit_edge ], [ %or187.3, %for.body182.3.critedge ]
  %51 = ptrtoint ptr %xgmac_regs176 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %xgmac_regs176, align 4
  %add.ptr196 = getelementptr i8, ptr %52, i32 %reg.1.ph
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %53 = tail call i32 @llvm.bswap.i32(i32 %or187.lcssa) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196, i32 %53) #11, !srcloc !114
  %add197 = add i32 %reg.1.ph, 4
  br label %for.cond179.outer

for.cond179.outer:                                ; preds = %if.end194, %for.cond95.for.cond179.outer_crit_edge
  %reg.1.ph = phi i32 [ %add197, %if.end194 ], [ 4144, %for.cond95.for.cond179.outer_crit_edge ]
  %i.2.ph = phi i32 [ %64, %if.end194 ], [ 0, %for.cond95.for.cond179.outer_crit_edge ]
  %54 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rx_q_count, align 8
  %56 = call i32 @llvm.usub.sat.i32(i32 %55, i32 %i.2.ph)
  %57 = and i32 %i.2.ph, 3
  %58 = xor i32 %57, 3
  %59 = xor i32 %i.2.ph, -1
  %60 = add i32 %55, %59
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %61 = icmp eq i32 %58, 0
  %umin = call i32 @llvm.umin.i32(i32 %60, i32 %58)
  %62 = select i1 %61, i32 0, i32 %umin
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %62)
  %.not.not = icmp ugt i32 %56, %62
  %63 = add i32 %i.2.ph, 1
  %64 = add i32 %63, %62
  br i1 %.not.not, label %for.body182, label %for.end198

for.end198:                                       ; preds = %for.cond179.outer
  call void @__sanitizer_cov_trace_pc() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_config_rx_fifo_size(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  %fifo = alloca [16 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fifo) #11
  %0 = call ptr @memset(ptr %fifo, i32 255, i32 64)
  %pfcq = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127
  %pfc_rfa = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 128
  %rx_max_fifo_size.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 87
  %1 = call ptr @memset(ptr %pfcq, i32 0, i32 68)
  %2 = ptrtoint ptr %rx_max_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_max_fifo_size.i, align 8
  %rx_fifo_size.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 130, i32 16
  %4 = ptrtoint ptr %rx_fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_fifo_size.i, align 8
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 %5) #11
  %rx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %7 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %8)
  %cmp = icmp ugt i32 %8, 8
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 8)
  br i1 %cmp, label %entry.for.body.i_crit_edge, label %entry.xgbe_set_nonprio_fifos.exit_crit_edge

entry.xgbe_set_nonprio_fifos.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_set_nonprio_fifos.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 8, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %fifo, i32 %i.09.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 7, ptr %arrayidx.i, align 4
  %inc.i = add nuw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %8
  br i1 %exitcond.not.i, label %cleanup.loopexit.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cleanup.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %.neg.i = mul i32 %8, -2048
  %11 = add i32 %6, 16384
  %12 = add i32 %11, %.neg.i
  br label %xgbe_set_nonprio_fifos.exit

xgbe_set_nonprio_fifos.exit:                      ; preds = %cleanup.loopexit.i, %entry.xgbe_set_nonprio_fifos.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %entry.xgbe_set_nonprio_fifos.exit_crit_edge ], [ %12, %cleanup.loopexit.i ]
  %pfc = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 124
  %13 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pfc, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %xgbe_set_nonprio_fifos.exit.if.else_crit_edge, label %land.lhs.true

xgbe_set_nonprio_fifos.exit.if.else_crit_edge:    ; preds = %xgbe_set_nonprio_fifos.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true:                                    ; preds = %xgbe_set_nonprio_fifos.exit
  %ets = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 123
  %15 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ets, align 8
  %tobool4.not = icmp eq ptr %16, null
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %17 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata, align 8
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mtu.i.i, align 4
  %sub.i = add i32 %20, 277
  %and.i = and i32 %sub.i, -256
  %pfc_en.i.i = getelementptr inbounds %struct.ieee_pfc, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %pfc_en.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pfc_en.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.then.if.then.i_crit_edge, label %if.end.i.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp116.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp116.not.i.i, label %if.end.i.i.if.end_crit_edge, label %for.body.i.i

if.end.i.i.if.end_crit_edge:                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i.i:                                     ; preds = %if.end.i.i
  %call.i.i = tail call fastcc zeroext i1 @xgbe_is_pfc_queue(ptr noundef %pdata, i32 noundef 0) #11
  br i1 %call.i.i, label %if.end3.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end3.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 0
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end3.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %count.1.i.i = phi i32 [ 1, %if.end3.i.i ], [ 0, %for.body.i.i.for.inc.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %exitcond.not.i.i = icmp eq i32 %9, 1
  br i1 %exitcond.not.i.i, label %for.inc.i.i.xgbe_get_pfc_queues.exit.i_crit_edge, label %for.body.i.i.1

for.inc.i.i.xgbe_get_pfc_queues.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_pfc_queues.exit.i

for.body.i.i.1:                                   ; preds = %for.inc.i.i
  %call.i.i.1 = tail call fastcc zeroext i1 @xgbe_is_pfc_queue(ptr noundef %pdata, i32 noundef 1) #11
  br i1 %call.i.i.1, label %if.end3.i.i.1, label %for.body.i.i.1.for.inc.i.i.1_crit_edge

for.body.i.i.1.for.inc.i.i.1_crit_edge:           ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.1

if.end3.i.i.1:                                    ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.1 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx.i.i.1, align 4
  %inc.i.i.1 = add nuw nsw i32 %count.1.i.i, 1
  br label %for.inc.i.i.1

for.inc.i.i.1:                                    ; preds = %if.end3.i.i.1, %for.body.i.i.1.for.inc.i.i.1_crit_edge
  %count.1.i.i.1 = phi i32 [ %inc.i.i.1, %if.end3.i.i.1 ], [ %count.1.i.i, %for.body.i.i.1.for.inc.i.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %exitcond.not.i.i.1 = icmp eq i32 %9, 2
  br i1 %exitcond.not.i.i.1, label %for.inc.i.i.1.xgbe_get_pfc_queues.exit.i_crit_edge, label %for.body.i.i.2

for.inc.i.i.1.xgbe_get_pfc_queues.exit.i_crit_edge: ; preds = %for.inc.i.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_pfc_queues.exit.i

for.body.i.i.2:                                   ; preds = %for.inc.i.i.1
  %call.i.i.2 = tail call fastcc zeroext i1 @xgbe_is_pfc_queue(ptr noundef %pdata, i32 noundef 2) #11
  br i1 %call.i.i.2, label %if.end3.i.i.2, label %for.body.i.i.2.for.inc.i.i.2_crit_edge

for.body.i.i.2.for.inc.i.i.2_crit_edge:           ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.2

if.end3.i.i.2:                                    ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.2 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 2
  %25 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %arrayidx.i.i.2, align 4
  %inc.i.i.2 = add nsw i32 %count.1.i.i.1, 1
  br label %for.inc.i.i.2

for.inc.i.i.2:                                    ; preds = %if.end3.i.i.2, %for.body.i.i.2.for.inc.i.i.2_crit_edge
  %count.1.i.i.2 = phi i32 [ %inc.i.i.2, %if.end3.i.i.2 ], [ %count.1.i.i.1, %for.body.i.i.2.for.inc.i.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %exitcond.not.i.i.2 = icmp eq i32 %9, 3
  br i1 %exitcond.not.i.i.2, label %for.inc.i.i.2.xgbe_get_pfc_queues.exit.i_crit_edge, label %for.body.i.i.3

for.inc.i.i.2.xgbe_get_pfc_queues.exit.i_crit_edge: ; preds = %for.inc.i.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_pfc_queues.exit.i

for.body.i.i.3:                                   ; preds = %for.inc.i.i.2
  %call.i.i.3 = tail call fastcc zeroext i1 @xgbe_is_pfc_queue(ptr noundef %pdata, i32 noundef 3) #11
  br i1 %call.i.i.3, label %if.end3.i.i.3, label %for.body.i.i.3.for.inc.i.i.3_crit_edge

for.body.i.i.3.for.inc.i.i.3_crit_edge:           ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.3

if.end3.i.i.3:                                    ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.3 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %arrayidx.i.i.3, align 4
  %inc.i.i.3 = add nsw i32 %count.1.i.i.2, 1
  br label %for.inc.i.i.3

for.inc.i.i.3:                                    ; preds = %if.end3.i.i.3, %for.body.i.i.3.for.inc.i.i.3_crit_edge
  %count.1.i.i.3 = phi i32 [ %inc.i.i.3, %if.end3.i.i.3 ], [ %count.1.i.i.2, %for.body.i.i.3.for.inc.i.i.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %exitcond.not.i.i.3 = icmp eq i32 %9, 4
  br i1 %exitcond.not.i.i.3, label %for.inc.i.i.3.xgbe_get_pfc_queues.exit.i_crit_edge, label %for.body.i.i.4

for.inc.i.i.3.xgbe_get_pfc_queues.exit.i_crit_edge: ; preds = %for.inc.i.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_pfc_queues.exit.i

for.body.i.i.4:                                   ; preds = %for.inc.i.i.3
  %call.i.i.4 = tail call fastcc zeroext i1 @xgbe_is_pfc_queue(ptr noundef %pdata, i32 noundef 4) #11
  br i1 %call.i.i.4, label %if.end3.i.i.4, label %for.body.i.i.4.for.inc.i.i.4_crit_edge

for.body.i.i.4.for.inc.i.i.4_crit_edge:           ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.4

if.end3.i.i.4:                                    ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.4 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 4
  %27 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %arrayidx.i.i.4, align 4
  %inc.i.i.4 = add i32 %count.1.i.i.3, 1
  br label %for.inc.i.i.4

for.inc.i.i.4:                                    ; preds = %if.end3.i.i.4, %for.body.i.i.4.for.inc.i.i.4_crit_edge
  %count.1.i.i.4 = phi i32 [ %inc.i.i.4, %if.end3.i.i.4 ], [ %count.1.i.i.3, %for.body.i.i.4.for.inc.i.i.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %exitcond.not.i.i.4 = icmp eq i32 %9, 5
  br i1 %exitcond.not.i.i.4, label %for.inc.i.i.4.xgbe_get_pfc_queues.exit.i_crit_edge, label %for.body.i.i.5

for.inc.i.i.4.xgbe_get_pfc_queues.exit.i_crit_edge: ; preds = %for.inc.i.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_pfc_queues.exit.i

for.body.i.i.5:                                   ; preds = %for.inc.i.i.4
  %call.i.i.5 = tail call fastcc zeroext i1 @xgbe_is_pfc_queue(ptr noundef %pdata, i32 noundef 5) #11
  br i1 %call.i.i.5, label %if.end3.i.i.5, label %for.body.i.i.5.for.inc.i.i.5_crit_edge

for.body.i.i.5.for.inc.i.i.5_crit_edge:           ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.5

if.end3.i.i.5:                                    ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.5 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 5
  %28 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %arrayidx.i.i.5, align 4
  %inc.i.i.5 = add i32 %count.1.i.i.4, 1
  br label %for.inc.i.i.5

for.inc.i.i.5:                                    ; preds = %if.end3.i.i.5, %for.body.i.i.5.for.inc.i.i.5_crit_edge
  %count.1.i.i.5 = phi i32 [ %inc.i.i.5, %if.end3.i.i.5 ], [ %count.1.i.i.4, %for.body.i.i.5.for.inc.i.i.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %exitcond.not.i.i.5 = icmp eq i32 %9, 6
  br i1 %exitcond.not.i.i.5, label %for.inc.i.i.5.xgbe_get_pfc_queues.exit.i_crit_edge, label %for.body.i.i.6

for.inc.i.i.5.xgbe_get_pfc_queues.exit.i_crit_edge: ; preds = %for.inc.i.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_pfc_queues.exit.i

for.body.i.i.6:                                   ; preds = %for.inc.i.i.5
  %call.i.i.6 = tail call fastcc zeroext i1 @xgbe_is_pfc_queue(ptr noundef %pdata, i32 noundef 6) #11
  br i1 %call.i.i.6, label %if.end3.i.i.6, label %for.body.i.i.6.for.inc.i.i.6_crit_edge

for.body.i.i.6.for.inc.i.i.6_crit_edge:           ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i.6

if.end3.i.i.6:                                    ; preds = %for.body.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.6 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 6
  %29 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx.i.i.6, align 4
  %inc.i.i.6 = add i32 %count.1.i.i.5, 1
  br label %for.inc.i.i.6

for.inc.i.i.6:                                    ; preds = %if.end3.i.i.6, %for.body.i.i.6.for.inc.i.i.6_crit_edge
  %count.1.i.i.6 = phi i32 [ %inc.i.i.6, %if.end3.i.i.6 ], [ %count.1.i.i.5, %for.body.i.i.6.for.inc.i.i.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %exitcond.not.i.i.6 = icmp eq i32 %9, 7
  br i1 %exitcond.not.i.i.6, label %for.inc.i.i.6.xgbe_get_pfc_queues.exit.i_crit_edge, label %for.body.i.i.7

for.inc.i.i.6.xgbe_get_pfc_queues.exit.i_crit_edge: ; preds = %for.inc.i.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_pfc_queues.exit.i

for.body.i.i.7:                                   ; preds = %for.inc.i.i.6
  %call.i.i.7 = tail call fastcc zeroext i1 @xgbe_is_pfc_queue(ptr noundef %pdata, i32 noundef 7) #11
  br i1 %call.i.i.7, label %if.end3.i.i.7, label %for.body.i.i.7.xgbe_get_pfc_queues.exit.i_crit_edge

for.body.i.i.7.xgbe_get_pfc_queues.exit.i_crit_edge: ; preds = %for.body.i.i.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_get_pfc_queues.exit.i

if.end3.i.i.7:                                    ; preds = %for.body.i.i.7
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i.i.7 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 7
  %30 = ptrtoint ptr %arrayidx.i.i.7 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %arrayidx.i.i.7, align 4
  %inc.i.i.7 = add i32 %count.1.i.i.6, 1
  br label %xgbe_get_pfc_queues.exit.i

xgbe_get_pfc_queues.exit.i:                       ; preds = %if.end3.i.i.7, %for.body.i.i.7.xgbe_get_pfc_queues.exit.i_crit_edge, %for.inc.i.i.6.xgbe_get_pfc_queues.exit.i_crit_edge, %for.inc.i.i.5.xgbe_get_pfc_queues.exit.i_crit_edge, %for.inc.i.i.4.xgbe_get_pfc_queues.exit.i_crit_edge, %for.inc.i.i.3.xgbe_get_pfc_queues.exit.i_crit_edge, %for.inc.i.i.2.xgbe_get_pfc_queues.exit.i_crit_edge, %for.inc.i.i.1.xgbe_get_pfc_queues.exit.i_crit_edge, %for.inc.i.i.xgbe_get_pfc_queues.exit.i_crit_edge
  %count.1.i.i.lcssa = phi i32 [ %count.1.i.i, %for.inc.i.i.xgbe_get_pfc_queues.exit.i_crit_edge ], [ %count.1.i.i.1, %for.inc.i.i.1.xgbe_get_pfc_queues.exit.i_crit_edge ], [ %count.1.i.i.2, %for.inc.i.i.2.xgbe_get_pfc_queues.exit.i_crit_edge ], [ %count.1.i.i.3, %for.inc.i.i.3.xgbe_get_pfc_queues.exit.i_crit_edge ], [ %count.1.i.i.4, %for.inc.i.i.4.xgbe_get_pfc_queues.exit.i_crit_edge ], [ %count.1.i.i.5, %for.inc.i.i.5.xgbe_get_pfc_queues.exit.i_crit_edge ], [ %count.1.i.i.6, %for.inc.i.i.6.xgbe_get_pfc_queues.exit.i_crit_edge ], [ %inc.i.i.7, %if.end3.i.i.7 ], [ %count.1.i.i.6, %for.body.i.i.7.xgbe_get_pfc_queues.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.i.i.lcssa)
  %tobool.not.i = icmp eq i32 %count.1.i.i.lcssa, 0
  br i1 %tobool.not.i, label %xgbe_get_pfc_queues.exit.i.if.then.i_crit_edge, label %lor.lhs.false.i

xgbe_get_pfc_queues.exit.i.if.then.i_crit_edge:   ; preds = %xgbe_get_pfc_queues.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %xgbe_get_pfc_queues.exit.i
  %mul.i = mul i32 %and.i, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %mul.i)
  %cmp2.i = icmp ult i32 %retval.0.i, %mul.i
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %xgbe_get_pfc_queues.exit.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %div.i.i = udiv i32 %retval.0.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i.i)
  %tobool.not.i97.i = icmp ult i32 %div.i.i, 256
  %div17.i.i = lshr i32 %div.i.i, 8
  %dec.i.i = add nsw i32 %div17.i.i, -1
  %p_fifo.0.i.i = select i1 %tobool.not.i97.i, i32 0, i32 %dec.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp8.not.i.i, label %if.then.i.if.end_crit_edge, label %for.body.i101.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i101.i:                                  ; preds = %if.then.i
  %31 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %p_fifo.0.i.i, ptr %fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %exitcond.not.i100.i = icmp eq i32 %9, 1
  br i1 %exitcond.not.i100.i, label %for.body.i101.i.if.end_crit_edge, label %for.body.i101.i.1

for.body.i101.i.if.end_crit_edge:                 ; preds = %for.body.i101.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i101.i.1:                                ; preds = %for.body.i101.i
  %arrayidx.i98.i.1 = getelementptr inbounds i32, ptr %fifo, i32 1
  %32 = ptrtoint ptr %arrayidx.i98.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %p_fifo.0.i.i, ptr %arrayidx.i98.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %exitcond.not.i100.i.1 = icmp eq i32 %9, 2
  br i1 %exitcond.not.i100.i.1, label %for.body.i101.i.1.if.end_crit_edge, label %for.body.i101.i.2

for.body.i101.i.1.if.end_crit_edge:               ; preds = %for.body.i101.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i101.i.2:                                ; preds = %for.body.i101.i.1
  %arrayidx.i98.i.2 = getelementptr inbounds i32, ptr %fifo, i32 2
  %33 = ptrtoint ptr %arrayidx.i98.i.2 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %p_fifo.0.i.i, ptr %arrayidx.i98.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %exitcond.not.i100.i.2 = icmp eq i32 %9, 3
  br i1 %exitcond.not.i100.i.2, label %for.body.i101.i.2.if.end_crit_edge, label %for.body.i101.i.3

for.body.i101.i.2.if.end_crit_edge:               ; preds = %for.body.i101.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i101.i.3:                                ; preds = %for.body.i101.i.2
  %arrayidx.i98.i.3 = getelementptr inbounds i32, ptr %fifo, i32 3
  %34 = ptrtoint ptr %arrayidx.i98.i.3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %p_fifo.0.i.i, ptr %arrayidx.i98.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %exitcond.not.i100.i.3 = icmp eq i32 %9, 4
  br i1 %exitcond.not.i100.i.3, label %for.body.i101.i.3.if.end_crit_edge, label %for.body.i101.i.4

for.body.i101.i.3.if.end_crit_edge:               ; preds = %for.body.i101.i.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i101.i.4:                                ; preds = %for.body.i101.i.3
  %arrayidx.i98.i.4 = getelementptr inbounds i32, ptr %fifo, i32 4
  %35 = ptrtoint ptr %arrayidx.i98.i.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %p_fifo.0.i.i, ptr %arrayidx.i98.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %exitcond.not.i100.i.4 = icmp eq i32 %9, 5
  br i1 %exitcond.not.i100.i.4, label %for.body.i101.i.4.if.end_crit_edge, label %for.body.i101.i.5

for.body.i101.i.4.if.end_crit_edge:               ; preds = %for.body.i101.i.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i101.i.5:                                ; preds = %for.body.i101.i.4
  %arrayidx.i98.i.5 = getelementptr inbounds i32, ptr %fifo, i32 5
  %36 = ptrtoint ptr %arrayidx.i98.i.5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %p_fifo.0.i.i, ptr %arrayidx.i98.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %exitcond.not.i100.i.5 = icmp eq i32 %9, 6
  br i1 %exitcond.not.i100.i.5, label %for.body.i101.i.5.if.end_crit_edge, label %for.body.i101.i.6

for.body.i101.i.5.if.end_crit_edge:               ; preds = %for.body.i101.i.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i101.i.6:                                ; preds = %for.body.i101.i.5
  %arrayidx.i98.i.6 = getelementptr inbounds i32, ptr %fifo, i32 6
  %37 = ptrtoint ptr %arrayidx.i98.i.6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %p_fifo.0.i.i, ptr %arrayidx.i98.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %exitcond.not.i100.i.6 = icmp eq i32 %9, 7
  br i1 %exitcond.not.i100.i.6, label %for.body.i101.i.6.if.end_crit_edge, label %for.body.i101.i.7

for.body.i101.i.6.if.end_crit_edge:               ; preds = %for.body.i101.i.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i101.i.7:                                ; preds = %for.body.i101.i.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i98.i.7 = getelementptr inbounds i32, ptr %fifo, i32 7
  %38 = ptrtoint ptr %arrayidx.i98.i.7 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %p_fifo.0.i.i, ptr %arrayidx.i98.i.7, align 4
  br label %if.end

if.end.i:                                         ; preds = %lor.lhs.false.i
  %sub4.i = sub i32 %retval.0.i, %mul.i
  %39 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pfc, align 4
  %delay1.i.i = getelementptr inbounds %struct.ieee_pfc, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %delay1.i.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %delay1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i103.i = icmp eq i16 %42, 0
  br i1 %tobool.not.i103.i, label %if.end.i105.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %43 = lshr i16 %42, 3
  %div.i104.i = zext i16 %43 to i32
  br label %xgbe_get_pfc_delay.exit.i

if.end.i105.i:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdata, align 8
  %mtu.i.i.i = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 20
  %46 = ptrtoint ptr %mtu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mtu.i.i.i, align 4
  %add2.i.i.i = shl i32 %47, 1
  %add7.i.i = add i32 %add2.i.i.i, 14168
  br label %xgbe_get_pfc_delay.exit.i

xgbe_get_pfc_delay.exit.i:                        ; preds = %if.end.i105.i, %if.then.i.i
  %retval.0.i106.i = phi i32 [ %div.i104.i, %if.then.i.i ], [ %add7.i.i, %if.end.i105.i ]
  %sub8.i = add i32 %retval.0.i106.i, 511
  %and9.i = and i32 %sub8.i, -512
  %48 = ptrtoint ptr %pfc_rfa to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %and9.i, ptr %pfc_rfa, align 8
  %49 = tail call i32 @llvm.usub.sat.i32(i32 %and9.i, i32 %and.i) #11
  %div95.i = lshr i32 %sub.i, 8
  %sub21.i = add nsw i32 %div95.i, -1
  br label %while.cond.outer.outer.i

while.cond.outer.outer.i:                         ; preds = %if.end33.i, %xgbe_get_pfc_delay.exit.i
  %rem_fifo.0.ph.ph.i = phi i32 [ %sub4.i, %xgbe_get_pfc_delay.exit.i ], [ %sub37.i, %if.end33.i ]
  %addn_fifo.1.ph.ph.i = phi i32 [ %49, %xgbe_get_pfc_delay.exit.i ], [ %addn_fifo.2.i, %if.end33.i ]
  %i.0.ph.ph.i = phi i32 [ %9, %xgbe_get_pfc_delay.exit.i ], [ %dec.i, %if.end33.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %addn_fifo.1.ph.ph.i)
  %tobool25.not.i = icmp eq i32 %addn_fifo.1.ph.ph.i, 0
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.then29.i.while.cond.outer.i_crit_edge, %while.cond.outer.outer.i
  %rem_fifo.0.ph.i = phi i32 [ 0, %if.then29.i.while.cond.outer.i_crit_edge ], [ %rem_fifo.0.ph.ph.i, %while.cond.outer.outer.i ]
  %i.0.ph.i = phi i32 [ %dec.i, %if.then29.i.while.cond.outer.i_crit_edge ], [ %i.0.ph.ph.i, %while.cond.outer.outer.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.outer.i
  %i.0.i = phi i32 [ %dec.i, %while.body.i.while.cond.i_crit_edge ], [ %i.0.ph.i, %while.cond.outer.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.i)
  %cmp20.not.i = icmp eq i32 %i.0.i, 0
  br i1 %cmp20.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add i32 %i.0.i, -1
  %arrayidx.i112 = getelementptr i32, ptr %fifo, i32 %dec.i
  %50 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub21.i, ptr %arrayidx.i112, align 4
  %arrayidx22.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 %dec.i
  %51 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool23.not.i = icmp eq i32 %52, 0
  %or.cond.i = select i1 %tobool23.not.i, i1 true, i1 %tobool25.not.i
  br i1 %or.cond.i, label %while.body.i.while.cond.i_crit_edge, label %if.end27.i

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i

if.end27.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %addn_fifo.1.ph.ph.i, i32 %rem_fifo.0.ph.i)
  %cmp28.i = icmp ugt i32 %addn_fifo.1.ph.ph.i, %rem_fifo.0.ph.i
  br i1 %cmp28.i, label %if.then29.i, label %if.end27.i.if.end33.i_crit_edge

if.end27.i.if.end33.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then29.i:                                      ; preds = %if.end27.i
  %53 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.31, i32 noundef %dec.i) #15
  %tobool30.not.i = icmp eq i32 %rem_fifo.0.ph.i, 0
  br i1 %tobool30.not.i, label %if.then29.i.while.cond.outer.i_crit_edge, label %if.then29.i.if.end33.i_crit_edge

if.then29.i.if.end33.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33.i

if.then29.i.while.cond.outer.i_crit_edge:         ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.outer.i

if.end33.i:                                       ; preds = %if.then29.i.if.end33.i_crit_edge, %if.end27.i.if.end33.i_crit_edge
  %addn_fifo.2.i = phi i32 [ %addn_fifo.1.ph.ph.i, %if.end27.i.if.end33.i_crit_edge ], [ %rem_fifo.0.ph.i, %if.then29.i.if.end33.i_crit_edge ]
  %arrayidx.i112.le.le = getelementptr i32, ptr %fifo, i32 %dec.i
  %div3496.i = lshr i32 %addn_fifo.2.i, 8
  %add36.i = add nsw i32 %div3496.i, %sub21.i
  %55 = ptrtoint ptr %arrayidx.i112.le.le to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add36.i, ptr %arrayidx.i112.le.le, align 4
  %sub37.i = sub i32 %rem_fifo.0.ph.i, %addn_fifo.2.i
  br label %while.cond.outer.outer.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem_fifo.0.ph.i)
  %tobool38.not.i = icmp eq i32 %rem_fifo.0.ph.i, 0
  br i1 %tobool38.not.i, label %while.end.i.if.end_crit_edge, label %for.body.lr.ph.i

while.end.i.if.end_crit_edge:                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %while.end.i
  %div40.i = udiv i32 %rem_fifo.0.ph.i, %9
  %div4294.i = lshr i32 %div40.i, 8
  br label %for.body.i115

for.body.i115:                                    ; preds = %for.body.i115.for.body.i115_crit_edge, %for.body.lr.ph.i
  %i.1113.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i113, %for.body.i115.for.body.i115_crit_edge ]
  %arrayidx43.i = getelementptr i32, ptr %fifo, i32 %i.1113.i
  %56 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx43.i, align 4
  %add44.i = add i32 %57, %div4294.i
  store i32 %add44.i, ptr %arrayidx43.i, align 4
  %inc.i113 = add nuw nsw i32 %i.1113.i, 1
  %exitcond.not.i114 = icmp eq i32 %inc.i113, %9
  br i1 %exitcond.not.i114, label %for.body.i115.if.end_crit_edge, label %for.body.i115.for.body.i115_crit_edge

for.body.i115.for.body.i115_crit_edge:            ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i115

for.body.i115.if.end_crit_edge:                   ; preds = %for.body.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %xgbe_set_nonprio_fifos.exit.if.else_crit_edge
  %div.i = udiv i32 %retval.0.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div.i)
  %tobool.not.i116 = icmp ult i32 %div.i, 256
  %div17.i = lshr i32 %div.i, 8
  %dec.i117 = add nsw i32 %div17.i, -1
  %p_fifo.0.i = select i1 %tobool.not.i116, i32 0, i32 %dec.i117
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp8.not.i = icmp eq i32 %9, 0
  br i1 %cmp8.not.i, label %if.else.if.end_crit_edge, label %for.body.i122

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i122:                                    ; preds = %if.else
  %58 = ptrtoint ptr %fifo to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %p_fifo.0.i, ptr %fifo, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %exitcond.not.i121 = icmp eq i32 %9, 1
  br i1 %exitcond.not.i121, label %for.body.i122.if.end_crit_edge, label %for.body.i122.1

for.body.i122.if.end_crit_edge:                   ; preds = %for.body.i122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i122.1:                                  ; preds = %for.body.i122
  %arrayidx.i119.1 = getelementptr inbounds i32, ptr %fifo, i32 1
  %59 = ptrtoint ptr %arrayidx.i119.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %p_fifo.0.i, ptr %arrayidx.i119.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %exitcond.not.i121.1 = icmp eq i32 %9, 2
  br i1 %exitcond.not.i121.1, label %for.body.i122.1.if.end_crit_edge, label %for.body.i122.2

for.body.i122.1.if.end_crit_edge:                 ; preds = %for.body.i122.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i122.2:                                  ; preds = %for.body.i122.1
  %arrayidx.i119.2 = getelementptr inbounds i32, ptr %fifo, i32 2
  %60 = ptrtoint ptr %arrayidx.i119.2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %p_fifo.0.i, ptr %arrayidx.i119.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %exitcond.not.i121.2 = icmp eq i32 %9, 3
  br i1 %exitcond.not.i121.2, label %for.body.i122.2.if.end_crit_edge, label %for.body.i122.3

for.body.i122.2.if.end_crit_edge:                 ; preds = %for.body.i122.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i122.3:                                  ; preds = %for.body.i122.2
  %arrayidx.i119.3 = getelementptr inbounds i32, ptr %fifo, i32 3
  %61 = ptrtoint ptr %arrayidx.i119.3 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %p_fifo.0.i, ptr %arrayidx.i119.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %exitcond.not.i121.3 = icmp eq i32 %9, 4
  br i1 %exitcond.not.i121.3, label %for.body.i122.3.if.end_crit_edge, label %for.body.i122.4

for.body.i122.3.if.end_crit_edge:                 ; preds = %for.body.i122.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i122.4:                                  ; preds = %for.body.i122.3
  %arrayidx.i119.4 = getelementptr inbounds i32, ptr %fifo, i32 4
  %62 = ptrtoint ptr %arrayidx.i119.4 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %p_fifo.0.i, ptr %arrayidx.i119.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %exitcond.not.i121.4 = icmp eq i32 %9, 5
  br i1 %exitcond.not.i121.4, label %for.body.i122.4.if.end_crit_edge, label %for.body.i122.5

for.body.i122.4.if.end_crit_edge:                 ; preds = %for.body.i122.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i122.5:                                  ; preds = %for.body.i122.4
  %arrayidx.i119.5 = getelementptr inbounds i32, ptr %fifo, i32 5
  %63 = ptrtoint ptr %arrayidx.i119.5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %p_fifo.0.i, ptr %arrayidx.i119.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %9)
  %exitcond.not.i121.5 = icmp eq i32 %9, 6
  br i1 %exitcond.not.i121.5, label %for.body.i122.5.if.end_crit_edge, label %for.body.i122.6

for.body.i122.5.if.end_crit_edge:                 ; preds = %for.body.i122.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i122.6:                                  ; preds = %for.body.i122.5
  %arrayidx.i119.6 = getelementptr inbounds i32, ptr %fifo, i32 6
  %64 = ptrtoint ptr %arrayidx.i119.6 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %p_fifo.0.i, ptr %arrayidx.i119.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %9)
  %exitcond.not.i121.6 = icmp eq i32 %9, 7
  br i1 %exitcond.not.i121.6, label %for.body.i122.6.if.end_crit_edge, label %for.body.i122.7

for.body.i122.6.if.end_crit_edge:                 ; preds = %for.body.i122.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.i122.7:                                  ; preds = %for.body.i122.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i119.7 = getelementptr inbounds i32, ptr %fifo, i32 7
  %65 = ptrtoint ptr %arrayidx.i119.7 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %p_fifo.0.i, ptr %arrayidx.i119.7, align 4
  br label %if.end

if.end:                                           ; preds = %for.body.i122.7, %for.body.i122.6.if.end_crit_edge, %for.body.i122.5.if.end_crit_edge, %for.body.i122.4.if.end_crit_edge, %for.body.i122.3.if.end_crit_edge, %for.body.i122.2.if.end_crit_edge, %for.body.i122.1.if.end_crit_edge, %for.body.i122.if.end_crit_edge, %if.else.if.end_crit_edge, %for.body.i115.if.end_crit_edge, %while.end.i.if.end_crit_edge, %for.body.i101.i.7, %for.body.i101.i.6.if.end_crit_edge, %for.body.i101.i.5.if.end_crit_edge, %for.body.i101.i.4.if.end_crit_edge, %for.body.i101.i.3.if.end_crit_edge, %for.body.i101.i.2.if.end_crit_edge, %for.body.i101.i.1.if.end_crit_edge, %for.body.i101.i.if.end_crit_edge, %if.then.i.if.end_crit_edge, %if.end.i.i.if.end_crit_edge
  %66 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp8146.not = icmp eq i32 %67, 0
  br i1 %cmp8146.not, label %if.end.xgbe_config_flow_control_threshold.exit_crit_edge, label %do.body.lr.ph

if.end.xgbe_config_flow_control_threshold.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_flow_control_threshold.exit

do.body.lr.ph:                                    ; preds = %if.end
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %i.0147 = phi i32 [ 0, %do.body.lr.ph ], [ %inc, %do.body.do.body_crit_edge ]
  %68 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xgmac_regs, align 4
  %mul = shl i32 %i.0147, 7
  %add.ptr9 = getelementptr i8, ptr %69, i32 4416
  %add.ptr10 = getelementptr i8, ptr %add.ptr9, i32 %mul
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %71 = and i32 %70, -65282
  %72 = tail call i32 @llvm.bswap.i32(i32 %71)
  %arrayidx = getelementptr [16 x i32], ptr %fifo, i32 0, i32 %i.0147
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx, align 4
  %and13 = shl i32 %74, 16
  %shl = and i32 %and13, 33488896
  %or = or i32 %shl, %72
  %75 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr17 = getelementptr i8, ptr %76, i32 4416
  %add.ptr18 = getelementptr i8, ptr %add.ptr17, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %77 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %77) #11, !srcloc !114
  %inc = add nuw i32 %i.0147, 1
  %78 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %rx_q_count, align 8
  %cmp8 = icmp ult i32 %inc, %79
  br i1 %cmp8, label %do.body.do.body_crit_edge, label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %phi.cmp = icmp eq i32 %79, 0
  br i1 %phi.cmp, label %for.end.xgbe_config_flow_control_threshold.exit_crit_edge, label %for.end.for.body.i130_crit_edge

for.end.for.body.i130_crit_edge:                  ; preds = %for.end
  br label %for.body.i130

for.end.xgbe_config_flow_control_threshold.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_flow_control_threshold.exit

for.body.i130:                                    ; preds = %xgbe_queue_flow_control_threshold.exit.i.for.body.i130_crit_edge, %for.end.for.body.i130_crit_edge
  %i.06.i = phi i32 [ %inc.i132, %xgbe_queue_flow_control_threshold.exit.i.for.body.i130_crit_edge ], [ 0, %for.end.for.body.i130_crit_edge ]
  %arrayidx.i125 = getelementptr i32, ptr %fifo, i32 %i.06.i
  %80 = ptrtoint ptr %arrayidx.i125 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i125, align 4
  %add.i = shl i32 %81, 8
  %mul.i126 = add i32 %add.i, 256
  %82 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdata, align 8
  %mtu.i.i.i127 = getelementptr inbounds %struct.net_device, ptr %83, i32 0, i32 20
  %84 = ptrtoint ptr %mtu.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mtu.i.i.i127, align 4
  %sub.i.i = add i32 %85, 533
  %and.i.i = and i32 %sub.i.i, -512
  %arrayidx.i.i128 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 127, i32 %i.06.i
  %86 = ptrtoint ptr %arrayidx.i.i128 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i129 = icmp eq i32 %87, 0
  br i1 %tobool.not.i.i129, label %for.body.i130.if.else.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i130.if.else.i.i_crit_edge:              ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i130
  %88 = ptrtoint ptr %pfc_rfa to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %pfc_rfa, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %mul.i126)
  %cmp.i.i = icmp ult i32 %89, %mul.i126
  br i1 %cmp.i.i, label %if.then.i.i131, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i.i

if.then.i.i131:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add2.i.i = add i32 %89, %and.i.i
  %90 = tail call i32 @llvm.umin.i32(i32 %add2.i.i, i32 33280) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 33279, i32 %89)
  %cmp5.i.i = icmp ugt i32 %89, 33279
  %spec.store.select53.i.i = select i1 %cmp5.i.i, i32 32768, i32 %89
  br label %if.end36.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %for.body.i130.if.else.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2049, i32 %mul.i126)
  %cmp8.i.i = icmp ult i32 %mul.i126, 2049
  br i1 %cmp8.i.i, label %if.then9.i.i, label %if.end12.i.i

if.then9.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 97, i32 %i.06.i
  %91 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx10.i.i, align 4
  br label %xgbe_queue_flow_control_threshold.exit.i

if.end12.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %mul.i126)
  %cmp13.i.i = icmp ult i32 %mul.i126, 4097
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.end19.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx16.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 97, i32 %i.06.i
  %92 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %arrayidx16.i.i, align 4
  br label %xgbe_queue_flow_control_threshold.exit.i

if.end19.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i126, i32 %and.i.i)
  %cmp20.not.i.i = icmp ugt i32 %mul.i126, %and.i.i
  br i1 %cmp20.not.i.i, label %if.end26.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx23.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 97, i32 %i.06.i
  %93 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 2, ptr %arrayidx23.i.i, align 4
  br label %xgbe_queue_flow_control_threshold.exit.i

if.end26.i.i:                                     ; preds = %if.end19.i.i
  %mul.i.i = mul i32 %and.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i.i, i32 %mul.i126)
  %cmp27.not.i.i = icmp ult i32 %mul.i.i, %mul.i126
  br i1 %cmp27.not.i.i, label %if.else31.i.i, label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub29.i.i = sub i32 %mul.i126, %and.i.i
  %div94.i.i = lshr exact i32 %and.i.i, 1
  %add30.i.i = add i32 %sub29.i.i, %div94.i.i
  br label %if.end36.i.i

if.else31.i.i:                                    ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %mul32.i.i = shl i32 %and.i.i, 1
  %add33.i.i = or i32 %mul32.i.i, 512
  %add34.i.i = add i32 %add33.i.i, %and.i.i
  br label %if.end36.i.i

if.end36.i.i:                                     ; preds = %if.else31.i.i, %if.then28.i.i, %if.then.i.i131
  %rfa.0.i.i = phi i32 [ %spec.store.select53.i.i, %if.then.i.i131 ], [ %sub29.i.i, %if.then28.i.i ], [ %add33.i.i, %if.else31.i.i ]
  %rfd.0.i.i = phi i32 [ %90, %if.then.i.i131 ], [ %add30.i.i, %if.then28.i.i ], [ %add34.i.i, %if.else31.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rfa.0.i.i)
  %cmp37.i.i = icmp ult i32 %rfa.0.i.i, 1024
  %div3892.i.i = lshr i32 %rfa.0.i.i, 9
  %sub39.i.i = add nsw i32 %div3892.i.i, -2
  %cond.i.i = select i1 %cmp37.i.i, i32 0, i32 %sub39.i.i
  %arrayidx41.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 97, i32 %i.06.i
  %94 = ptrtoint ptr %arrayidx41.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %cond.i.i, ptr %arrayidx41.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %rfd.0.i.i)
  %cmp42.i.i = icmp ult i32 %rfd.0.i.i, 1024
  %div4593.i.i = lshr i32 %rfd.0.i.i, 9
  %sub46.i.i = add nsw i32 %div4593.i.i, -2
  %cond48.i.i = select i1 %cmp42.i.i, i32 0, i32 %sub46.i.i
  br label %xgbe_queue_flow_control_threshold.exit.i

xgbe_queue_flow_control_threshold.exit.i:         ; preds = %if.end36.i.i, %if.then21.i.i, %if.then14.i.i, %if.then9.i.i
  %cond48.sink.i.i = phi i32 [ %cond48.i.i, %if.end36.i.i ], [ 5, %if.then21.i.i ], [ 1, %if.then14.i.i ], [ 0, %if.then9.i.i ]
  %arrayidx50.i.i = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 98, i32 %i.06.i
  %95 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %cond48.sink.i.i, ptr %arrayidx50.i.i, align 4
  %inc.i132 = add nuw i32 %i.06.i, 1
  %96 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_q_count, align 8
  %cmp.i133 = icmp ult i32 %inc.i132, %97
  br i1 %cmp.i133, label %xgbe_queue_flow_control_threshold.exit.i.for.body.i130_crit_edge, label %xgbe_calculate_flow_control_threshold.exit

xgbe_queue_flow_control_threshold.exit.i.for.body.i130_crit_edge: ; preds = %xgbe_queue_flow_control_threshold.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i130

xgbe_calculate_flow_control_threshold.exit:       ; preds = %xgbe_queue_flow_control_threshold.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp52.not.i = icmp eq i32 %97, 0
  br i1 %cmp52.not.i, label %xgbe_calculate_flow_control_threshold.exit.xgbe_config_flow_control_threshold.exit_crit_edge, label %do.body.lr.ph.i

xgbe_calculate_flow_control_threshold.exit.xgbe_config_flow_control_threshold.exit_crit_edge: ; preds = %xgbe_calculate_flow_control_threshold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_flow_control_threshold.exit

do.body.lr.ph.i:                                  ; preds = %xgbe_calculate_flow_control_threshold.exit
  %xgmac_regs.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %i.053.i = phi i32 [ 0, %do.body.lr.ph.i ], [ %inc.i138, %do.body.i.do.body.i_crit_edge ]
  %98 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %xgmac_regs.i, align 4
  %mul.i135 = shl i32 %i.053.i, 7
  %add.ptr1.i = getelementptr i8, ptr %99, i32 4432
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 %mul.i135
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %101 = and i32 %100, -2113929217
  %102 = tail call i32 @llvm.bswap.i32(i32 %101) #11
  %arrayidx.i136 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 97, i32 %i.053.i
  %103 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i136, align 4
  %and4.i = shl i32 %104, 1
  %shl.i = and i32 %and4.i, 126
  %or.i = or i32 %shl.i, %102
  %105 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %106, i32 4432
  %add.ptr9.i = getelementptr i8, ptr %add.ptr8.i, i32 %mul.i135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %107 = tail call i32 @llvm.bswap.i32(i32 %or.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %107) #11, !srcloc !114
  %108 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %109, i32 4432
  %add.ptr18.i = getelementptr i8, ptr %add.ptr17.i, i32 %mul.i135
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %111 = and i32 %110, -32257
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #11
  %arrayidx22.i137 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 98, i32 %i.053.i
  %113 = ptrtoint ptr %arrayidx22.i137 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx22.i137, align 4
  %and23.i = shl i32 %114, 17
  %shl24.i = and i32 %and23.i, 8257536
  %or25.i = or i32 %shl24.i, %112
  %115 = ptrtoint ptr %xgmac_regs.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %xgmac_regs.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %116, i32 4432
  %add.ptr32.i = getelementptr i8, ptr %add.ptr31.i, i32 %mul.i135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %117 = tail call i32 @llvm.bswap.i32(i32 %or25.i) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %117) #11, !srcloc !114
  %inc.i138 = add nuw i32 %i.053.i, 1
  %118 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rx_q_count, align 8
  %cmp.i139 = icmp ult i32 %inc.i138, %119
  br i1 %cmp.i139, label %do.body.i.do.body.i_crit_edge, label %do.body.i.xgbe_config_flow_control_threshold.exit_crit_edge

do.body.i.xgbe_config_flow_control_threshold.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xgbe_config_flow_control_threshold.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

xgbe_config_flow_control_threshold.exit:          ; preds = %do.body.i.xgbe_config_flow_control_threshold.exit_crit_edge, %xgbe_calculate_flow_control_threshold.exit.xgbe_config_flow_control_threshold.exit_crit_edge, %for.end.xgbe_config_flow_control_threshold.exit_crit_edge, %if.end.xgbe_config_flow_control_threshold.exit_crit_edge
  %120 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pfc, align 4
  %tobool23.not = icmp eq ptr %121, null
  br i1 %tobool23.not, label %xgbe_config_flow_control_threshold.exit.do.body59_crit_edge, label %land.lhs.true24

xgbe_config_flow_control_threshold.exit.do.body59_crit_edge: ; preds = %xgbe_config_flow_control_threshold.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59

land.lhs.true24:                                  ; preds = %xgbe_config_flow_control_threshold.exit
  %ets25 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 123
  %122 = ptrtoint ptr %ets25 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %ets25, align 8
  %tobool26.not = icmp eq ptr %123, null
  br i1 %tobool26.not, label %land.lhs.true24.do.body59_crit_edge, label %land.lhs.true27

land.lhs.true24.do.body59_crit_edge:              ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59

land.lhs.true27:                                  ; preds = %land.lhs.true24
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %121, i32 0, i32 1
  %124 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %pfc_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool29.not = icmp eq i8 %125, 0
  br i1 %tobool29.not, label %land.lhs.true27.do.body59_crit_edge, label %do.body31

land.lhs.true27.do.body59_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body59

do.body31:                                        ; preds = %land.lhs.true27
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %126 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %msg_enable, align 4
  %and32 = and i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end38_crit_edge, label %if.then34

do.body31.do.end38_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

if.then34:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #13
  %128 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %pdata, align 8
  %130 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %rx_q_count, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %129, ptr noundef nonnull @.str.28, i32 noundef %131) #15
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body31.do.end38_crit_edge
  %132 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %rx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %cmp41148.not = icmp eq i32 %133, 0
  br i1 %cmp41148.not, label %do.end38.if.end72_crit_edge, label %do.end38.do.body44_crit_edge

do.end38.do.body44_crit_edge:                     ; preds = %do.end38
  br label %do.body44

do.end38.if.end72_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

do.body44:                                        ; preds = %for.inc55.do.body44_crit_edge, %do.end38.do.body44_crit_edge
  %i.1149 = phi i32 [ %inc56, %for.inc55.do.body44_crit_edge ], [ 0, %do.end38.do.body44_crit_edge ]
  %134 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %msg_enable, align 4
  %and46 = and i32 %135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %do.body44.for.inc55_crit_edge, label %if.then48

do.body44.for.inc55_crit_edge:                    ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc55

if.then48:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #13
  %136 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pdata, align 8
  %arrayidx50 = getelementptr [16 x i32], ptr %fifo, i32 0, i32 %i.1149
  %138 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx50, align 4
  %add = shl i32 %139, 8
  %mul51 = add i32 %add, 256
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %137, ptr noundef nonnull @.str.29, i32 noundef %i.1149, i32 noundef %mul51) #15
  br label %for.inc55

for.inc55:                                        ; preds = %if.then48, %do.body44.for.inc55_crit_edge
  %inc56 = add nuw i32 %i.1149, 1
  %140 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rx_q_count, align 8
  %cmp41 = icmp ult i32 %inc56, %141
  br i1 %cmp41, label %for.inc55.do.body44_crit_edge, label %for.inc55.if.end72_crit_edge

for.inc55.if.end72_crit_edge:                     ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

for.inc55.do.body44_crit_edge:                    ; preds = %for.inc55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44

do.body59:                                        ; preds = %land.lhs.true27.do.body59_crit_edge, %land.lhs.true24.do.body59_crit_edge, %xgbe_config_flow_control_threshold.exit.do.body59_crit_edge
  %msg_enable60 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  %142 = ptrtoint ptr %msg_enable60 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %msg_enable60, align 4
  %and61 = and i32 %143, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %do.body59.if.end72_crit_edge, label %if.then63

do.body59.if.end72_crit_edge:                     ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end72

if.then63:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %pdata, align 8
  %146 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rx_q_count, align 8
  %148 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %fifo, align 4
  %add67 = shl i32 %149, 8
  %mul68 = add i32 %add67, 256
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %145, ptr noundef nonnull @.str.30, i32 noundef %147, i32 noundef %mul68) #15
  br label %if.end72

if.end72:                                         ; preds = %if.then63, %do.body59.if.end72_crit_edge, %for.inc55.if.end72_crit_edge, %do.end38.if.end72_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fifo) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_config_flow_control(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pfc1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 124
  %0 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pfc1, align 4
  %call = tail call i32 @xgbe_config_tx_flow_control(ptr noundef %pdata)
  %2 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pfc1, align 4
  %rx_pause.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 96
  %4 = ptrtoint ptr %rx_pause.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_pause.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.if.then.i_crit_edge

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.else.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.else.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %pfc_en.i = getelementptr inbounds %struct.ieee_pfc, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pfc_en.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pfc_en.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not.i = icmp eq i8 %7, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %land.lhs.true.i.if.then.i_crit_edge

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %xgmac_regs.i.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %8 = ptrtoint ptr %xgmac_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xgmac_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 144
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %11 = or i32 %10, 16777216
  %12 = ptrtoint ptr %xgmac_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %13, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 %11) #11, !srcloc !114
  br label %xgbe_config_rx_flow_control.exit

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %lor.lhs.false.i.if.else.i_crit_edge
  %xgmac_regs.i9.i = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %14 = ptrtoint ptr %xgmac_regs.i9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs.i9.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %15, i32 144
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %17 = and i32 %16, -16777217
  %18 = ptrtoint ptr %xgmac_regs.i9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %xgmac_regs.i9.i, align 4
  %add.ptr3.i11.i = getelementptr i8, ptr %19, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i11.i, i32 %17) #11, !srcloc !114
  br label %xgbe_config_rx_flow_control.exit

xgbe_config_rx_flow_control.exit:                 ; preds = %if.else.i, %if.then.i
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %20 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 144
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %xgbe_config_rx_flow_control.exit.land.end_crit_edge, label %land.rhs

xgbe_config_rx_flow_control.exit.land.end_crit_edge: ; preds = %xgbe_config_rx_flow_control.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.rhs:                                         ; preds = %xgbe_config_rx_flow_control.exit
  call void @__sanitizer_cov_trace_pc() #13
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pfc_en, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool5.not = icmp eq i8 %24, 0
  %phi.bo = select i1 %tobool5.not, i32 0, i32 256
  br label %land.end

land.end:                                         ; preds = %land.rhs, %xgbe_config_rx_flow_control.exit.land.end_crit_edge
  %25 = phi i32 [ 0, %xgbe_config_rx_flow_control.exit.land.end_crit_edge ], [ %phi.bo, %land.rhs ]
  %26 = and i32 %22, -65537
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %or = or i32 %25, %27
  %28 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr8 = getelementptr i8, ptr %29, i32 144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %30 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %30) #11, !srcloc !114
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @xgbe_is_pfc_queue(ptr nocapture noundef readonly %pdata, i32 noundef %queue) unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ets = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 123
  %pfc = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 124
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %queue)
  %cmp1.not = icmp eq i32 %1, %queue
  br i1 %cmp1.not, label %if.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ets, align 8
  %arrayidx2 = getelementptr %struct.ieee_ets, ptr %3, i32 0, i32 6, i32 0
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pfc, align 4
  %pfc_en = getelementptr inbounds %struct.ieee_pfc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pfc_en to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pfc_en, align 1
  %conv3 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %conv3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %queue)
  %cmp1.not.1 = icmp eq i32 %11, %queue
  br i1 %cmp1.not.1, label %if.end.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  %12 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ets, align 8
  %arrayidx2.1 = getelementptr %struct.ieee_ets, ptr %13, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx2.1, align 1
  %conv.1 = zext i8 %15 to i32
  %16 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pfc, align 4
  %pfc_en.1 = getelementptr inbounds %struct.ieee_pfc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pfc_en.1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pfc_en.1, align 1
  %conv3.1 = zext i8 %19 to i32
  %shl.1 = shl nuw i32 1, %conv.1
  %and.1 = and i32 %shl.1, %conv3.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %if.end.1.for.inc.1_crit_edge, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.1.for.inc.1_crit_edge:                     ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 2
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %queue)
  %cmp1.not.2 = icmp eq i32 %21, %queue
  br i1 %cmp1.not.2, label %if.end.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  %22 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ets, align 8
  %arrayidx2.2 = getelementptr %struct.ieee_ets, ptr %23, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.2, align 1
  %conv.2 = zext i8 %25 to i32
  %26 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pfc, align 4
  %pfc_en.2 = getelementptr inbounds %struct.ieee_pfc, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pfc_en.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pfc_en.2, align 1
  %conv3.2 = zext i8 %29 to i32
  %shl.2 = shl nuw i32 1, %conv.2
  %and.2 = and i32 %shl.2, %conv3.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %if.end.2.for.inc.2_crit_edge, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.2.for.inc.2_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %queue)
  %cmp1.not.3 = icmp eq i32 %31, %queue
  br i1 %cmp1.not.3, label %if.end.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  %32 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ets, align 8
  %arrayidx2.3 = getelementptr %struct.ieee_ets, ptr %33, i32 0, i32 6, i32 3
  %34 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.3, align 1
  %conv.3 = zext i8 %35 to i32
  %36 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pfc, align 4
  %pfc_en.3 = getelementptr inbounds %struct.ieee_pfc, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %pfc_en.3 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %pfc_en.3, align 1
  %conv3.3 = zext i8 %39 to i32
  %shl.3 = shl nuw i32 1, %conv.3
  %and.3 = and i32 %shl.3, %conv3.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %if.end.3.for.inc.3_crit_edge, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.3.for.inc.3_crit_edge:                     ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 4
  %40 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %queue)
  %cmp1.not.4 = icmp eq i32 %41, %queue
  br i1 %cmp1.not.4, label %if.end.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.end.4:                                         ; preds = %for.inc.3
  %42 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ets, align 8
  %arrayidx2.4 = getelementptr %struct.ieee_ets, ptr %43, i32 0, i32 6, i32 4
  %44 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx2.4, align 1
  %conv.4 = zext i8 %45 to i32
  %46 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pfc, align 4
  %pfc_en.4 = getelementptr inbounds %struct.ieee_pfc, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %pfc_en.4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pfc_en.4, align 1
  %conv3.4 = zext i8 %49 to i32
  %shl.4 = shl nuw i32 1, %conv.4
  %and.4 = and i32 %shl.4, %conv3.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %if.end.4.for.inc.4_crit_edge, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.4.for.inc.4_crit_edge:                     ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 5
  %50 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %queue)
  %cmp1.not.5 = icmp eq i32 %51, %queue
  br i1 %cmp1.not.5, label %if.end.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.end.5:                                         ; preds = %for.inc.4
  %52 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ets, align 8
  %arrayidx2.5 = getelementptr %struct.ieee_ets, ptr %53, i32 0, i32 6, i32 5
  %54 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx2.5, align 1
  %conv.5 = zext i8 %55 to i32
  %56 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pfc, align 4
  %pfc_en.5 = getelementptr inbounds %struct.ieee_pfc, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %pfc_en.5 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pfc_en.5, align 1
  %conv3.5 = zext i8 %59 to i32
  %shl.5 = shl nuw i32 1, %conv.5
  %and.5 = and i32 %shl.5, %conv3.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %if.end.5.for.inc.5_crit_edge, label %if.end.5.cleanup_crit_edge

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.5.for.inc.5_crit_edge:                     ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 6
  %60 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %queue)
  %cmp1.not.6 = icmp eq i32 %61, %queue
  br i1 %cmp1.not.6, label %if.end.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.end.6:                                         ; preds = %for.inc.5
  %62 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ets, align 8
  %arrayidx2.6 = getelementptr %struct.ieee_ets, ptr %63, i32 0, i32 6, i32 6
  %64 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx2.6, align 1
  %conv.6 = zext i8 %65 to i32
  %66 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pfc, align 4
  %pfc_en.6 = getelementptr inbounds %struct.ieee_pfc, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %pfc_en.6 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pfc_en.6, align 1
  %conv3.6 = zext i8 %69 to i32
  %shl.6 = shl nuw i32 1, %conv.6
  %and.6 = and i32 %shl.6, %conv3.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %if.end.6.for.inc.6_crit_edge, label %if.end.6.cleanup_crit_edge

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.6.for.inc.6_crit_edge:                     ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 126, i32 7
  %70 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %queue)
  %cmp1.not.7 = icmp eq i32 %71, %queue
  br i1 %cmp1.not.7, label %if.end.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

if.end.7:                                         ; preds = %for.inc.6
  %72 = ptrtoint ptr %ets to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ets, align 8
  %arrayidx2.7 = getelementptr %struct.ieee_ets, ptr %73, i32 0, i32 6, i32 7
  %74 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx2.7, align 1
  %conv.7 = zext i8 %75 to i32
  %76 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pfc, align 4
  %pfc_en.7 = getelementptr inbounds %struct.ieee_pfc, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %pfc_en.7 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %pfc_en.7, align 1
  %conv3.7 = zext i8 %79 to i32
  %shl.7 = shl nuw i32 1, %conv.7
  %and.7 = and i32 %shl.7, %conv3.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %if.end.7.for.inc.7_crit_edge, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.7.for.inc.7_crit_edge:                     ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %for.inc.7, %if.end.7.cleanup_crit_edge, %if.end.6.cleanup_crit_edge, %if.end.5.cleanup_crit_edge, %if.end.4.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %if.end.cleanup_crit_edge ], [ true, %if.end.1.cleanup_crit_edge ], [ true, %if.end.2.cleanup_crit_edge ], [ true, %if.end.3.cleanup_crit_edge ], [ true, %if.end.4.cleanup_crit_edge ], [ true, %if.end.5.cleanup_crit_edge ], [ true, %if.end.6.cleanup_crit_edge ], [ true, %if.end.7.cleanup_crit_edge ], [ false, %for.inc.7 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__usecs_to_jiffies(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgbe_enable_tx_flow_control(ptr nocapture noundef readonly %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 75
  %0 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_q_count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp3.not = icmp eq i32 %1, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ets2 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 123
  %2 = ptrtoint ptr %ets2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ets2, align 8
  %pfc1 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 124
  %4 = ptrtoint ptr %pfc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pfc1, align 4
  %tobool3.not = icmp eq ptr %5, null
  %tobool4.not = icmp eq ptr %3, null
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %msg_enable = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 134
  br label %for.body

for.body:                                         ; preds = %do.end38.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end38.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 98, i32 %i.04
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %8 = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %brmerge = select i1 %8, i1 true, i1 %tobool4.not
  %.str.35.mux = select i1 %tobool.not, ptr @.str.35, ptr @.str.34
  %.mux = select i1 %tobool.not, i32 0, i32 128
  br i1 %brmerge, label %for.body.do.body_crit_edge, label %if.then5

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc zeroext i1 @xgbe_is_pfc_queue(ptr noundef %pdata, i32 noundef %i.04)
  %spec.select = select i1 %call, ptr @.str.34, ptr @.str.35
  %spec.select1 = select i1 %call, i32 128, i32 0
  br label %do.body

do.body:                                          ; preds = %if.then5, %for.body.do.body_crit_edge
  %tobool32.not = phi ptr [ %.str.35.mux, %for.body.do.body_crit_edge ], [ %spec.select, %if.then5 ]
  %ehfc.0 = phi i32 [ %.mux, %for.body.do.body_crit_edge ], [ %spec.select1, %if.then5 ]
  %9 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %xgmac_regs, align 4
  %mul = shl i32 %i.04, 7
  %add.ptr10 = getelementptr i8, ptr %10, i32 4416
  %add.ptr11 = getelementptr i8, ptr %add.ptr10, i32 %mul
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %12 = and i32 %11, 2147483647
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %or = or i32 %13, %ehfc.0
  %14 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 4416
  %add.ptr19 = getelementptr i8, ptr %add.ptr18, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %16) #11, !srcloc !114
  %17 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg_enable, align 4
  %and23 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body.do.end38_crit_edge, label %do.body26

do.body.do.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38

do.body26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgbe_enable_tx_flow_control.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@xgbe_enable_tx_flow_control, %if.then31)) #11
          to label %do.end38 [label %if.then31], !srcloc !117

if.then31:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @xgbe_enable_tx_flow_control.__UNIQUE_ID_ddebug356, ptr noundef %20, ptr noundef nonnull @.str.33, ptr noundef nonnull %tobool32.not, i32 noundef %i.04) #11
  br label %do.end38

do.end38:                                         ; preds = %if.then31, %do.body26, %do.body.do.end38_crit_edge
  %inc = add nuw i32 %i.04, 1
  %21 = ptrtoint ptr %rx_q_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rx_q_count, align 8
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %do.end38.for.body_crit_edge, label %do.end38.for.end_crit_edge

do.end38.for.end_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

do.end38.for.body_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %do.end38.for.end_crit_edge, %entry.for.end_crit_edge
  %tx_q_count = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 74
  %23 = ptrtoint ptr %tx_q_count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_q_count, align 4
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp436.not = icmp eq i32 %25, 0
  br i1 %cmp436.not, label %for.end.for.end62_crit_edge, label %for.body44.lr.ph

for.end.for.end62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body44.lr.ph:                                 ; preds = %for.end
  %xgmac_regs45 = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %26 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr46 = getelementptr i8, ptr %27, i32 112
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %29 = or i32 %28, 33619967
  %30 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr59 = getelementptr i8, ptr %31, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %29) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %exitcond.not = icmp eq i32 %25, 1
  br i1 %exitcond.not, label %for.body44.lr.ph.for.end62_crit_edge, label %for.body44.1

for.body44.lr.ph.for.end62_crit_edge:             ; preds = %for.body44.lr.ph
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body44.1:                                     ; preds = %for.body44.lr.ph
  %32 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr46.1 = getelementptr i8, ptr %33, i32 116
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.1) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %35 = or i32 %34, 33619967
  %36 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr59.1 = getelementptr i8, ptr %37, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.1, i32 %35) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %exitcond.not.1 = icmp eq i32 %25, 2
  br i1 %exitcond.not.1, label %for.body44.1.for.end62_crit_edge, label %for.body44.2

for.body44.1.for.end62_crit_edge:                 ; preds = %for.body44.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body44.2:                                     ; preds = %for.body44.1
  %38 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr46.2 = getelementptr i8, ptr %39, i32 120
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.2) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %41 = or i32 %40, 33619967
  %42 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr59.2 = getelementptr i8, ptr %43, i32 120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.2, i32 %41) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %exitcond.not.2 = icmp eq i32 %25, 3
  br i1 %exitcond.not.2, label %for.body44.2.for.end62_crit_edge, label %for.body44.3

for.body44.2.for.end62_crit_edge:                 ; preds = %for.body44.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body44.3:                                     ; preds = %for.body44.2
  %44 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr46.3 = getelementptr i8, ptr %45, i32 124
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.3) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %47 = or i32 %46, 33619967
  %48 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr59.3 = getelementptr i8, ptr %49, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.3, i32 %47) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %exitcond.not.3 = icmp eq i32 %25, 4
  br i1 %exitcond.not.3, label %for.body44.3.for.end62_crit_edge, label %for.body44.4

for.body44.3.for.end62_crit_edge:                 ; preds = %for.body44.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body44.4:                                     ; preds = %for.body44.3
  %50 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr46.4 = getelementptr i8, ptr %51, i32 128
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.4) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %53 = or i32 %52, 33619967
  %54 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr59.4 = getelementptr i8, ptr %55, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.4, i32 %53) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %exitcond.not.4 = icmp eq i32 %25, 5
  br i1 %exitcond.not.4, label %for.body44.4.for.end62_crit_edge, label %for.body44.5

for.body44.4.for.end62_crit_edge:                 ; preds = %for.body44.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body44.5:                                     ; preds = %for.body44.4
  %56 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr46.5 = getelementptr i8, ptr %57, i32 132
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.5) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %59 = or i32 %58, 33619967
  %60 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr59.5 = getelementptr i8, ptr %61, i32 132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.5, i32 %59) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %25)
  %exitcond.not.5 = icmp eq i32 %25, 6
  br i1 %exitcond.not.5, label %for.body44.5.for.end62_crit_edge, label %for.body44.6

for.body44.5.for.end62_crit_edge:                 ; preds = %for.body44.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body44.6:                                     ; preds = %for.body44.5
  %62 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr46.6 = getelementptr i8, ptr %63, i32 136
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.6) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %65 = or i32 %64, 33619967
  %66 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr59.6 = getelementptr i8, ptr %67, i32 136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.6, i32 %65) #11, !srcloc !114
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %25)
  %exitcond.not.6 = icmp eq i32 %25, 7
  br i1 %exitcond.not.6, label %for.body44.6.for.end62_crit_edge, label %for.body44.7

for.body44.6.for.end62_crit_edge:                 ; preds = %for.body44.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end62

for.body44.7:                                     ; preds = %for.body44.6
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr46.7 = getelementptr i8, ptr %69, i32 140
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.7) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %71 = or i32 %70, 33619967
  %72 = ptrtoint ptr %xgmac_regs45 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %xgmac_regs45, align 4
  %add.ptr59.7 = getelementptr i8, ptr %73, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59.7, i32 %71) #11, !srcloc !114
  br label %for.end62

for.end62:                                        ; preds = %for.body44.7, %for.body44.6.for.end62_crit_edge, %for.body44.5.for.end62_crit_edge, %for.body44.4.for.end62_crit_edge, %for.body44.3.for.end62_crit_edge, %for.body44.2.for.end62_crit_edge, %for.body44.1.for.end62_crit_edge, %for.body44.lr.ph.for.end62_crit_edge, %for.end.for.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @timecounter_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_reset_tc(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_num_tc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_set_tc_queue(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_write_rss_hash_key(ptr noundef %pdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_key = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99
  %0 = ptrtoint ptr %rss_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rss_key, align 4
  %call = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 9, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.cond.1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.1:                                     ; preds = %entry
  %incdec.ptr = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99, i32 4
  %2 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %incdec.ptr, align 4
  %call.1 = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 8, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool1.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool1.not.1, label %while.cond.2, label %while.cond.1.cleanup_crit_edge

while.cond.1.cleanup_crit_edge:                   ; preds = %while.cond.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.2:                                     ; preds = %while.cond.1
  %incdec.ptr.1 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99, i32 8
  %4 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %incdec.ptr.1, align 4
  %call.2 = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 7, i32 noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool1.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool1.not.2, label %while.cond.3, label %while.cond.2.cleanup_crit_edge

while.cond.2.cleanup_crit_edge:                   ; preds = %while.cond.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.3:                                     ; preds = %while.cond.2
  %incdec.ptr.2 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99, i32 12
  %6 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %incdec.ptr.2, align 4
  %call.3 = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 6, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %tobool1.not.3 = icmp eq i32 %call.3, 0
  br i1 %tobool1.not.3, label %while.cond.4, label %while.cond.3.cleanup_crit_edge

while.cond.3.cleanup_crit_edge:                   ; preds = %while.cond.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.4:                                     ; preds = %while.cond.3
  %incdec.ptr.3 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99, i32 16
  %8 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr.3, align 4
  %call.4 = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 5, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %tobool1.not.4 = icmp eq i32 %call.4, 0
  br i1 %tobool1.not.4, label %while.cond.5, label %while.cond.4.cleanup_crit_edge

while.cond.4.cleanup_crit_edge:                   ; preds = %while.cond.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.5:                                     ; preds = %while.cond.4
  %incdec.ptr.4 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99, i32 20
  %10 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %incdec.ptr.4, align 4
  %call.5 = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 4, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %tobool1.not.5 = icmp eq i32 %call.5, 0
  br i1 %tobool1.not.5, label %while.cond.6, label %while.cond.5.cleanup_crit_edge

while.cond.5.cleanup_crit_edge:                   ; preds = %while.cond.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.6:                                     ; preds = %while.cond.5
  %incdec.ptr.5 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99, i32 24
  %12 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr.5, align 4
  %call.6 = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 3, i32 noundef %13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %tobool1.not.6 = icmp eq i32 %call.6, 0
  br i1 %tobool1.not.6, label %while.cond.7, label %while.cond.6.cleanup_crit_edge

while.cond.6.cleanup_crit_edge:                   ; preds = %while.cond.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.7:                                     ; preds = %while.cond.6
  %incdec.ptr.6 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99, i32 28
  %14 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %incdec.ptr.6, align 4
  %call.7 = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 2, i32 noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %tobool1.not.7 = icmp eq i32 %call.7, 0
  br i1 %tobool1.not.7, label %while.cond.8, label %while.cond.7.cleanup_crit_edge

while.cond.7.cleanup_crit_edge:                   ; preds = %while.cond.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.8:                                     ; preds = %while.cond.7
  %incdec.ptr.7 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99, i32 32
  %16 = ptrtoint ptr %incdec.ptr.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr.7, align 4
  %call.8 = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 1, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.8)
  %tobool1.not.8 = icmp eq i32 %call.8, 0
  br i1 %tobool1.not.8, label %while.cond.9, label %while.cond.8.cleanup_crit_edge

while.cond.8.cleanup_crit_edge:                   ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.cond.9:                                     ; preds = %while.cond.8
  call void @__sanitizer_cov_trace_pc() #13
  %incdec.ptr.8 = getelementptr %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 99, i32 36
  %18 = ptrtoint ptr %incdec.ptr.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %incdec.ptr.8, align 4
  %call.9 = tail call fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef 1, i32 noundef 0, i32 noundef %19)
  br label %cleanup

cleanup:                                          ; preds = %while.cond.9, %while.cond.8.cleanup_crit_edge, %while.cond.7.cleanup_crit_edge, %while.cond.6.cleanup_crit_edge, %while.cond.5.cleanup_crit_edge, %while.cond.4.cleanup_crit_edge, %while.cond.3.cleanup_crit_edge, %while.cond.2.cleanup_crit_edge, %while.cond.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.1, %while.cond.1.cleanup_crit_edge ], [ %call.2, %while.cond.2.cleanup_crit_edge ], [ %call.3, %while.cond.3.cleanup_crit_edge ], [ %call.4, %while.cond.4.cleanup_crit_edge ], [ %call.5, %while.cond.5.cleanup_crit_edge ], [ %call.6, %while.cond.6.cleanup_crit_edge ], [ %call.7, %while.cond.7.cleanup_crit_edge ], [ %call.8, %while.cond.8.cleanup_crit_edge ], [ %call.9, %while.cond.9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xgbe_write_rss_reg(ptr noundef %pdata, i32 noundef %type, i32 noundef %index, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %rss_mutex = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 28
  tail call void @mutex_lock_nested(ptr noundef %rss_mutex, i32 noundef 0) #11
  %xgmac_regs = getelementptr inbounds %struct.xgbe_prv_data, ptr %pdata, i32 0, i32 9
  %0 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3208
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 3212
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %val) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %6) #11, !srcloc !114
  %7 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr4 = getelementptr i8, ptr %8, i32 3208
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %10 = and i32 %9, -16711681
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %and8 = shl i32 %index, 8
  %shl = and i32 %and8, 65280
  %or = or i32 %11, %shl
  %12 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 3208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %14) #11, !srcloc !114
  %15 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr16 = getelementptr i8, ptr %16, i32 3208
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %18 = and i32 %17, -67108865
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %and20 = shl i32 %type, 2
  %shl21 = and i32 %and20, 4
  %or22 = or i32 %19, %shl21
  %20 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 3208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  %22 = tail call i32 @llvm.bswap.i32(i32 %or22) #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %22) #11, !srcloc !114
  %23 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr32 = getelementptr i8, ptr %24, i32 3208
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %26 = and i32 %25, -33554433
  %27 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr40 = getelementptr i8, ptr %28, i32 3208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %26) #11, !srcloc !114
  %29 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr46 = getelementptr i8, ptr %30, i32 3208
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %32 = or i32 %31, 16777216
  %33 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr54 = getelementptr i8, ptr %34, i32 3208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !113
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 %32) #11, !srcloc !114
  br label %while.body

while.body:                                       ; preds = %if.end65.while.body_crit_edge, %if.end
  %dec87 = phi i32 [ 999, %if.end ], [ %dec, %if.end65.while.body_crit_edge ]
  %35 = ptrtoint ptr %xgmac_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xgmac_regs, align 4
  %add.ptr59 = getelementptr i8, ptr %36, i32 3208
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #11, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !116
  %38 = and i32 %37, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool63.not = icmp eq i32 %38, 0
  br i1 %tobool63.not, label %while.body.unlock_crit_edge, label %if.end65

while.body.unlock_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

if.end65:                                         ; preds = %while.body
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #11
  %dec = add nsw i32 %dec87, -1
  %tobool57.not = icmp eq i32 %dec87, 0
  br i1 %tobool57.not, label %if.end65.unlock_crit_edge, label %if.end65.while.body_crit_edge

if.end65.while.body_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

if.end65.unlock_crit_edge:                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #13
  br label %unlock

unlock:                                           ; preds = %if.end65.unlock_crit_edge, %while.body.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ -16, %entry.unlock_crit_edge ], [ -16, %if.end65.unlock_crit_edge ], [ 0, %while.body.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %rss_mutex) #11
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readonly willreturn }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !44, !46, !48, !49, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !73, !75, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102}
!llvm.named.register.sp = !{!103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 943, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @xgbe_set_promiscuous_mode.__UNIQUE_ID_ddebug361, !1, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 966, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @xgbe_set_all_multicast_mode.__UNIQUE_ID_ddebug362, !9, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 992, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @xgbe_set_mac_reg.__UNIQUE_ID_ddebug363, !13, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 1341, i32 29}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 1318, i32 29}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 3278, i32 8}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 3235, i32 8}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 3349, i32 8}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 1731, i32 4}
!28 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xgbe_dev_xmit.__UNIQUE_ID_ddebug364, !27, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 1751, i32 4}
!32 = !{ptr @xgbe_dev_xmit.__UNIQUE_ID_ddebug365, !31, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/linux/netdevice.h", i32 4690, i32 9}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2019, i32 2}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @xgbe_dev_read.__UNIQUE_ID_ddebug366, !36, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2030, i32 4}
!41 = !{ptr @xgbe_dev_read.__UNIQUE_ID_ddebug367, !40, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 3476, i32 29}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 459, i32 7}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2616, i32 4}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug379, !47, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!50 = !{ptr @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug380, !51, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2624, i32 4}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2642, i32 4}
!54 = !{ptr @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug383, !53, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!55 = !{ptr @xgbe_config_queue_mapping.__UNIQUE_ID_ddebug384, !56, !"__UNIQUE_ID_ddebug384", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2649, i32 4}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2552, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2586, i32 3}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2589, i32 4}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2593, i32 3}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2519, i32 9}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 576, i32 3}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @xgbe_enable_tx_flow_control.__UNIQUE_ID_ddebug356, !68, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!71 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 1537, i32 7}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 1555, i32 29}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2697, i32 3}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @xgbe_config_tc.__UNIQUE_ID_ddebug385, !78, !"__UNIQUE_ID_ddebug385", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2741, i32 3}
!83 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @xgbe_config_dcb_tc.__UNIQUE_ID_ddebug386, !82, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2754, i32 4}
!87 = !{ptr @xgbe_config_dcb_tc.__UNIQUE_ID_ddebug387, !86, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 2763, i32 4}
!90 = !{ptr @xgbe_config_dcb_tc.__UNIQUE_ID_ddebug392, !89, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 507, i32 2}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @xgbe_enable_vxlan.__UNIQUE_ID_ddebug352, !92, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 524, i32 2}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @xgbe_disable_vxlan.__UNIQUE_ID_ddebug353, !96, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/amd/xgbe/xgbe-dev.c", i32 488, i32 2}
!101 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @xgbe_set_vxlan_id.__UNIQUE_ID_ddebug351, !100, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!103 = !{!"sp"}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2153873335}
!114 = !{i64 6331213}
!115 = !{i64 6331631}
!116 = !{i64 2153871980}
!117 = !{i64 2148461458, i64 2148461463, i64 2148461476, i64 2148461520, i64 2148461554, i64 2148461575}
!118 = !{i64 6330793}
!119 = !{i64 2153871368}
!120 = !{i64 2153872785}
!121 = !{i64 6330593}
!122 = !{i64 2156929292}
!123 = !{i64 2156930537}
!124 = !{i64 2156931212}
!125 = !{i64 2156883068}
!126 = !{i64 2156885374}
!127 = !{i64 2156886283}
!128 = !{i64 2156895864}
