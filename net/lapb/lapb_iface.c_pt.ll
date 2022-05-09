; ModuleID = '/llk/IR_all_yes/net/lapb/lapb_iface.c_pt.bc'
source_filename = "../net/lapb/lapb_iface.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+lapb_register\22, \22a\22\09"
module asm "\09.weak\09__crc_lapb_register\09\09\09\09"
module asm "\09.long\09__crc_lapb_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lapb_register:\09\09\09\09\09"
module asm "\09.asciz \09\22lapb_register\22\09\09\09\09\09"
module asm "__kstrtabns_lapb_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lapb_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_lapb_unregister\09\09\09\09"
module asm "\09.long\09__crc_lapb_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lapb_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22lapb_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_lapb_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lapb_getparms\22, \22a\22\09"
module asm "\09.weak\09__crc_lapb_getparms\09\09\09\09"
module asm "\09.long\09__crc_lapb_getparms\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lapb_getparms:\09\09\09\09\09"
module asm "\09.asciz \09\22lapb_getparms\22\09\09\09\09\09"
module asm "__kstrtabns_lapb_getparms:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lapb_setparms\22, \22a\22\09"
module asm "\09.weak\09__crc_lapb_setparms\09\09\09\09"
module asm "\09.long\09__crc_lapb_setparms\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lapb_setparms:\09\09\09\09\09"
module asm "\09.asciz \09\22lapb_setparms\22\09\09\09\09\09"
module asm "__kstrtabns_lapb_setparms:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lapb_connect_request\22, \22a\22\09"
module asm "\09.weak\09__crc_lapb_connect_request\09\09\09\09"
module asm "\09.long\09__crc_lapb_connect_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lapb_connect_request:\09\09\09\09\09"
module asm "\09.asciz \09\22lapb_connect_request\22\09\09\09\09\09"
module asm "__kstrtabns_lapb_connect_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lapb_disconnect_request\22, \22a\22\09"
module asm "\09.weak\09__crc_lapb_disconnect_request\09\09\09\09"
module asm "\09.long\09__crc_lapb_disconnect_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lapb_disconnect_request:\09\09\09\09\09"
module asm "\09.asciz \09\22lapb_disconnect_request\22\09\09\09\09\09"
module asm "__kstrtabns_lapb_disconnect_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lapb_data_request\22, \22a\22\09"
module asm "\09.weak\09__crc_lapb_data_request\09\09\09\09"
module asm "\09.long\09__crc_lapb_data_request\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lapb_data_request:\09\09\09\09\09"
module asm "\09.asciz \09\22lapb_data_request\22\09\09\09\09\09"
module asm "__kstrtabns_lapb_data_request:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+lapb_data_received\22, \22a\22\09"
module asm "\09.weak\09__crc_lapb_data_received\09\09\09\09"
module asm "\09.long\09__crc_lapb_data_received\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lapb_data_received:\09\09\09\09\09"
module asm "\09.asciz \09\22lapb_data_received\22\09\09\09\09\09"
module asm "__kstrtabns_lapb_data_received:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
%struct.netns_ieee802154_lowpan = type { %struct.netns_sysctl_lowpan, ptr }
%struct.netns_sysctl_lowpan = type { ptr }
%struct.netns_sctp = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, %struct.timer_list, %struct.list_head, %struct.spinlock, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netns_nf = type { ptr, [13 x ptr], ptr, [5 x ptr], [5 x ptr], [3 x ptr], [5 x ptr], [7 x ptr], i32, i32 }
%struct.netns_ct = type { i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.nf_ip_net, i32 }
%struct.nf_ip_net = type { %struct.nf_generic_net, %struct.nf_tcp_net, %struct.nf_udp_net, %struct.nf_icmp_net, %struct.nf_icmp_net, %struct.nf_dccp_net, %struct.nf_sctp_net, %struct.nf_gre_net }
%struct.nf_generic_net = type { i32 }
%struct.nf_tcp_net = type { [14 x i32], i8, i8, i8, i8, i32 }
%struct.nf_udp_net = type { [2 x i32], i32 }
%struct.nf_icmp_net = type { i32 }
%struct.nf_dccp_net = type { i8, [10 x i32] }
%struct.nf_sctp_net = type { [10 x i32] }
%struct.nf_gre_net = type { %struct.list_head, [2 x i32] }
%struct.netns_nftables = type { i8 }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.lapb_cb = type { %struct.list_head, ptr, i32, i8, i16, i16, i16, i8, i16, i16, i16, i16, %struct.timer_list, %struct.timer_list, i8, i8, %struct.sk_buff_head, %struct.sk_buff_head, i8, ptr, %struct.lapb_frame, i8, %struct.spinlock, %struct.refcount_struct }
%struct.lapb_frame = type { i16, i16, i16, i8, i8, [2 x i8] }
%struct.lapb_parms_struct = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lapb_register_struct = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@lapb_list_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab_lapb_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_lapb_register = external dso_local constant [0 x i8], align 1
@__ksymtab_lapb_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lapb_register to i32), ptr @__kstrtab_lapb_register, ptr @__kstrtabns_lapb_register }, section "___ksymtab+lapb_register", align 4
@__kstrtab_lapb_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_lapb_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_lapb_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lapb_unregister to i32), ptr @__kstrtab_lapb_unregister, ptr @__kstrtabns_lapb_unregister }, section "___ksymtab+lapb_unregister", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__kstrtab_lapb_getparms = external dso_local constant [0 x i8], align 1
@__kstrtabns_lapb_getparms = external dso_local constant [0 x i8], align 1
@__ksymtab_lapb_getparms = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lapb_getparms to i32), ptr @__kstrtab_lapb_getparms, ptr @__kstrtabns_lapb_getparms }, section "___ksymtab+lapb_getparms", align 4
@__kstrtab_lapb_setparms = external dso_local constant [0 x i8], align 1
@__kstrtabns_lapb_setparms = external dso_local constant [0 x i8], align 1
@__ksymtab_lapb_setparms = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lapb_setparms to i32), ptr @__kstrtab_lapb_setparms, ptr @__kstrtabns_lapb_setparms }, section "___ksymtab+lapb_setparms", align 4
@__kstrtab_lapb_connect_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_lapb_connect_request = external dso_local constant [0 x i8], align 1
@__ksymtab_lapb_connect_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lapb_connect_request to i32), ptr @__kstrtab_lapb_connect_request, ptr @__kstrtabns_lapb_connect_request }, section "___ksymtab+lapb_connect_request", align 4
@__kstrtab_lapb_disconnect_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_lapb_disconnect_request = external dso_local constant [0 x i8], align 1
@__ksymtab_lapb_disconnect_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lapb_disconnect_request to i32), ptr @__kstrtab_lapb_disconnect_request, ptr @__kstrtabns_lapb_disconnect_request }, section "___ksymtab+lapb_disconnect_request", align 4
@__kstrtab_lapb_data_request = external dso_local constant [0 x i8], align 1
@__kstrtabns_lapb_data_request = external dso_local constant [0 x i8], align 1
@__ksymtab_lapb_data_request = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lapb_data_request to i32), ptr @__kstrtab_lapb_data_request, ptr @__kstrtabns_lapb_data_request }, section "___ksymtab+lapb_data_request", align 4
@__kstrtab_lapb_data_received = external dso_local constant [0 x i8], align 1
@__kstrtabns_lapb_data_received = external dso_local constant [0 x i8], align 1
@__ksymtab_lapb_data_received = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lapb_data_received to i32), ptr @__kstrtab_lapb_data_received, ptr @__kstrtabns_lapb_data_received }, section "___ksymtab+lapb_data_received", align 4
@lapb_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @lapb_list, ptr @lapb_list }, [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/lapb/lapb_iface.c\00", [42 x i8] zeroinitializer }, align 32
@lapb_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @lapb_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author469 = internal constant [54 x i8] c"lapb.author=Jonathan Naylor <g4klx@g4klx.demon.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description470 = internal constant [70 x i8] c"lapb.description=The X.25 Link Access Procedure B link layer protocol\00", section ".modinfo", align 1
@__UNIQUE_ID_file471 = internal constant [24 x i8] c"lapb.file=net/lapb/lapb\00", section ".modinfo", align 1
@__UNIQUE_ID_license472 = internal constant [17 x i8] c"lapb.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_lapb__473_552_lapb_init6 = internal global ptr @lapb_init, section ".initcall6.init", align 4
@__exitcall_lapb_exit = internal global ptr @lapb_exit, section ".exitcall.exit", align 4
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lapb_list_lock\00", [17 x i8] zeroinitializer }, align 32
@lapb_create_cb.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&lapb->t1timer)\00", [47 x i8] zeroinitializer }, align 32
@lapb_create_cb.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"(&lapb->t2timer)\00", [47 x i8] zeroinitializer }, align 32
@lapb_create_cb.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&lapb->lock\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 10]
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"lapb_list_lock\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"lapb_list\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 39, i32 8 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 543, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [18 x i8] c"lapb_dev_notifier\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 532, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 40, i32 8 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 121, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 122, i32 2 }
@___asan_gen_.41 = private constant [25 x i8] c"../net/lapb/lapb_iface.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 133, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 1984, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author469, ptr @__UNIQUE_ID_description470, ptr @__UNIQUE_ID_file471, ptr @__UNIQUE_ID_license472, ptr @__exitcall_lapb_exit, ptr @__initcall__kmod_lapb__473_552_lapb_init6, ptr @__ksymtab_lapb_connect_request, ptr @__ksymtab_lapb_data_received, ptr @__ksymtab_lapb_data_request, ptr @__ksymtab_lapb_disconnect_request, ptr @__ksymtab_lapb_getparms, ptr @__ksymtab_lapb_register, ptr @__ksymtab_lapb_setparms, ptr @__ksymtab_lapb_unregister, ptr @lapb_exit, ptr @lapb_list_lock, ptr @lapb_list, ptr @.str, ptr @lapb_dev_notifier, ptr @.str.1, ptr @lapb_create_cb.__key, ptr @.str.2, ptr @lapb_create_cb.__key.3, ptr @.str.4, ptr @lapb_create_cb.__key.5, ptr @.str.6, ptr @skb_queue_head_init.__key, ptr @.str.7], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapb_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapb_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapb_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapb_create_cb.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapb_create_cb.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lapb_create_cb.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_register(ptr noundef %dev, ptr noundef %callbacks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %lapb.0.in.i = phi ptr [ @lapb_list, %entry ], [ %lapb.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %lapb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lapb.0.i = load ptr, ptr %lapb.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %lapb.0.i, @lapb_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %dev1.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %lapb.0.i, null
  br i1 %tobool.not.i, label %for.end.i.if.end_crit_edge, label %if.then7.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then7.i:                                       ; preds = %for.end.i
  %refcnt.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i, i32 0, i32 23
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !58

