; ModuleID = '/llk/IR_all_yes/net/ncsi/ncsi-manage.c_pt.bc'
source_filename = "../net/ncsi/ncsi-manage.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ncsi_vlan_rx_add_vid\22, \22a\22\09"
module asm "\09.weak\09__crc_ncsi_vlan_rx_add_vid\09\09\09\09"
module asm "\09.long\09__crc_ncsi_vlan_rx_add_vid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ncsi_vlan_rx_add_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22ncsi_vlan_rx_add_vid\22\09\09\09\09\09"
module asm "__kstrtabns_ncsi_vlan_rx_add_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ncsi_vlan_rx_kill_vid\22, \22a\22\09"
module asm "\09.weak\09__crc_ncsi_vlan_rx_kill_vid\09\09\09\09"
module asm "\09.long\09__crc_ncsi_vlan_rx_kill_vid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ncsi_vlan_rx_kill_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22ncsi_vlan_rx_kill_vid\22\09\09\09\09\09"
module asm "__kstrtabns_ncsi_vlan_rx_kill_vid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ncsi_register_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_ncsi_register_dev\09\09\09\09"
module asm "\09.long\09__crc_ncsi_register_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ncsi_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22ncsi_register_dev\22\09\09\09\09\09"
module asm "__kstrtabns_ncsi_register_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ncsi_start_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_ncsi_start_dev\09\09\09\09"
module asm "\09.long\09__crc_ncsi_start_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ncsi_start_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22ncsi_start_dev\22\09\09\09\09\09"
module asm "__kstrtabns_ncsi_start_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ncsi_stop_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_ncsi_stop_dev\09\09\09\09"
module asm "\09.long\09__crc_ncsi_stop_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ncsi_stop_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22ncsi_stop_dev\22\09\09\09\09\09"
module asm "__kstrtabns_ncsi_stop_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ncsi_unregister_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_ncsi_unregister_dev\09\09\09\09"
module asm "\09.long\09__crc_ncsi_unregister_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ncsi_unregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22ncsi_unregister_dev\22\09\09\09\09\09"
module asm "__kstrtabns_ncsi_unregister_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ncsi_oem_gma_handler = type { i32, ptr }
%struct.ncsi_channel = type { i8, i32, i8, %struct.spinlock, ptr, %struct.ncsi_channel_version, [6 x %struct.ncsi_channel_cap], [8 x %struct.ncsi_channel_mode], %struct.ncsi_channel_mac_filter, %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_stats, %struct.anon.140, %struct.list_head, %struct.list_head }
%struct.ncsi_channel_version = type { i32, i32, [12 x i8], i32, [4 x i16], i32 }
%struct.ncsi_channel_cap = type { i32, i32 }
%struct.ncsi_channel_mode = type { i32, i32, i32, [8 x i32] }
%struct.ncsi_channel_mac_filter = type { i8, i8, i8, i64, ptr }
%struct.ncsi_channel_vlan_filter = type { i8, i64, ptr }
%struct.ncsi_channel_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.140 = type { %struct.timer_list, i8, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ncsi_dev_priv = type { %struct.ncsi_dev, i32, i32, %struct.spinlock, i32, i32, %struct.list_head, ptr, [256 x %struct.ncsi_request], i32, i32, ptr, ptr, %struct.list_head, %struct.work_struct, %struct.packet_type, %struct.list_head, %struct.list_head, i8, i8, i32 }
%struct.ncsi_dev = type { i32, i32, ptr, ptr }
%struct.ncsi_request = type { i8, i8, i32, ptr, ptr, ptr, %struct.timer_list, i8, i32, i32, %struct.nlmsghdr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.ncsi_package = type { i8, [16 x i8], ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i8, i32, ptr }
%struct.ncsi_cmd_arg = type { ptr, i8, i8, i8, i8, i16, i32, %union.anon.146, ptr, ptr }
%union.anon.146 = type { [4 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vlan_vid = type { %struct.list_head, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%union.anon.149 = type { [15 x i32] }
%union.anon.148 = type { [2 x i32] }
%struct.sk_buff = type { %union.anon.3, %union.anon.6, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.6 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.ncsi_pkt_hdr = type { i8, i8, i8, i8, i8, i8, i16, [2 x i32] }

@ncsi_dev_list = dso_local global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ncsi_dev_list, ptr @ncsi_dev_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ncsi_dev_lock\00", [18 x i8] zeroinitializer }, align 32
@ncsi_dev_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ncsi_channel_is_last.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/ncsi/ncsi-manage.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ncsi_channel_is_last.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_start_channel_monitor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ncsi_find_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_add_channel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&nc->monitor.timer)\00", [43 x i8] zeroinitializer }, align 32
@ncsi_add_channel.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&nc->lock\00", [22 x i8] zeroinitializer }, align 32
@ncsi_find_package.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_add_package.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&np->lock\00", [22 x i8] zeroinitializer }, align 32
@ncsi_find_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"NCSI: Trying to update Tx channel in single-channel mode\0A\00", [38 x i8] zeroinitializer }, align 32
@ncsi_update_tx_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_update_tx_channel.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_update_tx_channel.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_update_tx_channel.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error %d sending DCNT\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NCSI: channel %u enables Tx\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Error %d sending ECNT\0A\00", [41 x i8] zeroinitializer }, align 32
@ncsi_process_next_channel.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.1, ptr @.str.17, i8 1, i8 -116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ncsi_manage\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ncsi_process_next_channel\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NCSI: configuring channel %u\0A\00", [34 x i8] zeroinitializer }, align 32
@ncsi_process_next_channel.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.1, ptr @.str.18, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NCSI: suspending channel %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid state 0x%x on %d:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NCSI: No net_device?\0A\00", [42 x i8] zeroinitializer }, align 32
@ncsi_vlan_rx_add_vid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_vlan_rx_add_vid.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.21, ptr @.str.1, ptr @.str.22, i8 1, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ncsi_vlan_rx_add_vid\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NCSI: vid %u already registered\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"tried to add vlan id %u but NCSI max already registered (%u)\0A\00", [34 x i8] zeroinitializer }, align 32
@ncsi_vlan_rx_add_vid.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.21, ptr @.str.1, ptr @.str.24, i8 1, i8 -86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NCSI: Added new vid %u\0A\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_ncsi_vlan_rx_add_vid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ncsi_vlan_rx_add_vid = external dso_local constant [0 x i8], align 1
@__ksymtab_ncsi_vlan_rx_add_vid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ncsi_vlan_rx_add_vid to i32), ptr @__kstrtab_ncsi_vlan_rx_add_vid, ptr @__kstrtabns_ncsi_vlan_rx_add_vid }, section "___ksymtab_gpl+ncsi_vlan_rx_add_vid", align 4
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NCSI: no net_device?\0A\00", [42 x i8] zeroinitializer }, align 32
@ncsi_vlan_rx_kill_vid.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.26, ptr @.str.1, ptr @.str.27, i8 1, i8 -78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ncsi_vlan_rx_kill_vid\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NCSI: vid %u found, removing\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NCSI: vid %u wasn't registered!\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_ncsi_vlan_rx_kill_vid = external dso_local constant [0 x i8], align 1
@__kstrtabns_ncsi_vlan_rx_kill_vid = external dso_local constant [0 x i8], align 1
@__ksymtab_ncsi_vlan_rx_kill_vid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ncsi_vlan_rx_kill_vid to i32), ptr @__kstrtab_ncsi_vlan_rx_kill_vid, ptr @__kstrtabns_ncsi_vlan_rx_kill_vid }, section "___ksymtab_gpl+ncsi_vlan_rx_kill_vid", align 4
@ncsi_register_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&ndp->work)\00", [34 x i8] zeroinitializer }, align 32
@ncsi_register_dev.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ndp->lock\00", [21 x i8] zeroinitializer }, align 32
@ncsi_register_dev.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"(&ndp->requests[i].timer)\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx,multi-host\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_ncsi_register_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_ncsi_register_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_ncsi_register_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ncsi_register_dev to i32), ptr @__kstrtab_ncsi_register_dev, ptr @__kstrtabns_ncsi_register_dev }, section "___ksymtab_gpl+ncsi_register_dev", align 4
@__kstrtab_ncsi_start_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_ncsi_start_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_ncsi_start_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ncsi_start_dev to i32), ptr @__kstrtab_ncsi_start_dev, ptr @__kstrtabns_ncsi_start_dev }, section "___ksymtab_gpl+ncsi_start_dev", align 4
@ncsi_stop_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_stop_dev.__warned.35 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_stop_dev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@ncsi_stop_dev.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.36, ptr @.str.1, ptr @.str.37, i8 1, i8 -47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ncsi_stop_dev\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NCSI: Stopping device\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_ncsi_stop_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_ncsi_stop_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_ncsi_stop_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ncsi_stop_dev to i32), ptr @__kstrtab_ncsi_stop_dev, ptr @__kstrtabns_ncsi_stop_dev }, section "___ksymtab_gpl+ncsi_stop_dev", align 4
@ncsi_reset_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_reset_dev.__warned.38 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__kstrtab_ncsi_unregister_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_ncsi_unregister_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_ncsi_unregister_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ncsi_unregister_dev to i32), ptr @__kstrtab_ncsi_unregister_dev, ptr @__kstrtabns_ncsi_unregister_dev }, section "___ksymtab_gpl+ncsi_unregister_dev", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ncsi_channel_monitor.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Bad NCSI monitor state channel %d 0x%x %s queue\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Error %d sending GLS\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NCSI Channel %d timed out!\0A\00", [36 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NCSI: Failed to transmit CMD_SP\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NCSI: Failed to transmit CMD_CIS\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"NCSI: Tx failed over to channel %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"NCSI: Failed to transmit CMD %x\0A\00", [63 x i8] zeroinitializer }, align 32
@ncsi_configure_channel.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.48, ptr @.str.1, ptr @.str.49, i8 1, i8 36, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ncsi_configure_channel\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"NCSI: channel %u config done\0A\00", [34 x i8] zeroinitializer }, align 32
@ncsi_configure_channel.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.48, ptr @.str.1, ptr @.str.50, i8 1, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Dirty NCSI channel state reset\0A\00", [32 x i8] zeroinitializer }, align 32
@ncsi_configure_channel.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.48, ptr @.str.1, ptr @.str.51, i8 1, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NCSI: channel %u link down after config\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Wrong NCSI state 0x%x in config\0A\00", [63 x i8] zeroinitializer }, align 32
@ncsi_oem_gma_handlers = internal constant { [3 x %struct.ncsi_oem_gma_handler], [40 x i8] } { [3 x %struct.ncsi_oem_gma_handler] [%struct.ncsi_oem_gma_handler { i32 4413, ptr @ncsi_oem_gma_handler_bcm }, %struct.ncsi_oem_gma_handler { i32 33049, ptr @ncsi_oem_gma_handler_mlx }, %struct.ncsi_oem_gma_handler { i32 343, ptr @ncsi_oem_gma_handler_intel }], [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"NCSI: No GMA handler available for MFR-ID (0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"NCSI: Failed to transmit cmd 0x%x during configure\0A\00", [44 x i8] zeroinitializer }, align 32
@set_one_vid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.55 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Channel %u already has all VLAN filters set\0A\00", [51 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.58 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ncsi_channel_is_tx.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_channel_is_tx.__warned.59 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_channel_is_tx.__warned.60 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_channel_is_tx.__warned.61 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_suspend_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_suspend_channel.__warned.62 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Wrong NCSI state 0x%x in suspend\0A\00", [62 x i8] zeroinitializer }, align 32
@ncsi_report_link.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_report_link.__warned.64 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_choose_active_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_choose_active_channel.__warned.65 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_choose_active_channel.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.66, ptr @.str.1, ptr @.str.67, i8 1, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ncsi_choose_active_channel\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NCSI: Channel %u added to queue (link %s)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"NCSI: No channel with link found, configuring channel %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"NCSI: No channel found to configure!\0A\00", [58 x i8] zeroinitializer }, align 32
@ncsi_kick_channels.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_kick_channels.__warned.72 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_kick_channels.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.73, ptr @.str.1, ptr @.str.74, i8 1, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ncsi_kick_channels\00", [45 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"NCSI: channel %p marked dirty\0A\00", [33 x i8] zeroinitializer }, align 32
@ncsi_kick_channels.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.73, ptr @.str.1, ptr @.str.75, i8 1, i8 -98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"NCSI: kicked channel %p\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Wrong NCSI state 0x%x in workqueue\0A\00", [60 x i8] zeroinitializer }, align 32
@ncsi_probe_channel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Wrong NCSI state 0x%0x in enumeration\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"NCSI: Failed to transmit cmd 0x%x during probe\0A\00", [48 x i8] zeroinitializer }, align 32
@ncsi_check_hwa.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_check_hwa.__warned.79 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [17 x i64] [i64 15, i64 32, i64 768, i64 769, i64 770, i64 771, i64 772, i64 773, i64 774, i64 775, i64 776, i64 777, i64 778, i64 779, i64 780, i64 781, i64 782]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 32, i64 343, i64 4413, i64 33049]
@__sancov_gen_cov_switch_values.83 = internal global [12 x i64] [i64 10, i64 32, i64 772, i64 773, i64 774, i64 775, i64 776, i64 777, i64 778, i64 779, i64 780, i64 781]
@__sancov_gen_cov_switch_values.84 = internal global [9 x i64] [i64 7, i64 32, i64 1024, i64 1025, i64 1026, i64 1027, i64 1028, i64 1029, i64 1030]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 16, i64 512, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.86 = internal global [14 x i64] [i64 12, i64 32, i64 512, i64 513, i64 514, i64 515, i64 516, i64 517, i64 518, i64 519, i64 520, i64 521, i64 522, i64 523]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 520, i64 521]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 256]
@__sancov_gen_cov_switch_values.89 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 782, i64 1030]
@___asan_gen_.91 = private unnamed_addr constant [14 x i8] c"ncsi_dev_list\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 25, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"ncsi_dev_lock\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 26, i32 1 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 39, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 222, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 223, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 294, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 916, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 974, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 978, i32 29 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 986, i32 7 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1583, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1589, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1594, i32 29 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1677, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1687, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1694, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1707, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1727, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1736, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1743, i32 19 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1780, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1784, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1790, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1806, i32 33 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1860, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 117, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 118, i32 33 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 118, i32 40 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 135, i32 30 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 141, i32 29 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1022, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1038, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1139, i32 10 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1162, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1168, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1194, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1203, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1218, i32 21 }
@___asan_gen_.247 = private unnamed_addr constant [22 x i8] c"ncsi_oem_gma_handlers\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 824, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 850, i32 7 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 740, i32 7 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 673, i32 7 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 695, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.266, i32 723, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 586, i32 24 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1284, i32 5 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1301, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1308, i32 8 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1636, i32 6 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1656, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1550, i32 24 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1515, i32 24 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private constant [26 x i8] c"../net/ncsi/ncsi-manage.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 1528, i32 6 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__ksymtab_ncsi_register_dev, ptr @__ksymtab_ncsi_start_dev, ptr @__ksymtab_ncsi_stop_dev, ptr @__ksymtab_ncsi_unregister_dev, ptr @__ksymtab_ncsi_vlan_rx_add_vid, ptr @__ksymtab_ncsi_vlan_rx_kill_vid, ptr @ncsi_dev_list, ptr @.str, ptr @ncsi_dev_lock, ptr @.str.1, ptr @.str.2, ptr @ncsi_add_channel.__key, ptr @.str.4, ptr @ncsi_add_channel.__key.5, ptr @.str.6, ptr @ncsi_add_package.__key, ptr @.str.7, ptr @.str.8, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ncsi_register_dev.__key, ptr @.str.29, ptr @ncsi_register_dev.__key.30, ptr @.str.31, ptr @ncsi_register_dev.__key.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @ncsi_oem_gma_handlers, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.63, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_dev_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_dev_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_add_channel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_add_channel.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_add_package.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_register_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_register_dev.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_register_dev.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_oem_gma_handlers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ncsi_channel_has_link(ptr nocapture noundef readonly %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr %struct.ncsi_channel, ptr %channel, i32 0, i32 7, i32 2, i32 3, i32 2
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ncsi_channel_is_last(ptr noundef %ndp, ptr noundef readnone %channel) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b75 = load i1, ptr @ncsi_channel_is_last.__warned, align 1
  br i1 %.b75, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_channel_is_last.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 39, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  %0 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn82 = load volatile ptr, ptr %packages, align 4
  %cmp.not83 = icmp eq ptr %.pn82, %packages
  br i1 %cmp.not83, label %do.end.cleanup_crit_edge, label %do.end.do.body10_crit_edge

do.end.do.body10_crit_edge:                       ; preds = %do.end
  br label %do.body10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %do.end21.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %.pn84 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load volatile ptr, ptr %.pn84, align 4
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.cond.loopexit.cleanup_crit_edge, label %for.cond.loopexit.do.body10_crit_edge

for.cond.loopexit.do.body10_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

for.cond.loopexit.cleanup_crit_edge:              ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body10:                                        ; preds = %for.cond.loopexit.do.body10_crit_edge, %do.end.do.body10_crit_edge
  %.pn84 = phi ptr [ %.pn, %for.cond.loopexit.do.body10_crit_edge ], [ %.pn82, %do.end.do.body10_crit_edge ]
  %call11 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %do.body10.do.end21_crit_edge

do.body10.do.end21_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true13:                                  ; preds = %do.body10
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b7274 = load i1, ptr @ncsi_channel_is_last.__warned.3, align 1
  br i1 %.b7274, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_channel_is_last.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 40, ptr noundef nonnull @.str.2) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true13.do.end21_crit_edge, %do.body10.do.end21_crit_edge
  %channels = getelementptr i8, ptr %.pn84, i32 -8
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn7379 = load volatile ptr, ptr %channels, align 4
  %cmp33.not80 = icmp eq ptr %.pn7379, %channels
  br i1 %cmp33.not80, label %do.end21.for.cond.loopexit_crit_edge, label %do.end21.for.body34_crit_edge

do.end21.for.body34_crit_edge:                    ; preds = %do.end21
  br label %for.body34

do.end21.for.cond.loopexit_crit_edge:             ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body34:                                       ; preds = %for.inc.for.body34_crit_edge, %do.end21.for.body34_crit_edge
  %.pn7381 = phi ptr [ %.pn73, %for.inc.for.body34_crit_edge ], [ %.pn7379, %do.end21.for.body34_crit_edge ]
  %nc.0 = getelementptr i8, ptr %.pn7381, i32 -828
  %cmp35 = icmp eq ptr %nc.0, %channel
  br i1 %cmp35, label %for.body34.for.inc_crit_edge, label %if.end37

for.body34.for.inc_crit_edge:                     ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end37:                                         ; preds = %for.body34
  %state = getelementptr i8, ptr %.pn7381, i32 -824
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp38 = icmp eq i32 %4, 2
  br i1 %cmp38, label %land.lhs.true39, label %if.end37.for.inc_crit_edge

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true39:                                  ; preds = %if.end37
  %arrayidx1.i = getelementptr i8, ptr %.pn7381, i32 -576
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx1.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true39.for.inc_crit_edge, label %land.lhs.true39.cleanup_crit_edge

land.lhs.true39.cleanup_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true39.for.inc_crit_edge:                ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true39.for.inc_crit_edge, %if.end37.for.inc_crit_edge, %for.body34.for.inc_crit_edge
  %7 = ptrtoint ptr %.pn7381 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn73 = load volatile ptr, ptr %.pn7381, align 4
  %cmp33.not = icmp eq ptr %.pn73, %channels
  br i1 %cmp33.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body34_crit_edge

for.inc.for.body34_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

cleanup:                                          ; preds = %land.lhs.true39.cleanup_crit_edge, %for.cond.loopexit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %cmp.not78 = phi i1 [ true, %do.end.cleanup_crit_edge ], [ false, %land.lhs.true39.cleanup_crit_edge ], [ true, %for.cond.loopexit.cleanup_crit_edge ]
  ret i1 %cmp.not78
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ncsi_start_channel_monitor(ptr noundef %nc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %nc, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %enabled = getelementptr inbounds %struct.ncsi_channel, ptr %nc, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %land.rhs

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.rhs:                                         ; preds = %entry
  %.b58 = load i1, ptr @ncsi_start_channel_monitor.__already_done, align 1
  br i1 %.b58, label %land.rhs.if.end37_crit_edge, label %if.then, !prof !227

land.rhs.if.end37_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_start_channel_monitor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 172, i32 noundef 9, ptr noundef null) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then, %land.rhs.if.end37_crit_edge, %entry.if.end37_crit_edge
  %monitor = getelementptr inbounds %struct.ncsi_channel, ptr %nc, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 4
  %state = getelementptr inbounds %struct.ncsi_channel, ptr %nc, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %call50 = tail call i32 @mod_timer(ptr noundef %monitor, i32 noundef %add) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ncsi_stop_channel_monitor(ptr noundef %nc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %nc, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %enabled = getelementptr inbounds %struct.ncsi_channel, ptr %nc, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %monitor = getelementptr inbounds %struct.ncsi_channel, ptr %nc, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %call10 = tail call i32 @del_timer_sync(ptr noundef %monitor) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ncsi_find_channel(ptr noundef %np, i8 noundef zeroext %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @ncsi_find_channel.__warned, align 1
  br i1 %.b29, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 200, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %channels = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %channels, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %nc.0 = getelementptr i8, ptr %.pn, i32 -828
  %1 = ptrtoint ptr %nc.0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nc.0, align 8
  %cmp12 = icmp eq i8 %2, %id
  br i1 %cmp12, label %cleanup.split.loop.exit33, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup.split.loop.exit33:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %nc.0.le = getelementptr i8, ptr %.pn, i32 -828
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit33, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %nc.0.le, %cleanup.split.loop.exit33 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ncsi_add_channel(ptr noundef %np, i8 noundef zeroext %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 848) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %id, ptr %call7.i.i, align 8
  %package = getelementptr inbounds %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 4
  %2 = ptrtoint ptr %package to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %np, ptr %package, align 8
  %state = getelementptr inbounds %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state, align 4
  %monitor = getelementptr inbounds %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 11
  %enabled = getelementptr inbounds %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled, align 4
  tail call void @init_timer_key(ptr noundef %monitor, ptr noundef nonnull @ncsi_channel_monitor, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @ncsi_add_channel.__key) #9
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ncsi_add_channel.__key.5, i16 noundef signext 3) #9
  %link = getelementptr inbounds %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 13
  %5 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %link, ptr %link, align 4
  %prev.i = getelementptr inbounds %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %link, ptr %prev.i, align 8
  %arrayidx = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 6, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx, align 8
  %arrayidx.1 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %arrayidx.1, align 8
  %arrayidx.2 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %arrayidx.2, align 8
  %arrayidx.3 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 6, i32 3
  %10 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %arrayidx.3, align 8
  %arrayidx.4 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 6, i32 4
  %11 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %arrayidx.4, align 8
  %arrayidx.5 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 6, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %arrayidx.5, align 8
  %arrayidx11 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 7, i32 0
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx11, align 8
  %arrayidx11.1 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %arrayidx11.1, align 4
  %arrayidx11.2 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %arrayidx11.2, align 8
  %arrayidx11.3 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %arrayidx11.3, align 4
  %arrayidx11.4 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 7, i32 4
  %17 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %arrayidx11.4, align 8
  %arrayidx11.5 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 7, i32 5
  %18 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %arrayidx11.5, align 4
  %arrayidx11.6 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 7, i32 6
  %19 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %arrayidx11.6, align 8
  %arrayidx11.7 = getelementptr %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 7, i32 7
  %20 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %arrayidx11.7, align 4
  %lock20 = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 3
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock20) #9
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b29.i = load i1, ptr @ncsi_find_channel.__warned, align 1
  br i1 %.b29.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 200, ptr noundef nonnull @.str.2) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %channels.i = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %channels.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %21 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %for.cond.i.if.end31_crit_edge, label %for.body.i

for.cond.i.if.end31_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

for.body.i:                                       ; preds = %for.cond.i
  %nc.0.i = getelementptr i8, ptr %.pn.i, i32 -828
  %22 = ptrtoint ptr %nc.0.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nc.0.i, align 8
  %cmp12.i = icmp eq i8 %23, %id
  br i1 %cmp12.i, label %ncsi_find_channel.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

ncsi_find_channel.exit:                           ; preds = %for.body.i
  %nc.0.i.le = getelementptr i8, ptr %.pn.i, i32 -828
  %tobool28.not = icmp eq ptr %nc.0.i.le, null
  br i1 %tobool28.not, label %ncsi_find_channel.exit.if.end31_crit_edge, label %if.then29

ncsi_find_channel.exit.if.end31_crit_edge:        ; preds = %ncsi_find_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %ncsi_find_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock20, i32 noundef %call22) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end31:                                         ; preds = %ncsi_find_channel.exit.if.end31_crit_edge, %for.cond.i.if.end31_crit_edge
  %node = getelementptr inbounds %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 12
  %prev.i65 = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i65, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %25, ptr noundef %channels.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end31.list_add_tail_rcu.exit_crit_edge

if.end31.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %channels.i, ptr %node, align 4
  %prev2.i.i = getelementptr inbounds %struct.ncsi_channel, ptr %call7.i.i, i32 0, i32 12, i32 1
  %27 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %prev2.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %node, ptr %25, align 4
  %29 = ptrtoint ptr %prev.i65 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %node, ptr %prev.i65, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end31.list_add_tail_rcu.exit_crit_edge
  %channel_num = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 4
  %30 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %channel_num, align 4
  %inc32 = add i32 %31, 1
  store i32 %inc32, ptr %channel_num, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock20, i32 noundef %call22) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail_rcu.exit, %if.then29, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %nc.0.i.le, %if.then29 ], [ %call7.i.i, %list_add_tail_rcu.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncsi_channel_monitor(ptr noundef %t) #1 align 64 {
entry:
  %nca = alloca %struct.ncsi_cmd_arg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -772
  %package = getelementptr i8, ptr %t, i32 -716
  %0 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %package, align 8
  %ndp1 = getelementptr inbounds %struct.ncsi_package, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nca) #9
  %4 = call ptr @memset(ptr %nca, i32 255, i32 40)
  %lock = getelementptr i8, ptr %t, i32 -760
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %state7 = getelementptr i8, ptr %t, i32 -768
  %5 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state7, align 4
  %link = getelementptr i8, ptr %t, i32 64
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %link, align 4
  %enabled9 = getelementptr inbounds %struct.anon.140, ptr %t, i32 0, i32 1
  %9 = ptrtoint ptr %enabled9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enabled9, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool10.not = icmp eq i8 %10, 0
  %state13 = getelementptr inbounds %struct.anon.140, ptr %t, i32 0, i32 2
  %11 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br i1 %tobool10.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %8, %link
  br i1 %cmp.i.not, label %if.end63.critedge, label %land.rhs

land.rhs:                                         ; preds = %if.end
  %.b215 = load i1, ptr @ncsi_channel_monitor.__already_done, align 1
  br i1 %.b215, label %land.rhs.bad_state_crit_edge, label %if.then27, !prof !227

land.rhs.bad_state_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_state

if.then27:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_channel_monitor.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 110, i32 noundef 9, ptr noundef null) #9
  br label %bad_state

if.end63.critedge:                                ; preds = %if.end
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end89, label %if.end63.critedge.bad_state_crit_edge

if.end63.critedge.bad_state_crit_edge:            ; preds = %if.end63.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %bad_state

bad_state:                                        ; preds = %if.end63.critedge.bad_state_crit_edge, %if.then27, %land.rhs.bad_state_crit_edge
  %cond = phi ptr [ @.str.40, %if.then27 ], [ @.str.41, %if.end63.critedge.bad_state_crit_edge ], [ @.str.40, %land.rhs.bad_state_crit_edge ]
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 8
  %conv69 = zext i8 %16 to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %14, ptr noundef nonnull @.str.39, i32 noundef %conv69, i32 noundef %6, ptr noundef nonnull %cond) #13
  %call81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %17 = ptrtoint ptr %enabled9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %enabled9, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call81) #9
  br label %cleanup

if.end89:                                         ; preds = %if.end63.critedge
  %18 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %sw.default [
    i32 0, label %if.end89.sw.bb_crit_edge
    i32 1, label %if.end89.sw.bb_crit_edge217
    i32 2, label %if.end89.do.body144_crit_edge
    i32 3, label %if.end89.do.body144_crit_edge218
    i32 4, label %if.end89.do.body144_crit_edge219
    i32 5, label %if.end89.do.body144_crit_edge220
  ]

if.end89.do.body144_crit_edge220:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

if.end89.do.body144_crit_edge219:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

if.end89.do.body144_crit_edge218:                 ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

if.end89.do.body144_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

if.end89.sw.bb_crit_edge217:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end89.sw.bb_crit_edge:                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end89.sw.bb_crit_edge, %if.end89.sw.bb_crit_edge217
  %19 = ptrtoint ptr %nca to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %3, ptr %nca, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %1, align 4
  %package92 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %22 = ptrtoint ptr %package92 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %package92, align 2
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr, align 8
  %channel = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %25 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %channel, align 1
  %type = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %26 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 10, ptr %type, align 4
  %req_flags = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 6
  %27 = ptrtoint ptr %req_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %req_flags, align 4
  %call94 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %sw.bb.do.body144_crit_edge, label %if.then96

sw.bb.do.body144_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body144

