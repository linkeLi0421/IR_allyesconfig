; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/cpsw_ethtool.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_ethtool.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpsw_stats = type { [32 x i8], i32, i32, i32 }
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.cpsw_vector = type { ptr, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_wr_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.cpdma_chan_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.ethtool_regs = type { i32, i32, i32, [0 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.24 }
%union.anon.24 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.23 }
%union.anon.23 = type { %struct.raw_spinlock }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [72 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [104 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_mem_info = type { i32, i32 }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.ethtool_ringparam = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32, [3 x i32], i32, [3 x i32] }
%struct.cpts = type { ptr, ptr, i32, i32, %struct.ptp_clock_info, ptr, %struct.spinlock, i32, %struct.cyclecounter, %struct.timecounter, i32, ptr, %struct.list_head, %struct.list_head, [32 x %struct.cpts_event], i32, %struct.sk_buff_head, i64, i32, %struct.mutex, i8, %struct.completion, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cpts_event = type { %struct.list_head, i32, i32, i32, i64 }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }

@cpsw_set_coalesce._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 218, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Set coalesce to %d usecs.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpsw_set_coalesce\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/ethernet/ti/cpsw_ethtool.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpsw_set_coalesce._entry_ptr = internal global ptr @cpsw_set_coalesce._entry, section ".printk_index", align 4
@cpsw_gstrings_stats = internal constant { [34 x %struct.cpsw_stats], [360 x i8] } { [34 x %struct.cpsw_stats] [%struct.cpsw_stats { [32 x i8] c"Good Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 0 }, %struct.cpsw_stats { [32 x i8] c"Broadcast Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 4 }, %struct.cpsw_stats { [32 x i8] c"Multicast Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 8 }, %struct.cpsw_stats { [32 x i8] c"Pause Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 12 }, %struct.cpsw_stats { [32 x i8] c"Rx CRC Errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 16 }, %struct.cpsw_stats { [32 x i8] c"Rx Align/Code Errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 20 }, %struct.cpsw_stats { [32 x i8] c"Oversize Rx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 24 }, %struct.cpsw_stats { [32 x i8] c"Rx Jabbers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 28 }, %struct.cpsw_stats { [32 x i8] c"Undersize (Short) Rx Frames\00\00\00\00\00", i32 0, i32 4, i32 32 }, %struct.cpsw_stats { [32 x i8] c"Rx Fragments\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 36 }, %struct.cpsw_stats { [32 x i8] c"Rx Octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 48 }, %struct.cpsw_stats { [32 x i8] c"Good Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 52 }, %struct.cpsw_stats { [32 x i8] c"Broadcast Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 56 }, %struct.cpsw_stats { [32 x i8] c"Multicast Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 60 }, %struct.cpsw_stats { [32 x i8] c"Pause Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 64 }, %struct.cpsw_stats { [32 x i8] c"Deferred Tx Frames\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 68 }, %struct.cpsw_stats { [32 x i8] c"Collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 72 }, %struct.cpsw_stats { [32 x i8] c"Single Collision Tx Frames\00\00\00\00\00\00", i32 0, i32 4, i32 76 }, %struct.cpsw_stats { [32 x i8] c"Multiple Collision Tx Frames\00\00\00\00", i32 0, i32 4, i32 80 }, %struct.cpsw_stats { [32 x i8] c"Excessive Collisions\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 84 }, %struct.cpsw_stats { [32 x i8] c"Late Collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 88 }, %struct.cpsw_stats { [32 x i8] c"Tx Underrun\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 92 }, %struct.cpsw_stats { [32 x i8] c"Carrier Sense Errors\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 96 }, %struct.cpsw_stats { [32 x i8] c"Tx Octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 100 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 64 Octet Frames\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 104 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 65-127 Octet Frames\00\00\00\00\00", i32 0, i32 4, i32 108 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 128-255 Octet Frames\00\00\00\00", i32 0, i32 4, i32 112 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 256-511 Octet Frames\00\00\00\00", i32 0, i32 4, i32 116 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 512-1023 Octet Frames\00\00\00", i32 0, i32 4, i32 120 }, %struct.cpsw_stats { [32 x i8] c"Rx + Tx 1024-Up Octet Frames\00\00\00\00", i32 0, i32 4, i32 124 }, %struct.cpsw_stats { [32 x i8] c"Net Octets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 128 }, %struct.cpsw_stats { [32 x i8] c"Rx Start of Frame Overruns\00\00\00\00\00\00", i32 0, i32 4, i32 132 }, %struct.cpsw_stats { [32 x i8] c"Rx Middle of Frame Overruns\00\00\00\00\00", i32 0, i32 4, i32 136 }, %struct.cpsw_stats { [32 x i8] c"Rx DMA Overruns\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 4, i32 140 }], [360 x i8] zeroinitializer }, align 32
@cpsw_gstrings_ch_stats = internal constant { [13 x %struct.cpsw_stats], [132 x i8] } { [13 x %struct.cpsw_stats] [%struct.cpsw_stats { [32 x i8] c"head_enqueue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 0 }, %struct.cpsw_stats { [32 x i8] c"tail_enqueue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 4 }, %struct.cpsw_stats { [32 x i8] c"pad_enqueue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 8 }, %struct.cpsw_stats { [32 x i8] c"misqueued\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 12 }, %struct.cpsw_stats { [32 x i8] c"desc_alloc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 16 }, %struct.cpsw_stats { [32 x i8] c"pad_alloc_fail\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 20 }, %struct.cpsw_stats { [32 x i8] c"runt_receive_buf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 24 }, %struct.cpsw_stats { [32 x i8] c"runt_transmit_buf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 28 }, %struct.cpsw_stats { [32 x i8] c"empty_dequeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 32 }, %struct.cpsw_stats { [32 x i8] c"busy_dequeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 36 }, %struct.cpsw_stats { [32 x i8] c"good_dequeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 40 }, %struct.cpsw_stats { [32 x i8] c"requeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 44 }, %struct.cpsw_stats { [32 x i8] c"teardown_dequeue\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 4, i32 48 }], [132 x i8] zeroinitializer }, align 32
@cpsw_slave_index = external dso_local local_unnamed_addr global ptr, align 4
@cpsw_ethtool_op_begin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 369, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ethtool begin failed %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpsw_ethtool_op_begin\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cpsw_ethtool_op_begin._entry_ptr = internal global ptr @cpsw_ethtool_op_begin._entry, section ".printk_index", align 4
@cpsw_ethtool_op_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 383, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ethtool complete failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpsw_ethtool_op_complete\00", [39 x i8] zeroinitializer }, align 32
@cpsw_ethtool_op_complete._entry_ptr = internal global ptr @cpsw_ethtool_op_complete._entry, section ".printk_index", align 4
@cpsw_set_channels_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 631, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot set real number of tx queues\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpsw_set_channels_common\00", [39 x i8] zeroinitializer }, align 32
@cpsw_set_channels_common._entry_ptr = internal global ptr @cpsw_set_channels_common._entry, section ".printk_index", align 4
@cpsw_set_channels_common._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 637, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot set real number of rx queues\0A\00", [59 x i8] zeroinitializer }, align 32
@cpsw_set_channels_common._entry_ptr.14 = internal global ptr @cpsw_set_channels_common._entry.12, section ".printk_index", align 4
@cpsw_set_channels_common._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.2, i32 655, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cannot update channels number, closing device\0A\00", [49 x i8] zeroinitializer }, align 32
@cpsw_set_channels_common._entry_ptr.17 = internal global ptr @cpsw_set_channels_common._entry.15, section ".printk_index", align 4
@cpsw_set_ringparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 716, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cannot set ring params, closing device\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cpsw_set_ringparam\00", [45 x i8] zeroinitializer }, align 32
@cpsw_set_ringparam._entry_ptr = internal global ptr @cpsw_set_ringparam._entry, section ".printk_index", align 4
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s DMA chan %ld: %s\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Rx\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"Tx\00", [29 x i8] zeroinitializer }, align 32
@cpsw_check_ch_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 518, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Maximum one tx/rx queue is allowed\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cpsw_check_ch_settings\00", [41 x i8] zeroinitializer }, align 32
@cpsw_check_ch_settings._entry_ptr = internal global ptr @cpsw_check_ch_settings._entry, section ".printk_index", align 4
@cpsw_update_channels_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 568, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"created new %d %s channel\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpsw_update_channels_res\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@cpsw_update_channels_res._entry_ptr = internal global ptr @cpsw_update_channels_res._entry, section ".printk_index", align 4
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@cpsw_update_channels_res._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.2, i32 580, ptr @.str.27, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"destroyed %d %s channel\0A\00", [39 x i8] zeroinitializer }, align 32
@cpsw_update_channels_res._entry_ptr.32 = internal global ptr @cpsw_update_channels_res._entry.30, section ".printk_index", align 4
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 218, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [20 x i8] c"cpsw_gstrings_stats\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 85, i32 32 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"cpsw_gstrings_ch_stats\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 122, i32 32 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 369, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 383, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 631, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 637, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 655, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 716, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 248, i32 5 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 248, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 248, i32 44 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 518, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 567, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [42 x i8] c"../drivers/net/ethernet/ti/cpsw_ethtool.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 579, i32 3 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @cpsw_check_ch_settings._entry, ptr @cpsw_check_ch_settings._entry_ptr, ptr @cpsw_ethtool_op_begin._entry, ptr @cpsw_ethtool_op_begin._entry_ptr, ptr @cpsw_ethtool_op_complete._entry, ptr @cpsw_ethtool_op_complete._entry_ptr, ptr @cpsw_set_channels_common._entry, ptr @cpsw_set_channels_common._entry.12, ptr @cpsw_set_channels_common._entry.15, ptr @cpsw_set_channels_common._entry_ptr, ptr @cpsw_set_channels_common._entry_ptr.14, ptr @cpsw_set_channels_common._entry_ptr.17, ptr @cpsw_set_coalesce._entry, ptr @cpsw_set_coalesce._entry_ptr, ptr @cpsw_set_ringparam._entry, ptr @cpsw_set_ringparam._entry_ptr, ptr @cpsw_update_channels_res._entry, ptr @cpsw_update_channels_res._entry.30, ptr @cpsw_update_channels_res._entry_ptr, ptr @cpsw_update_channels_res._entry_ptr.32, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @cpsw_gstrings_stats, ptr @cpsw_gstrings_ch_stats, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_coalesce._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_gstrings_stats to i32), i32 1496, i32 1856, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_gstrings_ch_stats to i32), i32 572, i32 704, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ethtool_op_begin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ethtool_op_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_channels_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_channels_common._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_channels_common._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_set_ringparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_check_ch_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_update_channels_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_update_channels_res._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_get_msglevel(ptr nocapture noundef readonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_enable, align 8
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @cpsw_set_msglevel(ptr nocapture noundef writeonly %ndev, i32 noundef %value) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %0 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %value, ptr %msg_enable, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_get_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %coal_intvl = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %coal_intvl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %coal_intvl, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %4 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_coalesce(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readonly %coal, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs, align 4
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wr_regs, align 4
  %int_control = getelementptr inbounds %struct.cpsw_wr_regs, ptr %5, i32 0, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %int_control) #13, !srcloc !73
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !74
  %bus_freq_mhz = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %bus_freq_mhz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bus_freq_mhz, align 8
  %mul = shl i32 %9, 2
  %10 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %7, -4130816
  br label %do.body29

if.end:                                           ; preds = %entry
  %12 = tail call i32 @llvm.umax.i32(i32 %3, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %12)
  %cmp7 = icmp ugt i32 %12, 500
  br i1 %cmp7, label %if.then8, label %if.end.if.end18_crit_edge

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %mul)
  %cmp9 = icmp ult i32 %mul, 1024
  br i1 %cmp9, label %if.then10, label %if.then8.if.end18_crit_edge

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #15
  %div.rhs.trunc = trunc i32 %mul to i16
  %div71 = udiv i16 2047, %div.rhs.trunc
  %div.zext = zext i16 %div71 to i32
  %mul11 = mul nuw nsw i32 %mul, %div.zext
  %mul12 = mul nuw nsw i32 %div.zext, 500
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %mul12)
  %phi.bo = mul nuw nsw i32 %div.zext, 1000
  br label %if.end18

if.end18:                                         ; preds = %if.then10, %if.then8.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %addnl_dvdr.0 = phi i32 [ 1000, %if.end.if.end18_crit_edge ], [ %phi.bo, %if.then10 ], [ 1000, %if.then8.if.end18_crit_edge ]
  %coal_intvl.0 = phi i32 [ %12, %if.end.if.end18_crit_edge ], [ %13, %if.then10 ], [ 500, %if.then8.if.end18_crit_edge ]
  %prescale.0 = phi i32 [ %mul, %if.end.if.end18_crit_edge ], [ %mul11, %if.then10 ], [ %mul, %if.then8.if.end18_crit_edge ]
  %div20 = udiv i32 %addnl_dvdr.0, %coal_intvl.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !75
  tail call void @arm_heavy_mb() #13
  %14 = tail call i32 @llvm.bswap.i32(i32 %div20)
  %15 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %wr_regs, align 4
  %rx_imax = getelementptr inbounds %struct.cpsw_wr_regs, ptr %16, i32 0, i32 14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %rx_imax, i32 %14) #13, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !77
  tail call void @arm_heavy_mb() #13
  %17 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wr_regs, align 4
  %tx_imax = getelementptr inbounds %struct.cpsw_wr_regs, ptr %18, i32 0, i32 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_imax, i32 %14) #13, !srcloc !76
  %or = and i32 %7, -4130816
  %and27 = and i32 %prescale.0, 2047
  %and26 = or i32 %or, %and27
  %or28 = or i32 %and26, 4128768
  br label %do.body29

do.body29:                                        ; preds = %if.end18, %if.then
  %coal_intvl.1 = phi i32 [ %coal_intvl.0, %if.end18 ], [ %3, %if.then ]
  %int_ctrl.0 = phi i32 [ %or28, %if.end18 ], [ %and, %if.then ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !78
  tail call void @arm_heavy_mb() #13
  %19 = tail call i32 @llvm.bswap.i32(i32 %int_ctrl.0)
  %20 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wr_regs, align 4
  %int_control33 = getelementptr inbounds %struct.cpsw_wr_regs, ptr %21, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %int_control33, i32 %19) #13, !srcloc !76
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and35 = and i32 %23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body29.do.end45_crit_edge, label %land.lhs.true

do.body29.do.end45_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

land.lhs.true:                                    ; preds = %do.body29
  %call37 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %land.lhs.true.do.end45_crit_edge, label %do.end42

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

do.end42:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef %coal_intvl.1) #16
  br label %do.end45

do.end45:                                         ; preds = %do.end42, %land.lhs.true.do.end45_crit_edge, %do.body29.do.end45_crit_edge
  %coal_intvl46 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %coal_intvl46 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %coal_intvl.1, ptr %coal_intvl46, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_get_sset_count(ptr nocapture noundef readonly %ndev, i32 noundef %sset) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 25
  %2 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ch_num, align 8
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_ch_num, align 4
  %add = add i32 %5, %3
  %mul = mul i32 %add, 13
  %add2 = add i32 %mul, 34
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add2, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_get_strings(ptr nocapture noundef readonly %ndev, i32 noundef %stringset, ptr noundef %data) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %entry.for.body_crit_edge, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.023 = phi ptr [ %add.ptr, %for.body.for.body_crit_edge ], [ %data, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [34 x %struct.cpsw_stats], ptr @cpsw_gstrings_stats, i32 0, i32 %i.024
  %2 = call ptr @memcpy(ptr %p.023, ptr %arrayidx, i32 32)
  %add.ptr = getelementptr i8, ptr %p.023, i32 32
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, 34
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_ch_num, align 8
  %mul.i = mul i32 %4, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp5.i = icmp sgt i32 %mul.i, 0
  br i1 %cmp5.i, label %for.end.for.body.i_crit_edge, label %for.end.cpsw_add_ch_strings.exit_crit_edge

for.end.cpsw_add_ch_strings.exit_crit_edge:       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpsw_add_ch_strings.exit

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %p.1 = phi ptr [ %add.ptr.i5, %for.body.i.for.body.i_crit_edge ], [ %add.ptr, %for.end.for.body.i_crit_edge ]
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %i.06.i.frozen = freeze i32 %i.06.i
  %div.i = udiv i32 %i.06.i.frozen, 13
  %5 = mul i32 %div.i, 13
  %rem.i.decomposed = sub i32 %i.06.i.frozen, %5
  %arrayidx.i = getelementptr [13 x %struct.cpsw_stats], ptr @cpsw_gstrings_ch_stats, i32 0, i32 %rem.i.decomposed
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.1, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %div.i, ptr noundef %arrayidx.i) #13
  %add.ptr.i5 = getelementptr i8, ptr %p.1, i32 32
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %mul.i
  br i1 %exitcond.not.i, label %for.body.i.cpsw_add_ch_strings.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.cpsw_add_ch_strings.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpsw_add_ch_strings.exit

cpsw_add_ch_strings.exit:                         ; preds = %for.body.i.cpsw_add_ch_strings.exit_crit_edge, %for.end.cpsw_add_ch_strings.exit_crit_edge
  %p.2 = phi ptr [ %add.ptr, %for.end.cpsw_add_ch_strings.exit_crit_edge ], [ %add.ptr.i5, %for.body.i.cpsw_add_ch_strings.exit_crit_edge ]
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_ch_num, align 4
  %mul.i6 = mul i32 %7, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i6)
  %cmp5.i7 = icmp sgt i32 %mul.i6, 0
  br i1 %cmp5.i7, label %cpsw_add_ch_strings.exit.for.body.i17_crit_edge, label %cpsw_add_ch_strings.exit.sw.epilog_crit_edge