if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then7.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.then_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.then_crit_edge:              ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %if.then

if.then:                                          ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.then_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i14 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i14)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i14, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i14)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i14, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #5
  br label %out

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i) #5
  br label %out

if.end:                                           ; preds = %for.end.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 316) #8
  %tobool.not.i15 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i15, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %if.end
  %write_queue.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 16
  %lock.i.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 16, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %7 = ptrtoint ptr %write_queue.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %write_queue.i, ptr %write_queue.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 16, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %write_queue.i, ptr %prev.i.i.i, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %qlen.i.i.i, align 8
  %ack_queue.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 17
  %lock.i23.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 17, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i23.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #5
  %10 = ptrtoint ptr %ack_queue.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ack_queue.i, ptr %ack_queue.i, align 8
  %prev.i.i24.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ack_queue.i, ptr %prev.i.i24.i, align 4
  %qlen.i.i25.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %qlen.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %qlen.i.i25.i, align 8
  %t1timer.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 12
  tail call void @init_timer_key(ptr noundef %t1timer.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.2, ptr noundef nonnull @lapb_create_cb.__key) #5
  %t2timer.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 13
  tail call void @init_timer_key(ptr noundef %t2timer.i, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @lapb_create_cb.__key.3) #5
  %t1timer_running.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 14
  %13 = ptrtoint ptr %t1timer_running.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %t1timer_running.i, align 4
  %t2timer_running.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 15
  %14 = ptrtoint ptr %t2timer_running.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %t2timer_running.i, align 1
  %t1.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %t1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 500, ptr %t1.i, align 2
  %t2.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 11
  %16 = ptrtoint ptr %t2.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 100, ptr %t2.i, align 8
  %n2.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %n2.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 20, ptr %n2.i, align 2
  %mode.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %mode.i, align 4
  %window.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 18
  %19 = ptrtoint ptr %window.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 7, ptr %window.i, align 8
  %state.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %state.i, align 8
  %lock.i = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @lapb_create_cb.__key.5, i16 noundef signext 3) #5
  %refcnt.i16 = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 23
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i16, i32 noundef 4) #5
  %21 = ptrtoint ptr %refcnt.i16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %refcnt.i16, align 8
  %dev5 = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %dev5, align 8
  %callbacks6 = getelementptr inbounds %struct.lapb_cb, ptr %call7.i.i.i, i32 0, i32 19
  %23 = ptrtoint ptr %callbacks6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %callbacks, ptr %callbacks6, align 4
  %24 = load ptr, ptr @lapb_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @lapb_list, ptr noundef %24) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.list_add.exit.i_crit_edge