if.then96:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev98 = getelementptr inbounds %struct.ncsi_dev, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev98, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.42, i32 noundef %call94) #13
  br label %do.body144

sw.default:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  %dev102 = getelementptr inbounds %struct.ncsi_dev, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %dev102 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev102, align 4
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr, align 8
  %conv104 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %31, ptr noundef nonnull @.str.43, i32 noundef %conv104) #13
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 256, ptr %3, align 4
  %link_up.i = getelementptr inbounds %struct.ncsi_dev, ptr %3, i32 0, i32 1
  %35 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %link_up.i, align 4
  %handler.i = getelementptr inbounds %struct.ncsi_dev, ptr %3, i32 0, i32 3
  %36 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %handler.i, align 4
  tail call void %37(ptr noundef %3) #9
  %flags105 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %3, i32 0, i32 1
  %38 = ptrtoint ptr %flags105 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags105, align 4
  %or = or i32 %39, 4
  store i32 %or, ptr %flags105, align 4
  %call115 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %40 = ptrtoint ptr %enabled9 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %enabled9, align 4
  %41 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 3, ptr %state7, align 4
  %arrayidx123 = getelementptr i8, ptr %t, i32 -520
  %42 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx123, align 4
  %and = and i32 %43, -2
  store i32 %and, ptr %arrayidx123, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call115) #9
  %lock132 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %3, i32 0, i32 3
  %call134 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock132) #9
  %44 = ptrtoint ptr %state7 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 2, ptr %state7, align 4
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %3, i32 0, i32 13
  tail call fastcc void @list_add_tail_rcu(ptr noundef %link, ptr noundef %channel_queue)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock132, i32 noundef %call134) #9
  %call142 = tail call i32 @ncsi_process_next_channel(ptr noundef %3)
  br label %cleanup

do.body144:                                       ; preds = %if.then96, %sw.bb.do.body144_crit_edge, %if.end89.do.body144_crit_edge, %if.end89.do.body144_crit_edge218, %if.end89.do.body144_crit_edge219, %if.end89.do.body144_crit_edge220
  %call152 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %45 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state13, align 4
  %inc = add i32 %46, 1
  store i32 %inc, ptr %state13, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call152) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %47, 100
  %call161 = call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body144, %sw.default, %bad_state, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nca) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #9
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ncsi_find_package(ptr noundef %ndp, i8 noundef zeroext %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @ncsi_find_package.__warned, align 1
  br i1 %.b29, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_package.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 274, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %packages, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %np.0 = getelementptr i8, ptr %.pn, i32 -80
  %1 = ptrtoint ptr %np.0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %np.0, align 4
  %cmp12 = icmp eq i8 %2, %id
  br i1 %cmp12, label %cleanup.split.loop.exit33, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup.split.loop.exit33:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %np.0.le = getelementptr i8, ptr %.pn, i32 -80
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit33, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %np.0.le, %cleanup.split.loop.exit33 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ncsi_add_package(ptr noundef %ndp, i8 noundef zeroext %id) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 100) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %id, ptr %call7.i.i, align 8
  %ndp2 = getelementptr inbounds %struct.ncsi_package, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %ndp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ndp, ptr %ndp2, align 4
  %lock = getelementptr inbounds %struct.ncsi_package, ptr %call7.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @ncsi_add_package.__key, i16 noundef signext 3) #9
  %channels = getelementptr inbounds %struct.ncsi_package, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %channels, ptr %channels, align 8
  %prev.i = getelementptr inbounds %struct.ncsi_package, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %channels, ptr %prev.i, align 4
  %channel_whitelist = getelementptr inbounds %struct.ncsi_package, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %channel_whitelist to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %channel_whitelist, align 4
  %lock7 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 3
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock7) #9
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b29.i = load i1, ptr @ncsi_find_package.__warned, align 1
  br i1 %.b29.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_package.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 274, ptr noundef nonnull @.str.2) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %packages.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %packages.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %6 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %packages.i
  br i1 %cmp.not.i, label %for.cond.i.if.end18_crit_edge, label %for.body.i

for.cond.i.if.end18_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body.i:                                       ; preds = %for.cond.i
  %np.0.i = getelementptr i8, ptr %.pn.i, i32 -80
  %7 = ptrtoint ptr %np.0.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %np.0.i, align 4
  %cmp12.i = icmp eq i8 %8, %id
  br i1 %cmp12.i, label %ncsi_find_package.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

ncsi_find_package.exit:                           ; preds = %for.body.i
  %np.0.i.le = getelementptr i8, ptr %.pn.i, i32 -80
  %tobool15.not = icmp eq ptr %np.0.i.le, null
  br i1 %tobool15.not, label %ncsi_find_package.exit.if.end18_crit_edge, label %if.then16

ncsi_find_package.exit.if.end18_crit_edge:        ; preds = %ncsi_find_package.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then16:                                        ; preds = %ncsi_find_package.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock7, i32 noundef %call9) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end18:                                         ; preds = %ncsi_find_package.exit.if.end18_crit_edge, %for.cond.i.if.end18_crit_edge
  %node = getelementptr inbounds %struct.ncsi_package, ptr %call7.i.i, i32 0, i32 6
  %prev.i39 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev.i39 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i39, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %10, ptr noundef %packages.i) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.list_add_tail_rcu.exit_crit_edge

if.end18.list_add_tail_rcu.exit_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %packages.i, ptr %node, align 8
  %prev2.i.i = getelementptr inbounds %struct.ncsi_package, ptr %call7.i.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %node, ptr %10, align 4
  %14 = ptrtoint ptr %prev.i39 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node, ptr %prev.i39, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.end18.list_add_tail_rcu.exit_crit_edge
  %package_num = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 5
  %15 = ptrtoint ptr %package_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %package_num, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %package_num, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock7, i32 noundef %call9) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail_rcu.exit, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %np.0.i.le, %if.then16 ], [ %call7.i.i, %list_add_tail_rcu.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ncsi_remove_package(ptr noundef %np) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 2
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  %channels = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 5
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %cmp.not34 = icmp eq ptr %3, %channels
  br i1 %cmp.not34, label %entry.do.body14_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

for.body:                                         ; preds = %ncsi_remove_channel.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in35 = phi ptr [ %.pn, %ncsi_remove_channel.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %nc.0 = getelementptr i8, ptr %.pn.in35, i32 -828
  %4 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in35, align 4
  %package.i = getelementptr i8, ptr %.pn.in35, i32 -772
  %5 = ptrtoint ptr %package.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %package.i, align 8
  %lock.i = getelementptr i8, ptr %.pn.in35, i32 -816
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %addrs.i = getelementptr i8, ptr %.pn.in35, i32 -316
  %7 = ptrtoint ptr %addrs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %addrs.i, align 8
  tail call void @kfree(ptr noundef %8) #9
  %vids.i = getelementptr i8, ptr %.pn.in35, i32 -292
  %9 = ptrtoint ptr %vids.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vids.i, align 8
  tail call void @kfree(ptr noundef %10) #9
  %state.i = getelementptr i8, ptr %.pn.in35, i32 -824
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %state.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %enabled.i.i = getelementptr i8, ptr %.pn.in35, i32 -8
  %12 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i.i, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #9
  br label %ncsi_stop_channel_monitor.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %monitor.i.i = getelementptr i8, ptr %.pn.in35, i32 -56
  %14 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #9
  %call10.i.i = tail call i32 @del_timer_sync(ptr noundef %monitor.i.i) #9
  br label %ncsi_stop_channel_monitor.exit.i

ncsi_stop_channel_monitor.exit.i:                 ; preds = %if.end.i.i, %if.then.i.i
  %lock13.i = getelementptr inbounds %struct.ncsi_package, ptr %6, i32 0, i32 3
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock13.i) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %ncsi_stop_channel_monitor.exit.i.ncsi_remove_channel.exit_crit_edge

ncsi_stop_channel_monitor.exit.i.ncsi_remove_channel.exit_crit_edge: ; preds = %ncsi_stop_channel_monitor.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ncsi_remove_channel.exit

if.end.i.i.i:                                     ; preds = %ncsi_stop_channel_monitor.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr i8, ptr %.pn.in35, i32 4
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in35, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %ncsi_remove_channel.exit

ncsi_remove_channel.exit:                         ; preds = %if.end.i.i.i, %ncsi_stop_channel_monitor.exit.i.ncsi_remove_channel.exit_crit_edge
  %prev.i.i = getelementptr i8, ptr %.pn.in35, i32 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %channel_num.i = getelementptr inbounds %struct.ncsi_package, ptr %6, i32 0, i32 4
  %22 = ptrtoint ptr %channel_num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %channel_num.i, align 4
  %dec.i = add i32 %23, -1
  store i32 %dec.i, ptr %channel_num.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13.i, i32 noundef %call15.i) #9
  tail call void @kfree(ptr noundef %nc.0) #9
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %ncsi_remove_channel.exit.do.body14_crit_edge, label %ncsi_remove_channel.exit.for.body_crit_edge

ncsi_remove_channel.exit.for.body_crit_edge:      ; preds = %ncsi_remove_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

ncsi_remove_channel.exit.do.body14_crit_edge:     ; preds = %ncsi_remove_channel.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

do.body14:                                        ; preds = %ncsi_remove_channel.exit.do.body14_crit_edge, %entry.do.body14_crit_edge
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %1, i32 0, i32 3
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %node20 = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node20) #9
  br i1 %call.i.i, label %if.end.i.i33, label %do.body14.list_del_rcu.exit_crit_edge

do.body14.list_del_rcu.exit_crit_edge:            ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i33:                                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i32 = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 6, i32 1
  %24 = ptrtoint ptr %prev.i.i32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i32, align 4
  %26 = ptrtoint ptr %node20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %node20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i33, %do.body14.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.ncsi_package, ptr %np, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %package_num = getelementptr inbounds %struct.ncsi_dev_priv, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %package_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %package_num, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %package_num, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #9
  tail call void @kfree(ptr noundef %np) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ncsi_find_package_and_channel(ptr noundef %ndp, i8 noundef zeroext %id, ptr noundef writeonly %np, ptr noundef writeonly %nc) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i8 %id, 5
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b29.i = load i1, ptr @ncsi_find_package.__warned, align 1
  br i1 %.b29.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_package.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 274, ptr noundef nonnull @.str.2) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %packages.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %packages.i, %do.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %packages.i
  br i1 %cmp.not.i, label %for.cond.i.cond.end_crit_edge, label %for.body.i

for.cond.i.cond.end_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

for.body.i:                                       ; preds = %for.cond.i
  %np.0.i = getelementptr i8, ptr %.pn.i, i32 -80
  %2 = ptrtoint ptr %np.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %np.0.i, align 4
  %cmp12.i = icmp eq i8 %3, %0
  br i1 %cmp12.i, label %ncsi_find_package.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

ncsi_find_package.exit:                           ; preds = %for.body.i
  %np.0.i.le = getelementptr i8, ptr %.pn.i, i32 -80
  %tobool.not = icmp eq ptr %np.0.i.le, null
  br i1 %tobool.not, label %ncsi_find_package.exit.cond.end_crit_edge, label %cond.true

ncsi_find_package.exit.cond.end_crit_edge:        ; preds = %ncsi_find_package.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %ncsi_find_package.exit
  %4 = and i8 %id, 31
  %call.i15 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i19, label %cond.true.do.end.i23_crit_edge

cond.true.do.end.i23_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i23

land.lhs.true.i19:                                ; preds = %cond.true
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %land.lhs.true.i19.do.end.i23_crit_edge, label %land.lhs.true3.i21

land.lhs.true.i19.do.end.i23_crit_edge:           ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i23

land.lhs.true3.i21:                               ; preds = %land.lhs.true.i19
  %.b29.i20 = load i1, ptr @ncsi_find_channel.__warned, align 1
  br i1 %.b29.i20, label %land.lhs.true3.i21.do.end.i23_crit_edge, label %if.then.i22

land.lhs.true3.i21.do.end.i23_crit_edge:          ; preds = %land.lhs.true3.i21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i23

if.then.i22:                                      ; preds = %land.lhs.true3.i21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 200, ptr noundef nonnull @.str.2) #9
  br label %do.end.i23

do.end.i23:                                       ; preds = %if.then.i22, %land.lhs.true3.i21.do.end.i23_crit_edge, %land.lhs.true.i19.do.end.i23_crit_edge, %cond.true.do.end.i23_crit_edge
  %channels.i = getelementptr i8, ptr %.pn.i, i32 -8
  br label %for.cond.i27

for.cond.i27:                                     ; preds = %for.body.i29.for.cond.i27_crit_edge, %do.end.i23
  %.pn.in.i24 = phi ptr [ %channels.i, %do.end.i23 ], [ %.pn.i25, %for.body.i29.for.cond.i27_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i25 = load volatile ptr, ptr %.pn.in.i24, align 4
  %cmp.not.i26 = icmp eq ptr %.pn.i25, %channels.i
  br i1 %cmp.not.i26, label %for.cond.i27.cond.end_crit_edge, label %for.body.i29

for.cond.i27.cond.end_crit_edge:                  ; preds = %for.cond.i27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

for.body.i29:                                     ; preds = %for.cond.i27
  %nc.0.i = getelementptr i8, ptr %.pn.i25, i32 -828
  %6 = ptrtoint ptr %nc.0.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nc.0.i, align 8
  %cmp12.i28 = icmp eq i8 %7, %4
  br i1 %cmp12.i28, label %cond.end.loopexit.split.loop.exit, label %for.body.i29.for.cond.i27_crit_edge

for.body.i29.for.cond.i27_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i27

cond.end.loopexit.split.loop.exit:                ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #11
  %nc.0.i.le = getelementptr i8, ptr %.pn.i25, i32 -828
  br label %cond.end

cond.end:                                         ; preds = %cond.end.loopexit.split.loop.exit, %for.cond.i27.cond.end_crit_edge, %ncsi_find_package.exit.cond.end_crit_edge, %for.cond.i.cond.end_crit_edge
  %retval.0.i34 = phi ptr [ null, %ncsi_find_package.exit.cond.end_crit_edge ], [ %np.0.i.le, %cond.end.loopexit.split.loop.exit ], [ %np.0.i.le, %for.cond.i27.cond.end_crit_edge ], [ null, %for.cond.i.cond.end_crit_edge ]
  %cond = phi ptr [ null, %ncsi_find_package.exit.cond.end_crit_edge ], [ %nc.0.i.le, %cond.end.loopexit.split.loop.exit ], [ null, %for.cond.i27.cond.end_crit_edge ], [ null, %for.cond.i.cond.end_crit_edge ]
  %tobool6.not = icmp eq ptr %np, null
  br i1 %tobool6.not, label %cond.end.if.end_crit_edge, label %if.then

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i34, ptr %np, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.if.end_crit_edge
  %tobool7.not = icmp eq ptr %nc, null
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond, ptr %nc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ncsi_alloc_request(ptr noundef %ndp, i32 noundef %req_flags) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %request_id = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 9
  %0 = ptrtoint ptr %request_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %request_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %1)
  %cmp558 = icmp slt i32 %1, 256
  br i1 %cmp558, label %entry.for.body_crit_edge, label %entry.for.body16.preheader_crit_edge

entry.for.body16.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond12.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp1460 = icmp ugt i32 %1, 1
  br i1 %cmp1460, label %for.cond12.preheader.for.body16.preheader_crit_edge, label %for.cond12.preheader.found_crit_edge

for.cond12.preheader.found_crit_edge:             ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

for.cond12.preheader.for.body16.preheader_crit_edge: ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16.preheader

for.body16.preheader:                             ; preds = %for.cond12.preheader.for.body16.preheader_crit_edge, %entry.for.body16.preheader_crit_edge
  br label %for.body16

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.059 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %used = getelementptr %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 8, i32 %i.059, i32 1
  %2 = ptrtoint ptr %used to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %used, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.found.sink.split_crit_edge, label %for.inc

for.body.found.sink.split_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %found.sink.split

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond12.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body16:                                       ; preds = %for.inc29.for.body16_crit_edge, %for.body16.preheader
  %i.161 = phi i32 [ %inc30, %for.inc29.for.body16_crit_edge ], [ 1, %for.body16.preheader ]
  %used19 = getelementptr %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 8, i32 %i.161, i32 1
  %4 = ptrtoint ptr %used19 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %used19, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool20.not = icmp eq i8 %5, 0
  br i1 %tobool20.not, label %for.body16.found.sink.split_crit_edge, label %for.inc29

for.body16.found.sink.split_crit_edge:            ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %found.sink.split

for.inc29:                                        ; preds = %for.body16
  %inc30 = add nuw i32 %i.161, 1
  %exitcond66.not = icmp eq i32 %inc30, %1
  br i1 %exitcond66.not, label %for.inc29.found_crit_edge, label %for.inc29.for.body16_crit_edge

for.inc29.for.body16_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.inc29.found_crit_edge:                        ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #11
  br label %found

found.sink.split:                                 ; preds = %for.body16.found.sink.split_crit_edge, %for.body.found.sink.split_crit_edge
  %i.161.lcssa.sink73 = phi i32 [ %i.161, %for.body16.found.sink.split_crit_edge ], [ %i.059, %for.body.found.sink.split_crit_edge ]
  %used19.lcssa.sink = phi ptr [ %used19, %for.body16.found.sink.split_crit_edge ], [ %used, %for.body.found.sink.split_crit_edge ]
  %arrayidx18 = getelementptr %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 8, i32 %i.161.lcssa.sink73
  %6 = ptrtoint ptr %used19.lcssa.sink to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %used19.lcssa.sink, align 1
  %flags26 = getelementptr %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 8, i32 %i.161.lcssa.sink73, i32 2
  %7 = ptrtoint ptr %flags26 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %req_flags, ptr %flags26, align 4
  %add27 = add i32 %i.161.lcssa.sink73, 1
  %8 = ptrtoint ptr %request_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add27, ptr %request_id, align 4
  br label %found

found:                                            ; preds = %found.sink.split, %for.inc29.found_crit_edge, %for.cond12.preheader.found_crit_edge
  %nr.0 = phi ptr [ null, %for.cond12.preheader.found_crit_edge ], [ %arrayidx18, %found.sink.split ], [ null, %for.inc29.found_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret ptr %nr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ncsi_free_request(ptr noundef %nr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ndp1 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 3
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  %enabled = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 7
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled, align 4
  %timer = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 6
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #9
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %cmd8 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %5 = ptrtoint ptr %cmd8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cmd8, align 4
  %rsp9 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %7 = ptrtoint ptr %rsp9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rsp9, align 4
  store ptr null, ptr %cmd8, align 4
  store ptr null, ptr %rsp9, align 4
  %used = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 1
  %9 = ptrtoint ptr %used to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %used, align 1
  %flags12 = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 2
  %10 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags12, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %tobool18.not = icmp eq ptr %6, null
  %or.cond = select i1 %tobool13.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %do.body3.if.end24_crit_edge, label %land.lhs.true19

do.body3.if.end24_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true19:                                  ; preds = %do.body3
  %pending_req_num = getelementptr inbounds %struct.ncsi_dev_priv, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %pending_req_num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pending_req_num, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %pending_req_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp20 = icmp eq i32 %dec, 0
  br i1 %cmp20, label %if.then22, label %land.lhs.true19.if.end24_crit_edge

land.lhs.true19.if.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr inbounds %struct.ncsi_dev_priv, ptr %1, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %14 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %14, ptr noundef %work) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true19.if.end24_crit_edge, %do.body3.if.end24_crit_edge
  tail call void @consume_skb(ptr noundef %6) #9
  tail call void @consume_skb(ptr noundef %8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ncsi_find_dev(ptr noundef readnone %dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true3

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @ncsi_find_dev.__warned, align 1
  br i1 %.b25, label %land.lhs.true3.for.cond.preheader_crit_edge, label %if.then

land.lhs.true3.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @.str.2) #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true3.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ @ncsi_dev_list, %for.cond.preheader ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @ncsi_dev_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %dev9 = getelementptr i8, ptr %.pn, i32 -24764
  %1 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev9, align 4
  %cmp10 = icmp eq ptr %2, %dev
  br i1 %cmp10, label %cleanup.split.loop.exit26, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

cleanup.split.loop.exit26:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %ndp.0.le = getelementptr i8, ptr %.pn, i32 -24772
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit26, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %ndp.0.le, %cleanup.split.loop.exit26 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_update_tx_channel(ptr noundef %ndp, ptr noundef readonly %package, ptr noundef readonly %disable, ptr noundef readonly %enable) local_unnamed_addr #1 align 64 {
entry:
  %nca = alloca %struct.ncsi_cmd_arg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nca) #9
  %0 = getelementptr inbounds i8, ptr %nca, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 36)
  %multi_channel = getelementptr inbounds %struct.ncsi_package, ptr %package, i32 0, i32 7
  %2 = ptrtoint ptr %multi_channel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %multi_channel, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %multi_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 18
  %4 = ptrtoint ptr %multi_package to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %multi_package, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %7, ptr noundef nonnull @.str.8) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %nca to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ndp, ptr %nca, align 4
  %req_flags = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 6
  %9 = ptrtoint ptr %req_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %req_flags, align 4
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true4:                                   ; preds = %if.end
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b281 = load i1, ptr @ncsi_update_tx_channel.__warned, align 1
  br i1 %.b281, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_update_tx_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 921, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true4.do.end_crit_edge, %if.end.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  %10 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn291 = load volatile ptr, ptr %packages, align 4
  %cmp.not292 = icmp ne ptr %.pn291, %packages
  %tobool16.not293 = icmp eq ptr %disable, null
  %or.cond294 = and i1 %cmp.not292, %tobool16.not293
  br i1 %or.cond294, label %if.end18.lr.ph, label %do.end.do.body74_crit_edge

do.end.do.body74_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body74

if.end18.lr.ph:                                   ; preds = %do.end
  %multi_package19 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 18
  br label %if.end18

if.end18:                                         ; preds = %for.inc63.if.end18_crit_edge, %if.end18.lr.ph
  %.pn295 = phi ptr [ %.pn291, %if.end18.lr.ph ], [ %.pn, %for.inc63.if.end18_crit_edge ]
  %np.0 = getelementptr i8, ptr %.pn295, i32 -80
  %11 = ptrtoint ptr %multi_package19 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %multi_package19, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool20.not = icmp ne i8 %12, 0
  %cmp22.not = icmp eq ptr %np.0, %package
  %or.cond282 = select i1 %tobool20.not, i1 true, i1 %cmp22.not
  br i1 %or.cond282, label %do.body25, label %if.end18.for.inc63_crit_edge

if.end18.for.inc63_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63

do.body25:                                        ; preds = %if.end18
  %call26 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %do.body25.do.end36_crit_edge

do.body25.do.end36_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

land.lhs.true28:                                  ; preds = %do.body25
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b272280 = load i1, ptr @ncsi_update_tx_channel.__warned.9, align 1
  br i1 %.b272280, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_update_tx_channel.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 927, ptr noundef nonnull @.str.2) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %do.body25.do.end36_crit_edge
  %channels = getelementptr i8, ptr %.pn295, i32 -8
  br label %for.cond45

for.cond45:                                       ; preds = %for.body49.for.cond45_crit_edge, %do.end36
  %.pn279.in = phi ptr [ %channels, %do.end36 ], [ %.pn279, %for.body49.for.cond45_crit_edge ]
  %13 = ptrtoint ptr %.pn279.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn279 = load volatile ptr, ptr %.pn279.in, align 4
  %cmp48.not = icmp eq ptr %.pn279, %channels
  br i1 %cmp48.not, label %for.cond45.for.inc63_crit_edge, label %for.body49

for.cond45.for.inc63_crit_edge:                   ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc63

for.body49:                                       ; preds = %for.cond45
  %enable50 = getelementptr i8, ptr %.pn279, i32 -636
  %14 = ptrtoint ptr %enable50 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable50, align 4
  %tobool51.not = icmp eq i32 %15, 0
  br i1 %tobool51.not, label %for.body49.for.cond45_crit_edge, label %for.inc63.loopexit.split.loop.exit289

for.body49.for.cond45_crit_edge:                  ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond45

for.inc63.loopexit.split.loop.exit289:            ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #11
  %nc.0.le = getelementptr i8, ptr %.pn279, i32 -828
  br label %for.inc63

for.inc63:                                        ; preds = %for.inc63.loopexit.split.loop.exit289, %for.cond45.for.inc63_crit_edge, %if.end18.for.inc63_crit_edge
  %disable.addr.1 = phi ptr [ null, %if.end18.for.inc63_crit_edge ], [ %nc.0.le, %for.inc63.loopexit.split.loop.exit289 ], [ null, %for.cond45.for.inc63_crit_edge ]
  %16 = ptrtoint ptr %.pn295 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load volatile ptr, ptr %.pn295, align 4
  %cmp.not = icmp ne ptr %.pn, %packages
  %tobool16.not = icmp eq ptr %disable.addr.1, null
  %or.cond = select i1 %cmp.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %for.inc63.if.end18_crit_edge, label %for.inc63.do.body74_crit_edge

for.inc63.do.body74_crit_edge:                    ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body74

for.inc63.if.end18_crit_edge:                     ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

do.body74:                                        ; preds = %for.inc63.do.body74_crit_edge, %do.end.do.body74_crit_edge
  %disable.addr.0.lcssa = phi ptr [ %disable, %do.end.do.body74_crit_edge ], [ %disable.addr.1, %for.inc63.do.body74_crit_edge ]
  %tobool16.not.lcssa = phi i1 [ %tobool16.not293, %do.end.do.body74_crit_edge ], [ %tobool16.not, %for.inc63.do.body74_crit_edge ]
  %call75 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %do.body74.do.end85_crit_edge

do.body74.do.end85_crit_edge:                     ; preds = %do.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

land.lhs.true77:                                  ; preds = %do.body74
  %call78 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end85_crit_edge, label %land.lhs.true80

land.lhs.true77.do.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %.b273278 = load i1, ptr @ncsi_update_tx_channel.__warned.10, align 1
  br i1 %.b273278, label %land.lhs.true80.do.end85_crit_edge, label %if.then82

land.lhs.true80.do.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_update_tx_channel.__warned.10, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 935, ptr noundef nonnull @.str.2) #9
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %land.lhs.true80.do.end85_crit_edge, %land.lhs.true77.do.end85_crit_edge, %do.body74.do.end85_crit_edge
  %17 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn275304 = load volatile ptr, ptr %packages, align 4
  %cmp98.not306 = icmp ne ptr %.pn275304, %packages
  %tobool100.not307 = icmp eq ptr %enable, null
  %or.cond283308 = and i1 %cmp98.not306, %tobool100.not307
  br i1 %or.cond283308, label %if.end102.lr.ph, label %do.end85.for.end182_crit_edge

do.end85.for.end182_crit_edge:                    ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end182

if.end102.lr.ph:                                  ; preds = %do.end85
  %multi_package103 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 18
  %package_whitelist = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 20
  br label %if.end102

if.end102:                                        ; preds = %for.inc172.if.end102_crit_edge, %if.end102.lr.ph
  %.pn275309 = phi ptr [ %.pn275304, %if.end102.lr.ph ], [ %.pn275, %for.inc172.if.end102_crit_edge ]
  %np.1310 = getelementptr i8, ptr %.pn275309, i32 -80
  %18 = ptrtoint ptr %multi_package103 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %multi_package103, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool104.not = icmp ne i8 %19, 0
  %cmp106.not = icmp eq ptr %np.1310, %package
  %or.cond284 = select i1 %tobool104.not, i1 true, i1 %cmp106.not
  br i1 %or.cond284, label %if.end108, label %if.end102.for.inc172_crit_edge

if.end102.for.inc172_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc172

if.end108:                                        ; preds = %if.end102
  %20 = ptrtoint ptr %package_whitelist to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %package_whitelist, align 4
  %22 = ptrtoint ptr %np.1310 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %np.1310, align 4
  %conv = zext i8 %23 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool109.not = icmp eq i32 %and, 0
  br i1 %tobool109.not, label %if.end108.for.inc172_crit_edge, label %if.end111

if.end108.for.inc172_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc172

if.end111:                                        ; preds = %if.end108
  %preferred_channel = getelementptr i8, ptr %.pn275309, i32 16
  %24 = ptrtoint ptr %preferred_channel to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %preferred_channel, align 4
  %tobool112.not = icmp eq ptr %25, null
  br i1 %tobool112.not, label %if.end111.do.body120_crit_edge, label %land.lhs.true113

if.end111.do.body120_crit_edge:                   ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

land.lhs.true113:                                 ; preds = %if.end111
  %arrayidx1.i = getelementptr %struct.ncsi_channel, ptr %25, i32 0, i32 7, i32 2, i32 3, i32 2
  %26 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx1.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true113.do.body120_crit_edge, label %land.lhs.true113.for.end182_crit_edge

land.lhs.true113.for.end182_crit_edge:            ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end182

land.lhs.true113.do.body120_crit_edge:            ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

do.body120:                                       ; preds = %land.lhs.true113.do.body120_crit_edge, %if.end111.do.body120_crit_edge
  %call121 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %land.lhs.true123, label %do.body120.do.end131_crit_edge

do.body120.do.end131_crit_edge:                   ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end131

land.lhs.true123:                                 ; preds = %do.body120
  %call124 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %land.lhs.true123.do.end131_crit_edge, label %land.lhs.true126

land.lhs.true123.do.end131_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end131