cpsw_add_ch_strings.exit.sw.epilog_crit_edge:     ; preds = %cpsw_add_ch_strings.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

cpsw_add_ch_strings.exit.for.body.i17_crit_edge:  ; preds = %cpsw_add_ch_strings.exit
  br label %for.body.i17

for.body.i17:                                     ; preds = %for.body.i17.for.body.i17_crit_edge, %cpsw_add_ch_strings.exit.for.body.i17_crit_edge
  %p.3 = phi ptr [ %add.ptr.i14, %for.body.i17.for.body.i17_crit_edge ], [ %p.2, %cpsw_add_ch_strings.exit.for.body.i17_crit_edge ]
  %i.06.i9 = phi i32 [ %inc.i15, %for.body.i17.for.body.i17_crit_edge ], [ 0, %cpsw_add_ch_strings.exit.for.body.i17_crit_edge ]
  %i.06.i9.frozen = freeze i32 %i.06.i9
  %div.i11 = udiv i32 %i.06.i9.frozen, 13
  %8 = mul i32 %div.i11, 13
  %rem.i10.decomposed = sub i32 %i.06.i9.frozen, %8
  %arrayidx.i12 = getelementptr [13 x %struct.cpsw_stats], ptr @cpsw_gstrings_ch_stats, i32 0, i32 %rem.i10.decomposed
  %call.i13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.3, i32 noundef 32, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, i32 noundef %div.i11, ptr noundef %arrayidx.i12) #13
  %add.ptr.i14 = getelementptr i8, ptr %p.3, i32 32
  %inc.i15 = add nuw nsw i32 %i.06.i9, 1
  %exitcond.not.i16 = icmp eq i32 %inc.i15, %mul.i6
  br i1 %exitcond.not.i16, label %for.body.i17.sw.epilog_crit_edge, label %for.body.i17.for.body.i17_crit_edge