if.end4.list_add.exit.i_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @lapb_list, ptr %prev3.i.i.i, align 4
  store volatile ptr %call7.i.i.i, ptr @lapb_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end4.list_add.exit.i_crit_edge
  %call.i.i.i.i.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i16, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i16, i32 1, i32 3, i32 1) #5
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i16, ptr %refcnt.i16, i32 1, ptr elementtype(i32) %refcnt.i16) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i19 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i19)
  %tobool1.not.i.i.i.i.i20 = icmp eq i32 %asmresult.i.i.i.i.i.i.i19, 0
  br i1 %tobool1.not.i.i.i.i.i20, label %list_add.exit.i.if.end15.sink.split.i.i.i.i.i25_crit_edge, label %if.else.i.i.i.i.i23, !prof !58

list_add.exit.i.if.end15.sink.split.i.i.i.i.i25_crit_edge: ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i25

if.else.i.i.i.i.i23:                              ; preds = %list_add.exit.i
  %add.i.i.i.i.i21 = add i32 %asmresult.i.i.i.i.i.i.i19, 1
  %29 = or i32 %add.i.i.i.i.i21, %asmresult.i.i.i.i.i.i.i19
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i.i22 = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i.i22, label %if.else.i.i.i.i.i23.__lapb_insert_cb.exit_crit_edge, label %if.else.i.i.i.i.i23.if.end15.sink.split.i.i.i.i.i25_crit_edge, !prof !59

if.else.i.i.i.i.i23.if.end15.sink.split.i.i.i.i.i25_crit_edge: ; preds = %if.else.i.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i25

if.else.i.i.i.i.i23.__lapb_insert_cb.exit_crit_edge: ; preds = %if.else.i.i.i.i.i23
  call void @__sanitizer_cov_trace_pc() #7
  br label %__lapb_insert_cb.exit

if.end15.sink.split.i.i.i.i.i25:                  ; preds = %if.else.i.i.i.i.i23.if.end15.sink.split.i.i.i.i.i25_crit_edge, %list_add.exit.i.if.end15.sink.split.i.i.i.i.i25_crit_edge
  %.sink.i.i.i.i.i24 = phi i32 [ 2, %list_add.exit.i.if.end15.sink.split.i.i.i.i.i25_crit_edge ], [ 1, %if.else.i.i.i.i.i23.if.end15.sink.split.i.i.i.i.i25_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i16, i32 noundef %.sink.i.i.i.i.i24) #5
  br label %__lapb_insert_cb.exit

__lapb_insert_cb.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i25, %if.else.i.i.i.i.i23.__lapb_insert_cb.exit_crit_edge
  tail call void @lapb_start_t1timer(ptr noundef nonnull %call7.i.i.i) #5
  br label %out

out:                                              ; preds = %__lapb_insert_cb.exit, %if.end.out_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge
  %rc.0 = phi i32 [ 0, %__lapb_insert_cb.exit ], [ 1, %if.end5.i.i.i.i.out_crit_edge ], [ 1, %if.then10.i.i.i.i ], [ 1, %if.then.i ], [ 7, %if.end.out_crit_edge ]
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_start_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_unregister(ptr noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_write_lock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %lapb.0.in.i = phi ptr [ @lapb_list, %entry ], [ %lapb.0.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %lapb.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lapb.0.i = load ptr, ptr %lapb.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %lapb.0.i, @lapb_list
  br i1 %cmp.not.i, label %for.cond.i.out_crit_edge, label %for.body.i

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.body.i:                                       ; preds = %for.cond.i
  %dev1.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 4
  %cmp2.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i, label %for.end.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i

for.end.i:                                        ; preds = %for.body.i
  %tobool.not.i = icmp eq ptr %lapb.0.i, null
  br i1 %tobool.not.i, label %for.end.i.out_crit_edge, label %if.then7.i

for.end.i.out_crit_edge:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then7.i:                                       ; preds = %for.end.i
  %refcnt.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i, i32 0, i32 23
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !58

if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then7.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then7.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #5
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i16 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i16)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i16, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i16)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i16, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.lapb_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.lapb_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #5
  br label %lapb_put.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i) #5
  br label %lapb_put.exit

lapb_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.lapb_put.exit_crit_edge
  %call.i.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i.i, i32 noundef 4) #5
  %6 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp37 = icmp ugt i32 %7, 2
  br i1 %cmp37, label %lapb_put.exit.while.body_crit_edge, label %lapb_put.exit.while.end_crit_edge