land.lhs.true126:                                 ; preds = %land.lhs.true123
  %.b274277 = load i1, ptr @ncsi_update_tx_channel.__warned.11, align 1
  br i1 %.b274277, label %land.lhs.true126.do.end131_crit_edge, label %if.then128

land.lhs.true126.do.end131_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end131

if.then128:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_update_tx_channel.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 949, ptr noundef nonnull @.str.2) #9
  br label %do.end131

do.end131:                                        ; preds = %if.then128, %land.lhs.true126.do.end131_crit_edge, %land.lhs.true123.do.end131_crit_edge, %do.body120.do.end131_crit_edge
  %channels137 = getelementptr i8, ptr %.pn275309, i32 -8
  %28 = ptrtoint ptr %channels137 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn276297 = load volatile ptr, ptr %channels137, align 4
  %cmp144.not299 = icmp eq ptr %.pn276297, %channels137
  br i1 %cmp144.not299, label %do.end131.for.inc172_crit_edge, label %for.body146.lr.ph

do.end131.for.inc172_crit_edge:                   ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc172

for.body146.lr.ph:                                ; preds = %do.end131
  %channel_whitelist = getelementptr i8, ptr %.pn275309, i32 12
  %29 = ptrtoint ptr %channel_whitelist to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel_whitelist, align 4
  br label %for.body146

for.body146:                                      ; preds = %for.inc161.for.body146_crit_edge, %for.body146.lr.ph
  %.pn276300 = phi ptr [ %.pn276297, %for.body146.lr.ph ], [ %.pn276, %for.inc161.for.body146_crit_edge ]
  %nc.1301 = getelementptr i8, ptr %.pn276300, i32 -828
  %31 = ptrtoint ptr %nc.1301 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nc.1301, align 8
  %conv148 = zext i8 %32 to i32
  %shl149 = shl nuw i32 1, %conv148
  %and150 = and i32 %shl149, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %for.body146.for.inc161_crit_edge, label %if.end153

for.body146.for.inc161_crit_edge:                 ; preds = %for.body146
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc161

if.end153:                                        ; preds = %for.body146
  %state = getelementptr i8, ptr %.pn276300, i32 -824
  %33 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp154.not = icmp eq i32 %34, 2
  br i1 %cmp154.not, label %if.end157, label %if.end153.for.inc161_crit_edge

if.end153.for.inc161_crit_edge:                   ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc161

if.end157:                                        ; preds = %if.end153
  %arrayidx1.i286 = getelementptr i8, ptr %.pn276300, i32 -576
  %35 = ptrtoint ptr %arrayidx1.i286 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx1.i286, align 4
  %and.i287 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i287)
  %tobool.i288.not = icmp eq i32 %and.i287, 0
  br i1 %tobool.i288.not, label %if.end157.for.inc161_crit_edge, label %for.inc172.loopexit.split.loop.exit

if.end157.for.inc161_crit_edge:                   ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc161

for.inc161:                                       ; preds = %if.end157.for.inc161_crit_edge, %if.end153.for.inc161_crit_edge, %for.body146.for.inc161_crit_edge
  %37 = ptrtoint ptr %.pn276300 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn276 = load volatile ptr, ptr %.pn276300, align 4
  %cmp144.not = icmp eq ptr %.pn276, %channels137
  br i1 %cmp144.not, label %for.inc161.for.inc172_crit_edge, label %for.inc161.for.body146_crit_edge

for.inc161.for.body146_crit_edge:                 ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body146

for.inc161.for.inc172_crit_edge:                  ; preds = %for.inc161
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc172

for.inc172.loopexit.split.loop.exit:              ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  %nc.1301.le = getelementptr i8, ptr %.pn276300, i32 -828
  br label %for.inc172

for.inc172:                                       ; preds = %for.inc172.loopexit.split.loop.exit, %for.inc161.for.inc172_crit_edge, %do.end131.for.inc172_crit_edge, %if.end108.for.inc172_crit_edge, %if.end102.for.inc172_crit_edge
  %enable.addr.1 = phi ptr [ null, %if.end108.for.inc172_crit_edge ], [ null, %if.end102.for.inc172_crit_edge ], [ null, %do.end131.for.inc172_crit_edge ], [ %nc.1301.le, %for.inc172.loopexit.split.loop.exit ], [ null, %for.inc161.for.inc172_crit_edge ]
  %38 = ptrtoint ptr %.pn275309 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn275 = load volatile ptr, ptr %.pn275309, align 4
  %cmp98.not = icmp ne ptr %.pn275, %packages
  %tobool100.not = icmp eq ptr %enable.addr.1, null
  %or.cond283 = and i1 %cmp98.not, %tobool100.not
  br i1 %or.cond283, label %for.inc172.if.end102_crit_edge, label %for.inc172.for.end182_crit_edge

for.inc172.for.end182_crit_edge:                  ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end182

for.inc172.if.end102_crit_edge:                   ; preds = %for.inc172
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end102

for.end182:                                       ; preds = %for.inc172.for.end182_crit_edge, %land.lhs.true113.for.end182_crit_edge, %do.end85.for.end182_crit_edge
  %enable.addr.2 = phi ptr [ %enable, %do.end85.for.end182_crit_edge ], [ %25, %land.lhs.true113.for.end182_crit_edge ], [ %enable.addr.1, %for.inc172.for.end182_crit_edge ]
  %cmp183 = icmp eq ptr %disable.addr.0.lcssa, %enable.addr.2
  %tobool187.not = icmp eq ptr %enable.addr.2, null
  %or.cond285 = or i1 %cmp183, %tobool187.not
  br i1 %or.cond285, label %for.end182.cleanup_crit_edge, label %if.end189

for.end182.cleanup_crit_edge:                     ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end189:                                        ; preds = %for.end182
  br i1 %tobool16.not.lcssa, label %if.end189.if.end202_crit_edge, label %if.then191

if.end189.if.end202_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then191:                                       ; preds = %if.end189
  %39 = ptrtoint ptr %disable.addr.0.lcssa to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %disable.addr.0.lcssa, align 8
  %channel = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %41 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %channel, align 1
  %package193 = getelementptr inbounds %struct.ncsi_channel, ptr %disable.addr.0.lcssa, i32 0, i32 4
  %42 = ptrtoint ptr %package193 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %package193, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %43, align 4
  %package195 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %46 = ptrtoint ptr %package195 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %package195, align 2
  %type = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %47 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 7, ptr %type, align 4
  %call196 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then191.if.end202_crit_edge, label %if.then198

if.then191.if.end202_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end202

if.then198:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #11
  %dev200 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %48 = ptrtoint ptr %dev200 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev200, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %49, ptr noundef nonnull @.str.12, i32 noundef %call196) #13
  br label %if.end202

if.end202:                                        ; preds = %if.then198, %if.then191.if.end202_crit_edge, %if.end189.if.end202_crit_edge
  %dev204 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %50 = ptrtoint ptr %dev204 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev204, align 4
  %52 = ptrtoint ptr %enable.addr.2 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enable.addr.2, align 8
  %conv206 = zext i8 %53 to i32
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %51, ptr noundef nonnull @.str.13, i32 noundef %conv206) #13
  %54 = ptrtoint ptr %enable.addr.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %enable.addr.2, align 8
  %channel208 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %56 = ptrtoint ptr %channel208 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %channel208, align 1
  %package209 = getelementptr inbounds %struct.ncsi_channel, ptr %enable.addr.2, i32 0, i32 4
  %57 = ptrtoint ptr %package209 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %package209, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 4
  %package211 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %61 = ptrtoint ptr %package211 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %package211, align 2
  %type212 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %62 = ptrtoint ptr %type212 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 6, ptr %type212, align 4
  %call213 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.end202.cleanup_crit_edge, label %if.then215

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then215:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %dev204 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev204, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %64, ptr noundef nonnull @.str.14, i32 noundef %call213) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then215, %if.end202.cleanup_crit_edge, %for.end182.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %for.end182.cleanup_crit_edge ], [ %call213, %if.then215 ], [ 0, %if.end202.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nca) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_xmit_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_process_next_channel(ptr noundef %ndp) local_unnamed_addr #1 align 64 {
entry:
  %__next = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__next)
  %0 = ptrtoint ptr %channel_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %channel_queue, align 4
  %2 = ptrtoint ptr %__next to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %__next, align 4
  %cmp10.not = icmp eq ptr %channel_queue, %1
  br i1 %cmp10.not, label %cond.end.thread, label %cond.end, !prof !229

cond.end.thread:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  br label %if.then

cond.end:                                         ; preds = %entry
  %3 = ptrtoint ptr %__next to i32
  call void @__asan_load4_noabort(i32 %3)
  %__next.0.__next.0.__next.0.101 = load volatile ptr, ptr %__next, align 4
  %add.ptr = getelementptr i8, ptr %__next.0.__next.0.__next.0.101, i32 -836
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__next)
  %tobool18.not = icmp eq ptr %add.ptr, null
  br i1 %tobool18.not, label %cond.end.if.then_crit_edge, label %if.end

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %cond.end.thread
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %active_channel90 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 12
  %4 = ptrtoint ptr %active_channel90 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %active_channel90, align 4
  %active_package91 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 11
  %5 = ptrtoint ptr %active_package91 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %active_package91, align 4
  %flags92 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 1
  %6 = ptrtoint ptr %flags92 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags92, align 4
  %and = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool93.not = icmp eq i32 %and, 0
  br i1 %tobool93.not, label %if.end98, label %if.then94

if.end:                                           ; preds = %cond.end
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %__next.0.__next.0.__next.0.101) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %__next.0.__next.0.__next.0.101, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %__next.0.__next.0.__next.0.101 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__next.0.__next.0.__next.0.101, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %__next.0.__next.0.__next.0.101 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %__next.0.__next.0.__next.0.101, ptr %__next.0.__next.0.__next.0.101, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %__next.0.__next.0.__next.0.101, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %__next.0.__next.0.__next.0.101, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %lock28 = getelementptr i8, ptr %__next.0.__next.0.__next.0.101, i32 -824
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock28) #9
  %state = getelementptr i8, ptr %__next.0.__next.0.__next.0.101, i32 -832
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  store i32 3, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock28, i32 noundef %call30) #9
  %active_channel = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 12
  %18 = ptrtoint ptr %active_channel to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %active_channel, align 4
  %package = getelementptr i8, ptr %__next.0.__next.0.__next.0.101, i32 -780
  %19 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %package, align 8
  %active_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 11
  %21 = ptrtoint ptr %active_package to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %active_package, align 4
  %22 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %17, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb57
  ]

sw.bb:                                            ; preds = %list_del_init.exit
  %23 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 768, ptr %ndp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_process_next_channel.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_process_next_channel, %if.then49)) #9
          to label %do.end56 [label %if.then49], !srcloc !230

if.then49:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %26 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr, align 8
  %conv51 = zext i8 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_process_next_channel.__UNIQUE_ID_ddebug537, ptr noundef %25, ptr noundef nonnull @.str.17, i32 noundef %conv51) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then49, %sw.bb
  tail call fastcc void @ncsi_configure_channel(ptr noundef %ndp)
  br label %cleanup

sw.bb57:                                          ; preds = %list_del_init.exit
  %28 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1024, ptr %ndp, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_process_next_channel.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_process_next_channel, %if.then73)) #9
          to label %do.end82 [label %if.then73], !srcloc !230

if.then73:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #11
  %dev75 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %29 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev75, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %add.ptr, align 8
  %conv77 = zext i8 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_process_next_channel.__UNIQUE_ID_ddebug538, ptr noundef %30, ptr noundef nonnull @.str.18, i32 noundef %conv77) #9
  br label %do.end82

do.end82:                                         ; preds = %if.then73, %sw.bb57
  tail call fastcc void @ncsi_suspend_channel(ptr noundef %ndp)
  br label %cleanup

sw.default:                                       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev84 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %33 = ptrtoint ptr %dev84 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev84, align 4
  %35 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %package, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  %conv87 = zext i8 %38 to i32
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %add.ptr, align 8
  %conv89 = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %34, ptr noundef nonnull @.str.19, i32 noundef %17, i32 noundef %conv87, i32 noundef %conv89) #13
  tail call fastcc void @ncsi_report_link(ptr noundef %ndp, i1 noundef zeroext false)
  br label %cleanup

if.then94:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %and96 = and i32 %7, -5
  %41 = ptrtoint ptr %flags92 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and96, ptr %flags92, align 4
  %call97 = tail call fastcc i32 @ncsi_choose_active_channel(ptr noundef %ndp)
  br label %cleanup

if.end98:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ncsi_report_link(ptr noundef %ndp, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then94, %sw.default, %do.end82, %do.end56
  %retval.0 = phi i32 [ -22, %sw.default ], [ %call97, %if.then94 ], [ -19, %if.end98 ], [ 0, %do.end82 ], [ 0, %do.end56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ncsi_configure_channel(ptr noundef %ndp) unnamed_addr #1 align 64 {
entry:
  %nca = alloca %struct.ncsi_cmd_arg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %active_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 11
  %0 = ptrtoint ptr %active_package to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %active_package, align 4
  %active_channel = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 12
  %2 = ptrtoint ptr %active_channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_channel, align 4
  %dev1 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nca) #9
  %6 = getelementptr inbounds i8, ptr %nca, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 36)
  %8 = ptrtoint ptr %nca to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %ndp, ptr %nca, align 4
  %req_flags = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 6
  %9 = ptrtoint ptr %req_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %req_flags, align 4
  %10 = ptrtoint ptr %ndp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ndp, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %11, label %sw.default [
    i32 768, label %entry.sw.bb_crit_edge
    i32 769, label %entry.sw.bb_crit_edge474
    i32 770, label %sw.bb11
    i32 771, label %sw.bb25
    i32 772, label %entry.sw.bb37_crit_edge
    i32 773, label %entry.sw.bb37_crit_edge475
    i32 774, label %entry.sw.bb37_crit_edge476
    i32 775, label %entry.sw.bb37_crit_edge477
    i32 776, label %entry.sw.bb37_crit_edge478
    i32 777, label %entry.sw.bb37_crit_edge479
    i32 778, label %entry.sw.bb37_crit_edge480
    i32 779, label %entry.sw.bb37_crit_edge481
    i32 780, label %entry.sw.bb37_crit_edge482
    i32 781, label %entry.sw.bb37_crit_edge483
    i32 782, label %do.body197
  ]

entry.sw.bb37_crit_edge483:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb37_crit_edge482:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb37_crit_edge481:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb37_crit_edge480:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb37_crit_edge479:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb37_crit_edge478:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb37_crit_edge477:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb37_crit_edge476:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb37_crit_edge475:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb37_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb37

entry.sw.bb_crit_edge474:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge474
  %pending_req_num = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 10
  %13 = ptrtoint ptr %pending_req_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %pending_req_num, align 4
  %type = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %type, align 4
  %flags3 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 1
  %15 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags3, align 4
  %17 = trunc i32 %16 to i8
  %18 = lshr i8 %17, 1
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %20, ptr %21, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %1, align 4
  %package = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %25 = ptrtoint ptr %package to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %package, align 2
  %channel = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %26 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 31, ptr %channel, align 1
  %call = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end9, label %if.then6

if.then6:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %28, ptr noundef nonnull @.str.44) #13
  br label %error

if.end9:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 770, ptr %ndp, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %pending_req_num12 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 10
  %30 = ptrtoint ptr %pending_req_num12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %pending_req_num12, align 4
  %type13 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %31 = ptrtoint ptr %type13 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %type13, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %1, align 4
  %package15 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %34 = ptrtoint ptr %package15 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %package15, align 2
  %35 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %3, align 8
  %channel17 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %37 = ptrtoint ptr %channel17 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %channel17, align 1
  %call18 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end23, label %if.then20

if.then20:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %39, ptr noundef nonnull @.str.45) #13
  br label %error

if.end23:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 771, ptr %ndp, align 4
  br label %cleanup

sw.bb25:                                          ; preds = %entry
  %41 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 772, ptr %ndp, align 4
  %type27 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %42 = ptrtoint ptr %type27 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 80, ptr %type27, align 4
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %1, align 4
  %package29 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %45 = ptrtoint ptr %package29 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %package29, align 2
  %46 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %3, align 8
  %channel31 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %48 = ptrtoint ptr %channel31 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %channel31, align 1
  %pending_req_num32 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 10
  %49 = ptrtoint ptr %pending_req_num32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %pending_req_num32, align 4
  %mf_id = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 5, i32 5
  %50 = ptrtoint ptr %mf_id to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mf_id, align 4
  %gma_flag.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 2
  %52 = ptrtoint ptr %gma_flag.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %gma_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i = icmp eq i32 %53, 1
  br i1 %cmp.i, label %sw.bb25.if.then34_crit_edge, label %for.body.preheader.i

sw.bb25.if.then34_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

for.body.preheader.i:                             ; preds = %sw.bb25
  %54 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %51, label %if.then10.i [
    i32 4413, label %for.body.preheader.i.ncsi_gma_handler.exit_crit_edge
    i32 33049, label %if.end12.fold.split.i
    i32 343, label %if.end12.fold.split29.i
  ]

for.body.preheader.i.ncsi_gma_handler.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ncsi_gma_handler.exit

if.then10.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.53, i32 noundef %51) #13
  br label %if.then34

if.end12.fold.split.i:                            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ncsi_gma_handler.exit

if.end12.fold.split29.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ncsi_gma_handler.exit

ncsi_gma_handler.exit:                            ; preds = %if.end12.fold.split29.i, %if.end12.fold.split.i, %for.body.preheader.i.ncsi_gma_handler.exit_crit_edge
  %i.026.lcssa.i = phi i32 [ 0, %for.body.preheader.i.ncsi_gma_handler.exit_crit_edge ], [ 1, %if.end12.fold.split.i ], [ 2, %if.end12.fold.split29.i ]
  %handler13.i = getelementptr [3 x %struct.ncsi_oem_gma_handler], ptr @ncsi_oem_gma_handlers, i32 0, i32 %i.026.lcssa.i, i32 1
  %55 = ptrtoint ptr %handler13.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %handler13.i, align 4
  %call.i = call i32 %56(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %ncsi_gma_handler.exit.if.then34_crit_edge, label %ncsi_gma_handler.exit.cleanup_crit_edge

ncsi_gma_handler.exit.cleanup_crit_edge:          ; preds = %ncsi_gma_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ncsi_gma_handler.exit.if.then34_crit_edge:        ; preds = %ncsi_gma_handler.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %ncsi_gma_handler.exit.if.then34_crit_edge, %if.then10.i, %sw.bb25.if.then34_crit_edge
  %work = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %57 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %work) #9
  br label %cleanup

sw.bb37:                                          ; preds = %entry.sw.bb37_crit_edge, %entry.sw.bb37_crit_edge475, %entry.sw.bb37_crit_edge476, %entry.sw.bb37_crit_edge477, %entry.sw.bb37_crit_edge478, %entry.sw.bb37_crit_edge479, %entry.sw.bb37_crit_edge480, %entry.sw.bb37_crit_edge481, %entry.sw.bb37_crit_edge482, %entry.sw.bb37_crit_edge483
  %pending_req_num38 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 10
  %58 = ptrtoint ptr %pending_req_num38 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %pending_req_num38, align 4
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %1, align 4
  %package40 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %61 = ptrtoint ptr %package40 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %package40, align 2
  %62 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %3, align 8
  %channel42 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %64 = ptrtoint ptr %channel42 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %channel42, align 1
  %65 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %11, label %sw.bb37.if.end187_crit_edge [
    i32 772, label %if.then45
    i32 773, label %if.then57
    i32 774, label %if.then69
    i32 775, label %if.then82
    i32 776, label %if.then96
    i32 777, label %if.then119
    i32 778, label %if.then131
    i32 779, label %if.then148
    i32 780, label %if.then163
    i32 781, label %if.then175
  ]

sw.bb37.if.end187_crit_edge:                      ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

if.then45:                                        ; preds = %sw.bb37
  %vlan_filter.i = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 9
  %bitmap1.i = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 9, i32 1
  %lock.i = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %66 = ptrtoint ptr %vlan_filter.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %vlan_filter.i, align 8
  %conv6.i = zext i8 %67 to i32
  %call7.i = tail call i32 @_find_first_bit_be(ptr noundef %bitmap1.i, i32 noundef %conv6.i) #9
  %68 = ptrtoint ptr %vlan_filter.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vlan_filter.i, align 8
  %conv9.i = zext i8 %69 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call7.i, i32 %conv9.i)
  %cmp10.not.i = icmp slt i32 %call7.i, %conv9.i
  br i1 %cmp10.not.i, label %if.end52, label %if.then48

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %70 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 773, ptr %ndp, align 4
  %work50 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %71 = load ptr, ptr @system_wq, align 4
  %call.i.i448 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %work50) #9
  br label %cleanup

if.end52:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %vids.i = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 9, i32 2
  %72 = ptrtoint ptr %vids.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %vids.i, align 8
  %arrayidx.i = getelementptr i16, ptr %73, i32 %call7.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i, align 2
  tail call void @_clear_bit(i32 noundef %call7.i, ptr noundef %bitmap1.i) #9
  %76 = ptrtoint ptr %vids.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %vids.i, align 8
  %arrayidx14.i = getelementptr i16, ptr %77, i32 %call7.i
  %78 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %arrayidx14.i, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %type.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %79 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 11, ptr %type.i, align 4
  %80 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %arrayidx16.i = getelementptr inbounds [8 x i16], ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %75, ptr %arrayidx16.i, align 2
  %82 = trunc i32 %call7.i to i8
  %conv17.i = add i8 %82, 1
  %arrayidx18.i = getelementptr inbounds [16 x i8], ptr %80, i32 0, i32 6
  %83 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv17.i, ptr %arrayidx18.i, align 2
  %arrayidx19.i = getelementptr inbounds [16 x i8], ptr %80, i32 0, i32 7
  %84 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %arrayidx19.i, align 1
  br label %if.end187.sink.split

if.then57:                                        ; preds = %sw.bb37
  %vlan_vids.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 17
  %85 = ptrtoint ptr %vlan_vids.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %vlan_vids.i, align 4
  %cmp.i.not.i = icmp eq ptr %86, %vlan_vids.i
  br i1 %cmp.i.not.i, label %if.then57.if.then60_crit_edge, label %if.end.i453

if.then57.if.then60_crit_edge:                    ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60

if.end.i453:                                      ; preds = %if.then57
  %vlan_filter.i449 = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 9
  %bitmap1.i450 = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 9, i32 1
  %lock.i451 = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i451) #9
  %87 = tail call i32 @llvm.read_register.i32(metadata !216) #9
  %and.i.i.i.i.i.i = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %90, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !231
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i452 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i452, label %if.end.i453.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i453.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.end.i453
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i453
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 696, ptr noundef nonnull @.str.57) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i453.rcu_read_lock.exit.i_crit_edge
  %call8.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end17.i_crit_edge

rcu_read_lock.exit.i.do.end17.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call10.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.do.end17.i_crit_edge, label %land.lhs.true12.i

land.lhs.true.i.do.end17.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %.b114.i = load i1, ptr @set_one_vid.__warned, align 1
  br i1 %.b114.i, label %land.lhs.true12.i.do.end17.i_crit_edge, label %if.then14.i

land.lhs.true12.i.do.end17.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17.i

if.then14.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @set_one_vid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 652, ptr noundef nonnull @.str.2) #9
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then14.i, %land.lhs.true12.i.do.end17.i_crit_edge, %land.lhs.true.i.do.end17.i_crit_edge, %rcu_read_lock.exit.i.do.end17.i_crit_edge
  %91 = ptrtoint ptr %vlan_vids.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %vlan.0127.i = load volatile ptr, ptr %vlan_vids.i, align 4
  %cmp25.not128.i = icmp eq ptr %vlan.0127.i, %vlan_vids.i
  br i1 %cmp25.not128.i, label %do.end17.i.for.end52.i_crit_edge, label %for.body.lr.ph.i

do.end17.i.for.end52.i_crit_edge:                 ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i

for.body.lr.ph.i:                                 ; preds = %do.end17.i
  %vids.i454 = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 9, i32 2
  %92 = ptrtoint ptr %vlan_filter.i449 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %vlan_filter.i449, align 8
  %conv29.i = zext i8 %93 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp30124.not.i = icmp eq i8 %93, 0
  br label %for.body.i

for.cond.i:                                       ; preds = %for.end.i.for.cond.i_crit_edge, %for.body32.i.for.cond.i_crit_edge
  %94 = ptrtoint ptr %vlan.0129.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %vlan.0.i = load volatile ptr, ptr %vlan.0129.i, align 4
  %cmp25.not.i = icmp eq ptr %vlan.0.i, %vlan_vids.i
  br i1 %cmp25.not.i, label %for.cond.i.for.end52.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.for.end52.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %vlan.0129.i = phi ptr [ %vlan.0127.i, %for.body.lr.ph.i ], [ %vlan.0.i, %for.cond.i.for.body.i_crit_edge ]
  %vid27.i = getelementptr inbounds %struct.vlan_vid, ptr %vlan.0129.i, i32 0, i32 2
  %95 = ptrtoint ptr %vid27.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %vid27.i, align 2
  br i1 %cmp30124.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body32.lr.ph.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body32.lr.ph.i:                               ; preds = %for.body.i
  %97 = ptrtoint ptr %vids.i454 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %vids.i454, align 8
  br label %for.body32.i

for.cond28.i:                                     ; preds = %for.body32.i
  %inc.i = add nuw nsw i32 %i.0125.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv29.i
  br i1 %exitcond.not.i, label %for.cond28.i.for.end.i_crit_edge, label %for.cond28.i.for.body32.i_crit_edge

for.cond28.i.for.body32.i_crit_edge:              ; preds = %for.cond28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32.i

for.cond28.i.for.end.i_crit_edge:                 ; preds = %for.cond28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body32.i:                                     ; preds = %for.cond28.i.for.body32.i_crit_edge, %for.body32.lr.ph.i
  %i.0125.i = phi i32 [ 0, %for.body32.lr.ph.i ], [ %inc.i, %for.cond28.i.for.body32.i_crit_edge ]
  %arrayidx.i455 = getelementptr i16, ptr %98, i32 %i.0125.i
  %99 = ptrtoint ptr %arrayidx.i455 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx.i455, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %96)
  %cmp35.i = icmp eq i16 %100, %96
  br i1 %cmp35.i, label %for.body32.i.for.cond.i_crit_edge, label %for.cond28.i

for.body32.i.for.cond.i_crit_edge:                ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond28.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool39.not.i = icmp eq i16 %96, 0
  br i1 %tobool39.not.i, label %for.end.i.for.cond.i_crit_edge, label %for.end.i.for.end52.i_crit_edge

for.end.i.for.end52.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end52.i

for.end.i.for.cond.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end52.i:                                      ; preds = %for.end.i.for.end52.i_crit_edge, %for.cond.i.for.end52.i_crit_edge, %do.end17.i.for.end52.i_crit_edge
  %vid.2.i = phi i16 [ -1, %do.end17.i.for.end52.i_crit_edge ], [ 0, %for.cond.i.for.end52.i_crit_edge ], [ %96, %for.end.i.for.end52.i_crit_edge ]
  %call.i115.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i115.i, label %for.end52.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i118.i

for.end52.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i118.i:                             ; preds = %for.end52.i
  %call1.i116.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i116.i)
  %tobool.not.i117.i = icmp eq i32 %call1.i116.i, 0
  br i1 %tobool.not.i117.i, label %land.lhs.true.i118.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i120.i

land.lhs.true.i118.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i120.i:                            ; preds = %land.lhs.true.i118.i
  %.b4.i119.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i119.i, label %land.lhs.true2.i120.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i121.i

land.lhs.true2.i120.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i121.i:                                   ; preds = %land.lhs.true2.i120.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.56, i32 noundef 724, ptr noundef nonnull @.str.58) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i121.i, %land.lhs.true2.i120.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i118.i.rcu_read_unlock.exit.i_crit_edge, %for.end52.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !232
  %101 = tail call i32 @llvm.read_register.i32(metadata !216) #9
  %and.i.i.i.i.i122.i = and i32 %101, -16384
  %102 = inttoptr i32 %and.i.i.i.i.i122.i to ptr
  %preempt_count.i.i.i.i123.i = getelementptr inbounds %struct.thread_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %preempt_count.i.i.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %preempt_count.i.i.i.i123.i, align 4
  %sub.i.i.i.i = add i32 %104, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i123.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid.2.i)
  %tobool53.not.i = icmp eq i16 %vid.2.i, 0
  br i1 %tobool53.not.i, label %rcu_read_unlock.exit.i.if.then60.sink.split_crit_edge, label %if.end56.i

rcu_read_unlock.exit.i.if.then60.sink.split_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then60.sink.split

if.end56.i:                                       ; preds = %rcu_read_unlock.exit.i
  %105 = ptrtoint ptr %vlan_filter.i449 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %vlan_filter.i449, align 8
  %conv58.i = zext i8 %106 to i32
  %call59.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %bitmap1.i450, i32 noundef %conv58.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end56.i.if.then66.i_crit_edge, label %lor.lhs.false.i

if.end56.i.if.then66.i_crit_edge:                 ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66.i

lor.lhs.false.i:                                  ; preds = %if.end56.i
  %107 = ptrtoint ptr %vlan_filter.i449 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %vlan_filter.i449, align 8
  %conv63.i = zext i8 %108 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call59.i, i32 %conv63.i)
  %cmp64.not.i = icmp ult i32 %call59.i, %conv63.i
  br i1 %cmp64.not.i, label %if.end64, label %lor.lhs.false.i.if.then66.i_crit_edge