for.body.i17.for.body.i17_crit_edge:              ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i17

for.body.i17.sw.epilog_crit_edge:                 ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.i17.sw.epilog_crit_edge, %cpsw_add_ch_strings.exit.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_get_ethtool_stats(ptr nocapture noundef readonly %ndev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) local_unnamed_addr #4 align 64 {
entry:
  %ch_stats = alloca %struct.cpdma_chan_stats, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %ch_stats) #13
  %2 = call ptr @memset(ptr %ch_stats, i32 255, i32 52)
  %hw_stats = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 6
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 25
  %3 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_ch_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp678 = icmp sgt i32 %4, 0
  br i1 %cmp678, label %for.body8.preheader, label %for.cond5.preheader.for.cond28.preheader_crit_edge

for.cond5.preheader.for.cond28.preheader_crit_edge: ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond28.preheader

for.body8.preheader:                              ; preds = %for.cond5.preheader
  %add.ptr18.1 = getelementptr inbounds i8, ptr %ch_stats, i32 4
  %add.ptr18.2 = getelementptr inbounds i8, ptr %ch_stats, i32 8
  %add.ptr18.3 = getelementptr inbounds i8, ptr %ch_stats, i32 12
  %add.ptr18.4 = getelementptr inbounds i8, ptr %ch_stats, i32 16
  %add.ptr18.5 = getelementptr inbounds i8, ptr %ch_stats, i32 20
  %add.ptr18.6 = getelementptr inbounds i8, ptr %ch_stats, i32 24
  %add.ptr18.7 = getelementptr inbounds i8, ptr %ch_stats, i32 28
  %add.ptr18.8 = getelementptr inbounds i8, ptr %ch_stats, i32 32
  %add.ptr18.9 = getelementptr inbounds i8, ptr %ch_stats, i32 36
  %add.ptr18.10 = getelementptr inbounds i8, ptr %ch_stats, i32 40
  %add.ptr18.11 = getelementptr inbounds i8, ptr %ch_stats, i32 44
  %add.ptr18.12 = getelementptr inbounds i8, ptr %ch_stats, i32 48
  br label %for.body8

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %l.075 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_stats, align 8
  %stat_offset = getelementptr [34 x %struct.cpsw_stats], ptr @cpsw_gstrings_stats, i32 0, i32 %l.075, i32 3
  %7 = ptrtoint ptr %stat_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_offset, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #13, !srcloc !73
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !79
  %conv = zext i32 %10 to i64
  %arrayidx4 = getelementptr i64, ptr %data, i32 %l.075
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %arrayidx4, align 8
  %inc = add nuw nsw i32 %l.075, 1
  %exitcond.not = icmp eq i32 %inc, 34
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond28.preheader:                             ; preds = %for.body8.for.cond28.preheader_crit_edge, %for.cond5.preheader.for.cond28.preheader_crit_edge
  %l.1.lcssa = phi i32 [ 34, %for.cond5.preheader.for.cond28.preheader_crit_edge ], [ %inc23.12, %for.body8.for.cond28.preheader_crit_edge ]
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %12 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tx_ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp2983 = icmp sgt i32 %13, 0
  br i1 %cmp2983, label %for.body31.preheader, label %for.cond28.preheader.for.end50_crit_edge

for.cond28.preheader.for.end50_crit_edge:         ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