lapb_put.exit.while.end_crit_edge:                ; preds = %lapb_put.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

lapb_put.exit.while.body_crit_edge:               ; preds = %lapb_put.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %lapb_put.exit.while.body_crit_edge
  tail call void @usleep_range_state(i32 noundef 1, i32 noundef 10, i32 noundef 2) #5
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i.i, i32 noundef 4) #5
  %8 = ptrtoint ptr %refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt.i.i, align 4
  %cmp = icmp ugt i32 %9, 2
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %lapb_put.exit.while.end_crit_edge
  %lock = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  tail call void @lapb_stop_t1timer(ptr noundef nonnull %lapb.0.i) #5
  tail call void @lapb_stop_t2timer(ptr noundef nonnull %lapb.0.i) #5
  tail call void @lapb_clear_queues(ptr noundef nonnull %lapb.0.i) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %t1timer = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i, i32 0, i32 12
  %call3 = tail call i32 @del_timer_sync(ptr noundef %t1timer) #5
  %t2timer = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i, i32 0, i32 13
  %call4 = tail call i32 @del_timer_sync(ptr noundef %t2timer) #5
  %10 = ptrtoint ptr %lapb.0.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lapb.0.i, align 4
  %tobool.not.i17 = icmp eq ptr %11, null
  br i1 %tobool.not.i17, label %while.end.__lapb_remove_cb.exit_crit_edge, label %if.then.i19

while.end.__lapb_remove_cb.exit_crit_edge:        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %__lapb_remove_cb.exit

if.then.i19:                                      ; preds = %while.end
  %call.i.i.i18 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %lapb.0.i) #5
  br i1 %call.i.i.i18, label %if.end.i.i.i, label %if.then.i19.list_del.exit.i_crit_edge

if.then.i19.list_del.exit.i_crit_edge:            ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i19
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %lapb.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %lapb.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lapb.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i19.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %lapb.0.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %lapb.0.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lapb.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %call.i.i.i.i.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #5
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i22 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i22, label %if.end5.i.i.i.i.i.__lapb_remove_cb.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !59

if.end5.i.i.i.i.i.__lapb_remove_cb.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__lapb_remove_cb.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #5
  br label %__lapb_remove_cb.exit

if.then.i.i:                                      ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i) #5
  br label %__lapb_remove_cb.exit

__lapb_remove_cb.exit:                            ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.__lapb_remove_cb.exit_crit_edge, %while.end.__lapb_remove_cb.exit_crit_edge
  %call.i.i.i.i.i.i24 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #5
  %21 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i25 = extractvalue { i32, i32, i32 } %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i25)
  %cmp.i.i.i.i26 = icmp eq i32 %asmresult.i.i.i.i.i.i.i25, 1
  br i1 %cmp.i.i.i.i26, label %if.then.i30, label %if.end5.i.i.i.i28

if.end5.i.i.i.i28:                                ; preds = %__lapb_remove_cb.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i25)
  %.not.i.i.i.i27 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i25, 0
  br i1 %.not.i.i.i.i27, label %if.end5.i.i.i.i28.out_crit_edge, label %if.then10.i.i.i.i29, !prof !59

if.end5.i.i.i.i28.out_crit_edge:                  ; preds = %if.end5.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10.i.i.i.i29:                              ; preds = %if.end5.i.i.i.i28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #5
  br label %out

if.then.i30:                                      ; preds = %__lapb_remove_cb.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i) #5
  br label %out