lor.lhs.false.i.if.then66.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then66.i

if.then66.i:                                      ; preds = %lor.lhs.false.i.if.then66.i_crit_edge, %if.end56.i.if.then66.i_crit_edge
  %109 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev1, align 4
  %111 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %3, align 8
  %conv67.i = zext i8 %112 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %110, ptr noundef nonnull @.str.55, i32 noundef %conv67.i) #13
  br label %if.then60.sink.split

if.then60.sink.split:                             ; preds = %if.then66.i, %rcu_read_unlock.exit.i.if.then60.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i451, i32 noundef %call4.i) #9
  br label %if.then60

if.then60:                                        ; preds = %if.then60.sink.split, %if.then57.if.then60_crit_edge
  %113 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 774, ptr %ndp, align 4
  %work62 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %114 = load ptr, ptr @system_wq, align 4
  %call.i.i459 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %114, ptr noundef %work62) #9
  br label %cleanup

if.end64:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %vids70.i = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 9, i32 2
  %115 = ptrtoint ptr %vids70.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vids70.i, align 8
  %arrayidx71.i = getelementptr i16, ptr %116, i32 %call59.i
  %117 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %vid.2.i, ptr %arrayidx71.i, align 2
  tail call void @_set_bit(i32 noundef %call59.i, ptr noundef %bitmap1.i450) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i451, i32 noundef %call4.i) #9
  %type.i457 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %118 = ptrtoint ptr %type.i457 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 11, ptr %type.i457, align 4
  %119 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %arrayidx73.i = getelementptr inbounds [8 x i16], ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %vid.2.i, ptr %arrayidx73.i, align 2
  %121 = trunc i32 %call59.i to i8
  %conv74.i = add i8 %121, 1
  %arrayidx75.i = getelementptr inbounds [16 x i8], ptr %119, i32 0, i32 6
  %122 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv74.i, ptr %arrayidx75.i, align 2
  %arrayidx76.i = getelementptr inbounds [16 x i8], ptr %119, i32 0, i32 7
  %123 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %arrayidx76.i, align 1
  br label %if.end187.sink.split

if.then69:                                        ; preds = %sw.bb37
  %vlan_vids = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 17
  %124 = ptrtoint ptr %vlan_vids to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %vlan_vids, align 4
  %cmp.i460.not = icmp eq ptr %125, %vlan_vids
  br i1 %cmp.i460.not, label %if.then69.if.end77_crit_edge, label %if.else74

if.then69.if.end77_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.else74:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #11
  %126 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %arrayidx76 = getelementptr inbounds [16 x i8], ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 2, ptr %arrayidx76, align 1
  br label %if.end77

if.end77:                                         ; preds = %if.else74, %if.then69.if.end77_crit_edge
  %.sink472 = phi i8 [ 12, %if.else74 ], [ 13, %if.then69.if.end77_crit_edge ]
  %128 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %.sink472, ptr %128, align 4
  br label %if.end187.sink.split

if.then82:                                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %type83 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %130 = ptrtoint ptr %type83 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 14, ptr %type83, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 86
  %131 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %132 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev_addr, align 64
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %133, align 1
  %136 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %131, align 4
  %arrayidx86.1 = getelementptr i8, ptr %133, i32 1
  %137 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx86.1, align 1
  %arrayidx88.1 = getelementptr inbounds [16 x i8], ptr %131, i32 0, i32 1
  %139 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %138, ptr %arrayidx88.1, align 1
  %arrayidx86.2 = getelementptr i8, ptr %133, i32 2
  %140 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx86.2, align 1
  %arrayidx88.2 = getelementptr inbounds [16 x i8], ptr %131, i32 0, i32 2
  %142 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %arrayidx88.2, align 2
  %arrayidx86.3 = getelementptr i8, ptr %133, i32 3
  %143 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %arrayidx86.3, align 1
  %arrayidx88.3 = getelementptr inbounds [16 x i8], ptr %131, i32 0, i32 3
  %145 = ptrtoint ptr %arrayidx88.3 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %arrayidx88.3, align 1
  %arrayidx86.4 = getelementptr i8, ptr %133, i32 4
  %146 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx86.4, align 1
  %arrayidx88.4 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7, i32 0, i32 1
  %148 = ptrtoint ptr %arrayidx88.4 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %arrayidx88.4, align 4
  %arrayidx86.5 = getelementptr i8, ptr %133, i32 5
  %149 = ptrtoint ptr %arrayidx86.5 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %arrayidx86.5, align 1
  %arrayidx88.5 = getelementptr inbounds [16 x i8], ptr %131, i32 0, i32 5
  %151 = ptrtoint ptr %arrayidx88.5 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx88.5, align 1
  %arrayidx89 = getelementptr inbounds [16 x i8], ptr %131, i32 0, i32 6
  %152 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 1, ptr %arrayidx89, align 2
  %arrayidx90 = getelementptr inbounds [16 x i8], ptr %131, i32 0, i32 7
  %153 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 1, ptr %arrayidx90, align 1
  br label %if.end187.sink.split

if.then96:                                        ; preds = %sw.bb37
  %type97 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %154 = ptrtoint ptr %type97 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 16, ptr %type97, align 4
  %cap = getelementptr %struct.ncsi_channel, ptr %3, i32 0, i32 6, i32 1, i32 1
  %155 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %cap, align 4
  %157 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %156, ptr %157, align 4
  %cap102 = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 6, i32 0, i32 1
  %159 = ptrtoint ptr %cap102 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %cap102, align 4
  %and103 = and i32 %160, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.else107, label %if.then96.if.end187.sink.split_crit_edge

if.then96.if.end187.sink.split_crit_edge:         ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187.sink.split

if.else107:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %call108 = tail call fastcc zeroext i1 @ncsi_channel_is_tx(ptr noundef %ndp, ptr noundef %3)
  %. = select i1 %call108, i32 778, i32 779
  br label %if.end187.sink.split

if.then119:                                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %type120 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %161 = ptrtoint ptr %type120 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 19, ptr %type120, align 4
  %call121 = tail call fastcc zeroext i1 @ncsi_channel_is_tx(ptr noundef %ndp, ptr noundef %3)
  %.473 = select i1 %call121, i32 778, i32 779
  br label %if.end187.sink.split

if.then131:                                       ; preds = %sw.bb37
  %preferred_channel = getelementptr inbounds %struct.ncsi_package, ptr %1, i32 0, i32 9
  %162 = ptrtoint ptr %preferred_channel to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %preferred_channel, align 4
  %tobool132.not = icmp eq ptr %163, null
  %cmp134.not = icmp eq ptr %3, %163
  %or.cond = select i1 %tobool132.not, i1 true, i1 %cmp134.not
  br i1 %or.cond, label %if.then131.if.end141_crit_edge, label %if.then136

if.then131.if.end141_crit_edge:                   ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end141

if.then136:                                       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #11
  %164 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %3, align 8
  %conv140 = zext i8 %165 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %5, ptr noundef nonnull @.str.46, i32 noundef %conv140) #13
  br label %if.end141

if.end141:                                        ; preds = %if.then136, %if.then131.if.end141_crit_edge
  %type142 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %166 = ptrtoint ptr %type142 to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 6, ptr %type142, align 4
  br label %if.end187.sink.split

if.then148:                                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %type149 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %167 = ptrtoint ptr %type149 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 3, ptr %type149, align 4
  %168 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 780, ptr %ndp, align 4
  %cap153 = getelementptr %struct.ncsi_channel, ptr %3, i32 0, i32 6, i32 4, i32 1
  %169 = ptrtoint ptr %cap153 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %cap153, align 4
  %and154 = and i32 %170, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and154)
  %tobool155.not = icmp eq i32 %and154, 0
  %spec.store.select = select i1 %tobool155.not, i32 781, i32 780
  br label %if.end187.sink.split

if.then163:                                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %type164 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %171 = ptrtoint ptr %type164 to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 8, ptr %type164, align 4
  %172 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %172, align 4
  %cap168 = getelementptr %struct.ncsi_channel, ptr %3, i32 0, i32 6, i32 4, i32 1
  %174 = ptrtoint ptr %cap168 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %cap168, align 4
  %arrayidx169 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7, i32 0, i32 1
  %176 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %arrayidx169, align 4
  br label %if.end187.sink.split

if.then175:                                       ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  %type176 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %177 = ptrtoint ptr %type176 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 10, ptr %type176, align 4
  br label %if.end187.sink.split

if.end187.sink.split:                             ; preds = %if.then175, %if.then163, %if.then148, %if.end141, %if.then119, %if.else107, %if.then96.if.end187.sink.split_crit_edge, %if.then82, %if.end77, %if.end64, %if.end52
  %spec.store.select.sink = phi i32 [ %spec.store.select, %if.then148 ], [ 773, %if.end64 ], [ 776, %if.then82 ], [ 782, %if.then175 ], [ 781, %if.then163 ], [ 779, %if.end141 ], [ 775, %if.end77 ], [ 772, %if.end52 ], [ 777, %if.then96.if.end187.sink.split_crit_edge ], [ %., %if.else107 ], [ %.473, %if.then119 ]
  %178 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %spec.store.select.sink, ptr %ndp, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.end187.sink.split, %sw.bb37.if.end187_crit_edge
  %call188 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call188)
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end187.cleanup_crit_edge, label %if.then190

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then190:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  %179 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %dev1, align 4
  %type193 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %181 = ptrtoint ptr %type193 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %type193, align 4
  %conv194 = zext i8 %182 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %180, ptr noundef nonnull @.str.47, i32 noundef %conv194) #13
  br label %error

do.body197:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_configure_channel.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_configure_channel, %if.then202)) #9
          to label %do.body211 [label %if.then202], !srcloc !230

if.then202:                                       ; preds = %do.body197
  call void @__sanitizer_cov_trace_pc() #11
  %183 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev1, align 4
  %185 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %3, align 8
  %conv206 = zext i8 %186 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_configure_channel.__UNIQUE_ID_ddebug521, ptr noundef %184, ptr noundef nonnull @.str.49, i32 noundef %conv206) #9
  br label %do.body211

do.body211:                                       ; preds = %if.then202, %do.body197
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 3
  %call216 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %state221 = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 1
  %187 = ptrtoint ptr %state221 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 2, ptr %state221, align 4
  %flags222 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 1
  %188 = ptrtoint ptr %flags222 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %flags222, align 4
  %and223 = and i32 %189, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and223)
  %tobool224.not = icmp eq i32 %and223, 0
  %reconfigure_needed229 = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 2
  br i1 %tobool224.not, label %if.end228, label %if.then225

if.then225:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #11
  %190 = ptrtoint ptr %reconfigure_needed229 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %reconfigure_needed229, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call216) #9
  %call227 = tail call i32 @ncsi_reset_dev(ptr noundef %ndp)
  br label %cleanup

if.end228:                                        ; preds = %do.body211
  %191 = ptrtoint ptr %reconfigure_needed229 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %reconfigure_needed229, align 8, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool230.not = icmp eq i8 %192, 0
  br i1 %tobool230.not, label %if.end270, label %if.then231

if.then231:                                       ; preds = %if.end228
  %193 = ptrtoint ptr %reconfigure_needed229 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 0, ptr %reconfigure_needed229, align 8
  %194 = ptrtoint ptr %state221 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 1, ptr %state221, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call216) #9
  %lock242 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 3
  %call244 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock242) #9
  %link = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 13
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13, i32 1
  %195 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %prev.i, align 4
  %call.i.i461 = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %196, ptr noundef %channel_queue) #9
  br i1 %call.i.i461, label %if.end.i.i, label %if.then231.list_add_tail_rcu.exit_crit_edge

if.then231.list_add_tail_rcu.exit_crit_edge:      ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %if.then231
  call void @__sanitizer_cov_trace_pc() #11
  %197 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %channel_queue, ptr %link, align 4
  %prev2.i.i = getelementptr inbounds %struct.ncsi_channel, ptr %3, i32 0, i32 13, i32 1
  %198 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %196, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  %199 = ptrtoint ptr %196 to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %link, ptr %196, align 4
  %200 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %link, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %if.then231.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock242, i32 noundef %call244) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_configure_channel.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_configure_channel, %if.then263)) #9
          to label %do.end268 [label %if.then263], !srcloc !230

if.then263:                                       ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_configure_channel.__UNIQUE_ID_ddebug522, ptr noundef %5, ptr noundef nonnull @.str.50) #9
  br label %do.end268

do.end268:                                        ; preds = %if.then263, %list_add_tail_rcu.exit
  %call269 = tail call i32 @ncsi_process_next_channel(ptr noundef %ndp)
  br label %cleanup

if.end270:                                        ; preds = %if.end228
  %arrayidx272 = getelementptr %struct.ncsi_channel, ptr %3, i32 0, i32 7, i32 2, i32 3, i32 2
  %201 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx272, align 4
  %and273 = and i32 %202, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and273)
  %tobool274.not = icmp eq i32 %and273, 0
  br i1 %tobool274.not, label %if.else276, label %if.end270.if.end300_crit_edge

if.end270.if.end300_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end300

if.else276:                                       ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_configure_channel.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_configure_channel, %if.then290)) #9
          to label %if.end300 [label %if.then290], !srcloc !230

if.then290:                                       ; preds = %if.else276
  call void @__sanitizer_cov_trace_pc() #11
  %203 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %dev1, align 4
  %205 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %3, align 8
  %conv294 = zext i8 %206 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_configure_channel.__UNIQUE_ID_ddebug523, ptr noundef %204, ptr noundef nonnull @.str.51, i32 noundef %conv294) #9
  br label %if.end300

if.end300:                                        ; preds = %if.then290, %if.else276, %if.end270.if.end300_crit_edge
  %hot_nc.0 = phi ptr [ null, %if.then290 ], [ %3, %if.end270.if.end300_crit_edge ], [ null, %if.else276 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call216) #9
  %lock309 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 3
  %call311 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock309) #9
  %hot_channel = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 7
  %207 = ptrtoint ptr %hot_channel to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %hot_nc.0, ptr %hot_channel, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock309, i32 noundef %call311) #9
  tail call void @ncsi_start_channel_monitor(ptr noundef %3)
  %call317 = tail call i32 @ncsi_process_next_channel(ptr noundef %ndp)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_alert(ptr noundef %5, ptr noundef nonnull @.str.52, i32 noundef %11) #13
  br label %cleanup

error:                                            ; preds = %if.then190, %if.then20, %if.then6
  %208 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 256, ptr %ndp, align 4
  %link_up.i = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 1
  %209 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %link_up.i, align 4
  %handler.i = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 3
  %210 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %handler.i, align 4
  call void %211(ptr noundef %ndp) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %sw.default, %if.end300, %do.end268, %if.then225, %if.end187.cleanup_crit_edge, %if.then60, %if.then48, %if.then34, %ncsi_gma_handler.exit.cleanup_crit_edge, %if.end23, %if.end9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nca) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ncsi_suspend_channel(ptr noundef %ndp) unnamed_addr #1 align 64 {
entry:
  %nca = alloca %struct.ncsi_cmd_arg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nca) #9
  %0 = getelementptr inbounds i8, ptr %nca, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 36)
  %active_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 11
  %2 = ptrtoint ptr %active_package to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_package, align 4
  %active_channel = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 12
  %4 = ptrtoint ptr %active_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_channel, align 4
  %6 = ptrtoint ptr %nca to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ndp, ptr %nca, align 4
  %req_flags = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 6
  %7 = ptrtoint ptr %req_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %req_flags, align 4
  %8 = ptrtoint ptr %ndp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ndp, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %9, label %sw.default [
    i32 1024, label %sw.bb
    i32 1025, label %entry.sw.bb3_crit_edge
    i32 1026, label %sw.bb17
    i32 1027, label %sw.bb52
    i32 1028, label %sw.bb64
    i32 1029, label %sw.bb121
    i32 1030, label %do.body134
  ]

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1025, ptr %ndp, align 4
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb, %entry.sw.bb3_crit_edge
  %pending_req_num = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 10
  %12 = ptrtoint ptr %pending_req_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %pending_req_num, align 4
  %type = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %3, align 4
  %package = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %16 = ptrtoint ptr %package to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %package, align 2
  %channel = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 31, ptr %channel, align 1
  %flags4 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 1
  %18 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags4, align 4
  %20 = trunc i32 %19 to i8
  %21 = lshr i8 %20, 1
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %23, ptr %24, align 4
  %and7 = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %. = select i1 %tobool8.not, i32 1027, i32 1026
  %26 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %., ptr %ndp, align 4
  %call = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %sw.bb3.cleanup_crit_edge, label %sw.bb3.error_crit_edge

sw.bb3.error_crit_edge:                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %channel_num = getelementptr inbounds %struct.ncsi_package, ptr %3, i32 0, i32 4
  %27 = ptrtoint ptr %channel_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel_num, align 4
  %pending_req_num18 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 10
  %29 = ptrtoint ptr %pending_req_num18 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pending_req_num18, align 4
  %type19 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %30 = ptrtoint ptr %type19 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 10, ptr %type19, align 4
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 4
  %package21 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %33 = ptrtoint ptr %package21 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %package21, align 2
  %34 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1027, ptr %ndp, align 4
  %call23 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true, label %sw.bb17.do.end_crit_edge

sw.bb17.do.end_crit_edge:                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %sw.bb17
  %call25 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true27

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true27:                                  ; preds = %land.lhs.true
  %.b212 = load i1, ptr @ncsi_suspend_channel.__warned, align 1
  br i1 %.b212, label %land.lhs.true27.do.end_crit_edge, label %if.then29

land.lhs.true27.do.end_crit_edge:                 ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then29:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_suspend_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 519, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then29, %land.lhs.true27.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %sw.bb17.do.end_crit_edge
  %channels = getelementptr inbounds %struct.ncsi_package, ptr %3, i32 0, i32 5
  %channel38 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn211.in = phi ptr [ %channels, %do.end ], [ %.pn211, %for.body.for.cond_crit_edge ]
  %35 = ptrtoint ptr %.pn211.in to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn211 = load volatile ptr, ptr %.pn211.in, align 4
  %cmp.not = icmp eq ptr %.pn211, %channels
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %nc.0 = getelementptr i8, ptr %.pn211, i32 -828
  %36 = ptrtoint ptr %nc.0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nc.0, align 8
  %38 = ptrtoint ptr %channel38 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %channel38, align 1
  %call39 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %for.body.for.cond_crit_edge, label %for.body.error_crit_edge

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

sw.bb52:                                          ; preds = %entry
  %pending_req_num53 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 10
  %39 = ptrtoint ptr %pending_req_num53 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %pending_req_num53, align 4
  %type54 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %40 = ptrtoint ptr %type54 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 7, ptr %type54, align 4
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %3, align 4
  %package56 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %43 = ptrtoint ptr %package56 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %package56, align 2
  %44 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %5, align 8
  %channel58 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %46 = ptrtoint ptr %channel58 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %channel58, align 1
  %47 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1028, ptr %ndp, align 4
  %call60 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %sw.bb52.cleanup_crit_edge, label %sw.bb52.error_crit_edge

sw.bb52.error_crit_edge:                          ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

sw.bb52.cleanup_crit_edge:                        ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb64:                                          ; preds = %entry
  %pending_req_num65 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 10
  %48 = ptrtoint ptr %pending_req_num65 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %pending_req_num65, align 4
  %type66 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %49 = ptrtoint ptr %type66 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 4, ptr %type66, align 4
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %3, align 4
  %package68 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %52 = ptrtoint ptr %package68 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %package68, align 2
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %5, align 8
  %channel70 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %55 = ptrtoint ptr %channel70 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %channel70, align 1
  %56 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 7
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %56, align 4
  %58 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1029, ptr %ndp, align 4
  %call73 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.body77, label %sw.bb64.error_crit_edge

sw.bb64.error_crit_edge:                          ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

do.body77:                                        ; preds = %sw.bb64
  %call78 = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true80, label %do.body77.do.end88_crit_edge

do.body77.do.end88_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

land.lhs.true80:                                  ; preds = %do.body77
  %call81 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %land.lhs.true80.do.end88_crit_edge, label %land.lhs.true83

land.lhs.true80.do.end88_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

land.lhs.true83:                                  ; preds = %land.lhs.true80
  %.b209210 = load i1, ptr @ncsi_suspend_channel.__warned.62, align 1
  br i1 %.b209210, label %land.lhs.true83.do.end88_crit_edge, label %if.then85

land.lhs.true83.do.end88_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end88

if.then85:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_suspend_channel.__warned.62, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 553, ptr noundef nonnull @.str.2) #9
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %land.lhs.true83.do.end88_crit_edge, %land.lhs.true80.do.end88_crit_edge, %do.body77.do.end88_crit_edge
  %channels94 = getelementptr inbounds %struct.ncsi_package, ptr %3, i32 0, i32 5
  %59 = ptrtoint ptr %channels94 to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn214 = load volatile ptr, ptr %channels94, align 4
  %cmp101.not215 = icmp eq ptr %.pn214, %channels94
  br i1 %cmp101.not215, label %do.end88.cleanup_crit_edge, label %do.end88.for.body102_crit_edge

do.end88.for.body102_crit_edge:                   ; preds = %do.end88
  br label %for.body102

do.end88.cleanup_crit_edge:                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body102:                                      ; preds = %for.inc110.for.body102_crit_edge, %do.end88.for.body102_crit_edge
  %.pn216 = phi ptr [ %.pn, %for.inc110.for.body102_crit_edge ], [ %.pn214, %do.end88.for.body102_crit_edge ]
  %tmp.0 = getelementptr i8, ptr %.pn216, i32 -828
  %cmp103.not = icmp eq ptr %tmp.0, %5
  br i1 %cmp103.not, label %for.body102.for.inc110_crit_edge, label %land.lhs.true104

for.body102.for.inc110_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110

land.lhs.true104:                                 ; preds = %for.body102
  %state105 = getelementptr i8, ptr %.pn216, i32 -824
  %60 = ptrtoint ptr %state105 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %61)
  %cmp106 = icmp eq i32 %61, 2
  br i1 %cmp106, label %if.then107, label %land.lhs.true104.for.inc110_crit_edge

land.lhs.true104.for.inc110_crit_edge:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc110

if.then107:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1030, ptr %ndp, align 4
  br label %cleanup

for.inc110:                                       ; preds = %land.lhs.true104.for.inc110_crit_edge, %for.body102.for.inc110_crit_edge
  %63 = ptrtoint ptr %.pn216 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load volatile ptr, ptr %.pn216, align 4
  %cmp101.not = icmp eq ptr %.pn, %channels94
  br i1 %cmp101.not, label %for.inc110.cleanup_crit_edge, label %for.inc110.for.body102_crit_edge

for.inc110.for.body102_crit_edge:                 ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body102

for.inc110.cleanup_crit_edge:                     ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb121:                                         ; preds = %entry
  %pending_req_num122 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 10
  %64 = ptrtoint ptr %pending_req_num122 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %pending_req_num122, align 4
  %type123 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %65 = ptrtoint ptr %type123 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %type123, align 4
  %66 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %3, align 4
  %package125 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %68 = ptrtoint ptr %package125 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %package125, align 2
  %channel126 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %69 = ptrtoint ptr %channel126 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 31, ptr %channel126, align 1
  %70 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1030, ptr %ndp, align 4
  %call128 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %sw.bb121.cleanup_crit_edge, label %sw.bb121.error_crit_edge

sw.bb121.error_crit_edge:                         ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

sw.bb121.cleanup_crit_edge:                       ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body134:                                       ; preds = %entry
  %lock = getelementptr inbounds %struct.ncsi_channel, ptr %5, i32 0, i32 3
  %call138 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %state143 = getelementptr inbounds %struct.ncsi_channel, ptr %5, i32 0, i32 1
  %71 = ptrtoint ptr %state143 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 1, ptr %state143, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call138) #9
  %flags145 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 1
  %72 = ptrtoint ptr %flags145 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %flags145, align 4
  %and146 = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and146)
  %tobool147.not = icmp eq i32 %and146, 0
  br i1 %tobool147.not, label %if.else150, label %if.then148

if.then148:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  %call149 = tail call i32 @ncsi_reset_dev(ptr noundef %ndp)
  br label %cleanup

if.else150:                                       ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #11
  %call151 = tail call i32 @ncsi_process_next_channel(ptr noundef %ndp)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %75, ptr noundef nonnull @.str.63, i32 noundef %9) #13
  br label %cleanup

error:                                            ; preds = %sw.bb121.error_crit_edge, %sw.bb64.error_crit_edge, %sw.bb52.error_crit_edge, %for.body.error_crit_edge, %sw.bb3.error_crit_edge
  %76 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 256, ptr %ndp, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %sw.default, %if.else150, %if.then148, %sw.bb121.cleanup_crit_edge, %for.inc110.cleanup_crit_edge, %if.then107, %do.end88.cleanup_crit_edge, %sw.bb52.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nca) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ncsi_report_link(ptr noundef %ndp, i1 noundef zeroext %force_down) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 256, ptr %ndp, align 4
  %link_up = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 1
  %1 = ptrtoint ptr %link_up to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %link_up, align 4
  br i1 %force_down, label %entry.report_crit_edge, label %if.end

entry.report_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %report

if.end:                                           ; preds = %entry
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b106 = load i1, ptr @ncsi_report_link.__warned, align 1
  br i1 %.b106, label %land.lhs.true5.do.end_crit_edge, label %if.then7

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_report_link.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 65, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  %2 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn110 = load volatile ptr, ptr %packages, align 4
  %cmp.not111 = icmp eq ptr %.pn110, %packages
  br i1 %cmp.not111, label %do.end.report_crit_edge, label %do.end.do.body14_crit_edge

do.end.do.body14_crit_edge:                       ; preds = %do.end
  br label %do.body14

do.end.report_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %report

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %do.end25.for.cond.loopexit_crit_edge
  %3 = ptrtoint ptr %.pn112 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load volatile ptr, ptr %.pn112, align 4
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.cond.loopexit.report_crit_edge, label %for.cond.loopexit.do.body14_crit_edge

for.cond.loopexit.do.body14_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

for.cond.loopexit.report_crit_edge:               ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %report

do.body14:                                        ; preds = %for.cond.loopexit.do.body14_crit_edge, %do.end.do.body14_crit_edge
  %.pn112 = phi ptr [ %.pn, %for.cond.loopexit.do.body14_crit_edge ], [ %.pn110, %do.end.do.body14_crit_edge ]
  %call15 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true17, label %do.body14.do.end25_crit_edge

do.body14.do.end25_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

land.lhs.true17:                                  ; preds = %do.body14
  %call18 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true17.do.end25_crit_edge, label %land.lhs.true20

land.lhs.true17.do.end25_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

land.lhs.true20:                                  ; preds = %land.lhs.true17
  %.b103105 = load i1, ptr @ncsi_report_link.__warned.64, align 1
  br i1 %.b103105, label %land.lhs.true20.do.end25_crit_edge, label %if.then22

land.lhs.true20.do.end25_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end25

if.then22:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_report_link.__warned.64, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef nonnull @.str.2) #9
  br label %do.end25

do.end25:                                         ; preds = %if.then22, %land.lhs.true20.do.end25_crit_edge, %land.lhs.true17.do.end25_crit_edge, %do.body14.do.end25_crit_edge
  %channels = getelementptr i8, ptr %.pn112, i32 -8
  %4 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn104107 = load volatile ptr, ptr %channels, align 4
  %cmp37.not108 = icmp eq ptr %.pn104107, %channels
  br i1 %cmp37.not108, label %do.end25.for.cond.loopexit_crit_edge, label %do.end25.do.body40_crit_edge

do.end25.do.body40_crit_edge:                     ; preds = %do.end25
  br label %do.body40

do.end25.for.cond.loopexit_crit_edge:             ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

do.body40:                                        ; preds = %for.inc.do.body40_crit_edge, %do.end25.do.body40_crit_edge
  %.pn104109 = phi ptr [ %.pn104, %for.inc.do.body40_crit_edge ], [ %.pn104107, %do.end25.do.body40_crit_edge ]
  %lock = getelementptr i8, ptr %.pn104109, i32 -816
  %call44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %link = getelementptr i8, ptr %.pn104109, i32 8
  %5 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %6, %link
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body40.for.inc_crit_edge

do.body40.for.inc_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

lor.lhs.false:                                    ; preds = %do.body40
  %state51 = getelementptr i8, ptr %.pn104109, i32 -824
  %7 = ptrtoint ptr %state51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp52.not = icmp eq i32 %8, 2
  br i1 %cmp52.not, label %if.end56, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end56:                                         ; preds = %lor.lhs.false
  %arrayidx1.i = getelementptr i8, ptr %.pn104109, i32 -576
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end56.for.inc_crit_edge, label %if.then58

if.end56.for.inc_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then58:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #9
  %11 = ptrtoint ptr %link_up to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %link_up, align 4
  br label %report

for.inc:                                          ; preds = %if.end56.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %do.body40.for.inc_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #9
  %12 = ptrtoint ptr %.pn104109 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn104 = load volatile ptr, ptr %.pn104109, align 4
  %cmp37.not = icmp eq ptr %.pn104, %channels
  br i1 %cmp37.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.do.body40_crit_edge

for.inc.do.body40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body40

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