for.body31.preheader:                             ; preds = %for.cond28.preheader
  %add.ptr41.1 = getelementptr inbounds i8, ptr %ch_stats, i32 4
  %add.ptr41.2 = getelementptr inbounds i8, ptr %ch_stats, i32 8
  %add.ptr41.3 = getelementptr inbounds i8, ptr %ch_stats, i32 12
  %add.ptr41.4 = getelementptr inbounds i8, ptr %ch_stats, i32 16
  %add.ptr41.5 = getelementptr inbounds i8, ptr %ch_stats, i32 20
  %add.ptr41.6 = getelementptr inbounds i8, ptr %ch_stats, i32 24
  %add.ptr41.7 = getelementptr inbounds i8, ptr %ch_stats, i32 28
  %add.ptr41.8 = getelementptr inbounds i8, ptr %ch_stats, i32 32
  %add.ptr41.9 = getelementptr inbounds i8, ptr %ch_stats, i32 36
  %add.ptr41.10 = getelementptr inbounds i8, ptr %ch_stats, i32 40
  %add.ptr41.11 = getelementptr inbounds i8, ptr %ch_stats, i32 44
  %add.ptr41.12 = getelementptr inbounds i8, ptr %ch_stats, i32 48
  br label %for.body31

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.preheader
  %l.180 = phi i32 [ %inc23.12, %for.body8.for.body8_crit_edge ], [ 34, %for.body8.preheader ]
  %ch.079 = phi i32 [ %inc26, %for.body8.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %arrayidx9 = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 16, i32 %ch.079
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %call11 = call i32 @cpdma_chan_get_stats(ptr noundef %15, ptr noundef nonnull %ch_stats) #13
  %16 = ptrtoint ptr %ch_stats to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch_stats, align 4
  %conv19 = zext i32 %17 to i64
  %arrayidx20 = getelementptr i64, ptr %data, i32 %l.180
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv19, ptr %arrayidx20, align 8
  %inc23 = add i32 %l.180, 1
  %19 = ptrtoint ptr %add.ptr18.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr18.1, align 4
  %conv19.1 = zext i32 %20 to i64
  %arrayidx20.1 = getelementptr i64, ptr %data, i32 %inc23
  %21 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %conv19.1, ptr %arrayidx20.1, align 8
  %inc23.1 = add i32 %l.180, 2
  %22 = ptrtoint ptr %add.ptr18.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr18.2, align 4
  %conv19.2 = zext i32 %23 to i64
  %arrayidx20.2 = getelementptr i64, ptr %data, i32 %inc23.1
  %24 = ptrtoint ptr %arrayidx20.2 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %conv19.2, ptr %arrayidx20.2, align 8
  %inc23.2 = add i32 %l.180, 3
  %25 = ptrtoint ptr %add.ptr18.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr18.3, align 4
  %conv19.3 = zext i32 %26 to i64
  %arrayidx20.3 = getelementptr i64, ptr %data, i32 %inc23.2
  %27 = ptrtoint ptr %arrayidx20.3 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv19.3, ptr %arrayidx20.3, align 8
  %inc23.3 = add i32 %l.180, 4
  %28 = ptrtoint ptr %add.ptr18.4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr18.4, align 4
  %conv19.4 = zext i32 %29 to i64
  %arrayidx20.4 = getelementptr i64, ptr %data, i32 %inc23.3
  %30 = ptrtoint ptr %arrayidx20.4 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv19.4, ptr %arrayidx20.4, align 8
  %inc23.4 = add i32 %l.180, 5
  %31 = ptrtoint ptr %add.ptr18.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr18.5, align 4
  %conv19.5 = zext i32 %32 to i64
  %arrayidx20.5 = getelementptr i64, ptr %data, i32 %inc23.4
  %33 = ptrtoint ptr %arrayidx20.5 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv19.5, ptr %arrayidx20.5, align 8
  %inc23.5 = add i32 %l.180, 6
  %34 = ptrtoint ptr %add.ptr18.6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr18.6, align 4
  %conv19.6 = zext i32 %35 to i64
  %arrayidx20.6 = getelementptr i64, ptr %data, i32 %inc23.5
  %36 = ptrtoint ptr %arrayidx20.6 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv19.6, ptr %arrayidx20.6, align 8
  %inc23.6 = add i32 %l.180, 7
  %37 = ptrtoint ptr %add.ptr18.7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr18.7, align 4
  %conv19.7 = zext i32 %38 to i64
  %arrayidx20.7 = getelementptr i64, ptr %data, i32 %inc23.6
  %39 = ptrtoint ptr %arrayidx20.7 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv19.7, ptr %arrayidx20.7, align 8
  %inc23.7 = add i32 %l.180, 8
  %40 = ptrtoint ptr %add.ptr18.8 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr18.8, align 4
  %conv19.8 = zext i32 %41 to i64
  %arrayidx20.8 = getelementptr i64, ptr %data, i32 %inc23.7
  %42 = ptrtoint ptr %arrayidx20.8 to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %conv19.8, ptr %arrayidx20.8, align 8
  %inc23.8 = add i32 %l.180, 9
  %43 = ptrtoint ptr %add.ptr18.9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr18.9, align 4
  %conv19.9 = zext i32 %44 to i64
  %arrayidx20.9 = getelementptr i64, ptr %data, i32 %inc23.8
  %45 = ptrtoint ptr %arrayidx20.9 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv19.9, ptr %arrayidx20.9, align 8
  %inc23.9 = add i32 %l.180, 10
  %46 = ptrtoint ptr %add.ptr18.10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr18.10, align 4
  %conv19.10 = zext i32 %47 to i64
  %arrayidx20.10 = getelementptr i64, ptr %data, i32 %inc23.9
  %48 = ptrtoint ptr %arrayidx20.10 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv19.10, ptr %arrayidx20.10, align 8
  %inc23.10 = add i32 %l.180, 11
  %49 = ptrtoint ptr %add.ptr18.11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr18.11, align 4
  %conv19.11 = zext i32 %50 to i64
  %arrayidx20.11 = getelementptr i64, ptr %data, i32 %inc23.10
  %51 = ptrtoint ptr %arrayidx20.11 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv19.11, ptr %arrayidx20.11, align 8
  %inc23.11 = add i32 %l.180, 12
  %52 = ptrtoint ptr %add.ptr18.12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr18.12, align 4
  %conv19.12 = zext i32 %53 to i64
  %arrayidx20.12 = getelementptr i64, ptr %data, i32 %inc23.11
  %54 = ptrtoint ptr %arrayidx20.12 to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv19.12, ptr %arrayidx20.12, align 8
  %inc23.12 = add i32 %l.180, 13
  %inc26 = add nuw nsw i32 %ch.079, 1
  %55 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %rx_ch_num, align 8
  %cmp6 = icmp slt i32 %inc26, %56
  br i1 %cmp6, label %for.body8.for.body8_crit_edge, label %for.body8.for.cond28.preheader_crit_edge

for.body8.for.cond28.preheader_crit_edge:         ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond28.preheader

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body8

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.preheader
  %l.385 = phi i32 [ %inc46.12, %for.body31.for.body31_crit_edge ], [ %l.1.lcssa, %for.body31.preheader ]
  %ch.184 = phi i32 [ %inc49, %for.body31.for.body31_crit_edge ], [ 0, %for.body31.preheader ]
  %arrayidx32 = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 15, i32 %ch.184
  %57 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx32, align 4
  %call34 = call i32 @cpdma_chan_get_stats(ptr noundef %58, ptr noundef nonnull %ch_stats) #13
  %59 = ptrtoint ptr %ch_stats to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ch_stats, align 4
  %conv42 = zext i32 %60 to i64
  %arrayidx43 = getelementptr i64, ptr %data, i32 %l.385
  %61 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv42, ptr %arrayidx43, align 8
  %inc46 = add i32 %l.385, 1
  %62 = ptrtoint ptr %add.ptr41.1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr41.1, align 4
  %conv42.1 = zext i32 %63 to i64
  %arrayidx43.1 = getelementptr i64, ptr %data, i32 %inc46
  %64 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv42.1, ptr %arrayidx43.1, align 8
  %inc46.1 = add i32 %l.385, 2
  %65 = ptrtoint ptr %add.ptr41.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %add.ptr41.2, align 4
  %conv42.2 = zext i32 %66 to i64
  %arrayidx43.2 = getelementptr i64, ptr %data, i32 %inc46.1
  %67 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv42.2, ptr %arrayidx43.2, align 8
  %inc46.2 = add i32 %l.385, 3
  %68 = ptrtoint ptr %add.ptr41.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr41.3, align 4
  %conv42.3 = zext i32 %69 to i64
  %arrayidx43.3 = getelementptr i64, ptr %data, i32 %inc46.2
  %70 = ptrtoint ptr %arrayidx43.3 to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %conv42.3, ptr %arrayidx43.3, align 8
  %inc46.3 = add i32 %l.385, 4
  %71 = ptrtoint ptr %add.ptr41.4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr41.4, align 4
  %conv42.4 = zext i32 %72 to i64
  %arrayidx43.4 = getelementptr i64, ptr %data, i32 %inc46.3
  %73 = ptrtoint ptr %arrayidx43.4 to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %conv42.4, ptr %arrayidx43.4, align 8
  %inc46.4 = add i32 %l.385, 5
  %74 = ptrtoint ptr %add.ptr41.5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %add.ptr41.5, align 4
  %conv42.5 = zext i32 %75 to i64
  %arrayidx43.5 = getelementptr i64, ptr %data, i32 %inc46.4
  %76 = ptrtoint ptr %arrayidx43.5 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv42.5, ptr %arrayidx43.5, align 8
  %inc46.5 = add i32 %l.385, 6
  %77 = ptrtoint ptr %add.ptr41.6 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %add.ptr41.6, align 4
  %conv42.6 = zext i32 %78 to i64
  %arrayidx43.6 = getelementptr i64, ptr %data, i32 %inc46.5
  %79 = ptrtoint ptr %arrayidx43.6 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %conv42.6, ptr %arrayidx43.6, align 8
  %inc46.6 = add i32 %l.385, 7
  %80 = ptrtoint ptr %add.ptr41.7 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr41.7, align 4
  %conv42.7 = zext i32 %81 to i64
  %arrayidx43.7 = getelementptr i64, ptr %data, i32 %inc46.6
  %82 = ptrtoint ptr %arrayidx43.7 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %conv42.7, ptr %arrayidx43.7, align 8
  %inc46.7 = add i32 %l.385, 8
  %83 = ptrtoint ptr %add.ptr41.8 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr41.8, align 4
  %conv42.8 = zext i32 %84 to i64
  %arrayidx43.8 = getelementptr i64, ptr %data, i32 %inc46.7
  %85 = ptrtoint ptr %arrayidx43.8 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %conv42.8, ptr %arrayidx43.8, align 8
  %inc46.8 = add i32 %l.385, 9
  %86 = ptrtoint ptr %add.ptr41.9 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %add.ptr41.9, align 4
  %conv42.9 = zext i32 %87 to i64
  %arrayidx43.9 = getelementptr i64, ptr %data, i32 %inc46.8
  %88 = ptrtoint ptr %arrayidx43.9 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %conv42.9, ptr %arrayidx43.9, align 8
  %inc46.9 = add i32 %l.385, 10
  %89 = ptrtoint ptr %add.ptr41.10 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %add.ptr41.10, align 4
  %conv42.10 = zext i32 %90 to i64
  %arrayidx43.10 = getelementptr i64, ptr %data, i32 %inc46.9
  %91 = ptrtoint ptr %arrayidx43.10 to i32
  call void @__asan_store8_noabort(i32 %91)
  store i64 %conv42.10, ptr %arrayidx43.10, align 8
  %inc46.10 = add i32 %l.385, 11
  %92 = ptrtoint ptr %add.ptr41.11 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %add.ptr41.11, align 4
  %conv42.11 = zext i32 %93 to i64
  %arrayidx43.11 = getelementptr i64, ptr %data, i32 %inc46.10
  %94 = ptrtoint ptr %arrayidx43.11 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %conv42.11, ptr %arrayidx43.11, align 8
  %inc46.11 = add i32 %l.385, 12
  %95 = ptrtoint ptr %add.ptr41.12 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %add.ptr41.12, align 4
  %conv42.12 = zext i32 %96 to i64
  %arrayidx43.12 = getelementptr i64, ptr %data, i32 %inc46.11
  %97 = ptrtoint ptr %arrayidx43.12 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %conv42.12, ptr %arrayidx43.12, align 8
  %inc46.12 = add i32 %l.385, 13
  %inc49 = add nuw nsw i32 %ch.184, 1
  %98 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tx_ch_num, align 4
  %cmp29 = icmp slt i32 %inc49, %99
  br i1 %cmp29, label %for.body31.for.body31_crit_edge, label %for.body31.for.end50_crit_edge

for.body31.for.end50_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end50

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31

for.end50:                                        ; preds = %for.body31.for.end50_crit_edge, %for.cond28.preheader.for.end50_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %ch_stats) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_get_stats(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cpsw_get_pauseparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %pause) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %autoneg = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 1
  %0 = ptrtoint ptr %autoneg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %autoneg, align 4
  %rx_pause = getelementptr i8, ptr %ndev, i32 2322
  %1 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %rx_pause, align 2, !range !80
  %3 = zext i8 %2 to i32
  %rx_pause1 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %4 = ptrtoint ptr %rx_pause1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %rx_pause1, align 4
  %tx_pause = getelementptr i8, ptr %ndev, i32 2323
  %5 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tx_pause, align 1, !range !80
  %7 = zext i8 %6 to i32
  %tx_pause4 = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %8 = ptrtoint ptr %tx_pause4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tx_pause4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_get_wol(ptr noundef %ndev, ptr noundef %wol) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #13
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %3 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %4 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %wolopts, align 4
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %slaves, align 4
  %phy = getelementptr %struct.cpsw_slave, ptr %6, i32 %call2, i32 4
  %7 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @phy_ethtool_get_wol(ptr noundef nonnull %8, ptr noundef %wol) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_get_wol(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_wol(ptr noundef %ndev, ptr noundef %wol) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #13
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slaves, align 4
  %phy = getelementptr %struct.cpsw_slave, ptr %4, i32 %call2, i32 4
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @phy_ethtool_set_wol(ptr noundef nonnull %6, ptr noundef %wol) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_wol(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_get_regs_len(ptr nocapture noundef readonly %ndev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ale, align 4
  %call2 = tail call i32 @cpsw_ale_get_num_entries(ptr noundef %3) #13
  %mul3 = mul i32 %call2, 12
  ret i32 %mul3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_get_num_entries(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_get_regs(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %regs, ptr noundef %p) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %version = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 8
  %version2 = getelementptr inbounds %struct.ethtool_regs, ptr %regs, i32 0, i32 1
  %4 = ptrtoint ptr %version2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %version2, align 4
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ale, align 4
  tail call void @cpsw_ale_dump(ptr noundef %6, ptr noundef %p) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_dump(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_ethtool_op_begin(ptr nocapture noundef readonly %ndev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end9_crit_edge, label %land.lhs.true

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

land.lhs.true:                                    ; preds = %do.body
  %call3 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %do.end

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end9

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dev7 = getelementptr i8, ptr %ndev, i32 2308
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.5, i32 noundef %call.i) #16
  br label %do.end9

do.end9:                                          ; preds = %do.end, %land.lhs.true.do.end9_crit_edge, %do.body.do.end9_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !81
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #13, !srcloc !82
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end9.if.end11_crit_edge, label %do.end11.i.i.i.i

do.end9.if.end11_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

do.end11.i.i.i.i:                                 ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !83
  br label %if.end11

if.end11:                                         ; preds = %do.end11.i.i.i.i, %do.end9.if.end11_crit_edge, %entry.if.end11_crit_edge
  ret i32 %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_ethtool_op_complete(ptr nocapture noundef readonly %ndev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.body, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.body:                                          ; preds = %entry
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %4 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_enable, align 8
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end9_crit_edge, label %land.lhs.true

do.body.if.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %do.end

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %dev6 = getelementptr i8, ptr %ndev, i32 2308
  %6 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %call.i) #16
  br label %if.end9

if.end9:                                          ; preds = %do.end, %land.lhs.true.if.end9_crit_edge, %do.body.if.end9_crit_edge, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cpsw_get_channels(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ch) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %quirk_irq = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %quirk_irq to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %quirk_irq, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, i32 8, i32 1
  %max_rx = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 1
  %4 = ptrtoint ptr %max_rx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %max_rx, align 4
  %5 = ptrtoint ptr %quirk_irq to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %quirk_irq, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  %cond4 = select i1 %tobool3.not, i32 8, i32 1
  %max_tx = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 2
  %7 = ptrtoint ptr %max_tx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond4, ptr %max_tx, align 4
  %max_combined = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 4
  %8 = ptrtoint ptr %max_combined to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %max_combined, align 4
  %max_other = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 3
  %9 = ptrtoint ptr %max_other to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %max_other, align 4
  %other_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 7
  %10 = ptrtoint ptr %other_count to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %other_count, align 4
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 25
  %11 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_ch_num, align 8
  %rx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 5
  %13 = ptrtoint ptr %rx_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %rx_count, align 4
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %14 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_ch_num, align 4
  %tx_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 6
  %16 = ptrtoint ptr %tx_count to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx_count, align 4
  %combined_count = getelementptr inbounds %struct.ethtool_channels, ptr %ch, i32 0, i32 8
  %17 = ptrtoint ptr %combined_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %combined_count, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_get_link_ksettings(ptr noundef %ndev, ptr noundef %ecmd) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #13
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slaves, align 4
  %phy = getelementptr %struct.cpsw_slave, ptr %4, i32 %call2, i32 4
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @phy_ethtool_ksettings_get(ptr noundef nonnull %6, ptr noundef %ecmd) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_ethtool_ksettings_get(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_link_ksettings(ptr noundef %ndev, ptr noundef %ecmd) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #13
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slaves, align 4
  %phy = getelementptr %struct.cpsw_slave, ptr %4, i32 %call2, i32 4
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @phy_ethtool_ksettings_set(ptr noundef nonnull %6, ptr noundef %ecmd) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_ksettings_set(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_get_eee(ptr noundef %ndev, ptr noundef %edata) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #13
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slaves, align 4
  %phy = getelementptr %struct.cpsw_slave, ptr %4, i32 %call2, i32 4
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @phy_ethtool_get_eee(ptr noundef nonnull %6, ptr noundef %edata) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_get_eee(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_eee(ptr noundef %ndev, ptr noundef %edata) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #13
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slaves, align 4
  %phy = getelementptr %struct.cpsw_slave, ptr %4, i32 %call2, i32 4
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @phy_ethtool_set_eee(ptr noundef nonnull %6, ptr noundef %edata) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_ethtool_set_eee(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_nway_reset(ptr noundef %ndev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #13
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slaves, align 4
  %phy = getelementptr %struct.cpsw_slave, ptr %4, i32 %call2, i32 4
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = tail call i32 @genphy_restart_aneg(ptr noundef nonnull %6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genphy_restart_aneg(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_channels_common(ptr noundef %ndev, ptr nocapture noundef readonly %chs, ptr noundef %rx_handler) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %quirk_irq.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %quirk_irq.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %quirk_irq.i, align 8, !range !80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.23) #16
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %combined_count.i = getelementptr inbounds %struct.ethtool_channels, ptr %chs, i32 0, i32 8
  %6 = ptrtoint ptr %combined_count.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %combined_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not.i = icmp eq i32 %7, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %rx_count.i = getelementptr inbounds %struct.ethtool_channels, ptr %chs, i32 0, i32 5
  %8 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not.i = icmp eq i32 %9, 0
  br i1 %tobool4.not.i, label %if.end3.i.cleanup_crit_edge, label %lor.lhs.false.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end3.i
  %tx_count.i = getelementptr inbounds %struct.ethtool_channels, ptr %chs, i32 0, i32 6
  %10 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not.i = icmp eq i32 %11, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end7.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7.i:                                        ; preds = %lor.lhs.false.i
  %channels.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp.i = icmp ugt i32 %9, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp13.i = icmp ugt i32 %11, %13
  %or.cond.i = select i1 %cmp.i, i1 true, i1 %cmp13.i
  br i1 %or.cond.i, label %if.end7.i.cleanup_crit_edge, label %if.end

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.end7.i
  %14 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpsw1, align 4
  tail call void @cpsw_intr_disable(ptr noundef %15) #13
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %15, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slaves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp17.not.i = icmp eq i32 %17, 0
  br i1 %cmp17.not.i, label %if.end.cpsw_suspend_data_pass.exit_crit_edge, label %for.body.lr.ph.i

if.end.cpsw_suspend_data_pass.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpsw_suspend_data_pass.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %slaves2.i = getelementptr inbounds %struct.cpsw_common, ptr %15, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %slaves2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slaves2.i, align 4
  %ndev3.i = getelementptr %struct.cpsw_slave, ptr %19, i32 %i.018.i, i32 5
  %20 = ptrtoint ptr %ndev3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev3.i, align 4
  %tobool.not.i87 = icmp eq ptr %21, null
  br i1 %tobool.not.i87, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.end.i88

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end.i88:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %21) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i88, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %24 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slaves.i, align 4
  %cmp.i89 = icmp ult i32 %inc.i, %25
  br i1 %cmp.i89, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cpsw_suspend_data_pass.exit_crit_edge

for.inc.i.cpsw_suspend_data_pass.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cpsw_suspend_data_pass.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

cpsw_suspend_data_pass.exit:                      ; preds = %for.inc.i.cpsw_suspend_data_pass.exit_crit_edge, %if.end.cpsw_suspend_data_pass.exit_crit_edge
  %dma.i = getelementptr inbounds %struct.cpsw_common, ptr %15, i32 0, i32 14
  %26 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dma.i, align 8
  %call8.i = tail call i32 @cpdma_ctlr_stop(ptr noundef %27) #13
  %28 = ptrtoint ptr %rx_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_count.i, align 4
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 25
  %30 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rx_ch_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp3.not = icmp eq i32 %29, %31
  br i1 %cmp3.not, label %cpsw_suspend_data_pass.exit.land.end_crit_edge, label %land.rhs

cpsw_suspend_data_pass.exit.land.end_crit_edge:   ; preds = %cpsw_suspend_data_pass.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %cpsw_suspend_data_pass.exit
  call void @__sanitizer_cov_trace_pc() #15
  %usage_count = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 28
  %32 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool = icmp ne i32 %33, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cpsw_suspend_data_pass.exit.land.end_crit_edge
  %34 = phi i1 [ false, %cpsw_suspend_data_pass.exit.land.end_crit_edge ], [ %tobool, %land.rhs ]
  %call5 = tail call fastcc i32 @cpsw_update_channels_res(ptr noundef %add.ptr.i, i32 noundef %29, i32 noundef 1, ptr noundef %rx_handler)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %land.end.do.end46_crit_edge

land.end.do.end46_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46

if.end8:                                          ; preds = %land.end
  %35 = ptrtoint ptr %tx_count.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_count.i, align 4
  %call9 = tail call fastcc i32 @cpsw_update_channels_res(ptr noundef %add.ptr.i, i32 noundef %36, i32 noundef 0, ptr noundef %rx_handler)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %for.cond.preheader, label %if.end8.do.end46_crit_edge

if.end8.do.end46_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46

for.cond.preheader:                               ; preds = %if.end8
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp13100.not = icmp eq i32 %38, 0
  br i1 %cmp13100.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slaves14 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %39 = ptrtoint ptr %slaves14 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %slaves14, align 4
  %ndev15 = getelementptr %struct.cpsw_slave, ptr %40, i32 %i.0101, i32 5
  %41 = ptrtoint ptr %ndev15 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ndev15, align 4
  %tobool16.not = icmp eq ptr %42, null
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.for.inc_crit_edge, label %if.end19

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end19:                                         ; preds = %land.lhs.true
  %45 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_ch_num, align 4
  %call20 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef nonnull %42, i32 noundef %46) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.do.end46.sink.split_crit_edge

if.end19.do.end46.sink.split_crit_edge:           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46.sink.split

if.end23:                                         ; preds = %if.end19
  %47 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_ch_num, align 8
  %call25 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef nonnull %42, i32 noundef %48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end23.for.inc_crit_edge, label %if.end23.do.end46.sink.split_crit_edge

if.end23.do.end46.sink.split_crit_edge:           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46.sink.split

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %if.end23.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0101, 1
  %49 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %slaves, align 4
  %cmp13 = icmp ult i32 %inc, %50
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @cpsw_split_res(ptr noundef %1) #13
  br i1 %34, label %if.then34, label %for.end.if.end39_crit_edge

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.then34:                                        ; preds = %for.end
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %1) #13
  %call35 = tail call i32 @cpsw_create_xdp_rxqs(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end39_crit_edge, label %if.then34.do.end46_crit_edge

if.then34.do.end46_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46

if.then34.if.end39_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.end39:                                         ; preds = %if.then34.if.end39_crit_edge, %for.end.if.end39_crit_edge
  %call40 = tail call fastcc i32 @cpsw_resume_data_pass(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.cleanup_crit_edge, label %if.end39.do.end46_crit_edge

if.end39.do.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end46

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end46.sink.split:                              ; preds = %if.end23.do.end46.sink.split_crit_edge, %if.end19.do.end46.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.10, %if.end19.do.end46.sink.split_crit_edge ], [ @.str.13, %if.end23.do.end46.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call20, %if.end19.do.end46.sink.split_crit_edge ], [ %call25, %if.end23.do.end46.sink.split_crit_edge ]
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull %.str.10.sink) #16
  br label %do.end46

do.end46:                                         ; preds = %do.end46.sink.split, %if.end39.do.end46_crit_edge, %if.then34.do.end46_crit_edge, %if.end8.do.end46_crit_edge, %land.end.do.end46_crit_edge
  %ret.0 = phi i32 [ %call5, %land.end.do.end46_crit_edge ], [ %call9, %if.end8.do.end46_crit_edge ], [ %call35, %if.then34.do.end46_crit_edge ], [ %call40, %if.end39.do.end46_crit_edge ], [ %ret.0.ph, %do.end46.sink.split ]
  %dev47 = getelementptr i8, ptr %ndev, i32 2308
  %53 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.16) #16
  %slaves.i90 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %slaves.i90 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slaves.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp7.not.i = icmp eq i32 %56, 0
  br i1 %cmp7.not.i, label %do.end46.cleanup_crit_edge, label %for.body.lr.ph.i91

do.end46.cleanup_crit_edge:                       ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph.i91:                               ; preds = %do.end46
  %slaves1.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body.i93

for.body.i93:                                     ; preds = %for.inc.i96.for.body.i93_crit_edge, %for.body.lr.ph.i91
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i91 ], [ %inc.i94, %for.inc.i96.for.body.i93_crit_edge ]
  %57 = ptrtoint ptr %slaves1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %slaves1.i, align 4
  %ndev2.i = getelementptr %struct.cpsw_slave, ptr %58, i32 %i.08.i, i32 5
  %59 = ptrtoint ptr %ndev2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ndev2.i, align 4
  %tobool.not.i92 = icmp eq ptr %60, null
  br i1 %tobool.not.i92, label %for.body.i93.for.inc.i96_crit_edge, label %if.then.i

for.body.i93.for.inc.i96_crit_edge:               ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i96

if.then.i:                                        ; preds = %for.body.i93
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dev_close(ptr noundef nonnull %60) #13
  br label %for.inc.i96

for.inc.i96:                                      ; preds = %if.then.i, %for.body.i93.for.inc.i96_crit_edge
  %inc.i94 = add nuw i32 %i.08.i, 1
  %61 = ptrtoint ptr %slaves.i90 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %slaves.i90, align 4
  %cmp.i95 = icmp ult i32 %inc.i94, %62
  br i1 %cmp.i95, label %for.inc.i96.for.body.i93_crit_edge, label %for.inc.i96.cleanup_crit_edge

for.inc.i96.cleanup_crit_edge:                    ; preds = %for.inc.i96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.i96.for.body.i93_crit_edge:               ; preds = %for.inc.i96
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i93

cleanup:                                          ; preds = %for.inc.i96.cleanup_crit_edge, %do.end46.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end39.cleanup_crit_edge ], [ %ret.0, %do.end46.cleanup_crit_edge ], [ -22, %if.end3.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -95, %do.end.i ], [ -22, %if.end7.i.cleanup_crit_edge ], [ %ret.0, %for.inc.i96.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_suspend_data_pass(ptr nocapture noundef readonly %ndev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  tail call void @cpsw_intr_disable(ptr noundef %1) #13
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp17.not = icmp eq i32 %3, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slaves2 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %slaves2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slaves2, align 4
  %ndev3 = getelementptr %struct.cpsw_slave, ptr %5, i32 %i.018, i32 5
  %6 = ptrtoint ptr %ndev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.for.inc_crit_edge, label %if.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @netif_tx_stop_all_queues(ptr noundef nonnull %7) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !84
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.018, 1
  %10 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma, align 8
  %call8 = tail call i32 @cpdma_ctlr_stop(ptr noundef %13) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_update_channels_res(ptr nocapture noundef readonly %priv, i32 noundef %ch_num, i32 noundef %rx, ptr noundef %rx_handler) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx)
  %tobool.not = icmp eq i32 %rx, 0
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 25
  %rxv = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 16
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %txv = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 15
  %handler.0 = select i1 %tobool.not, ptr @cpsw_tx_handler, ptr %rx_handler
  %vec.0 = select i1 %tobool.not, ptr %txv, ptr %rxv
  %ch.0 = select i1 %tobool.not, ptr %tx_ch_num, ptr %rx_ch_num
  %2 = ptrtoint ptr %ch.0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ch_num)
  %cmp97 = icmp slt i32 %3, %ch_num
  br i1 %cmp97, label %while.body.lr.ph, label %entry.while.cond29.preheader_crit_edge

entry.while.cond29.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond29.preheader

while.body.lr.ph:                                 ; preds = %entry
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %msg_enable = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 2
  %dev = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  %cond25 = select i1 %tobool.not, ptr @.str.29, ptr @.str.28
  br label %while.body

while.cond29.preheader:                           ; preds = %do.end28.while.cond29.preheader_crit_edge, %entry.while.cond29.preheader_crit_edge
  %4 = ptrtoint ptr %ch.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %ch_num)
  %cmp3098 = icmp sgt i32 %5, %ch_num
  br i1 %cmp3098, label %while.body31.lr.ph, label %while.cond29.preheader.cleanup_crit_edge

while.cond29.preheader.cleanup_crit_edge:         ; preds = %while.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body31.lr.ph:                               ; preds = %while.cond29.preheader
  %msg_enable39 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 2
  %dev49 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 1
  %cond51 = select i1 %tobool.not, ptr @.str.29, ptr @.str.28
  br label %while.body31

while.body:                                       ; preds = %do.end28.while.body_crit_edge, %while.body.lr.ph
  %6 = phi i32 [ %3, %while.body.lr.ph ], [ %inc, %do.end28.while.body_crit_edge ]
  %sub = sub i32 7, %6
  %cond = select i1 %tobool.not, i32 %sub, i32 %6
  %7 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma, align 8
  %call = tail call ptr @cpdma_chan_create(ptr noundef %8, i32 noundef %cond, ptr noundef %handler.0, i32 noundef %rx) #13
  %9 = ptrtoint ptr %ch.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ch.0, align 4
  %arrayidx = getelementptr %struct.cpsw_vector, ptr %vec.0, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 128
  %14 = load i32, ptr %ch.0, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %13, i32 0, i32 103
  %15 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %_tx.i, align 128
  %tx_maxrate = getelementptr %struct.netdev_queue, ptr %16, i32 %14, i32 5
  %17 = ptrtoint ptr %tx_maxrate to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %tx_maxrate, align 8
  %18 = load i32, ptr %ch.0, align 4
  %arrayidx6 = getelementptr %struct.cpsw_vector, ptr %vec.0, i32 %18
  %19 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx6, align 4
  %cmp.i = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end13:                                         ; preds = %while.body
  %tobool16.not = icmp eq ptr %20, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %do.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %if.end13
  %22 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %msg_enable, align 8
  %and = and i32 %23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %do.body.do.end28_crit_edge, label %land.lhs.true

do.body.do.end28_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

land.lhs.true:                                    ; preds = %do.body
  %call20 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end28_crit_edge, label %do.end

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %ch.0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ch.0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %25, ptr noundef nonnull @.str.25, i32 noundef %27, ptr noundef nonnull %cond25) #16
  br label %do.end28

do.end28:                                         ; preds = %do.end, %land.lhs.true.do.end28_crit_edge, %do.body.do.end28_crit_edge
  %28 = ptrtoint ptr %ch.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ch.0, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %ch.0, align 4
  %cmp = icmp slt i32 %inc, %ch_num
  br i1 %cmp, label %do.end28.while.body_crit_edge, label %do.end28.while.cond29.preheader_crit_edge

do.end28.while.cond29.preheader_crit_edge:        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond29.preheader

do.end28.while.body_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

while.body31:                                     ; preds = %do.end54.while.body31_crit_edge, %while.body31.lr.ph
  %30 = phi i32 [ %5, %while.body31.lr.ph ], [ %41, %do.end54.while.body31_crit_edge ]
  %dec = add nsw i32 %30, -1
  %31 = ptrtoint ptr %ch.0 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %dec, ptr %ch.0, align 4
  %arrayidx32 = getelementptr %struct.cpsw_vector, ptr %vec.0, i32 %dec
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx32, align 4
  %call34 = tail call i32 @cpdma_chan_destroy(ptr noundef %33) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body38, label %while.body31.cleanup_crit_edge

while.body31.cleanup_crit_edge:                   ; preds = %while.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body38:                                        ; preds = %while.body31
  %34 = ptrtoint ptr %msg_enable39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msg_enable39, align 8
  %and40 = and i32 %35, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %do.body38.do.end54_crit_edge, label %land.lhs.true42

do.body38.do.end54_crit_edge:                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

land.lhs.true42:                                  ; preds = %do.body38
  %call43 = tail call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.do.end54_crit_edge, label %do.end48

land.lhs.true42.do.end54_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end54

do.end48:                                         ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev49, align 4
  %38 = ptrtoint ptr %ch.0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ch.0, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.31, i32 noundef %39, ptr noundef nonnull %cond51) #16
  br label %do.end54

do.end54:                                         ; preds = %do.end48, %land.lhs.true42.do.end54_crit_edge, %do.body38.do.end54_crit_edge
  %40 = ptrtoint ptr %ch.0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch.0, align 4
  %cmp30 = icmp sgt i32 %41, %ch_num
  br i1 %cmp30, label %do.end54.while.body31_crit_edge, label %do.end54.cleanup_crit_edge

do.end54.cleanup_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end54.while.body31_crit_edge:                  ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body31

cleanup:                                          ; preds = %do.end54.cleanup_crit_edge, %while.body31.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then9, %while.cond29.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %if.then9 ], [ 0, %while.cond29.preheader.cleanup_crit_edge ], [ %call34, %while.body31.cleanup_crit_edge ], [ 0, %do.end54.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_split_res(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_destroy_xdp_rxqs(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_create_xdp_rxqs(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_resume_data_pass(ptr noundef %ndev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %usage_count = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %call2 = tail call i32 @cpsw_fill_rx_channels(ptr noundef %add.ptr.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma, align 8
  %call5 = tail call i32 @cpdma_ctlr_start(ptr noundef %5) #13
  tail call void @cpsw_intr_enable(ptr noundef %1) #13
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp27.not = icmp eq i32 %7, 0
  br i1 %cmp27.not, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %slaves7 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %slaves7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slaves7, align 4
  %ndev8 = getelementptr %struct.cpsw_slave, ptr %9, i32 %i.028, i32 5
  %10 = ptrtoint ptr %ndev8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ndev8, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 104
  %14 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.not.i = icmp eq i32 %15, 0
  br i1 %cmp4.not.i, label %if.then11.for.inc_crit_edge, label %for.body.lr.ph.i

if.then11.for.inc_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.lr.ph.i:                                 ; preds = %if.then11
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr %struct.netdev_queue, ptr %17, i32 %i.05.i, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #13
  %inc.i = add nuw i32 %i.05.i, 1
  %18 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.inc_crit_edge

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc:                                          ; preds = %for.body.i.for.inc_crit_edge, %if.then11.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.028, 1
  %20 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_fail(ptr nocapture noundef readonly %cpsw) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.not = icmp eq i32 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slaves1 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %slaves1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slaves1, align 4
  %ndev2 = getelementptr %struct.cpsw_slave, ptr %3, i32 %i.08, i32 5
  %4 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev2, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @dev_close(ptr noundef nonnull %5) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.08, 1
  %6 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cpsw_get_ringparam(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %descs_pool_size = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %descs_pool_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %descs_pool_size, align 8
  %sub = add i32 %3, -8
  %tx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 4
  %4 = ptrtoint ptr %tx_max_pending to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %tx_max_pending, align 4
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dma, align 8
  %call2 = tail call i32 @cpdma_get_num_tx_descs(ptr noundef %6) #13
  %tx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 8
  %7 = ptrtoint ptr %tx_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %tx_pending, align 4
  %8 = ptrtoint ptr %descs_pool_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %descs_pool_size, align 8
  %sub4 = add i32 %9, -8
  %rx_max_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 1
  %10 = ptrtoint ptr %rx_max_pending to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub4, ptr %rx_max_pending, align 4
  %11 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma, align 8
  %call6 = tail call i32 @cpdma_get_num_rx_descs(ptr noundef %12) #13
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %13 = ptrtoint ptr %rx_pending to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call6, ptr %rx_pending, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_get_num_tx_descs(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_get_num_rx_descs(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cpsw_set_ringparam(ptr noundef %ndev, ptr nocapture noundef readonly %ering, ptr nocapture noundef readnone %kernel_ering, ptr nocapture noundef readnone %extack) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %rx_mini_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 6
  %2 = ptrtoint ptr %rx_mini_pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_mini_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rx_jumbo_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 7
  %4 = ptrtoint ptr %rx_jumbo_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_jumbo_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %rx_pending = getelementptr inbounds %struct.ethtool_ringparam, ptr %ering, i32 0, i32 5
  %6 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp = icmp ult i32 %7, 8
  br i1 %cmp, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false3
  %descs_pool_size = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %descs_pool_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %descs_pool_size, align 8
  %sub = add i32 %9, -8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %sub)
  %cmp6 = icmp ugt i32 %7, %sub
  br i1 %cmp6, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma, align 8
  %call7 = tail call i32 @cpdma_get_num_rx_descs(ptr noundef %11) #13
  %12 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_pending, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %call7)
  %cmp9 = icmp eq i32 %13, %call7
  br i1 %cmp9, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  tail call fastcc void @cpsw_suspend_data_pass(ptr noundef %ndev)
  %14 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma, align 8
  %16 = ptrtoint ptr %rx_pending to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_pending, align 4
  %call14 = tail call i32 @cpdma_set_num_rx_descs(ptr noundef %15, i32 noundef %17) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end21, label %if.then16

if.then16:                                        ; preds = %if.end11
  %call17 = tail call fastcc i32 @cpsw_resume_data_pass(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then16.cleanup_crit_edge, label %if.then16.err_crit_edge

if.then16.err_crit_edge:                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %usage_count = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 28
  %18 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool22.not = icmp eq i32 %19, 0
  br i1 %tobool22.not, label %if.end21.if.end28_crit_edge, label %if.then23

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then23:                                        ; preds = %if.end21
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %1) #13
  %call24 = tail call i32 @cpsw_create_xdp_rxqs(ptr noundef %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then23.err_crit_edge

if.then23.err_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.end28:                                         ; preds = %if.then23.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %call29 = tail call fastcc i32 @cpsw_resume_data_pass(ptr noundef %ndev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end28.cleanup_crit_edge, label %if.end28.err_crit_edge

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err:                                              ; preds = %if.end28.err_crit_edge, %if.then23.err_crit_edge, %if.then16.err_crit_edge
  %ret.0 = phi i32 [ %call14, %if.then16.err_crit_edge ], [ %call24, %if.then23.err_crit_edge ], [ %call29, %if.end28.err_crit_edge ]
  %20 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dma, align 8
  %call34 = tail call i32 @cpdma_set_num_rx_descs(ptr noundef %21, i32 noundef %call7) #13
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.18) #16
  tail call fastcc void @cpsw_fail(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end28.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call14, %if.then16.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_set_num_rx_descs(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cpsw_get_ts_info(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %so_timestamping = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %so_timestamping to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 95, ptr %so_timestamping, align 4
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpts, align 8
  %phc_index = getelementptr inbounds %struct.cpts, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %phc_index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phc_index, align 8
  %phc_index2 = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %phc_index2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %phc_index2, align 4
  %tx_types = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %tx_types to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %tx_types, align 4
  %rx_filters = getelementptr inbounds %struct.ethtool_ts_info, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %rx_filters to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4097, ptr %rx_filters, align 4
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_disable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_stop(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_tx_handler(ptr noundef, i32 noundef, i32 noundef) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_chan_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_fill_rx_channels(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_start(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_enable(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !58, !59, !60, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 218, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cpsw_set_coalesce._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cpsw_set_coalesce._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 369, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cpsw_ethtool_op_begin._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @cpsw_ethtool_op_begin._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 383, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @cpsw_ethtool_op_complete._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @cpsw_ethtool_op_complete._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 631, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cpsw_set_channels_common._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @cpsw_set_channels_common._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 637, i32 4}
!26 = !{ptr @cpsw_set_channels_common._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cpsw_set_channels_common._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 655, i32 2}
!30 = !{ptr @cpsw_set_channels_common._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cpsw_set_channels_common._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 716, i32 2}
!34 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @cpsw_set_ringparam._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @cpsw_set_ringparam._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @cpsw_gstrings_stats, !38, !"cpsw_gstrings_stats", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 85, i32 32}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 248, i32 5}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 248, i32 37}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 248, i32 44}
!45 = !{ptr @cpsw_gstrings_ch_stats, !46, !"cpsw_gstrings_ch_stats", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 122, i32 32}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 518, i32 3}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cpsw_check_ch_settings._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cpsw_check_ch_settings._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 567, i32 3}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @cpsw_update_channels_res._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @cpsw_update_channels_res._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/ti/cpsw_ethtool.c", i32 579, i32 3}
!62 = !{ptr @cpsw_update_channels_res._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @cpsw_update_channels_res._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 6043416}
!74 = !{i64 2157048234}
!75 = !{i64 2157048692}
!76 = !{i64 6042998}
!77 = !{i64 2157049137}
!78 = !{i64 2157049619}
!79 = !{i64 2157056153}
!80 = !{i8 0, i8 2}
!81 = !{i64 2148367193}
!82 = !{i64 852016, i64 852041, i64 852063, i64 852079, i64 852091, i64 852111, i64 852135, i64 852151, i64 852163}
!83 = !{i64 2148367381}
!84 = !{i64 2157061648}