out:                                              ; preds = %if.then.i30, %if.then10.i.i.i.i29, %if.end5.i.i.i.i28.out_crit_edge, %for.end.i.out_crit_edge, %for.cond.i.out_crit_edge
  %rc.0 = phi i32 [ 0, %if.end5.i.i.i.i28.out_crit_edge ], [ 0, %if.then10.i.i.i.i29 ], [ 0, %if.then.i30 ], [ 1, %for.end.i.out_crit_edge ], [ 1, %for.cond.i.out_crit_edge ]
  tail call void @_raw_write_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_stop_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_stop_t2timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_clear_queues(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_getparms(ptr noundef readnone %dev, ptr nocapture noundef writeonly %parms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %lapb.0.in.i.i = phi ptr [ @lapb_list, %entry ], [ %lapb.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %lapb.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lapb.0.i.i = load ptr, ptr %lapb.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lapb.0.i.i, @lapb_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev1.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i.i, label %for.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool.not.i.i = icmp eq ptr %lapb.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, label %if.then7.i.i

for.end.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

if.then7.i.i:                                     ; preds = %for.end.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 23
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !58

if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then7.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %if.end

lapb_devtostruct.exit.thread:                     ; preds = %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %out

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  %lock = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %t1 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 10
  %5 = ptrtoint ptr %t1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %t1, align 2
  %7 = udiv i16 %6, 100
  %div = zext i16 %7 to i32
  %8 = ptrtoint ptr %parms to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %parms, align 4
  %t2 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 11
  %9 = ptrtoint ptr %t2 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %t2, align 4
  %11 = udiv i16 %10, 100
  %div3 = zext i16 %11 to i32
  %t24 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 2
  %12 = ptrtoint ptr %t24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div3, ptr %t24, align 4
  %n2 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %n2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %n2, align 2
  %conv5 = zext i16 %14 to i32
  %n26 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 4
  %15 = ptrtoint ptr %n26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv5, ptr %n26, align 4
  %n2count = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %n2count to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %n2count, align 4
  %conv7 = zext i16 %17 to i32
  %n2count8 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 5
  %18 = ptrtoint ptr %n2count8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv7, ptr %n2count8, align 4
  %state = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %state, align 4
  %conv9 = zext i8 %20 to i32
  %state10 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 7
  %21 = ptrtoint ptr %state10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv9, ptr %state10, align 4
  %window = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 18
  %22 = ptrtoint ptr %window to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %window, align 4
  %conv11 = zext i8 %23 to i32
  %window12 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 6
  %24 = ptrtoint ptr %window12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv11, ptr %window12, align 4
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  %mode13 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 8
  %27 = ptrtoint ptr %mode13 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %mode13, align 4
  %pprev.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 12, i32 0, i32 1
  %28 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i58.not = icmp eq ptr %29, null
  br i1 %tobool.not.i.i58.not, label %if.end.if.end21_crit_edge, label %if.else

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %expires = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %expires to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %expires, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %31, %32
  %div19 = udiv i32 %sub, 100
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end.if.end21_crit_edge
  %div19.sink = phi i32 [ %div19, %if.else ], [ 0, %if.end.if.end21_crit_edge ]
  %33 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div19.sink, ptr %33, align 4
  %pprev.i.i59 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 13, i32 0, i32 1
  %35 = ptrtoint ptr %pprev.i.i59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %pprev.i.i59, align 4
  %tobool.not.i.i60.not = icmp eq ptr %36, null
  br i1 %tobool.not.i.i60.not, label %if.end21.if.end32_crit_edge, label %if.else26

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.else26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %expires28 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 13, i32 1
  %37 = ptrtoint ptr %expires28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %expires28, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %sub29 = sub i32 %38, %39
  %div30 = udiv i32 %sub29, 100
  br label %if.end32

if.end32:                                         ; preds = %if.else26, %if.end21.if.end32_crit_edge
  %div30.sink = phi i32 [ %div30, %if.else26 ], [ 0, %if.end21.if.end32_crit_edge ]
  %40 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div30.sink, ptr %40, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #5
  br label %out

if.then.i:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i.i) #5
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %lapb_devtostruct.exit.thread
  %rc.0 = phi i32 [ 1, %lapb_devtostruct.exit.thread ], [ 0, %if.end5.i.i.i.i.out_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_setparms(ptr noundef readnone %dev, ptr nocapture noundef readonly %parms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %lapb.0.in.i.i = phi ptr [ @lapb_list, %entry ], [ %lapb.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %lapb.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lapb.0.i.i = load ptr, ptr %lapb.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lapb.0.i.i, @lapb_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev1.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i.i, label %for.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool.not.i.i = icmp eq ptr %lapb.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, label %if.then7.i.i

for.end.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

if.then7.i.i:                                     ; preds = %for.end.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 23
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !58

if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then7.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %if.end

lapb_devtostruct.exit.thread:                     ; preds = %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %out

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  %lock = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %5 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %parms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.end.out_put_crit_edge, label %lor.lhs.false

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put

lor.lhs.false:                                    ; preds = %if.end
  %t2 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 2
  %7 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1 = icmp eq i32 %8, 0
  br i1 %cmp1, label %lor.lhs.false.out_put_crit_edge, label %lor.lhs.false2

lor.lhs.false.out_put_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %n2 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 4
  %9 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3 = icmp eq i32 %10, 0
  br i1 %cmp3, label %lor.lhs.false2.out_put_crit_edge, label %if.end5

lor.lhs.false2.out_put_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put

if.end5:                                          ; preds = %lor.lhs.false2
  %state = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp6 = icmp eq i8 %12, 0
  br i1 %cmp6, label %if.then8, label %if.end5.if.end34_crit_edge

if.end5.if.end34_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then8:                                         ; preds = %if.end5
  %mode = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 8
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode, align 4
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %window19 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 6
  %15 = ptrtoint ptr %window19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %window19, align 4
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then8
  %17 = add i32 %16, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %17)
  %18 = icmp ult i32 %17, -127
  br i1 %18, label %if.then10.out_put_crit_edge, label %if.then10.if.end28_crit_edge

if.then10.if.end28_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.then10.out_put_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put

if.else:                                          ; preds = %if.then8
  %19 = add i32 %16, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %19)
  %20 = icmp ult i32 %19, -7
  br i1 %20, label %if.else.out_put_crit_edge, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28

if.else.out_put_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then10.if.end28_crit_edge
  %mode30 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %mode30 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %14, ptr %mode30, align 4
  %window31 = getelementptr inbounds %struct.lapb_parms_struct, ptr %parms, i32 0, i32 6
  %22 = ptrtoint ptr %window31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %window31, align 4
  %conv32 = trunc i32 %23 to i8
  %window33 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 18
  %24 = ptrtoint ptr %window33 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv32, ptr %window33, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end28, %if.end5.if.end34_crit_edge
  %25 = ptrtoint ptr %parms to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %parms, align 4
  %27 = trunc i32 %26 to i16
  %conv36 = mul i16 %27, 100
  %t137 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 10
  %28 = ptrtoint ptr %t137 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv36, ptr %t137, align 2
  %29 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t2, align 4
  %31 = trunc i32 %30 to i16
  %conv40 = mul i16 %31, 100
  %t241 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 11
  %32 = ptrtoint ptr %t241 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv40, ptr %t241, align 4
  %33 = ptrtoint ptr %n2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %n2, align 4
  %conv43 = trunc i32 %34 to i16
  %n244 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 8
  %35 = ptrtoint ptr %n244 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv43, ptr %n244, align 2
  br label %out_put

out_put:                                          ; preds = %if.end34, %if.else.out_put_crit_edge, %if.then10.out_put_crit_edge, %lor.lhs.false2.out_put_crit_edge, %lor.lhs.false.out_put_crit_edge, %if.end.out_put_crit_edge
  %rc.0 = phi i32 [ 2, %if.end.out_put_crit_edge ], [ 2, %lor.lhs.false.out_put_crit_edge ], [ 2, %lor.lhs.false2.out_put_crit_edge ], [ 2, %if.then10.out_put_crit_edge ], [ 0, %if.end34 ], [ 2, %if.else.out_put_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #5
  br label %out

if.then.i:                                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i.i) #5
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %lapb_devtostruct.exit.thread
  %rc.1 = phi i32 [ 1, %lapb_devtostruct.exit.thread ], [ %rc.0, %if.end5.i.i.i.i.out_crit_edge ], [ %rc.0, %if.then10.i.i.i.i ], [ %rc.0, %if.then.i ]
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_connect_request(ptr noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %lapb.0.in.i.i = phi ptr [ @lapb_list, %entry ], [ %lapb.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %lapb.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lapb.0.i.i = load ptr, ptr %lapb.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lapb.0.i.i, @lapb_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev1.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i.i, label %for.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool.not.i.i = icmp eq ptr %lapb.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, label %if.then7.i.i

for.end.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

if.then7.i.i:                                     ; preds = %for.end.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 23
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !58

if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then7.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %if.end

lapb_devtostruct.exit.thread:                     ; preds = %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %out

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  %lock = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %state = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %if.end13 [
    i8 1, label %if.end.out_put_crit_edge
    i8 3, label %out_put.fold.split
    i8 4, label %out_put.fold.split24
  ]

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lapb_establish_data_link(ptr noundef nonnull %lapb.0.i.i) #5
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %state, align 4
  br label %out_put

out_put.fold.split:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put

out_put.fold.split24:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put

out_put:                                          ; preds = %out_put.fold.split24, %out_put.fold.split, %if.end13, %if.end.out_put_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.out_put_crit_edge ], [ 0, %if.end13 ], [ 3, %out_put.fold.split ], [ 3, %out_put.fold.split24 ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #5
  br label %out

if.then.i:                                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i.i) #5
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %lapb_devtostruct.exit.thread
  %rc.1 = phi i32 [ 1, %lapb_devtostruct.exit.thread ], [ %rc.0, %if.end5.i.i.i.i.out_crit_edge ], [ %rc.0, %if.then10.i.i.i.i ], [ %rc.0, %if.then.i ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_establish_data_link(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_disconnect_request(ptr noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %lapb.0.in.i.i = phi ptr [ @lapb_list, %entry ], [ %lapb.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %lapb.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lapb.0.i.i = load ptr, ptr %lapb.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lapb.0.i.i, @lapb_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev1.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i.i, label %for.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool.not.i.i = icmp eq ptr %lapb.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, label %if.then7.i.i

for.end.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

if.then7.i.i:                                     ; preds = %for.end.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 23
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !58

if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then7.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %if.end

lapb_devtostruct.exit.thread:                     ; preds = %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %out

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  %lock = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %call1 = tail call fastcc i32 @__lapb_disconnect_request(ptr noundef nonnull %lapb.0.i.i)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #5
  br label %out

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i.i) #5
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %lapb_devtostruct.exit.thread
  %rc.0 = phi i32 [ 1, %lapb_devtostruct.exit.thread ], [ %call1, %if.end5.i.i.i.i.out_crit_edge ], [ %call1, %if.then10.i.i.i.i ], [ %call1, %if.then.i ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__lapb_disconnect_request(ptr noundef %lapb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %state, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %1, label %sw.epilog [
    i8 0, label %entry.return_crit_edge
    i8 1, label %do.end3
    i8 2, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 67, i32 noundef 1, i32 noundef 1) #5
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %state, align 4
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #5
  br label %return

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lapb_clear_queues(ptr noundef %lapb) #5
  %n2count = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 9
  %4 = ptrtoint ptr %n2count to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %n2count, align 4
  tail call void @lapb_send_control(ptr noundef %lapb, i32 noundef 67, i32 noundef 1, i32 noundef 1) #5
  tail call void @lapb_start_t1timer(ptr noundef %lapb) #5
  tail call void @lapb_stop_t2timer(ptr noundef %lapb) #5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %state, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb5, %do.end3, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 0, %sw.bb5 ], [ 4, %do.end3 ], [ 4, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_data_request(ptr noundef readnone %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %lapb.0.in.i.i = phi ptr [ @lapb_list, %entry ], [ %lapb.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %lapb.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lapb.0.i.i = load ptr, ptr %lapb.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lapb.0.i.i, @lapb_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev1.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i.i, label %for.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool.not.i.i = icmp eq ptr %lapb.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, label %if.then7.i.i

for.end.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

if.then7.i.i:                                     ; preds = %for.end.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 23
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !58

if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then7.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %if.end

lapb_devtostruct.exit.thread:                     ; preds = %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %out

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  %lock = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %state = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 4
  %.off = add i8 %6, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end7, label %if.end.out_put_crit_edge

if.end.out_put_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_put

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %write_queue = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 16
  tail call void @skb_queue_tail(ptr noundef %write_queue, ptr noundef %skb) #5
  tail call void @lapb_kick(ptr noundef nonnull %lapb.0.i.i) #5
  br label %out_put

out_put:                                          ; preds = %if.end7, %if.end.out_put_crit_edge
  %rc.0 = phi i32 [ 0, %if.end7 ], [ 4, %if.end.out_put_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %out_put
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.out_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.out_crit_edge:                    ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #5
  br label %out

if.then.i:                                        ; preds = %out_put
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i.i) #5
  br label %out

out:                                              ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.out_crit_edge, %lapb_devtostruct.exit.thread
  %rc.1 = phi i32 [ 1, %lapb_devtostruct.exit.thread ], [ %rc.0, %if.end5.i.i.i.i.out_crit_edge ], [ %rc.0, %if.then10.i.i.i.i ], [ %rc.0, %if.then.i ]
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_tail(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_data_received(ptr noundef readnone %dev, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry
  %lapb.0.in.i.i = phi ptr [ @lapb_list, %entry ], [ %lapb.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %0 = ptrtoint ptr %lapb.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %lapb.0.i.i = load ptr, ptr %lapb.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lapb.0.i.i, @lapb_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev1.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %2, %dev
  br i1 %cmp2.i.i, label %for.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool.not.i.i = icmp eq ptr %lapb.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, label %if.then7.i.i

for.end.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

if.then7.i.i:                                     ; preds = %for.end.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 23
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !58

if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then7.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.then_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.then_crit_edge:            ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %if.then

lapb_devtostruct.exit.thread:                     ; preds = %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %if.end

if.then:                                          ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.then_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  %lock = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  tail call void @lapb_data_input(ptr noundef nonnull %lapb.0.i.i, ptr noundef %skb) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #5
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %lapb_devtostruct.exit.thread
  %rc.0 = phi i32 [ 1, %lapb_devtostruct.exit.thread ], [ 0, %if.end5.i.i.i.i.if.end_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_data_input(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_connect_confirmation(ptr nocapture noundef readonly %lapb, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %callbacks = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 19
  %0 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callbacks, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void %3(ptr noundef %5, i32 noundef %reason) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_connect_indication(ptr nocapture noundef readonly %lapb, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %callbacks = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 19
  %0 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callbacks, align 4
  %connect_indication = getelementptr inbounds %struct.lapb_register_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %connect_indication to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connect_indication, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void %3(ptr noundef %5, i32 noundef %reason) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_disconnect_confirmation(ptr nocapture noundef readonly %lapb, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %callbacks = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 19
  %0 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callbacks, align 4
  %disconnect_confirmation = getelementptr inbounds %struct.lapb_register_struct, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %disconnect_confirmation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect_confirmation, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void %3(ptr noundef %5, i32 noundef %reason) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @lapb_disconnect_indication(ptr nocapture noundef readonly %lapb, i32 noundef %reason) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %callbacks = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 19
  %0 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callbacks, align 4
  %disconnect_indication = getelementptr inbounds %struct.lapb_register_struct, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %disconnect_indication to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disconnect_indication, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void %3(ptr noundef %5, i32 noundef %reason) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_data_indication(ptr nocapture noundef readonly %lapb, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %callbacks = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 19
  %0 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callbacks, align 4
  %data_indication = getelementptr inbounds %struct.lapb_register_struct, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %data_indication to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_indication, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call i32 %3(ptr noundef %5, ptr noundef %skb) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lapb_data_transmit(ptr nocapture noundef readonly %lapb, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %callbacks = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 19
  %0 = ptrtoint ptr %callbacks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callbacks, align 4
  %data_transmit = getelementptr inbounds %struct.lapb_register_struct, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %data_transmit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data_transmit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.lapb_cb, ptr %lapb, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void %3(ptr noundef %5, ptr noundef %skb) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %used.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %used.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lapb_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  %0 = load volatile ptr, ptr @lapb_list, align 4
  %cmp.i.not = icmp eq ptr %0, @lapb_list
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !59

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 543, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call21 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @lapb_dev_notifier) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lapb_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @lapb_dev_notifier) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lapb_send_control(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lapb_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 271, i16 %5)
  %cmp.not = icmp eq i16 %5, 271
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @_raw_read_lock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end5
  %lapb.0.in.i.i = phi ptr [ @lapb_list, %if.end5 ], [ %lapb.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %6 = ptrtoint ptr %lapb.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %lapb.0.i.i = load ptr, ptr %lapb.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %lapb.0.i.i, @lapb_list
  br i1 %cmp.not.i.i, label %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge, label %for.body.i.i

for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

for.body.i.i:                                     ; preds = %for.cond.i.i
  %dev1.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1.i.i, align 4
  %cmp2.i.i = icmp eq ptr %8, %1
  br i1 %cmp2.i.i, label %for.end.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %tobool.not.i.i = icmp eq ptr %lapb.0.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, label %if.then7.i.i

for.end.i.i.lapb_devtostruct.exit.thread_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lapb_devtostruct.exit.thread

if.then7.i.i:                                     ; preds = %for.end.i.i
  %refcnt.i.i.i = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 23
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !57
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !58

if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then7.i.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.if.end9_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !59

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.if.end9_crit_edge:            ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then7.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #5
  br label %if.end9

lapb_devtostruct.exit.thread:                     ; preds = %for.end.i.i.lapb_devtostruct.exit.thread_crit_edge, %for.cond.i.i.lapb_devtostruct.exit.thread_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.if.end9_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef nonnull @lapb_list_lock) #5
  %lock = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 22
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #5
  %11 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %event, label %if.end9.sw.epilog_crit_edge [
    i32 1, label %do.end
    i32 10, label %sw.bb25
    i32 2, label %do.end36
    i32 4, label %sw.bb38
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %if.end9
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %state.i, align 4
  %14 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %do.end14, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end14:                                         ; preds = %do.end
  %mode = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode, align 4
  %and = and i32 %16, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lapb_start_t1timer(ptr noundef nonnull %lapb.0.i.i) #5
  br label %sw.epilog

if.else:                                          ; preds = %do.end14
  %state = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp18 = icmp eq i8 %18, 0
  br i1 %cmp18, label %if.then20, label %if.else.sw.epilog_crit_edge

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %state, align 4
  tail call void @lapb_establish_data_link(ptr noundef nonnull %lapb.0.i.i) #5
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end9
  %state.i98 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %state.i98 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i98, align 4
  %22 = and i32 %21, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i99 = icmp eq i32 %22, 0
  br i1 %tobool.not.i99, label %if.then27, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then27:                                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call fastcc i32 @__lapb_disconnect_request(ptr noundef nonnull %lapb.0.i.i)
  br label %sw.epilog

do.end36:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lapb_clear_queues(ptr noundef nonnull %lapb.0.i.i) #5
  %state37 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %state37 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %state37, align 4
  %n2count = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 9
  %24 = ptrtoint ptr %n2count to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %n2count, align 4
  tail call void @lapb_stop_t1timer(ptr noundef nonnull %lapb.0.i.i) #5
  tail call void @lapb_stop_t2timer(ptr noundef nonnull %lapb.0.i.i) #5
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end9
  %state.i100 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %state.i100 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %state.i100, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i101 = icmp eq i32 %27, 0
  br i1 %tobool.not.i101, label %do.end43, label %do.end63

do.end43:                                         ; preds = %sw.bb38
  %mode44 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %mode44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mode44, align 4
  %and45 = and i32 %29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.else48, label %if.then47

if.then47:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lapb_start_t1timer(ptr noundef nonnull %lapb.0.i.i) #5
  br label %sw.epilog

if.else48:                                        ; preds = %do.end43
  %state49 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %state49 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %state49, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp51 = icmp eq i8 %31, 0
  br i1 %cmp51, label %if.then53, label %if.else48.sw.epilog_crit_edge

if.else48.sw.epilog_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then53:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %state49 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %state49, align 4
  tail call void @lapb_establish_data_link(ptr noundef nonnull %lapb.0.i.i) #5
  br label %sw.epilog

do.end63:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @lapb_clear_queues(ptr noundef nonnull %lapb.0.i.i) #5
  %state64 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %state64 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %state64, align 4
  %n2count65 = getelementptr inbounds %struct.lapb_cb, ptr %lapb.0.i.i, i32 0, i32 9
  %34 = ptrtoint ptr %n2count65 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %n2count65, align 4
  tail call void @lapb_stop_t1timer(ptr noundef nonnull %lapb.0.i.i) #5
  tail call void @lapb_stop_t2timer(ptr noundef nonnull %lapb.0.i.i) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end63, %if.then53, %if.else48.sw.epilog_crit_edge, %if.then47, %do.end36, %if.then27, %sw.bb25.sw.epilog_crit_edge, %if.then20, %if.else.sw.epilog_crit_edge, %if.then16, %do.end.sw.epilog_crit_edge, %if.end9.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #5
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #5, !srcloc !61
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !59

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #5
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @kfree(ptr noundef nonnull %lapb.0.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %lapb_devtostruct.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__ksymtab_lapb_register, !1, !"__ksymtab_lapb_register", i1 false, i1 false}
!1 = !{!"../net/lapb/lapb_iface.c", i32 170, i32 1}
!2 = !{ptr @__ksymtab_lapb_unregister, !3, !"__ksymtab_lapb_unregister", i1 false, i1 false}
!3 = !{!"../net/lapb/lapb_iface.c", i32 208, i32 1}
!4 = !{ptr @__ksymtab_lapb_getparms, !5, !"__ksymtab_lapb_getparms", i1 false, i1 false}
!5 = !{!"../net/lapb/lapb_iface.c", i32 244, i32 1}
!6 = !{ptr @__ksymtab_lapb_setparms, !7, !"__ksymtab_lapb_setparms", i1 false, i1 false}
!7 = !{!"../net/lapb/lapb_iface.c", i32 283, i32 1}
!8 = !{ptr @__ksymtab_lapb_connect_request, !9, !"__ksymtab_lapb_connect_request", i1 false, i1 false}
!9 = !{!"../net/lapb/lapb_iface.c", i32 315, i32 1}
!10 = !{ptr @__ksymtab_lapb_disconnect_request, !11, !"__ksymtab_lapb_disconnect_request", i1 false, i1 false}
!11 = !{!"../net/lapb/lapb_iface.c", i32 365, i32 1}
!12 = !{ptr @__ksymtab_lapb_data_request, !13, !"__ksymtab_lapb_data_request", i1 false, i1 false}
!13 = !{!"../net/lapb/lapb_iface.c", i32 390, i32 1}
!14 = !{ptr @__ksymtab_lapb_data_received, !15, !"__ksymtab_lapb_data_received", i1 false, i1 false}
!15 = !{!"../net/lapb/lapb_iface.c", i32 407, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/lapb/lapb_iface.c", i32 543, i32 2}
!18 = !{ptr @__UNIQUE_ID_author469, !19, !"__UNIQUE_ID_author469", i1 false, i1 false}
!19 = !{!"../net/lapb/lapb_iface.c", i32 548, i32 1}
!20 = !{ptr @__UNIQUE_ID_description470, !21, !"__UNIQUE_ID_description470", i1 false, i1 false}
!21 = !{!"../net/lapb/lapb_iface.c", i32 549, i32 1}
!22 = !{ptr @__UNIQUE_ID_file471, !23, !"__UNIQUE_ID_file471", i1 false, i1 false}
!23 = !{!"../net/lapb/lapb_iface.c", i32 550, i32 1}
!24 = !{ptr @__UNIQUE_ID_license472, !23, !"__UNIQUE_ID_license472", i1 false, i1 false}
!25 = !{ptr @__initcall__kmod_lapb__473_552_lapb_init6, !26, !"__initcall__kmod_lapb__473_552_lapb_init6", i1 false, i1 false}
!26 = !{!"../net/lapb/lapb_iface.c", i32 552, i32 1}
!27 = !{ptr @__exitcall_lapb_exit, !28, !"__exitcall_lapb_exit", i1 false, i1 false}
!28 = !{!"../net/lapb/lapb_iface.c", i32 553, i32 1}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/lapb/lapb_iface.c", i32 40, i32 8}
!31 = !{ptr @lapb_list_lock, !30, !"lapb_list_lock", i1 false, i1 false}
!32 = !{ptr @lapb_create_cb.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../net/lapb/lapb_iface.c", i32 121, i32 2}
!34 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lapb_create_cb.__key.3, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/lapb/lapb_iface.c", i32 122, i32 2}
!37 = !{ptr @.str.4, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @lapb_create_cb.__key.5, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/lapb/lapb_iface.c", i32 133, i32 2}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @skb_queue_head_init.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!43 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @lapb_list, !45, !"lapb_list", i1 false, i1 false}
!45 = !{!"../net/lapb/lapb_iface.c", i32 39, i32 8}
!46 = !{ptr @lapb_dev_notifier, !47, !"lapb_dev_notifier", i1 false, i1 false}
!47 = !{!"../net/lapb/lapb_iface.c", i32 532, i32 30}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2148351271, i64 2148351303, i64 2148351332, i64 2148351366, i64 2148351397, i64 2148351420}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2148439296}
!61 = !{i64 2148353736, i64 2148353768, i64 2148353797, i64 2148353831, i64 2148353862, i64 2148353885}
!62 = !{i64 2149315410}