report:                                           ; preds = %if.then58, %for.cond.loopexit.report_crit_edge, %do.end.report_crit_edge, %entry.report_crit_edge
  %handler = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 3
  %13 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handler, align 4
  tail call void %14(ptr noundef %ndp) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ncsi_choose_active_channel(ptr noundef %ndp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %hot_channel = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 7
  %0 = ptrtoint ptr %hot_channel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hot_channel, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %call7 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

land.lhs.true:                                    ; preds = %entry
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true10

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b273 = load i1, ptr @ncsi_choose_active_channel.__warned, align 1
  br i1 %.b273, label %land.lhs.true10.do.end13_crit_edge, label %if.then

land.lhs.true10.do.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

if.then:                                          ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_choose_active_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1247, ptr noundef nonnull @.str.2) #9
  br label %do.end13

do.end13:                                         ; preds = %if.then, %land.lhs.true10.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %entry.do.end13_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  %2 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn298 = load volatile ptr, ptr %packages, align 4
  %cmp20.not299 = icmp eq ptr %.pn298, %packages
  br i1 %cmp20.not299, label %if.else.thread, label %for.body.lr.ph

if.else.thread:                                   ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  %channel_queue168306 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13
  %3 = ptrtoint ptr %channel_queue168306 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %channel_queue168306, align 4
  br label %if.then196

for.body.lr.ph:                                   ; preds = %do.end13
  %package_whitelist = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 20
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13, i32 1
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %multi_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc157.for.body_crit_edge, %for.body.lr.ph
  %.pn302 = phi ptr [ %.pn298, %for.body.lr.ph ], [ %.pn, %for.inc157.for.body_crit_edge ]
  %found.0301 = phi ptr [ null, %for.body.lr.ph ], [ %found.7, %for.inc157.for.body_crit_edge ]
  %with_link.0.off0300 = phi i1 [ false, %for.body.lr.ph ], [ %with_link.5.off0, %for.inc157.for.body_crit_edge ]
  %np.0 = getelementptr i8, ptr %.pn302, i32 -80
  %5 = ptrtoint ptr %package_whitelist to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %package_whitelist, align 4
  %7 = ptrtoint ptr %np.0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %np.0, align 4
  %conv22 = zext i8 %8 to i32
  %shl = shl nuw i32 1, %conv22
  %and = and i32 %shl, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %for.body.for.inc157_crit_edge, label %do.body26

for.body.for.inc157_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157

do.body26:                                        ; preds = %for.body
  %call27 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true29, label %do.body26.do.end37_crit_edge

do.body26.do.end37_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

land.lhs.true29:                                  ; preds = %do.body26
  %call30 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true29.do.end37_crit_edge, label %land.lhs.true32

land.lhs.true29.do.end37_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

land.lhs.true32:                                  ; preds = %land.lhs.true29
  %.b258272 = load i1, ptr @ncsi_choose_active_channel.__warned.65, align 1
  br i1 %.b258272, label %land.lhs.true32.do.end37_crit_edge, label %if.then34

land.lhs.true32.do.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

if.then34:                                        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_choose_active_channel.__warned.65, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1250, ptr noundef nonnull @.str.2) #9
  br label %do.end37

do.end37:                                         ; preds = %if.then34, %land.lhs.true32.do.end37_crit_edge, %land.lhs.true29.do.end37_crit_edge, %do.body26.do.end37_crit_edge
  %channels = getelementptr i8, ptr %.pn302, i32 -8
  %9 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn271288 = load volatile ptr, ptr %channels, align 4
  %cmp49.not290 = icmp eq ptr %.pn271288, %channels
  br i1 %cmp49.not290, label %do.end37.for.end_crit_edge, label %for.body51.lr.ph

do.end37.for.end_crit_edge:                       ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body51.lr.ph:                                 ; preds = %do.end37
  %channel_whitelist = getelementptr i8, ptr %.pn302, i32 12
  %multi_channel = getelementptr i8, ptr %.pn302, i32 8
  br label %for.body51

for.body51:                                       ; preds = %for.inc.for.body51_crit_edge, %for.body51.lr.ph
  %.pn271295 = phi ptr [ %.pn271288, %for.body51.lr.ph ], [ %.pn271, %for.inc.for.body51_crit_edge ]
  %found.1293 = phi ptr [ %found.0301, %for.body51.lr.ph ], [ %found.5, %for.inc.for.body51_crit_edge ]
  %with_link.1.off0291 = phi i1 [ %with_link.0.off0300, %for.body51.lr.ph ], [ %with_link.3.off0, %for.inc.for.body51_crit_edge ]
  %nc.0296 = getelementptr i8, ptr %.pn271295, i32 -828
  %10 = ptrtoint ptr %channel_whitelist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %channel_whitelist, align 4
  %12 = ptrtoint ptr %nc.0296 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nc.0296, align 8
  %conv53 = zext i8 %13 to i32
  %shl54 = shl nuw i32 1, %conv53
  %and55 = and i32 %shl54, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %for.body51.for.inc_crit_edge, label %do.body60

for.body51.for.inc_crit_edge:                     ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.body60:                                        ; preds = %for.body51
  %lock66 = getelementptr i8, ptr %.pn271295, i32 -816
  %call68 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock66) #9
  %link = getelementptr i8, ptr %.pn271295, i32 8
  %14 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %15, %link
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body60.for.inc.sink.split_crit_edge

do.body60.for.inc.sink.split_crit_edge:           ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

lor.lhs.false:                                    ; preds = %do.body60
  %state = getelementptr i8, ptr %.pn271295, i32 -824
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp75.not = icmp eq i32 %17, 1
  br i1 %cmp75.not, label %if.end79, label %lor.lhs.false.for.inc.sink.split_crit_edge

lor.lhs.false.for.inc.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.end79:                                         ; preds = %lor.lhs.false
  %tobool80.not = icmp eq ptr %found.1293, null
  %cmp83 = icmp eq ptr %nc.0296, %1
  %18 = select i1 %cmp83, i1 true, i1 %tobool80.not
  %found.3 = select i1 %18, ptr %nc.0296, ptr %found.1293
  %arrayidx87 = getelementptr i8, ptr %.pn271295, i32 -576
  %19 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx87, align 4
  %and88 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  %not.tobool89.not = xor i1 %tobool89.not, true
  %with_link.2.off0 = select i1 %not.tobool89.not, i1 true, i1 %with_link.1.off0291
  %found.4 = select i1 %tobool89.not, ptr %found.3, ptr %nc.0296
  br i1 %with_link.2.off0, label %if.end79.do.body99_crit_edge, label %lor.lhs.false94

if.end79.do.body99_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

lor.lhs.false94:                                  ; preds = %if.end79
  %21 = ptrtoint ptr %multi_channel to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %multi_channel, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool95.not = icmp eq i8 %22, 0
  br i1 %tobool95.not, label %lor.lhs.false94.for.inc.sink.split_crit_edge, label %lor.lhs.false94.do.body99_crit_edge

lor.lhs.false94.do.body99_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

lor.lhs.false94.for.inc.sink.split_crit_edge:     ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

do.body99:                                        ; preds = %lor.lhs.false94.do.body99_crit_edge, %if.end79.do.body99_crit_edge
  %call107 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %24, ptr noundef %channel_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body99.list_add_tail_rcu.exit_crit_edge

do.body99.list_add_tail_rcu.exit_crit_edge:       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %channel_queue, ptr %link, align 4
  %prev2.i.i = getelementptr i8, ptr %.pn271295, i32 12
  %26 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %link, ptr %24, align 4
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %link, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %do.body99.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call107) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_choose_active_channel.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_choose_active_channel, %if.then121)) #9
          to label %if.end133 [label %if.then121], !srcloc !230

if.then121:                                       ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  %31 = ptrtoint ptr %nc.0296 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nc.0296, align 8
  %conv123 = zext i8 %32 to i32
  %33 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx87, align 4
  %and126 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126)
  %tobool127.not = icmp eq i32 %and126, 0
  %cond = select i1 %tobool127.not, ptr @.str.69, ptr @.str.68
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_choose_active_channel.__UNIQUE_ID_ddebug528, ptr noundef %30, ptr noundef nonnull @.str.67, i32 noundef %conv123, ptr noundef nonnull %cond) #9
  br label %if.end133

if.end133:                                        ; preds = %if.then121, %list_add_tail_rcu.exit
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock66, i32 noundef %call68) #9
  br i1 %with_link.2.off0, label %land.lhs.true137, label %if.end133.for.inc_crit_edge

if.end133.for.inc_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true137:                                 ; preds = %if.end133
  %35 = ptrtoint ptr %multi_channel to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %multi_channel, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool139.not = icmp eq i8 %36, 0
  br i1 %tobool139.not, label %land.lhs.true137.land.lhs.true153_crit_edge, label %land.lhs.true137.for.inc_crit_edge

land.lhs.true137.for.inc_crit_edge:               ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true137.land.lhs.true153_crit_edge:      ; preds = %land.lhs.true137
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true153

for.inc.sink.split:                               ; preds = %lor.lhs.false94.for.inc.sink.split_crit_edge, %lor.lhs.false.for.inc.sink.split_crit_edge, %do.body60.for.inc.sink.split_crit_edge
  %with_link.3.off0.ph = phi i1 [ %with_link.1.off0291, %lor.lhs.false.for.inc.sink.split_crit_edge ], [ %with_link.1.off0291, %do.body60.for.inc.sink.split_crit_edge ], [ false, %lor.lhs.false94.for.inc.sink.split_crit_edge ]
  %found.5.ph = phi ptr [ %found.1293, %lor.lhs.false.for.inc.sink.split_crit_edge ], [ %found.1293, %do.body60.for.inc.sink.split_crit_edge ], [ %found.4, %lor.lhs.false94.for.inc.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock66, i32 noundef %call68) #9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %land.lhs.true137.for.inc_crit_edge, %if.end133.for.inc_crit_edge, %for.body51.for.inc_crit_edge
  %with_link.3.off0 = phi i1 [ true, %land.lhs.true137.for.inc_crit_edge ], [ false, %if.end133.for.inc_crit_edge ], [ %with_link.1.off0291, %for.body51.for.inc_crit_edge ], [ %with_link.3.off0.ph, %for.inc.sink.split ]
  %found.5 = phi ptr [ %found.4, %land.lhs.true137.for.inc_crit_edge ], [ %found.4, %if.end133.for.inc_crit_edge ], [ %found.1293, %for.body51.for.inc_crit_edge ], [ %found.5.ph, %for.inc.sink.split ]
  %37 = ptrtoint ptr %.pn271295 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn271 = load volatile ptr, ptr %.pn271295, align 4
  %cmp49.not = icmp eq ptr %.pn271, %channels
  br i1 %cmp49.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body51_crit_edge

for.inc.for.body51_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body51

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end37.for.end_crit_edge
  %with_link.1.off0.lcssa = phi i1 [ %with_link.0.off0300, %do.end37.for.end_crit_edge ], [ %with_link.3.off0, %for.inc.for.end_crit_edge ]
  %found.1.lcssa = phi ptr [ %found.0301, %do.end37.for.end_crit_edge ], [ %found.5, %for.inc.for.end_crit_edge ]
  br i1 %with_link.1.off0.lcssa, label %for.end.land.lhs.true153_crit_edge, label %for.end.for.inc157_crit_edge

for.end.for.inc157_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157

for.end.land.lhs.true153_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true153

land.lhs.true153:                                 ; preds = %for.end.land.lhs.true153_crit_edge, %land.lhs.true137.land.lhs.true153_crit_edge
  %found.6285 = phi ptr [ %found.1.lcssa, %for.end.land.lhs.true153_crit_edge ], [ %found.4, %land.lhs.true137.land.lhs.true153_crit_edge ]
  %38 = ptrtoint ptr %multi_package to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %multi_package, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool154.not = icmp eq i8 %39, 0
  br i1 %tobool154.not, label %land.lhs.true153.for.end167_crit_edge, label %land.lhs.true153.for.inc157_crit_edge

land.lhs.true153.for.inc157_crit_edge:            ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157

land.lhs.true153.for.end167_crit_edge:            ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end167

for.inc157:                                       ; preds = %land.lhs.true153.for.inc157_crit_edge, %for.end.for.inc157_crit_edge, %for.body.for.inc157_crit_edge
  %with_link.5.off0 = phi i1 [ true, %land.lhs.true153.for.inc157_crit_edge ], [ false, %for.end.for.inc157_crit_edge ], [ %with_link.0.off0300, %for.body.for.inc157_crit_edge ]
  %found.7 = phi ptr [ %found.6285, %land.lhs.true153.for.inc157_crit_edge ], [ %found.1.lcssa, %for.end.for.inc157_crit_edge ], [ %found.0301, %for.body.for.inc157_crit_edge ]
  %40 = ptrtoint ptr %.pn302 to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load volatile ptr, ptr %.pn302, align 4
  %cmp20.not = icmp eq ptr %.pn, %packages
  br i1 %cmp20.not, label %for.inc157.for.end167_crit_edge, label %for.inc157.for.body_crit_edge

for.inc157.for.body_crit_edge:                    ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc157.for.end167_crit_edge:                  ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end167

for.end167:                                       ; preds = %for.inc157.for.end167_crit_edge, %land.lhs.true153.for.end167_crit_edge
  %found.8 = phi ptr [ %found.7, %for.inc157.for.end167_crit_edge ], [ %found.6285, %land.lhs.true153.for.end167_crit_edge ]
  %channel_queue168 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13
  %41 = ptrtoint ptr %channel_queue168 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %channel_queue168, align 4
  %cmp.i274 = icmp ne ptr %42, %channel_queue168
  %tobool172.not = icmp eq ptr %found.8, null
  %or.cond = select i1 %cmp.i274, i1 true, i1 %tobool172.not
  br i1 %or.cond, label %if.else, label %if.then173

if.then173:                                       ; preds = %for.end167
  %dev175 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %43 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev175, align 4
  %45 = ptrtoint ptr %found.8 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %found.8, align 8
  %conv177 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %44, ptr noundef nonnull @.str.70, i32 noundef %conv177) #13
  %call187 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %link192 = getelementptr inbounds %struct.ncsi_channel, ptr %found.8, i32 0, i32 13
  %prev.i276 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13, i32 1
  %47 = ptrtoint ptr %prev.i276 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i276, align 4
  %call.i.i277 = tail call zeroext i1 @__list_add_valid(ptr noundef %link192, ptr noundef %48, ptr noundef %channel_queue168) #9
  br i1 %call.i.i277, label %if.end.i.i279, label %if.then173.list_add_tail_rcu.exit280_crit_edge

if.then173.list_add_tail_rcu.exit280_crit_edge:   ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail_rcu.exit280

if.end.i.i279:                                    ; preds = %if.then173
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %link192 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %channel_queue168, ptr %link192, align 4
  %prev2.i.i278 = getelementptr inbounds %struct.ncsi_channel, ptr %found.8, i32 0, i32 13, i32 1
  %50 = ptrtoint ptr %prev2.i.i278 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %48, ptr %prev2.i.i278, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %link192, ptr %48, align 4
  %52 = ptrtoint ptr %prev.i276 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %link192, ptr %prev.i276, align 4
  br label %list_add_tail_rcu.exit280

list_add_tail_rcu.exit280:                        ; preds = %if.end.i.i279, %if.then173.list_add_tail_rcu.exit280_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call187) #9
  br label %if.end200

if.else:                                          ; preds = %for.end167
  br i1 %tobool172.not, label %if.else.if.then196_crit_edge, label %if.else.if.end200_crit_edge

if.else.if.end200_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

if.else.if.then196_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then196

if.then196:                                       ; preds = %if.else.if.then196_crit_edge, %if.else.thread
  %dev198 = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %53 = ptrtoint ptr %dev198 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev198, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %54, ptr noundef nonnull @.str.71) #13
  %55 = ptrtoint ptr %ndp to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 256, ptr %ndp, align 4
  %link_up.i = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 1
  %56 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %link_up.i, align 4
  %handler.i = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 3
  %57 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %handler.i, align 4
  tail call void %58(ptr noundef %ndp) #9
  br label %cleanup

if.end200:                                        ; preds = %if.else.if.end200_crit_edge, %list_add_tail_rcu.exit280
  %call201 = tail call i32 @ncsi_process_next_channel(ptr noundef %ndp)
  br label %cleanup

cleanup:                                          ; preds = %if.end200, %if.then196
  %retval.0 = phi i32 [ %call201, %if.end200 ], [ -19, %if.then196 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_vlan_rx_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp = icmp eq i16 %vid, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.for.cond.i.preheader_crit_edge

if.end.for.cond.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @ncsi_find_dev.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @.str.2) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %if.end.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @ncsi_dev_list, %for.cond.i.preheader ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ncsi_dev_list
  br i1 %cmp.not.i, label %for.cond.i.if.then2_crit_edge, label %for.body.i

for.cond.i.if.then2_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

for.body.i:                                       ; preds = %for.cond.i
  %dev9.i = getelementptr i8, ptr %.pn.i, i32 -24764
  %1 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev9.i, align 4
  %cmp10.i = icmp eq ptr %2, %dev
  br i1 %cmp10.i, label %ncsi_find_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

ncsi_find_dev.exit:                               ; preds = %for.body.i
  %ndp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24772
  %tobool.not = icmp eq ptr %ndp.0.le.i, null
  br i1 %tobool.not, label %ncsi_find_dev.exit.if.then2_crit_edge, label %if.end3

ncsi_find_dev.exit.if.then2_crit_edge:            ; preds = %ncsi_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

if.then2:                                         ; preds = %ncsi_find_dev.exit.if.then2_crit_edge, %for.cond.i.if.then2_crit_edge
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end3:                                          ; preds = %ncsi_find_dev.exit
  %call4 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end3.do.end_crit_edge

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %if.end3
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true8

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b117 = load i1, ptr @ncsi_vlan_rx_add_vid.__warned, align 1
  br i1 %.b117, label %land.lhs.true8.do.end_crit_edge, label %if.then10

land.lhs.true8.do.end_crit_edge:                  ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_vlan_rx_add_vid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1684, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then10, %land.lhs.true8.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end3.do.end_crit_edge
  %vlan_vids = getelementptr i8, ptr %.pn.i, i32 8
  %3 = ptrtoint ptr %vlan_vids to i32
  call void @__asan_load4_noabort(i32 %3)
  %vlan.0128 = load volatile ptr, ptr %vlan_vids, align 4
  %cmp20.not129 = icmp eq ptr %vlan.0128, %vlan_vids
  br i1 %cmp20.not129, label %do.end.if.end56_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.if.end56_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %vlan.0131 = phi ptr [ %vlan.0, %for.inc.for.body_crit_edge ], [ %vlan.0128, %do.end.for.body_crit_edge ]
  %n_vids.0130 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %vid22 = getelementptr inbounds %struct.vlan_vid, ptr %vlan.0131, i32 0, i32 2
  %4 = ptrtoint ptr %vid22 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vid22, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %vid)
  %cmp25 = icmp eq i16 %5, %vid
  br i1 %cmp25, label %do.body29, label %for.inc

do.body29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_vlan_rx_add_vid.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_vlan_rx_add_vid, %if.then35)) #9
          to label %cleanup [label %if.then35], !srcloc !230

if.then35:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_vlan_rx_add_vid.__UNIQUE_ID_ddebug547, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %conv) #9
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add i32 %n_vids.0130, 1
  %6 = ptrtoint ptr %vlan.0131 to i32
  call void @__asan_load4_noabort(i32 %6)
  %vlan.0 = load volatile ptr, ptr %vlan.0131, align 4
  %cmp20.not = icmp eq ptr %vlan.0, %vlan_vids
  br i1 %cmp20.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %inc)
  %phi.cmp = icmp ugt i32 %inc, 14
  br i1 %phi.cmp, label %if.then54, label %for.end.if.end56_crit_edge

for.end.if.end56_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then54:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %conv, i32 noundef 15) #13
  br label %cleanup

if.end56:                                         ; preds = %for.end.if.end56_crit_edge, %do.end.if.end56_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 12) #12
  %tobool58.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool58.not, label %if.end56.cleanup_crit_edge, label %if.end60

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end60:                                         ; preds = %if.end56
  %proto61 = getelementptr inbounds %struct.vlan_vid, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %proto61 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %proto, ptr %proto61, align 8
  %vid62 = getelementptr inbounds %struct.vlan_vid, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %vid62 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %vid, ptr %vid62, align 2
  %10 = ptrtoint ptr %vlan_vids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vlan_vids, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %vlan_vids, ptr noundef %11) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end60.list_add_rcu.exit_crit_edge

if.end60.list_add_rcu.exit_crit_edge:             ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_rcu.exit

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i, align 8
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %vlan_vids, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  %14 = ptrtoint ptr %vlan_vids to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %vlan_vids, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %prev37.i.i, align 4
  br label %list_add_rcu.exit

list_add_rcu.exit:                                ; preds = %if.end.i.i, %if.end60.list_add_rcu.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_vlan_rx_add_vid.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_vlan_rx_add_vid, %if.then78)) #9
          to label %do.end84 [label %if.then78], !srcloc !230

if.then78:                                        ; preds = %list_add_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_vlan_rx_add_vid.__UNIQUE_ID_ddebug548, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %conv) #9
  br label %do.end84

do.end84:                                         ; preds = %if.then78, %list_add_rcu.exit
  %call85 = tail call fastcc i32 @ncsi_kick_channels(ptr noundef nonnull %ndp.0.le.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86.not = icmp eq i32 %call85, 0
  br i1 %cmp86.not, label %do.end84.cleanup_crit_edge, label %cond.true

do.end84.cleanup_crit_edge:                       ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #11
  %call91 = tail call i32 @ncsi_process_next_channel(ptr noundef nonnull %ndp.0.le.i)
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %do.end84.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then54, %if.then35, %do.body29, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %if.then54 ], [ 0, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then35 ], [ -12, %if.end56.cleanup_crit_edge ], [ %call91, %cond.true ], [ 0, %do.end84.cleanup_crit_edge ], [ 0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ncsi_kick_channels(ptr noundef %ndp) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b175 = load i1, ptr @ncsi_kick_channels.__warned, align 1
  br i1 %.b175, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_kick_channels.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  %0 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn187 = load volatile ptr, ptr %packages, align 4
  %cmp.not188 = icmp eq ptr %.pn187, %packages
  br i1 %cmp.not188, label %do.end.for.end143_crit_edge, label %do.body10.lr.ph

do.end.for.end143_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end143

do.body10.lr.ph:                                  ; preds = %do.end
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %lock95 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 3
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13, i32 1
  br label %do.body10

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %do.end21.for.cond.loopexit_crit_edge
  %n.1.lcssa = phi i32 [ %n.0189, %do.end21.for.cond.loopexit_crit_edge ], [ %n.2, %for.inc.for.cond.loopexit_crit_edge ]
  %1 = ptrtoint ptr %.pn190 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load volatile ptr, ptr %.pn190, align 4
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.cond.loopexit.for.end143_crit_edge, label %for.cond.loopexit.do.body10_crit_edge

for.cond.loopexit.do.body10_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

for.cond.loopexit.for.end143_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end143

do.body10:                                        ; preds = %for.cond.loopexit.do.body10_crit_edge, %do.body10.lr.ph
  %.pn190 = phi ptr [ %.pn187, %do.body10.lr.ph ], [ %.pn, %for.cond.loopexit.do.body10_crit_edge ]
  %n.0189 = phi i32 [ 0, %do.body10.lr.ph ], [ %n.1.lcssa, %for.cond.loopexit.do.body10_crit_edge ]
  %call11 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %do.body10.do.end21_crit_edge

do.body10.do.end21_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true13:                                  ; preds = %do.body10
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b172174 = load i1, ptr @ncsi_kick_channels.__warned.72, align 1
  br i1 %.b172174, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_kick_channels.__warned.72, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1623, ptr noundef nonnull @.str.2) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true13.do.end21_crit_edge, %do.body10.do.end21_crit_edge
  %channels = getelementptr i8, ptr %.pn190, i32 -8
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn173181 = load volatile ptr, ptr %channels, align 4
  %cmp33.not183 = icmp eq ptr %.pn173181, %channels
  br i1 %cmp33.not183, label %do.end21.for.cond.loopexit_crit_edge, label %do.end21.do.body36_crit_edge

do.end21.do.body36_crit_edge:                     ; preds = %do.end21
  br label %do.body36

do.end21.for.cond.loopexit_crit_edge:             ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

do.body36:                                        ; preds = %for.inc.do.body36_crit_edge, %do.end21.do.body36_crit_edge
  %.pn173185 = phi ptr [ %.pn173, %for.inc.do.body36_crit_edge ], [ %.pn173181, %do.end21.do.body36_crit_edge ]
  %n.1184 = phi i32 [ %n.2, %for.inc.do.body36_crit_edge ], [ %n.0189, %do.end21.do.body36_crit_edge ]
  %nc.0186 = getelementptr i8, ptr %.pn173185, i32 -828
  %lock = getelementptr i8, ptr %.pn173185, i32 -816
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %state = getelementptr i8, ptr %.pn173185, i32 -824
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp45.not = icmp eq i32 %4, 2
  br i1 %cmp45.not, label %if.end70, label %if.then47

if.then47:                                        ; preds = %do.body36
  %5 = ptrtoint ptr %ndp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndp, align 4
  %and = and i32 %6, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %and)
  %cmp50 = icmp eq i32 %and, 768
  br i1 %cmp50, label %if.then47.do.body56_crit_edge, label %lor.lhs.false

if.then47.do.body56_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

lor.lhs.false:                                    ; preds = %if.then47
  %link = getelementptr i8, ptr %.pn173185, i32 8
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %8, %link
  br i1 %cmp.i.not, label %lor.lhs.false.if.end68_crit_edge, label %lor.lhs.false.do.body56_crit_edge

lor.lhs.false.do.body56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body56

lor.lhs.false.if.end68_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

do.body56:                                        ; preds = %lor.lhs.false.do.body56_crit_edge, %if.then47.do.body56_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_kick_channels.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_kick_channels, %if.then62)) #9
          to label %do.end67 [label %if.then62], !srcloc !230

if.then62:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_kick_channels.__UNIQUE_ID_ddebug543, ptr noundef %10, ptr noundef nonnull @.str.74, ptr noundef %nc.0186) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.body56
  %reconfigure_needed = getelementptr i8, ptr %.pn173185, i32 -820
  %11 = ptrtoint ptr %reconfigure_needed to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %reconfigure_needed, align 8
  br label %if.end68

if.end68:                                         ; preds = %do.end67, %lor.lhs.false.if.end68_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #9
  br label %for.inc

if.end70:                                         ; preds = %do.body36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %enabled.i = getelementptr i8, ptr %.pn173185, i32 -8
  %12 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %enabled.i, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #9
  br label %ncsi_stop_channel_monitor.exit

if.end.i:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %monitor.i = getelementptr i8, ptr %.pn173185, i32 -56
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enabled.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #9
  %call10.i = tail call i32 @del_timer_sync(ptr noundef %monitor.i) #9
  br label %ncsi_stop_channel_monitor.exit

ncsi_stop_channel_monitor.exit:                   ; preds = %if.end.i, %if.then.i
  %call81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call81) #9
  %call97 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock95) #9
  %link102 = getelementptr i8, ptr %.pn173185, i32 8
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link102, ptr noundef %17, ptr noundef %channel_queue) #9
  br i1 %call.i.i, label %if.end.i.i, label %ncsi_stop_channel_monitor.exit.list_add_tail_rcu.exit_crit_edge

ncsi_stop_channel_monitor.exit.list_add_tail_rcu.exit_crit_edge: ; preds = %ncsi_stop_channel_monitor.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %ncsi_stop_channel_monitor.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %link102 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %channel_queue, ptr %link102, align 4
  %prev2.i.i = getelementptr i8, ptr %.pn173185, i32 12
  %19 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %link102, ptr %17, align 4
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %link102, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %ncsi_stop_channel_monitor.exit.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock95, i32 noundef %call97) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_kick_channels.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_kick_channels, %if.then117)) #9
          to label %do.end123 [label %if.then117], !srcloc !230

if.then117:                                       ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_kick_channels.__UNIQUE_ID_ddebug544, ptr noundef %23, ptr noundef nonnull @.str.75, ptr noundef %nc.0186) #9
  br label %do.end123

do.end123:                                        ; preds = %if.then117, %list_add_tail_rcu.exit
  %inc = add i32 %n.1184, 1
  br label %for.inc

for.inc:                                          ; preds = %do.end123, %if.end68
  %n.2 = phi i32 [ %n.1184, %if.end68 ], [ %inc, %do.end123 ]
  %24 = ptrtoint ptr %.pn173185 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn173 = load volatile ptr, ptr %.pn173185, align 4
  %cmp33.not = icmp eq ptr %.pn173, %channels
  br i1 %cmp33.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.do.body36_crit_edge

for.inc.do.body36_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body36

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.end143:                                       ; preds = %for.cond.loopexit.for.end143_crit_edge, %do.end.for.end143_crit_edge
  %n.0.lcssa = phi i32 [ 0, %do.end.for.end143_crit_edge ], [ %n.1.lcssa, %for.cond.loopexit.for.end143_crit_edge ]
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_vlan_rx_kill_vid(ptr noundef %dev, i16 zeroext %proto, i16 noundef zeroext %vid) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %vid to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vid)
  %cmp = icmp eq i16 %vid, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end.for.cond.i.preheader_crit_edge

if.end.for.cond.i.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @ncsi_find_dev.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @.str.2) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %if.end.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @ncsi_dev_list, %for.cond.i.preheader ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ncsi_dev_list
  br i1 %cmp.not.i, label %for.cond.i.if.then2_crit_edge, label %for.body.i

for.cond.i.if.then2_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

for.body.i:                                       ; preds = %for.cond.i
  %dev9.i = getelementptr i8, ptr %.pn.i, i32 -24764
  %1 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev9.i, align 4
  %cmp10.i = icmp eq ptr %2, %dev
  br i1 %cmp10.i, label %ncsi_find_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

ncsi_find_dev.exit:                               ; preds = %for.body.i
  %ndp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24772
  %tobool.not = icmp eq ptr %ndp.0.le.i, null
  br i1 %tobool.not, label %ncsi_find_dev.exit.if.then2_crit_edge, label %if.end3

ncsi_find_dev.exit.if.then2_crit_edge:            ; preds = %ncsi_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

if.then2:                                         ; preds = %ncsi_find_dev.exit.if.then2_crit_edge, %for.cond.i.if.then2_crit_edge
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #13
  br label %cleanup

if.end3:                                          ; preds = %ncsi_find_dev.exit
  %vlan_vids = getelementptr i8, ptr %.pn.i, i32 8
  %3 = ptrtoint ptr %vlan_vids to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vlan_vids, align 4
  %cmp14.not79 = icmp eq ptr %4, %vlan_vids
  br i1 %cmp14.not79, label %if.end3.if.then42_crit_edge, label %if.end3.for.body.outer_crit_edge

if.end3.for.body.outer_crit_edge:                 ; preds = %if.end3
  br label %for.body.outer

if.end3.if.then42_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

for.body.outer:                                   ; preds = %for.inc.thread.for.body.outer_crit_edge, %if.end3.for.body.outer_crit_edge
  %vlan.081.ph = phi ptr [ %tmp.083, %for.inc.thread.for.body.outer_crit_edge ], [ %4, %if.end3.for.body.outer_crit_edge ]
  %found.0.off080.ph = phi i1 [ true, %for.inc.thread.for.body.outer_crit_edge ], [ false, %if.end3.for.body.outer_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.outer
  %vlan.081 = phi ptr [ %tmp.083, %for.inc.for.body_crit_edge ], [ %vlan.081.ph, %for.body.outer ]
  %5 = ptrtoint ptr %vlan.081 to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.083 = load ptr, ptr %vlan.081, align 4
  %vid16 = getelementptr inbounds %struct.vlan_vid, ptr %vlan.081, i32 0, i32 2
  %6 = ptrtoint ptr %vid16 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vid16, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %vid)
  %cmp19 = icmp eq i16 %7, %vid
  br i1 %cmp19, label %do.body22, label %for.inc

do.body22:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_vlan_rx_kill_vid.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_vlan_rx_kill_vid, %if.then29)) #9
          to label %do.end33 [label %if.then29], !srcloc !230

if.then29:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_vlan_rx_kill_vid.__UNIQUE_ID_ddebug549, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %conv) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body22
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %vlan.081) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.end33.for.inc.thread_crit_edge

do.end33.for.inc.thread_crit_edge:                ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.thread

if.end.i.i:                                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %vlan.081, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %vlan.081 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %vlan.081, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %for.inc.thread

for.inc:                                          ; preds = %for.body
  %cmp14.not = icmp eq ptr %tmp.083, %vlan_vids
  br i1 %cmp14.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.thread:                                   ; preds = %if.end.i.i, %do.end33.for.inc.thread_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %vlan.081, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %vlan.081) #9
  %cmp14.not86 = icmp eq ptr %tmp.083, %vlan_vids
  br i1 %cmp14.not86, label %for.inc.thread.if.end44_crit_edge, label %for.inc.thread.for.body.outer_crit_edge

for.inc.thread.for.body.outer_crit_edge:          ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.outer

for.inc.thread.if.end44_crit_edge:                ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.end:                                          ; preds = %for.inc
  br i1 %found.0.off080.ph, label %for.end.if.end44_crit_edge, label %for.end.if.then42_crit_edge

for.end.if.then42_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then42:                                        ; preds = %for.end.if.then42_crit_edge, %if.end3.if.then42_crit_edge
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %conv) #13
  br label %cleanup

if.end44:                                         ; preds = %for.end.if.end44_crit_edge, %for.inc.thread.if.end44_crit_edge
  %call45 = tail call fastcc i32 @ncsi_kick_channels(ptr noundef nonnull %ndp.0.le.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46.not = icmp eq i32 %call45, 0
  br i1 %cmp46.not, label %if.end44.cleanup_crit_edge, label %cond.true

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.true:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %call51 = tail call i32 @ncsi_process_next_channel(ptr noundef nonnull %ndp.0.le.i)
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end44.cleanup_crit_edge, %if.then42, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then42 ], [ 0, %if.then2 ], [ 0, %entry.cleanup_crit_edge ], [ %call51, %cond.true ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ncsi_register_dev(ptr noundef %dev, ptr noundef %handler) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.for.cond.i.preheader_crit_edge

entry.for.cond.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.cond.i.preheader_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.for.cond.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b25.i = load i1, ptr @ncsi_find_dev.__warned, align 1
  br i1 %.b25.i, label %land.lhs.true3.i.for.cond.i.preheader_crit_edge, label %if.then.i

land.lhs.true3.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.preheader

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 423, ptr noundef nonnull @.str.2) #9
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i, %land.lhs.true3.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i.for.cond.i.preheader_crit_edge, %entry.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ @ncsi_dev_list, %for.cond.i.preheader ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @ncsi_dev_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %dev9.i = getelementptr i8, ptr %.pn.i, i32 -24764
  %1 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev9.i, align 4
  %cmp10.i = icmp eq ptr %2, %dev
  br i1 %cmp10.i, label %ncsi_find_dev.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

ncsi_find_dev.exit:                               ; preds = %for.body.i
  %ndp.0.le.i = getelementptr i8, ptr %.pn.i, i32 -24772
  %tobool.not = icmp eq ptr %ndp.0.le.i, null
  br i1 %tobool.not, label %ncsi_find_dev.exit.if.end_crit_edge, label %ncsi_find_dev.exit.cleanup_crit_edge

ncsi_find_dev.exit.cleanup_crit_edge:             ; preds = %ncsi_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

ncsi_find_dev.exit.if.end_crit_edge:              ; preds = %ncsi_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %ncsi_find_dev.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 24796, i32 noundef 2848, i32 noundef 3) #14
  %tobool2.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %call1.i.i.i, align 4096
  %dev5 = getelementptr inbounds %struct.ncsi_dev, ptr %call1.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev5, align 8
  %handler6 = getelementptr inbounds %struct.ncsi_dev, ptr %call1.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %handler6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %handler, ptr %handler6, align 4
  %pending_req_num = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 10
  %6 = ptrtoint ptr %pending_req_num to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pending_req_num, align 4
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %channel_queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %channel_queue, ptr %channel_queue, align 8
  %prev.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %channel_queue, ptr %prev.i, align 4
  %vlan_vids = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 17
  %9 = ptrtoint ptr %vlan_vids to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %vlan_vids, ptr %vlan_vids, align 4
  %prev.i93 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %vlan_vids, ptr %prev.i93, align 16
  %work = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %11 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %work, align 16
  %lockdep_map = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.29, ptr noundef nonnull @ncsi_register_dev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry10 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 14, i32 1
  %12 = ptrtoint ptr %entry10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry10, ptr %entry10, align 4
  %prev.i94 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 14, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i94 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry10, ptr %prev.i94, align 8
  %func = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ncsi_dev_work, ptr %func, align 4
  %package_whitelist = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %package_whitelist to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %package_whitelist, align 8
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @ncsi_register_dev.__key.30, i16 noundef signext 3) #9
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %packages to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %packages, ptr %packages, align 4
  %prev.i95 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %prev.i95 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %packages, ptr %prev.i95, align 16
  %request_id = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %request_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %request_id, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end4
  %i.099 = phi i32 [ 0, %if.end4 ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %i.099 to i8
  %arrayidx = getelementptr %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 8, i32 %i.099
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %arrayidx, align 8
  %ndp18 = getelementptr %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 8, i32 %i.099, i32 3
  %20 = ptrtoint ptr %ndp18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call1.i.i.i, ptr %ndp18, align 32
  %timer = getelementptr %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 8, i32 %i.099, i32 6
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @ncsi_request_timeout, i32 noundef 0, ptr noundef nonnull @.str.33, ptr noundef nonnull @ncsi_register_dev.__key.32) #9
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %do.body25, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body25:                                        ; preds = %for.body
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ncsi_dev_lock) #9
  %node = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 16
  %21 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @ncsi_dev_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %21, ptr noundef nonnull @ncsi_dev_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body25.list_add_tail_rcu.exit_crit_edge

do.body25.list_add_tail_rcu.exit_crit_edge:       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ncsi_dev_list, ptr %node, align 4
  %prev2.i.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 16, i32 1
  %23 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %prev2.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !228
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %node, ptr %21, align 4
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @ncsi_dev_list, i32 0, i32 1), align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %do.body25.list_add_tail_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ncsi_dev_lock, i32 noundef %call29) #9
  %ptype = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 15
  %25 = ptrtoint ptr %ptype to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -30472, ptr %ptype, align 4
  %func35 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 15, i32 4
  %26 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @ncsi_rcv_rsp, ptr %func35, align 8
  %dev37 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 15, i32 2
  %27 = ptrtoint ptr %dev37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev, ptr %dev37, align 32
  tail call void @dev_add_pack(ptr noundef %ptype) #9
  %parent = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 133, i32 1
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %29, i32 -16
  %tobool41.not = icmp eq ptr %add.ptr, null
  br i1 %tobool41.not, label %list_add_tail_rcu.exit.cleanup_crit_edge, label %if.then42

list_add_tail_rcu.exit.cleanup_crit_edge:         ; preds = %list_add_tail_rcu.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %list_add_tail_rcu.exit
  %of_node = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 27
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %tobool44.not = icmp eq ptr %31, null
  br i1 %tobool44.not, label %if.then42.cleanup_crit_edge, label %land.lhs.true

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then42
  %call45 = tail call ptr @of_get_property(ptr noundef nonnull %31, ptr noundef nonnull @.str.34, ptr noundef null) #9
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %land.lhs.true.cleanup_crit_edge, label %if.then47

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then47:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %mlx_multi_host = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call1.i.i.i, i32 0, i32 19
  %32 = ptrtoint ptr %mlx_multi_host to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %mlx_multi_host, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %land.lhs.true.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %list_add_tail_rcu.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ncsi_find_dev.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ %ndp.0.le.i, %ncsi_find_dev.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call1.i.i.i, %if.then42.cleanup_crit_edge ], [ %call1.i.i.i, %land.lhs.true.cleanup_crit_edge ], [ %call1.i.i.i, %if.then47 ], [ %call1.i.i.i, %list_add_tail_rcu.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncsi_dev_work(ptr noundef %work) #1 align 64 {
entry:
  %data.i280.i = alloca [7 x i8], align 4
  %u.i271.i = alloca %union.anon.149, align 4
  %u.i.i = alloca %union.anon.148, align 8
  %nca.i = alloca %struct.ncsi_cmd_arg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24688
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 4
  %2 = trunc i32 %1 to i16
  %trunc = and i16 %2, -256
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %trunc, label %sw.default [
    i16 512, label %sw.bb
    i16 1024, label %sw.bb1
    i16 768, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nca.i) #9
  %4 = getelementptr inbounds i8, ptr %nca.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 36)
  %6 = ptrtoint ptr %nca.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %add.ptr, ptr %nca.i, align 4
  %req_flags.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 6
  %7 = ptrtoint ptr %req_flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %req_flags.i, align 4
  %8 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %1, label %sw.default.i [
    i32 512, label %sw.bb.i
    i32 513, label %sw.bb.sw.bb3.i_crit_edge
    i32 514, label %sw.bb6.i
    i32 515, label %sw.bb17.i
    i32 516, label %sw.bb35.i
    i32 517, label %sw.bb46.i
    i32 518, label %sw.bb58.i
    i32 519, label %sw.bb79.i
    i32 520, label %sw.bb.sw.bb91.i_crit_edge
    i32 521, label %sw.bb.sw.bb91.i_crit_edge48
    i32 522, label %sw.bb.sw.bb91.i_crit_edge49
    i32 523, label %sw.bb159.i
  ]

sw.bb.sw.bb91.i_crit_edge49:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb91.i

sw.bb.sw.bb91.i_crit_edge48:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb91.i

sw.bb.sw.bb91.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb91.i

sw.bb.sw.bb3.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb3.i

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 513, ptr %add.ptr, align 4
  br label %sw.bb3.i

sw.bb3.i:                                         ; preds = %sw.bb.i, %sw.bb.sw.bb3.i_crit_edge
  %pending_req_num.i = getelementptr i8, ptr %work, i32 -20
  %10 = ptrtoint ptr %pending_req_num.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %pending_req_num.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 2, ptr %4, align 4
  %channel.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 4
  %12 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 31, ptr %channel.i, align 1
  %package.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 3
  %13 = ptrtoint ptr %package.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %package.i, align 2
  %call.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %for.cond.i, label %sw.bb3.i.error.i_crit_edge

sw.bb3.i.error.i_crit_edge:                       ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.cond.i:                                       ; preds = %sw.bb3.i
  %14 = ptrtoint ptr %package.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %package.i, align 2
  %call.1.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %for.cond.1.i, label %for.cond.i.error.i_crit_edge

for.cond.i.error.i_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %15 = ptrtoint ptr %package.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 2, ptr %package.i, align 2
  %call.2.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %for.cond.2.i, label %for.cond.1.i.error.i_crit_edge

for.cond.1.i.error.i_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %16 = ptrtoint ptr %package.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %package.i, align 2
  %call.3.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %for.cond.3.i, label %for.cond.2.i.error.i_crit_edge

for.cond.2.i.error.i_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %17 = ptrtoint ptr %package.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 4, ptr %package.i, align 2
  %call.4.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %for.cond.4.i, label %for.cond.3.i.error.i_crit_edge

for.cond.3.i.error.i_crit_edge:                   ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %18 = ptrtoint ptr %package.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 5, ptr %package.i, align 2
  %call.5.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %for.cond.5.i, label %for.cond.4.i.error.i_crit_edge

for.cond.4.i.error.i_crit_edge:                   ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %19 = ptrtoint ptr %package.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %package.i, align 2
  %call.6.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %for.cond.6.i, label %for.cond.5.i.error.i_crit_edge

for.cond.5.i.error.i_crit_edge:                   ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %20 = ptrtoint ptr %package.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 7, ptr %package.i, align 2
  %call.7.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %for.cond.7.i, label %for.cond.6.i.error.i_crit_edge

for.cond.6.i.error.i_crit_edge:                   ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.cond.7.i:                                     ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 514, ptr %add.ptr, align 4
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %sw.bb
  %pending_req_num7.i = getelementptr i8, ptr %work, i32 -20
  %22 = ptrtoint ptr %pending_req_num7.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %pending_req_num7.i, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %4, align 4
  %24 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 7
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %24, align 4
  %package_probe_id.i = getelementptr i8, ptr %work, i32 -24620
  %26 = ptrtoint ptr %package_probe_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %package_probe_id.i, align 4
  %conv9.i = trunc i32 %27 to i8
  %package10.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 3
  %28 = ptrtoint ptr %package10.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv9.i, ptr %package10.i, align 2
  %channel11.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 4
  %29 = ptrtoint ptr %channel11.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 31, ptr %channel11.i, align 1
  %call12.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %sw.bb6.i.error.i_crit_edge

sw.bb6.i.error.i_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end15.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 515, ptr %add.ptr, align 4
  br label %sw.epilog.i

sw.bb17.i:                                        ; preds = %sw.bb
  %package_probe_id18.i = getelementptr i8, ptr %work, i32 -24620
  %31 = ptrtoint ptr %package_probe_id18.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %package_probe_id18.i, align 4
  %conv19.i = trunc i32 %32 to i8
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.bb17.i.do.end.i.i_crit_edge

sw.bb17.i.do.end.i.i_crit_edge:                   ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb17.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b29.i.i = load i1, ptr @ncsi_find_package.__warned, align 1
  br i1 %.b29.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_find_package.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 274, ptr noundef nonnull @.str.2) #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %sw.bb17.i.do.end.i.i_crit_edge
  %packages.i.i = getelementptr i8, ptr %work, i32 -24612
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %do.end.i.i
  %.pn.in.i.i = phi ptr [ %packages.i.i, %do.end.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %33 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.i.i = load volatile ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %packages.i.i
  br i1 %cmp.not.i.i, label %ncsi_find_package.exit.thread.i, label %for.body.i.i

ncsi_find_package.exit.thread.i:                  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %active_package300.i = getelementptr i8, ptr %work, i32 -16
  %34 = ptrtoint ptr %active_package300.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %active_package300.i, align 4
  br label %if.then23.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %np.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -80
  %35 = ptrtoint ptr %np.0.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %np.0.i.i, align 4
  %cmp12.i.i = icmp eq i8 %36, %conv19.i
  br i1 %cmp12.i.i, label %ncsi_find_package.exit.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

ncsi_find_package.exit.i:                         ; preds = %for.body.i.i
  %np.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -80
  %active_package.i = getelementptr i8, ptr %work, i32 -16
  %37 = ptrtoint ptr %active_package.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %np.0.i.i.le, ptr %active_package.i, align 4
  %tobool22.not.i = icmp eq ptr %np.0.i.i.le, null
  br i1 %tobool22.not.i, label %ncsi_find_package.exit.i.if.then23.i_crit_edge, label %if.end26.i

ncsi_find_package.exit.i.if.then23.i_crit_edge:   ; preds = %ncsi_find_package.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then23.i

if.then23.i:                                      ; preds = %ncsi_find_package.exit.i.if.then23.i_crit_edge, %ncsi_find_package.exit.thread.i
  %38 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 523, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %39 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef %work) #9
  br label %sw.epilog.i

if.end26.i:                                       ; preds = %ncsi_find_package.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %mlx_multi_host.i = getelementptr i8, ptr %work, i32 101
  %40 = ptrtoint ptr %mlx_multi_host.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %mlx_multi_host.i, align 1, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool28.not.i = icmp eq i8 %41, 0
  %spec.store.select.i = select i1 %tobool28.not.i, i32 518, i32 516
  %42 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select.i, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i267.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %work) #9
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %sw.bb
  %pending_req_num36.i = getelementptr i8, ptr %work, i32 -20
  %44 = ptrtoint ptr %pending_req_num36.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %pending_req_num36.i, align 4
  %45 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 80, ptr %4, align 4
  %active_package38.i = getelementptr i8, ptr %work, i32 -16
  %46 = ptrtoint ptr %active_package38.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %active_package38.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 4
  %package39.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 3
  %50 = ptrtoint ptr %package39.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %package39.i, align 2
  %channel40.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 4
  %51 = ptrtoint ptr %channel40.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %channel40.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %u.i.i) #9
  %payload.i.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 5
  %52 = ptrtoint ptr %payload.i.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 8, ptr %payload.i.i, align 4
  %53 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 141944374172416, ptr %u.i.i, align 8
  %data.i.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 8
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %u.i.i, ptr %data.i.i, align 4
  %call.i268.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268.i)
  %tobool.not.i269.i = icmp eq i32 %call.i268.i, 0
  br i1 %tobool.not.i269.i, label %if.end44.i, label %ncsi_oem_gma_handler_mlx.exit.i

ncsi_oem_gma_handler_mlx.exit.i:                  ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %nca.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %nca.i, align 4
  %dev.i.i = getelementptr inbounds %struct.ncsi_dev, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i.i, align 4
  %59 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %4, align 4
  %conv.i.i = zext i8 %60 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %58, ptr noundef nonnull @.str.54, i32 noundef %conv.i.i) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %u.i.i) #9
  br label %error.i

if.end44.i:                                       ; preds = %sw.bb35.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %u.i.i) #9
  %61 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 517, ptr %add.ptr, align 4
  br label %sw.epilog.i

sw.bb46.i:                                        ; preds = %sw.bb
  %pending_req_num47.i = getelementptr i8, ptr %work, i32 -20
  %62 = ptrtoint ptr %pending_req_num47.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %pending_req_num47.i, align 4
  %63 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 80, ptr %4, align 4
  %active_package49.i = getelementptr i8, ptr %work, i32 -16
  %64 = ptrtoint ptr %active_package49.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %active_package49.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 4
  %package51.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 3
  %68 = ptrtoint ptr %package51.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %package51.i, align 2
  %channel52.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 4
  %69 = ptrtoint ptr %channel52.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 0, ptr %channel52.i, align 1
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %u.i271.i) #9
  %70 = getelementptr inbounds i8, ptr %u.i271.i, i32 4
  %71 = call ptr @memset(ptr %70, i32 0, i32 56)
  %72 = ptrtoint ptr %u.i271.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 33049, ptr %u.i271.i, align 4
  %arrayidx1.i.i = getelementptr inbounds [60 x i8], ptr %u.i271.i, i32 0, i32 5
  %73 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %arrayidx1.i.i, align 1
  %arrayidx2.i.i = getelementptr inbounds [60 x i8], ptr %u.i271.i, i32 0, i32 6
  %74 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 7, ptr %arrayidx2.i.i, align 2
  %arrayidx3.i.i = getelementptr inbounds [60 x i8], ptr %u.i271.i, i32 0, i32 8
  %dev.i272.i = getelementptr i8, ptr %work, i32 -24680
  %75 = ptrtoint ptr %dev.i272.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i272.i, align 4
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %76, i32 0, i32 86
  %77 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev_addr.i.i, align 64
  %79 = call ptr @memcpy(ptr %arrayidx3.i.i, ptr %78, i32 6)
  %arrayidx4.i.i = getelementptr inbounds [60 x i8], ptr %u.i271.i, i32 0, i32 14
  %80 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 9, ptr %arrayidx4.i.i, align 2
  %payload.i273.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 5
  %81 = ptrtoint ptr %payload.i273.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 60, ptr %payload.i273.i, align 4
  %data.i274.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 8
  %82 = ptrtoint ptr %data.i274.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %u.i271.i, ptr %data.i274.i, align 4
  %call.i275.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275.i)
  %tobool.not.i276.i = icmp eq i32 %call.i275.i, 0
  br i1 %tobool.not.i276.i, label %if.end56.i, label %ncsi_oem_smaf_mlx.exit.i

ncsi_oem_smaf_mlx.exit.i:                         ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %nca.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %nca.i, align 4
  %dev7.i.i = getelementptr inbounds %struct.ncsi_dev, ptr %84, i32 0, i32 2
  %85 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev7.i.i, align 4
  %87 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %4, align 4
  %conv.i278.i = zext i8 %88 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %86, ptr noundef nonnull @.str.78, i32 noundef %conv.i278.i) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %u.i271.i) #9
  br label %error.i

if.end56.i:                                       ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %u.i271.i) #9
  %89 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 518, ptr %add.ptr, align 4
  br label %sw.epilog.i

sw.bb58.i:                                        ; preds = %sw.bb
  %pending_req_num59.i = getelementptr i8, ptr %work, i32 -20
  %90 = ptrtoint ptr %pending_req_num59.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 31, ptr %pending_req_num59.i, align 4
  %91 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %4, align 4
  %active_package61.i = getelementptr i8, ptr %work, i32 -16
  %92 = ptrtoint ptr %active_package61.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %active_package61.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %93, align 4
  %package63.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 3
  %96 = ptrtoint ptr %package63.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %package63.i, align 2
  %channel69.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 4
  br label %for.body68.i

for.cond64.i:                                     ; preds = %for.body68.i
  %inc75.i = add nuw nsw i8 %index.1309.i, 1
  %cmp66.i = icmp ult i8 %index.1309.i, 30
  br i1 %cmp66.i, label %for.cond64.i.for.body68.i_crit_edge, label %for.end76.i

for.cond64.i.for.body68.i_crit_edge:              ; preds = %for.cond64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body68.i

for.body68.i:                                     ; preds = %for.cond64.i.for.body68.i_crit_edge, %sw.bb58.i
  %index.1309.i = phi i8 [ 0, %sw.bb58.i ], [ %inc75.i, %for.cond64.i.for.body68.i_crit_edge ]
  %97 = ptrtoint ptr %channel69.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %index.1309.i, ptr %channel69.i, align 1
  %call70.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70.i)
  %tobool71.not.i = icmp eq i32 %call70.i, 0
  br i1 %tobool71.not.i, label %for.cond64.i, label %for.body68.i.error.i_crit_edge

for.body68.i.error.i_crit_edge:                   ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.end76.i:                                      ; preds = %for.cond64.i
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 519, ptr %add.ptr, align 4
  br label %sw.epilog.i

sw.bb79.i:                                        ; preds = %sw.bb
  %pending_req_num80.i = getelementptr i8, ptr %work, i32 -20
  %99 = ptrtoint ptr %pending_req_num80.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %pending_req_num80.i, align 4
  %100 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 80, ptr %4, align 4
  %active_package82.i = getelementptr i8, ptr %work, i32 -16
  %101 = ptrtoint ptr %active_package82.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %active_package82.i, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %102, align 4
  %package84.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 3
  %105 = ptrtoint ptr %package84.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %package84.i, align 2
  %channel85.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 4
  %106 = ptrtoint ptr %channel85.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %channel85.i, align 1
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %data.i280.i) #9
  %107 = getelementptr inbounds [7 x i8], ptr %data.i280.i, i32 0, i32 4
  %108 = getelementptr inbounds [7 x i8], ptr %data.i280.i, i32 0, i32 6
  %payload.i281.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 5
  %109 = ptrtoint ptr %payload.i281.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 7, ptr %payload.i281.i, align 4
  %110 = call ptr @memset(ptr %107, i32 0, i32 3)
  %111 = ptrtoint ptr %data.i280.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 343, ptr %data.i280.i, align 4
  %112 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 32, ptr %107, align 4
  %113 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 1, ptr %108, align 2
  %data4.i.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 8
  %114 = ptrtoint ptr %data4.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %data.i280.i, ptr %data4.i.i, align 4
  %call.i282.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i282.i)
  %tobool.not.i283.i = icmp eq i32 %call.i282.i, 0
  br i1 %tobool.not.i283.i, label %if.end89.i, label %ncsi_oem_keep_phy_intel.exit.i

ncsi_oem_keep_phy_intel.exit.i:                   ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #11
  %115 = ptrtoint ptr %nca.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %nca.i, align 4
  %dev.i284.i = getelementptr inbounds %struct.ncsi_dev, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %dev.i284.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i284.i, align 4
  %119 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %4, align 4
  %conv.i286.i = zext i8 %120 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %118, ptr noundef nonnull @.str.54, i32 noundef %conv.i286.i) #13
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data.i280.i) #9
  br label %error.i

if.end89.i:                                       ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %data.i280.i) #9
  %121 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 520, ptr %add.ptr, align 4
  br label %sw.epilog.i

sw.bb91.i:                                        ; preds = %sw.bb.sw.bb91.i_crit_edge, %sw.bb.sw.bb91.i_crit_edge48, %sw.bb.sw.bb91.i_crit_edge49
  %active_package92.i = getelementptr i8, ptr %work, i32 -16
  %122 = ptrtoint ptr %active_package92.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %active_package92.i, align 4
  %channel_num.i = getelementptr inbounds %struct.ncsi_package, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %channel_num.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %channel_num.i, align 4
  %pending_req_num93.i = getelementptr i8, ptr %work, i32 -20
  %126 = ptrtoint ptr %pending_req_num93.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %pending_req_num93.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 521, i32 %1)
  %switch.selectcmp.i = icmp eq i32 %1, 521
  %switch.select.i = select i1 %switch.selectcmp.i, i8 22, i8 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 520, i32 %1)
  %switch.selectcmp325.i = icmp eq i32 %1, 520
  %switch.select326.i = select i1 %switch.selectcmp325.i, i8 21, i8 %switch.select.i
  %127 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %switch.select326.i, ptr %4, align 4
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %123, align 4
  %package109.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 3
  %130 = ptrtoint ptr %package109.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %129, ptr %package109.i, align 2
  %call110.i = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110.i)
  %tobool111.not.i = icmp eq i32 %call110.i, 0
  br i1 %tobool111.not.i, label %land.lhs.true.i, label %sw.bb91.i.do.end.i_crit_edge

sw.bb91.i.do.end.i_crit_edge:                     ; preds = %sw.bb91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %sw.bb91.i
  %call112.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true114.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true114.i:                               ; preds = %land.lhs.true.i
  %.b266.i = load i1, ptr @ncsi_probe_channel.__warned, align 1
  br i1 %.b266.i, label %land.lhs.true114.i.do.end.i_crit_edge, label %if.then116.i

land.lhs.true114.i.do.end.i_crit_edge:            ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then116.i:                                     ; preds = %land.lhs.true114.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_probe_channel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1479, ptr noundef nonnull @.str.2) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then116.i, %land.lhs.true114.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %sw.bb91.i.do.end.i_crit_edge
  %channels.i = getelementptr inbounds %struct.ncsi_package, ptr %123, i32 0, i32 5
  %channel128.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 4
  br label %for.cond122.i

for.cond122.i:                                    ; preds = %for.body126.i.for.cond122.i_crit_edge, %do.end.i
  %.pn.in.i = phi ptr [ %channels.i, %do.end.i ], [ %.pn.i, %for.body126.i.for.cond122.i_crit_edge ]
  %131 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pn.i = load volatile ptr, ptr %.pn.in.i, align 4
  %cmp124.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp124.not.i, label %for.end143.i, label %for.body126.i

for.body126.i:                                    ; preds = %for.cond122.i
  %nc.0.i = getelementptr i8, ptr %.pn.i, i32 -828
  %132 = ptrtoint ptr %nc.0.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %nc.0.i, align 8
  %134 = ptrtoint ptr %channel128.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %channel128.i, align 1
  %call129.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  %tobool130.not.i = icmp eq i32 %call129.i, 0
  br i1 %tobool130.not.i, label %for.body126.i.for.cond122.i_crit_edge, label %for.body126.i.error.i_crit_edge

for.body126.i.error.i_crit_edge:                  ; preds = %for.body126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

for.body126.i.for.cond122.i_crit_edge:            ; preds = %for.body126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond122.i

for.end143.i:                                     ; preds = %for.cond122.i
  %135 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %add.ptr, align 4
  %137 = zext i32 %136 to i64
  call void @__sanitizer_cov_trace_switch(i64 %137, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %136, label %if.else155.i [
    i32 520, label %if.then147.i
    i32 521, label %if.then153.i
  ]

if.then147.i:                                     ; preds = %for.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 521, ptr %add.ptr, align 4
  br label %sw.epilog.i

if.then153.i:                                     ; preds = %for.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  %139 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 522, ptr %add.ptr, align 4
  br label %sw.epilog.i

if.else155.i:                                     ; preds = %for.end143.i
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 523, ptr %add.ptr, align 4
  br label %sw.epilog.i

sw.bb159.i:                                       ; preds = %sw.bb
  %pending_req_num160.i = getelementptr i8, ptr %work, i32 -20
  %141 = ptrtoint ptr %pending_req_num160.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %pending_req_num160.i, align 4
  %142 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 2, ptr %4, align 4
  %package_probe_id162.i = getelementptr i8, ptr %work, i32 -24620
  %143 = ptrtoint ptr %package_probe_id162.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %package_probe_id162.i, align 4
  %conv163.i = trunc i32 %144 to i8
  %package164.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 3
  %145 = ptrtoint ptr %package164.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %conv163.i, ptr %package164.i, align 2
  %channel165.i = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca.i, i32 0, i32 4
  %146 = ptrtoint ptr %channel165.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 31, ptr %channel165.i, align 1
  %call166.i = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call166.i)
  %tobool167.not.i = icmp eq i32 %call166.i, 0
  br i1 %tobool167.not.i, label %if.end169.i, label %sw.bb159.i.error.i_crit_edge

sw.bb159.i.error.i_crit_edge:                     ; preds = %sw.bb159.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end169.i:                                      ; preds = %sw.bb159.i
  %147 = ptrtoint ptr %package_probe_id162.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %package_probe_id162.i, align 4
  %inc171.i = add i32 %148, 1
  store i32 %inc171.i, ptr %package_probe_id162.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %inc171.i)
  %cmp173.i = icmp ugt i32 %inc171.i, 7
  br i1 %cmp173.i, label %if.then175.i, label %if.end176.i

if.then175.i:                                     ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr i8, ptr %work, i32 -24672
  %149 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %150, 1
  store i32 %or.i, ptr %flags.i, align 4
  br label %sw.epilog.i

if.end176.i:                                      ; preds = %if.end169.i
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 514, ptr %add.ptr, align 4
  %active_package178.i = getelementptr i8, ptr %work, i32 -16
  %152 = ptrtoint ptr %active_package178.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %active_package178.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr i8, ptr %work, i32 -24680
  %153 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %154, ptr noundef nonnull @.str.77, i32 noundef %1) #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %if.end176.i, %if.then175.i, %if.else155.i, %if.then153.i, %if.then147.i, %if.end89.i, %for.end76.i, %if.end56.i, %if.end44.i, %if.end26.i, %if.then23.i, %if.end15.i, %for.cond.7.i
  %flags180.i = getelementptr i8, ptr %work, i32 -24672
  %155 = ptrtoint ptr %flags180.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags180.i, align 4
  %and.i = and i32 %156, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool181.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool181.not.i, label %sw.epilog.i.ncsi_probe_channel.exit_crit_edge, label %if.then182.i

sw.epilog.i.ncsi_probe_channel.exit_crit_edge:    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ncsi_probe_channel.exit

if.then182.i:                                     ; preds = %sw.epilog.i
  %call.i288.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288.i)
  %tobool.not.i289.i = icmp eq i32 %call.i288.i, 0
  br i1 %tobool.not.i289.i, label %land.lhs.true.i292.i, label %if.then182.i.do.end.i296.i_crit_edge

if.then182.i.do.end.i296.i_crit_edge:             ; preds = %if.then182.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i296.i

land.lhs.true.i292.i:                             ; preds = %if.then182.i
  %call1.i290.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i290.i)
  %tobool2.not.i291.i = icmp eq i32 %call1.i290.i, 0
  br i1 %tobool2.not.i291.i, label %land.lhs.true.i292.i.do.end.i296.i_crit_edge, label %land.lhs.true3.i293.i

land.lhs.true.i292.i.do.end.i296.i_crit_edge:     ; preds = %land.lhs.true.i292.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i296.i

land.lhs.true3.i293.i:                            ; preds = %land.lhs.true.i292.i
  %.b4.i.i = load i1, ptr @ncsi_check_hwa.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true3.i293.i.do.end.i296.i_crit_edge, label %if.then.i294.i

land.lhs.true3.i293.i.do.end.i296.i_crit_edge:    ; preds = %land.lhs.true3.i293.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i296.i

if.then.i294.i:                                   ; preds = %land.lhs.true3.i293.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_check_hwa.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1326, ptr noundef nonnull @.str.2) #9
  br label %do.end.i296.i

do.end.i296.i:                                    ; preds = %if.then.i294.i, %land.lhs.true3.i293.i.do.end.i296.i_crit_edge, %land.lhs.true.i292.i.do.end.i296.i_crit_edge, %if.then182.i.do.end.i296.i_crit_edge
  %packages.i295.i = getelementptr i8, ptr %work, i32 -24612
  %157 = ptrtoint ptr %packages.i295.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %.pn10.i.i = load volatile ptr, ptr %packages.i295.i, align 4
  %cmp.not11.i.i = icmp eq ptr %.pn10.i.i, %packages.i295.i
  br i1 %cmp.not11.i.i, label %do.end.i296.i.if.end65.i.i_crit_edge, label %do.end.i296.i.do.body10.outer.i.i_crit_edge

do.end.i296.i.do.body10.outer.i.i_crit_edge:      ; preds = %do.end.i296.i
  br label %do.body10.outer.i.i

do.end.i296.i.if.end65.i.i_crit_edge:             ; preds = %do.end.i296.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i.i

for.cond.loopexit.i.i:                            ; preds = %do.end21.i.i
  %158 = ptrtoint ptr %.pn13.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %.pn.i297.i = load volatile ptr, ptr %.pn13.i.i, align 4
  %cmp.not.i298.i = icmp eq ptr %.pn.i297.i, %packages.i295.i
  br i1 %cmp.not.i298.i, label %for.end61.i.i, label %for.cond.loopexit.i.i.do.body10.i.i_crit_edge

for.cond.loopexit.i.i.do.body10.i.i_crit_edge:    ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i

for.cond.loopexit.thread.i.i:                     ; preds = %for.cond30.i.i
  %159 = ptrtoint ptr %.pn13.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %.pn15.i.i = load volatile ptr, ptr %.pn13.i.i, align 4
  %cmp.not16.i.i = icmp eq ptr %.pn15.i.i, %packages.i295.i
  br i1 %cmp.not16.i.i, label %for.cond.loopexit.thread.i.i.if.then63.i.i_crit_edge, label %for.cond.loopexit.thread.i.i.do.body10.outer.i.i_crit_edge

for.cond.loopexit.thread.i.i.do.body10.outer.i.i_crit_edge: ; preds = %for.cond.loopexit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.outer.i.i

for.cond.loopexit.thread.i.i.if.then63.i.i_crit_edge: ; preds = %for.cond.loopexit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63.i.i

do.body10.outer.i.i:                              ; preds = %for.cond.loopexit.thread.i.i.do.body10.outer.i.i_crit_edge, %do.end.i296.i.do.body10.outer.i.i_crit_edge
  %.pn13.ph.i.i = phi ptr [ %.pn15.i.i, %for.cond.loopexit.thread.i.i.do.body10.outer.i.i_crit_edge ], [ %.pn10.i.i, %do.end.i296.i.do.body10.outer.i.i_crit_edge ]
  %has_channel.0.off012.ph.i.i = phi i1 [ true, %for.cond.loopexit.thread.i.i.do.body10.outer.i.i_crit_edge ], [ false, %do.end.i296.i.do.body10.outer.i.i_crit_edge ]
  br label %do.body10.i.i

do.body10.i.i:                                    ; preds = %do.body10.outer.i.i, %for.cond.loopexit.i.i.do.body10.i.i_crit_edge
  %.pn13.i.i = phi ptr [ %.pn.i297.i, %for.cond.loopexit.i.i.do.body10.i.i_crit_edge ], [ %.pn13.ph.i.i, %do.body10.outer.i.i ]
  %call11.i.i = call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %land.lhs.true13.i.i, label %do.body10.i.i.do.end21.i.i_crit_edge

do.body10.i.i.do.end21.i.i_crit_edge:             ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i.i

land.lhs.true13.i.i:                              ; preds = %do.body10.i.i
  %call14.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %land.lhs.true13.i.i.do.end21.i.i_crit_edge, label %land.lhs.true16.i.i

land.lhs.true13.i.i.do.end21.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i.i

land.lhs.true16.i.i:                              ; preds = %land.lhs.true13.i.i
  %.b813.i.i = load i1, ptr @ncsi_check_hwa.__warned.79, align 1
  br i1 %.b813.i.i, label %land.lhs.true16.i.i.do.end21.i.i_crit_edge, label %if.then18.i.i

land.lhs.true16.i.i.do.end21.i.i_crit_edge:       ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_check_hwa.__warned.79, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1327, ptr noundef nonnull @.str.2) #9
  br label %do.end21.i.i

do.end21.i.i:                                     ; preds = %if.then18.i.i, %land.lhs.true16.i.i.do.end21.i.i_crit_edge, %land.lhs.true13.i.i.do.end21.i.i_crit_edge, %do.body10.i.i.do.end21.i.i_crit_edge
  %channels.i.i = getelementptr i8, ptr %.pn13.i.i, i32 -8
  %160 = ptrtoint ptr %channels.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %.pn27.i.i = load volatile ptr, ptr %channels.i.i, align 4
  %cmp33.not8.i.i = icmp eq ptr %.pn27.i.i, %channels.i.i
  br i1 %cmp33.not8.i.i, label %for.cond.loopexit.i.i, label %do.end21.i.i.for.body34.i.i_crit_edge

do.end21.i.i.for.body34.i.i_crit_edge:            ; preds = %do.end21.i.i
  br label %for.body34.i.i

for.cond30.i.i:                                   ; preds = %for.body34.i.i
  %161 = ptrtoint ptr %.pn29.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %.pn2.i.i = load volatile ptr, ptr %.pn29.i.i, align 4
  %cmp33.not.i.i = icmp eq ptr %.pn2.i.i, %channels.i.i
  br i1 %cmp33.not.i.i, label %for.cond.loopexit.thread.i.i, label %for.cond30.i.i.for.body34.i.i_crit_edge

for.cond30.i.i.for.body34.i.i_crit_edge:          ; preds = %for.cond30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body34.i.i

for.body34.i.i:                                   ; preds = %for.cond30.i.i.for.body34.i.i_crit_edge, %do.end21.i.i.for.body34.i.i_crit_edge
  %.pn29.i.i = phi ptr [ %.pn2.i.i, %for.cond30.i.i.for.body34.i.i_crit_edge ], [ %.pn27.i.i, %do.end21.i.i.for.body34.i.i_crit_edge ]
  %cap35.i.i = getelementptr i8, ptr %.pn29.i.i, i32 -728
  %162 = ptrtoint ptr %cap35.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %cap35.i.i, align 4
  %164 = and i32 %163, 97
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %164)
  %165 = icmp eq i32 %164, 33
  br i1 %165, label %for.cond30.i.i, label %if.then39.i.i

if.then39.i.i:                                    ; preds = %for.body34.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %166 = ptrtoint ptr %flags180.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %flags180.i, align 4
  %and40.i.i = and i32 %167, -3
  br label %ncsi_check_hwa.exit.i

for.end61.i.i:                                    ; preds = %for.cond.loopexit.i.i
  br i1 %has_channel.0.off012.ph.i.i, label %for.end61.i.i.if.then63.i.i_crit_edge, label %for.end61.i.i.if.end65.i.i_crit_edge

for.end61.i.i.if.end65.i.i_crit_edge:             ; preds = %for.end61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65.i.i

for.end61.i.i.if.then63.i.i_crit_edge:            ; preds = %for.end61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then63.i.i

if.then63.i.i:                                    ; preds = %for.end61.i.i.if.then63.i.i_crit_edge, %for.cond.loopexit.thread.i.i.if.then63.i.i_crit_edge
  %168 = ptrtoint ptr %flags180.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %flags180.i, align 4
  %or.i.i = or i32 %169, 2
  br label %ncsi_check_hwa.exit.i

if.end65.i.i:                                     ; preds = %for.end61.i.i.if.end65.i.i_crit_edge, %do.end.i296.i.if.end65.i.i_crit_edge
  %170 = ptrtoint ptr %flags180.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags180.i, align 4
  %and67.i.i = and i32 %171, -3
  br label %ncsi_check_hwa.exit.i

ncsi_check_hwa.exit.i:                            ; preds = %if.end65.i.i, %if.then63.i.i, %if.then39.i.i
  %and40.i.sink.i = phi i32 [ %and40.i.i, %if.then39.i.i ], [ %or.i.i, %if.then63.i.i ], [ %and67.i.i, %if.end65.i.i ]
  %172 = ptrtoint ptr %flags180.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %and40.i.sink.i, ptr %flags180.i, align 4
  %call184.i = call fastcc i32 @ncsi_choose_active_channel(ptr noundef %add.ptr) #9
  br label %ncsi_probe_channel.exit

error.i:                                          ; preds = %sw.bb159.i.error.i_crit_edge, %for.body126.i.error.i_crit_edge, %ncsi_oem_keep_phy_intel.exit.i, %for.body68.i.error.i_crit_edge, %ncsi_oem_smaf_mlx.exit.i, %ncsi_oem_gma_handler_mlx.exit.i, %sw.bb6.i.error.i_crit_edge, %for.cond.6.i.error.i_crit_edge, %for.cond.5.i.error.i_crit_edge, %for.cond.4.i.error.i_crit_edge, %for.cond.3.i.error.i_crit_edge, %for.cond.2.i.error.i_crit_edge, %for.cond.1.i.error.i_crit_edge, %for.cond.i.error.i_crit_edge, %sw.bb3.i.error.i_crit_edge
  %dev187.i = getelementptr i8, ptr %work, i32 -24680
  %173 = ptrtoint ptr %dev187.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %dev187.i, align 4
  %175 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %4, align 4
  %conv189.i = zext i8 %176 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %174, ptr noundef nonnull @.str.78, i32 noundef %conv189.i) #13
  %177 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 256, ptr %add.ptr, align 4
  %link_up.i.i = getelementptr i8, ptr %work, i32 -24684
  %178 = ptrtoint ptr %link_up.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %link_up.i.i, align 4
  %handler.i.i = getelementptr i8, ptr %work, i32 -24676
  %179 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %handler.i.i, align 4
  call void %180(ptr noundef %add.ptr) #9
  br label %ncsi_probe_channel.exit

ncsi_probe_channel.exit:                          ; preds = %error.i, %ncsi_check_hwa.exit.i, %sw.epilog.i.ncsi_probe_channel.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nca.i) #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ncsi_suspend_channel(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ncsi_configure_channel(ptr noundef %add.ptr)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %work, i32 -24680
  %181 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %182, ptr noundef nonnull @.str.76, i32 noundef %1) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb1, %ncsi_probe_channel.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ncsi_request_timeout(ptr noundef %t) #1 align 64 {
entry:
  %np = alloca ptr, align 4
  %nc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -20
  %ndp1 = getelementptr i8, ptr %t, i32 -12
  %0 = ptrtoint ptr %ndp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ndp1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %np) #9
  %2 = ptrtoint ptr %np to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %np, align 4, !annotation !233
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nc) #9
  %3 = ptrtoint ptr %nc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %nc, align 4, !annotation !233
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %1, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %enabled = getelementptr i8, ptr %t, i32 48
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled, align 4
  %rsp = getelementptr i8, ptr %t, i32 -4
  %5 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rsp, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cmd7 = getelementptr i8, ptr %t, i32 -8
  %7 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cmd7, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %flags11 = getelementptr i8, ptr %t, i32 -16
  %9 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp12 = icmp eq i32 %10, 2
  br i1 %cmp12, label %if.then14, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then14:                                        ; preds = %if.end
  %11 = ptrtoint ptr %cmd7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cmd7, align 4
  %tobool16.not = icmp eq ptr %12, null
  br i1 %tobool16.not, label %if.then14.if.end23_crit_edge, label %if.then17

if.then14.if.end23_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then17:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %12, i32 0, i32 15, i32 0, i32 20
  %15 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %16 to i32
  %add.ptr.i = getelementptr i8, ptr %14, i32 %conv.i
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %add.ptr.i, i32 0, i32 5
  %17 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %channel, align 1
  call void @ncsi_find_package_and_channel(ptr noundef %1, i8 noundef zeroext %18, ptr noundef nonnull %np, ptr noundef nonnull %nc)
  %19 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %np, align 4
  %21 = ptrtoint ptr %nc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %nc, align 4
  %call21 = call i32 @ncsi_send_netlink_timeout(ptr noundef %add.ptr, ptr noundef %20, ptr noundef %22) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then17, %if.then14.if.end23_crit_edge, %if.end.if.end23_crit_edge
  call void @ncsi_free_request(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %np) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_rcv_rsp(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_start_dev(ptr noundef %nd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nd, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 256, label %entry.if.end_crit_edge13
  ]

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge13
  %flags = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %package_probe_id = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 4
  %5 = ptrtoint ptr %package_probe_id to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %package_probe_id, align 4
  %6 = ptrtoint ptr %nd to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 512, ptr %nd, align 4
  %work = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @ncsi_reset_dev(ptr noundef %nd)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 0, %if.then3 ], [ -25, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_reset_dev(ptr noundef %nd) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %flags7 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 1
  %0 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags7, align 4
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %2 = ptrtoint ptr %nd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nd, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %and8 = lshr i32 %3, 8
  %trunc = trunc i32 %and8 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %trunc, label %if.then.if.end_crit_edge [
    i8 0, label %if.then.sw.bb_crit_edge
    i8 2, label %if.then.sw.bb_crit_edge263
    i8 4, label %if.then.sw.bb10_crit_edge
    i8 3, label %if.then.sw.bb10_crit_edge264
  ]

if.then.sw.bb10_crit_edge264:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

if.then.sw.bb10_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb10

if.then.sw.bb_crit_edge263:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge263
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

sw.bb10:                                          ; preds = %if.then.sw.bb10_crit_edge, %if.then.sw.bb10_crit_edge264
  %or = or i32 %1, 8
  %5 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %flags7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %6 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %3, label %sw.default [
    i32 1030, label %if.else.if.end_crit_edge
    i32 782, label %if.else.if.end_crit_edge265
    i32 256, label %if.else.if.end_crit_edge266
  ]

if.else.if.end_crit_edge266:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.if.end_crit_edge265:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %if.else.if.end_crit_edge, %if.else.if.end_crit_edge265, %if.else.if.end_crit_edge266, %if.then.if.end_crit_edge
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 13
  %7 = ptrtoint ptr %channel_queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %channel_queue, align 4
  %cmp.i.not = icmp eq ptr %8, %channel_queue
  br i1 %cmp.i.not, label %if.end.if.end38_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %9 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %8, %if.end.for.body_crit_edge ]
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %9, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %9, ptr %9, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %9, ptr %prev.i3.i, align 4
  %cmp30.not = icmp eq ptr %.pn, %channel_queue
  br i1 %cmp30.not, label %list_del_init.exit.if.end38_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del_init.exit.if.end38_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end38:                                         ; preds = %list_del_init.exit.if.end38_crit_edge, %if.end.if.end38_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  %call41 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true, label %if.end38.do.end50_crit_edge

if.end38.do.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

land.lhs.true:                                    ; preds = %if.end38
  %call43 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true.do.end50_crit_edge, label %land.lhs.true45

land.lhs.true.do.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

land.lhs.true45:                                  ; preds = %land.lhs.true
  %.b235 = load i1, ptr @ncsi_reset_dev.__warned, align 1
  br i1 %.b235, label %land.lhs.true45.do.end50_crit_edge, label %if.then47

land.lhs.true45.do.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_reset_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1914, ptr noundef nonnull @.str.2) #9
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %land.lhs.true45.do.end50_crit_edge, %land.lhs.true.do.end50_crit_edge, %if.end38.do.end50_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 6
  br label %for.cond59

for.cond59:                                       ; preds = %for.end122.for.cond59_crit_edge, %do.end50
  %.pn232.in = phi ptr [ %packages, %do.end50 ], [ %.pn232, %for.end122.for.cond59_crit_edge ]
  %19 = ptrtoint ptr %.pn232.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn232 = load volatile ptr, ptr %.pn232.in, align 4
  %cmp61.not = icmp eq ptr %.pn232, %packages
  br i1 %cmp61.not, label %do.body140, label %do.body64

do.body64:                                        ; preds = %for.cond59
  %call65 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true67, label %do.body64.do.end75_crit_edge

do.body64.do.end75_crit_edge:                     ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

land.lhs.true67:                                  ; preds = %do.body64
  %call68 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %land.lhs.true67.do.end75_crit_edge, label %land.lhs.true70

land.lhs.true67.do.end75_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

land.lhs.true70:                                  ; preds = %land.lhs.true67
  %.b231234 = load i1, ptr @ncsi_reset_dev.__warned.38, align 1
  br i1 %.b231234, label %land.lhs.true70.do.end75_crit_edge, label %if.then72

land.lhs.true70.do.end75_crit_edge:               ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end75

if.then72:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_reset_dev.__warned.38, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1915, ptr noundef nonnull @.str.2) #9
  br label %do.end75

do.end75:                                         ; preds = %if.then72, %land.lhs.true70.do.end75_crit_edge, %land.lhs.true67.do.end75_crit_edge, %do.body64.do.end75_crit_edge
  %channels = getelementptr i8, ptr %.pn232, i32 -8
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn233243 = load volatile ptr, ptr %channels, align 4
  %cmp87.not244 = icmp eq ptr %.pn233243, %channels
  br i1 %cmp87.not244, label %do.end75.for.end122_crit_edge, label %do.end75.do.body91_crit_edge

do.end75.do.body91_crit_edge:                     ; preds = %do.end75
  br label %do.body91

do.end75.for.end122_crit_edge:                    ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end122

do.body91:                                        ; preds = %if.end110.do.body91_crit_edge, %do.end75.do.body91_crit_edge
  %.pn233245 = phi ptr [ %.pn233, %if.end110.do.body91_crit_edge ], [ %.pn233243, %do.end75.do.body91_crit_edge ]
  %lock97 = getelementptr i8, ptr %.pn233245, i32 -816
  %call99 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock97) #9
  %state104 = getelementptr i8, ptr %.pn233245, i32 -824
  %21 = ptrtoint ptr %state104 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp105 = icmp eq i32 %22, 2
  br i1 %cmp105, label %if.then107, label %if.end110

if.then107:                                       ; preds = %do.body91
  %state104.le = getelementptr i8, ptr %.pn233245, i32 -824
  %nc.1.le = getelementptr i8, ptr %.pn233245, i32 -828
  %23 = ptrtoint ptr %state104.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %state104.le, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock97, i32 noundef %call99) #9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock97) #9
  %enabled.i = getelementptr i8, ptr %.pn233245, i32 -8
  %24 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %enabled.i, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock97, i32 noundef %call2.i) #9
  br label %for.end122

if.end.i:                                         ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  %monitor.i = getelementptr i8, ptr %.pn233245, i32 -56
  %26 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %enabled.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock97, i32 noundef %call2.i) #9
  %call10.i = tail call i32 @del_timer_sync(ptr noundef %monitor.i) #9
  br label %for.end122

if.end110:                                        ; preds = %do.body91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock97, i32 noundef %call99) #9
  %27 = ptrtoint ptr %.pn233245 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn233 = load volatile ptr, ptr %.pn233245, align 4
  %cmp87.not = icmp eq ptr %.pn233, %channels
  br i1 %cmp87.not, label %if.end110.for.end122_crit_edge, label %if.end110.do.body91_crit_edge

if.end110.do.body91_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body91

if.end110.for.end122_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end122

for.end122:                                       ; preds = %if.end110.for.end122_crit_edge, %if.end.i, %if.then.i, %do.end75.for.end122_crit_edge
  %active.1 = phi ptr [ %nc.1.le, %if.then.i ], [ %nc.1.le, %if.end.i ], [ null, %do.end75.for.end122_crit_edge ], [ null, %if.end110.for.end122_crit_edge ]
  %tobool123.not = icmp eq ptr %active.1, null
  br i1 %tobool123.not, label %for.end122.for.cond59_crit_edge, label %do.body159

for.end122.for.cond59_crit_edge:                  ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond59

do.body140:                                       ; preds = %for.cond59
  call void @__sanitizer_cov_trace_pc() #11
  %call148 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %28 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags7, align 4
  %and154 = and i32 %29, -9
  store i32 %and154, ptr %flags7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call148) #9
  %call156 = tail call fastcc i32 @ncsi_choose_active_channel(ptr noundef %nd)
  br label %cleanup

do.body159:                                       ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #11
  %call167 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %30 = ptrtoint ptr %flags7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags7, align 4
  %or173 = or i32 %31, 8
  store i32 %or173, ptr %flags7, align 4
  %active_channel = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 12
  %32 = ptrtoint ptr %active_channel to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %active.1, ptr %active_channel, align 4
  %package = getelementptr inbounds %struct.ncsi_channel, ptr %active.1, i32 0, i32 4
  %33 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %package, align 8
  %active_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 11
  %35 = ptrtoint ptr %active_package to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %active_package, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call167) #9
  %36 = ptrtoint ptr %nd to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1024, ptr %nd, align 4
  %work = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i236 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %work) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body159, %do.body140, %sw.default, %sw.bb10, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.default ], [ 0, %do.body159 ], [ %call156, %do.body140 ], [ 0, %sw.bb10 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ncsi_stop_dev(ptr noundef %nd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b156 = load i1, ptr @ncsi_stop_dev.__warned, align 1
  br i1 %.b156, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_stop_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1846, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 6
  %0 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn161 = load volatile ptr, ptr %packages, align 4
  %cmp.not162 = icmp eq ptr %.pn161, %packages
  br i1 %cmp.not162, label %do.end.do.body120_crit_edge, label %do.end.do.body13_crit_edge

do.end.do.body13_crit_edge:                       ; preds = %do.end
  br label %do.body13

do.end.do.body120_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

for.cond.loopexit:                                ; preds = %if.end91.for.cond.loopexit_crit_edge, %do.end24.for.cond.loopexit_crit_edge
  %1 = ptrtoint ptr %.pn163 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load volatile ptr, ptr %.pn163, align 4
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.cond.loopexit.do.body120_crit_edge, label %for.cond.loopexit.do.body13_crit_edge

for.cond.loopexit.do.body13_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body13

for.cond.loopexit.do.body120_crit_edge:           ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body120

do.body13:                                        ; preds = %for.cond.loopexit.do.body13_crit_edge, %do.end.do.body13_crit_edge
  %.pn163 = phi ptr [ %.pn, %for.cond.loopexit.do.body13_crit_edge ], [ %.pn161, %do.end.do.body13_crit_edge ]
  %call14 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true16, label %do.body13.do.end24_crit_edge

do.body13.do.end24_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

land.lhs.true16:                                  ; preds = %do.body13
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true16.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true16.do.end24_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %.b151155 = load i1, ptr @ncsi_stop_dev.__warned.35, align 1
  br i1 %.b151155, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_stop_dev.__warned.35, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1847, ptr noundef nonnull @.str.2) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true16.do.end24_crit_edge, %do.body13.do.end24_crit_edge
  %channels = getelementptr i8, ptr %.pn163, i32 -8
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn153158 = load volatile ptr, ptr %channels, align 4
  %cmp36.not159 = icmp eq ptr %.pn153158, %channels
  br i1 %cmp36.not159, label %do.end24.for.cond.loopexit_crit_edge, label %do.end24.for.body37_crit_edge

do.end24.for.body37_crit_edge:                    ; preds = %do.end24
  br label %for.body37

do.end24.for.cond.loopexit_crit_edge:             ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body37:                                       ; preds = %if.end91.for.body37_crit_edge, %do.end24.for.body37_crit_edge
  %.pn153160 = phi ptr [ %.pn153, %if.end91.for.body37_crit_edge ], [ %.pn153158, %do.end24.for.body37_crit_edge ]
  %lock.i = getelementptr i8, ptr %.pn153160, i32 -816
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %enabled.i = getelementptr i8, ptr %.pn153160, i32 -8
  %3 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled.i, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  br label %ncsi_stop_channel_monitor.exit

if.end.i:                                         ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #11
  %monitor.i = getelementptr i8, ptr %.pn153160, i32 -56
  %5 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %enabled.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %call10.i = tail call i32 @del_timer_sync(ptr noundef %monitor.i) #9
  br label %ncsi_stop_channel_monitor.exit

ncsi_stop_channel_monitor.exit:                   ; preds = %if.end.i, %if.then.i
  %call43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %link = getelementptr i8, ptr %.pn153160, i32 8
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %link, align 4
  %cmp.i = icmp ne ptr %7, %link
  %state = getelementptr i8, ptr %.pn153160, i32 -824
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp53 = icmp eq i32 %9, 3
  %10 = select i1 %cmp.i, i1 true, i1 %cmp53
  br i1 %10, label %land.rhs, label %ncsi_stop_channel_monitor.exit.if.end91_crit_edge

ncsi_stop_channel_monitor.exit.if.end91_crit_edge: ; preds = %ncsi_stop_channel_monitor.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

land.rhs:                                         ; preds = %ncsi_stop_channel_monitor.exit
  %.b152154 = load i1, ptr @ncsi_stop_dev.__already_done, align 1
  br i1 %.b152154, label %land.rhs.if.end91_crit_edge, label %if.then65, !prof !227

land.rhs.if.end91_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end91

if.then65:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_stop_dev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1856, i32 noundef 9, ptr noundef null) #9
  br label %if.end91

if.end91:                                         ; preds = %if.then65, %land.rhs.if.end91_crit_edge, %ncsi_stop_channel_monitor.exit.if.end91_crit_edge
  %11 = ptrtoint ptr %.pn153160 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn153 = load volatile ptr, ptr %.pn153160, align 4
  %cmp36.not = icmp eq ptr %.pn153, %channels
  br i1 %cmp36.not, label %if.end91.for.cond.loopexit_crit_edge, label %if.end91.for.body37_crit_edge

if.end91.for.body37_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body37

if.end91.for.cond.loopexit_crit_edge:             ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

do.body120:                                       ; preds = %for.cond.loopexit.do.body120_crit_edge, %do.end.do.body120_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_stop_dev.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_stop_dev, %if.then131)) #9
          to label %do.end136 [label %if.then131], !srcloc !230

if.then131:                                       ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %nd, i32 0, i32 2
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_stop_dev.__UNIQUE_ID_ddebug554, ptr noundef %13, ptr noundef nonnull @.str.37) #9
  br label %do.end136

do.end136:                                        ; preds = %if.then131, %do.body120
  %14 = ptrtoint ptr %nd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 256, ptr %nd, align 4
  %link_up.i = getelementptr inbounds %struct.ncsi_dev, ptr %nd, i32 0, i32 1
  %15 = ptrtoint ptr %link_up.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %link_up.i, align 4
  %handler.i = getelementptr inbounds %struct.ncsi_dev, ptr %nd, i32 0, i32 3
  %16 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %handler.i, align 4
  tail call void %17(ptr noundef %nd) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ncsi_unregister_dev(ptr noundef %nd) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ptype = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 15
  tail call void @dev_remove_pack(ptr noundef %ptype) #9
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 6
  %0 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %packages, align 4
  %cmp.not31 = icmp eq ptr %1, %packages
  br i1 %cmp.not31, label %entry.do.body16_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in32 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %np.0 = getelementptr i8, ptr %.pn.in32, i32 -80
  %2 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in32, align 4
  tail call void @ncsi_remove_package(ptr noundef %np.0)
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.body.do.body16_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.do.body16_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body16

do.body16:                                        ; preds = %for.body.do.body16_crit_edge, %entry.do.body16_crit_edge
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @ncsi_dev_lock) #9
  %node22 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node22) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body16.list_del_rcu.exit_crit_edge

do.body16.list_del_rcu.exit_crit_edge:            ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 16, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %node22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %do.body16.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.ncsi_dev_priv, ptr %nd, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @ncsi_dev_lock, i32 noundef %call19) #9
  tail call void @kfree(ptr noundef %nd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @ncsi_channel_is_tx(ptr noundef %ndp, ptr noundef readonly %nc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b184 = load i1, ptr @ncsi_channel_is_tx.__warned, align 1
  br i1 %.b184, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_channel_is_tx.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 872, ptr noundef nonnull @.str.2) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  %0 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn192 = load volatile ptr, ptr %packages, align 4
  %cmp.not194 = icmp eq ptr %.pn192, %packages
  br i1 %cmp.not194, label %do.end.do.body63_crit_edge, label %for.body.lr.ph

do.end.do.body63_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

for.body.lr.ph:                                   ; preds = %do.end
  %multi_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 18
  %package = getelementptr inbounds %struct.ncsi_channel, ptr %nc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc52.for.body_crit_edge, %for.body.lr.ph
  %.pn195 = phi ptr [ %.pn192, %for.body.lr.ph ], [ %.pn, %for.inc52.for.body_crit_edge ]
  %1 = ptrtoint ptr %multi_package to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %multi_package, align 4, !range !226
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool10.not = icmp eq i8 %2, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %for.body.do.body15_crit_edge

for.body.do.body15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

land.lhs.true11:                                  ; preds = %for.body
  %np.0196 = getelementptr i8, ptr %.pn195, i32 -80
  %3 = ptrtoint ptr %package to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %package, align 8
  %cmp12.not = icmp eq ptr %np.0196, %4
  br i1 %cmp12.not, label %land.lhs.true11.do.body15_crit_edge, label %land.lhs.true11.for.inc52_crit_edge

land.lhs.true11.for.inc52_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52

land.lhs.true11.do.body15_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body15

do.body15:                                        ; preds = %land.lhs.true11.do.body15_crit_edge, %for.body.do.body15_crit_edge
  %call16 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %do.body15.do.end26_crit_edge

do.body15.do.end26_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true18:                                  ; preds = %do.body15
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true18.do.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b175183 = load i1, ptr @ncsi_channel_is_tx.__warned.59, align 1
  br i1 %.b175183, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_channel_is_tx.__warned.59, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 875, ptr noundef nonnull @.str.2) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true18.do.end26_crit_edge, %do.body15.do.end26_crit_edge
  %channels = getelementptr i8, ptr %.pn195, i32 -8
  br label %for.cond35

for.cond35:                                       ; preds = %for.body39.for.cond35_crit_edge, %do.end26
  %.pn182.in = phi ptr [ %channels, %do.end26 ], [ %.pn182, %for.body39.for.cond35_crit_edge ]
  %5 = ptrtoint ptr %.pn182.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn182 = load volatile ptr, ptr %.pn182.in, align 4
  %cmp38.not = icmp eq ptr %.pn182, %channels
  br i1 %cmp38.not, label %for.cond35.for.inc52_crit_edge, label %for.body39

for.cond35.for.inc52_crit_edge:                   ; preds = %for.cond35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc52

for.body39:                                       ; preds = %for.cond35
  %enable = getelementptr i8, ptr %.pn182, i32 -636
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable, align 4
  %tobool40.not = icmp eq i32 %7, 0
  br i1 %tobool40.not, label %for.body39.for.cond35_crit_edge, label %for.body39.cleanup_crit_edge

for.body39.cleanup_crit_edge:                     ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body39.for.cond35_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond35

for.inc52:                                        ; preds = %for.cond35.for.inc52_crit_edge, %land.lhs.true11.for.inc52_crit_edge
  %8 = ptrtoint ptr %.pn195 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load volatile ptr, ptr %.pn195, align 4
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.inc52.do.body63_crit_edge, label %for.inc52.for.body_crit_edge

for.inc52.for.body_crit_edge:                     ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc52.do.body63_crit_edge:                    ; preds = %for.inc52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

do.body63:                                        ; preds = %for.inc52.do.body63_crit_edge, %do.end.do.body63_crit_edge
  %call64 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %land.lhs.true66, label %do.body63.do.end74_crit_edge

do.body63.do.end74_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

land.lhs.true66:                                  ; preds = %do.body63
  %call67 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true66.do.end74_crit_edge, label %land.lhs.true69

land.lhs.true66.do.end74_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %.b176181 = load i1, ptr @ncsi_channel_is_tx.__warned.60, align 1
  br i1 %.b176181, label %land.lhs.true69.do.end74_crit_edge, label %if.then71

land.lhs.true69.do.end74_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end74

if.then71:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_channel_is_tx.__warned.60, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 883, ptr noundef nonnull @.str.2) #9
  br label %do.end74

do.end74:                                         ; preds = %if.then71, %land.lhs.true69.do.end74_crit_edge, %land.lhs.true66.do.end74_crit_edge, %do.body63.do.end74_crit_edge
  %channel_queue = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 13
  %9 = ptrtoint ptr %channel_queue to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn178197 = load volatile ptr, ptr %channel_queue, align 4
  %cmp85.not198 = icmp eq ptr %.pn178197, %channel_queue
  br i1 %cmp85.not198, label %do.end74.for.end106_crit_edge, label %do.end74.for.body86_crit_edge

do.end74.for.body86_crit_edge:                    ; preds = %do.end74
  br label %for.body86

do.end74.for.end106_crit_edge:                    ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end106

for.body86:                                       ; preds = %for.inc96.for.body86_crit_edge, %do.end74.for.body86_crit_edge
  %.pn178199 = phi ptr [ %.pn178, %for.inc96.for.body86_crit_edge ], [ %.pn178197, %do.end74.for.body86_crit_edge ]
  %package87 = getelementptr i8, ptr %.pn178199, i32 -780
  %10 = ptrtoint ptr %package87 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %package87, align 8
  %preferred_channel = getelementptr inbounds %struct.ncsi_package, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %preferred_channel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %preferred_channel, align 4
  %tobool88.not = icmp eq ptr %13, null
  br i1 %tobool88.not, label %for.body86.for.inc96_crit_edge, label %land.lhs.true89

for.body86.for.inc96_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

land.lhs.true89:                                  ; preds = %for.body86
  %arrayidx1.i = getelementptr %struct.ncsi_channel, ptr %13, i32 0, i32 7, i32 2, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx1.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %land.lhs.true89.for.inc96_crit_edge, label %if.then92

land.lhs.true89.for.inc96_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

if.then92:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #11
  %cmp94 = icmp eq ptr %13, %nc
  br label %cleanup

for.inc96:                                        ; preds = %land.lhs.true89.for.inc96_crit_edge, %for.body86.for.inc96_crit_edge
  %16 = ptrtoint ptr %.pn178199 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn178 = load volatile ptr, ptr %.pn178199, align 4
  %cmp85.not = icmp eq ptr %.pn178, %channel_queue
  br i1 %cmp85.not, label %for.inc96.for.end106_crit_edge, label %for.inc96.for.body86_crit_edge

for.inc96.for.body86_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body86

for.inc96.for.end106_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end106

for.end106:                                       ; preds = %for.inc96.for.end106_crit_edge, %do.end74.for.end106_crit_edge
  %arrayidx1.i185 = getelementptr %struct.ncsi_channel, ptr %nc, i32 0, i32 7, i32 2, i32 3, i32 2
  %17 = ptrtoint ptr %arrayidx1.i185 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx1.i185, align 4
  %and.i186 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i186)
  %tobool.i187.not = icmp eq i32 %and.i186, 0
  br i1 %tobool.i187.not, label %do.body110, label %for.end106.cleanup_crit_edge

for.end106.cleanup_crit_edge:                     ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body110:                                       ; preds = %for.end106
  %call111 = tail call i32 @rcu_read_lock_any_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %land.lhs.true113, label %do.body110.for.cond131.preheader_crit_edge

do.body110.for.cond131.preheader_crit_edge:       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond131.preheader

land.lhs.true113:                                 ; preds = %do.body110
  %call114 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %land.lhs.true113.for.cond131.preheader_crit_edge, label %land.lhs.true116

land.lhs.true113.for.cond131.preheader_crit_edge: ; preds = %land.lhs.true113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond131.preheader

land.lhs.true116:                                 ; preds = %land.lhs.true113
  %.b177180 = load i1, ptr @ncsi_channel_is_tx.__warned.61, align 1
  br i1 %.b177180, label %land.lhs.true116.for.cond131.preheader_crit_edge, label %if.then118

land.lhs.true116.for.cond131.preheader_crit_edge: ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond131.preheader

if.then118:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @ncsi_channel_is_tx.__warned.61, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 895, ptr noundef nonnull @.str.2) #9
  br label %for.cond131.preheader

for.cond131.preheader:                            ; preds = %if.then118, %land.lhs.true116.for.cond131.preheader_crit_edge, %land.lhs.true113.for.cond131.preheader_crit_edge, %do.body110.for.cond131.preheader_crit_edge
  br label %for.cond131

for.cond131:                                      ; preds = %for.body135.for.cond131_crit_edge, %for.cond131.preheader
  %.pn179.in = phi ptr [ %.pn179, %for.body135.for.cond131_crit_edge ], [ %channel_queue, %for.cond131.preheader ]
  %19 = ptrtoint ptr %.pn179.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn179 = load volatile ptr, ptr %.pn179.in, align 4
  %cmp134.not = icmp eq ptr %.pn179, %channel_queue
  br i1 %cmp134.not, label %for.cond131.cleanup_crit_edge, label %for.body135

for.cond131.cleanup_crit_edge:                    ; preds = %for.cond131
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body135:                                      ; preds = %for.cond131
  %arrayidx1.i188 = getelementptr i8, ptr %.pn179, i32 -584
  %20 = ptrtoint ptr %arrayidx1.i188 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx1.i188, align 4
  %and.i189 = and i32 %21, 1
  %tobool.i190.not = icmp eq i32 %and.i189, 0
  br i1 %tobool.i190.not, label %for.body135.for.cond131_crit_edge, label %for.body135.cleanup_crit_edge

for.body135.cleanup_crit_edge:                    ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body135.for.cond131_crit_edge:                ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond131

cleanup:                                          ; preds = %for.body135.cleanup_crit_edge, %for.cond131.cleanup_crit_edge, %for.end106.cleanup_crit_edge, %if.then92, %for.body39.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp94, %if.then92 ], [ true, %for.end106.cleanup_crit_edge ], [ %cmp134.not, %for.body135.cleanup_crit_edge ], [ %cmp134.not, %for.cond131.cleanup_crit_edge ], [ false, %for.body39.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_oem_gma_handler_bcm(ptr noundef %nca) #1 align 64 {
entry:
  %data = alloca [12 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %data) #9
  %0 = getelementptr inbounds [12 x i8], ptr %data, i32 0, i32 5
  %payload = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 12, ptr %payload, align 4
  %2 = getelementptr inbounds i8, ptr %data, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 0, ptr %2, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4413, ptr %data, align 4
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %0, align 1
  %data3 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 8
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %data3, align 4
  %call = call i32 @ncsi_xmit_cmd(ptr noundef %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %nca to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %nca, align 4
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %type = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type, align 4
  %conv = zext i8 %12 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %10, ptr noundef nonnull @.str.54, i32 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %data) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_oem_gma_handler_mlx(ptr noundef %nca) #1 align 64 {
entry:
  %u = alloca %union.anon.148, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %u) #9
  %payload = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %0 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 8, ptr %payload, align 4
  %1 = ptrtoint ptr %u to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 141944374172416, ptr %u, align 8
  %data = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %u, ptr %data, align 4
  %call = call i32 @ncsi_xmit_cmd(ptr noundef %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %nca to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nca, align 4
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %type = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type, align 4
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.54, i32 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %u) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_oem_gma_handler_intel(ptr noundef %nca) #1 align 64 {
entry:
  %data = alloca [5 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %data) #9
  %0 = getelementptr inbounds [5 x i8], ptr %data, i32 0, i32 4
  %payload = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %1 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 5, ptr %payload, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 343, ptr %data, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 6, ptr %0, align 4
  %data3 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 8
  %4 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %data3, align 4
  %call = call i32 @ncsi_xmit_cmd(ptr noundef %nca) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %nca to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nca, align 4
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %type = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type, align 4
  %conv = zext i8 %10 to i32
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %8, ptr noundef nonnull @.str.54, i32 noundef %conv) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %data) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_send_netlink_timeout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !11, !13, !15, !17, !18, !20, !21, !23, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !54, !56, !58, !60, !61, !62, !64, !66, !67, !69, !71, !73, !74, !75, !77, !79, !81, !82, !84, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !136, !138, !139, !141, !142, !144, !146, !148, !150, !152, !154, !156, !157, !158, !160, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !187, !188, !189, !191, !193, !195, !197, !199, !200, !201, !203, !204, !206, !208, !210, !212, !214}
!llvm.named.register.sp = !{!216}
!llvm.module.flags = !{!217, !218, !219, !220, !221, !222, !223, !224}
!llvm.ident = !{!225}

!0 = !{ptr @ncsi_dev_list, !1, !"ncsi_dev_list", i1 false, i1 false}
!1 = !{!"../net/ncsi/ncsi-manage.c", i32 25, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/ncsi/ncsi-manage.c", i32 26, i32 1}
!4 = !{ptr @ncsi_dev_lock, !3, !"ncsi_dev_lock", i1 false, i1 false}
!5 = distinct !{null, !6, !"__warned", i1 false, i1 false}
!6 = !{!"../net/ncsi/ncsi-manage.c", i32 39, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/ncsi/ncsi-manage.c", i32 40, i32 3}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/ncsi/ncsi-manage.c", i32 172, i32 2}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/ncsi/ncsi-manage.c", i32 200, i32 2}
!15 = !{ptr @ncsi_add_channel.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../net/ncsi/ncsi-manage.c", i32 222, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ncsi_add_channel.__key.5, !19, !"__key", i1 false, i1 false}
!19 = !{!"../net/ncsi/ncsi-manage.c", i32 223, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/ncsi/ncsi-manage.c", i32 274, i32 2}
!23 = !{ptr @ncsi_add_package.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../net/ncsi/ncsi-manage.c", i32 294, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/ncsi/ncsi-manage.c", i32 423, i32 2}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/ncsi/ncsi-manage.c", i32 916, i32 8}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/ncsi/ncsi-manage.c", i32 921, i32 2}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/ncsi/ncsi-manage.c", i32 927, i32 3}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/ncsi/ncsi-manage.c", i32 935, i32 2}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/ncsi/ncsi-manage.c", i32 949, i32 3}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ncsi/ncsi-manage.c", i32 974, i32 8}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../net/ncsi/ncsi-manage.c", i32 978, i32 29}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/ncsi/ncsi-manage.c", i32 986, i32 7}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ncsi/ncsi-manage.c", i32 1583, i32 3}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ncsi_process_next_channel.__UNIQUE_ID_ddebug537, !45, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/ncsi/ncsi-manage.c", i32 1589, i32 3}
!51 = !{ptr @ncsi_process_next_channel.__UNIQUE_ID_ddebug538, !50, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ncsi/ncsi-manage.c", i32 1594, i32 29}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ncsi/ncsi-manage.c", i32 1677, i32 20}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/ncsi/ncsi-manage.c", i32 1684, i32 2}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/ncsi/ncsi-manage.c", i32 1687, i32 4}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ncsi_vlan_rx_add_vid.__UNIQUE_ID_ddebug547, !59, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../net/ncsi/ncsi-manage.c", i32 1694, i32 8}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/ncsi/ncsi-manage.c", i32 1707, i32 2}
!66 = !{ptr @ncsi_vlan_rx_add_vid.__UNIQUE_ID_ddebug548, !65, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!67 = !{ptr @__ksymtab_ncsi_vlan_rx_add_vid, !68, !"__ksymtab_ncsi_vlan_rx_add_vid", i1 false, i1 false}
!68 = !{!"../net/ncsi/ncsi-manage.c", i32 1713, i32 1}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/ncsi/ncsi-manage.c", i32 1727, i32 20}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/ncsi/ncsi-manage.c", i32 1736, i32 4}
!73 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ncsi_vlan_rx_kill_vid.__UNIQUE_ID_ddebug549, !72, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/ncsi/ncsi-manage.c", i32 1743, i32 19}
!77 = !{ptr @__ksymtab_ncsi_vlan_rx_kill_vid, !78, !"__ksymtab_ncsi_vlan_rx_kill_vid", i1 false, i1 false}
!78 = !{!"../net/ncsi/ncsi-manage.c", i32 1751, i32 1}
!79 = !{ptr @ncsi_register_dev.__key, !80, !"__key", i1 false, i1 false}
!80 = !{!"../net/ncsi/ncsi-manage.c", i32 1780, i32 2}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ncsi_register_dev.__key.30, !83, !"__key", i1 false, i1 false}
!83 = !{!"../net/ncsi/ncsi-manage.c", i32 1784, i32 2}
!84 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @ncsi_register_dev.__key.32, !86, !"__key", i1 false, i1 false}
!86 = !{!"../net/ncsi/ncsi-manage.c", i32 1790, i32 3}
!87 = !{ptr @.str.33, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/ncsi/ncsi-manage.c", i32 1806, i32 33}
!90 = !{ptr @__ksymtab_ncsi_register_dev, !91, !"__ksymtab_ncsi_register_dev", i1 false, i1 false}
!91 = !{!"../net/ncsi/ncsi-manage.c", i32 1812, i32 1}
!92 = !{ptr @__ksymtab_ncsi_start_dev, !93, !"__ksymtab_ncsi_start_dev", i1 false, i1 false}
!93 = !{!"../net/ncsi/ncsi-manage.c", i32 1831, i32 1}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../net/ncsi/ncsi-manage.c", i32 1846, i32 2}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../net/ncsi/ncsi-manage.c", i32 1847, i32 3}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../net/ncsi/ncsi-manage.c", i32 1855, i32 4}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/ncsi/ncsi-manage.c", i32 1860, i32 2}
!102 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ncsi_stop_dev.__UNIQUE_ID_ddebug554, !101, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!104 = !{ptr @__ksymtab_ncsi_stop_dev, !105, !"__ksymtab_ncsi_stop_dev", i1 false, i1 false}
!105 = !{!"../net/ncsi/ncsi-manage.c", i32 1863, i32 1}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../net/ncsi/ncsi-manage.c", i32 1914, i32 2}
!108 = distinct !{null, !109, !"__warned", i1 false, i1 false}
!109 = !{!"../net/ncsi/ncsi-manage.c", i32 1915, i32 3}
!110 = !{ptr @__ksymtab_ncsi_unregister_dev, !111, !"__ksymtab_ncsi_unregister_dev", i1 false, i1 false}
!111 = !{!"../net/ncsi/ncsi-manage.c", i32 1968, i32 1}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../net/ncsi/ncsi-manage.c", i32 110, i32 6}
!114 = !{ptr @.str.39, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../net/ncsi/ncsi-manage.c", i32 117, i32 8}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/ncsi/ncsi-manage.c", i32 118, i32 33}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/ncsi/ncsi-manage.c", i32 118, i32 40}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/ncsi/ncsi-manage.c", i32 135, i32 30}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/ncsi/ncsi-manage.c", i32 141, i32 29}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/ncsi/ncsi-manage.c", i32 1022, i32 8}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/ncsi/ncsi-manage.c", i32 1038, i32 8}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/ncsi/ncsi-manage.c", i32 1139, i32 10}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/ncsi/ncsi-manage.c", i32 1162, i32 8}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/ncsi/ncsi-manage.c", i32 1168, i32 3}
!134 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ncsi_configure_channel.__UNIQUE_ID_ddebug521, !133, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!136 = !{ptr @.str.50, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../net/ncsi/ncsi-manage.c", i32 1194, i32 4}
!138 = !{ptr @ncsi_configure_channel.__UNIQUE_ID_ddebug522, !137, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/ncsi/ncsi-manage.c", i32 1203, i32 4}
!141 = !{ptr @ncsi_configure_channel.__UNIQUE_ID_ddebug523, !140, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!142 = !{ptr @.str.52, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../net/ncsi/ncsi-manage.c", i32 1218, i32 21}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../net/ncsi/ncsi-manage.c", i32 850, i32 7}
!146 = !{ptr @ncsi_oem_gma_handlers, !147, !"ncsi_oem_gma_handlers", i1 false, i1 false}
!147 = !{!"../net/ncsi/ncsi-manage.c", i32 824, i32 3}
!148 = !{ptr @.str.54, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../net/ncsi/ncsi-manage.c", i32 740, i32 7}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../net/ncsi/ncsi-manage.c", i32 652, i32 2}
!152 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../net/ncsi/ncsi-manage.c", i32 673, i32 7}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!156 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.57, !155, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!160 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!161 = distinct !{null, !162, !"__warned", i1 false, i1 false}
!162 = !{!"../net/ncsi/ncsi-manage.c", i32 872, i32 2}
!163 = distinct !{null, !164, !"__warned", i1 false, i1 false}
!164 = !{!"../net/ncsi/ncsi-manage.c", i32 875, i32 3}
!165 = distinct !{null, !166, !"__warned", i1 false, i1 false}
!166 = !{!"../net/ncsi/ncsi-manage.c", i32 883, i32 2}
!167 = distinct !{null, !168, !"__warned", i1 false, i1 false}
!168 = !{!"../net/ncsi/ncsi-manage.c", i32 895, i32 2}
!169 = distinct !{null, !170, !"__warned", i1 false, i1 false}
!170 = !{!"../net/ncsi/ncsi-manage.c", i32 519, i32 3}
!171 = distinct !{null, !172, !"__warned", i1 false, i1 false}
!172 = !{!"../net/ncsi/ncsi-manage.c", i32 553, i32 3}
!173 = !{ptr @.str.63, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../net/ncsi/ncsi-manage.c", i32 586, i32 24}
!175 = distinct !{null, !176, !"__warned", i1 false, i1 false}
!176 = !{!"../net/ncsi/ncsi-manage.c", i32 65, i32 2}
!177 = distinct !{null, !178, !"__warned", i1 false, i1 false}
!178 = !{!"../net/ncsi/ncsi-manage.c", i32 66, i32 3}
!179 = distinct !{null, !180, !"__warned", i1 false, i1 false}
!180 = !{!"../net/ncsi/ncsi-manage.c", i32 1247, i32 2}
!181 = distinct !{null, !182, !"__warned", i1 false, i1 false}
!182 = !{!"../net/ncsi/ncsi-manage.c", i32 1250, i32 3}
!183 = !{ptr @.str.66, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../net/ncsi/ncsi-manage.c", i32 1284, i32 5}
!185 = !{ptr @.str.67, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @ncsi_choose_active_channel.__UNIQUE_ID_ddebug528, !184, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!187 = !{ptr @.str.68, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.69, !184, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../net/ncsi/ncsi-manage.c", i32 1301, i32 8}
!191 = !{ptr @.str.71, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../net/ncsi/ncsi-manage.c", i32 1308, i32 8}
!193 = distinct !{null, !194, !"__warned", i1 false, i1 false}
!194 = !{!"../net/ncsi/ncsi-manage.c", i32 1622, i32 2}
!195 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!196 = !{!"../net/ncsi/ncsi-manage.c", i32 1623, i32 3}
!197 = !{ptr @.str.73, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../net/ncsi/ncsi-manage.c", i32 1636, i32 6}
!199 = !{ptr @.str.74, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @ncsi_kick_channels.__UNIQUE_ID_ddebug543, !198, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!201 = !{ptr @.str.75, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../net/ncsi/ncsi-manage.c", i32 1656, i32 4}
!203 = !{ptr @ncsi_kick_channels.__UNIQUE_ID_ddebug544, !202, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!204 = !{ptr @.str.76, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/ncsi/ncsi-manage.c", i32 1550, i32 24}
!206 = distinct !{null, !207, !"__warned", i1 false, i1 false}
!207 = !{!"../net/ncsi/ncsi-manage.c", i32 1479, i32 3}
!208 = !{ptr @.str.77, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../net/ncsi/ncsi-manage.c", i32 1515, i32 24}
!210 = !{ptr @.str.78, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/ncsi/ncsi-manage.c", i32 1528, i32 6}
!212 = distinct !{null, !213, !"__warned", i1 false, i1 false}
!213 = !{!"../net/ncsi/ncsi-manage.c", i32 1326, i32 2}
!214 = distinct !{null, !215, !"__warned", i1 false, i1 false}
!215 = !{!"../net/ncsi/ncsi-manage.c", i32 1327, i32 3}
!216 = !{!"sp"}
!217 = !{i32 1, !"wchar_size", i32 2}
!218 = !{i32 1, !"min_enum_size", i32 4}
!219 = !{i32 8, !"branch-target-enforcement", i32 0}
!220 = !{i32 8, !"sign-return-address", i32 0}
!221 = !{i32 8, !"sign-return-address-all", i32 0}
!222 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!223 = !{i32 7, !"uwtable", i32 1}
!224 = !{i32 7, !"frame-pointer", i32 2}
!225 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!226 = !{i8 0, i8 2}
!227 = !{!"branch_weights", i32 2000, i32 1}
!228 = !{i64 2151843823}
!229 = !{!"branch_weights", i32 1, i32 2000}
!230 = !{i64 2148999604, i64 2148999609, i64 2148999622, i64 2148999666, i64 2148999700, i64 2148999721}
!231 = !{i64 2149402386}
!232 = !{i64 2149402652}
!233 = !{!"auto-init"}
