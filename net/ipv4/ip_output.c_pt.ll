; ModuleID = '/llk/IR_all_yes/net/ipv4/ip_output.c_pt.bc'
source_filename = "../net/ipv4/ip_output.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ip_send_check\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_send_check\09\09\09\09"
module asm "\09.long\09__crc_ip_send_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_send_check:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_send_check\22\09\09\09\09\09"
module asm "__kstrtabns_ip_send_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip_local_out\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_local_out\09\09\09\09"
module asm "\09.long\09__crc_ip_local_out\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_local_out:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_local_out\22\09\09\09\09\09"
module asm "__kstrtabns_ip_local_out:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip_build_and_send_pkt\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_build_and_send_pkt\09\09\09\09"
module asm "\09.long\09__crc_ip_build_and_send_pkt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_build_and_send_pkt:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_build_and_send_pkt\22\09\09\09\09\09"
module asm "__kstrtabns_ip_build_and_send_pkt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_output\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_output\09\09\09\09"
module asm "\09.long\09__crc_ip_output\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_output:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_output\22\09\09\09\09\09"
module asm "__kstrtabns_ip_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ip_queue_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc___ip_queue_xmit\09\09\09\09"
module asm "\09.long\09__crc___ip_queue_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ip_queue_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22__ip_queue_xmit\22\09\09\09\09\09"
module asm "__kstrtabns___ip_queue_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_queue_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_queue_xmit\09\09\09\09"
module asm "\09.long\09__crc_ip_queue_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_queue_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_queue_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_ip_queue_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_fraglist_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_fraglist_init\09\09\09\09"
module asm "\09.long\09__crc_ip_fraglist_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_fraglist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_fraglist_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip_fraglist_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_fraglist_prepare\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_fraglist_prepare\09\09\09\09"
module asm "\09.long\09__crc_ip_fraglist_prepare\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_fraglist_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_fraglist_prepare\22\09\09\09\09\09"
module asm "__kstrtabns_ip_fraglist_prepare:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_frag_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_frag_init\09\09\09\09"
module asm "\09.long\09__crc_ip_frag_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_frag_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_frag_init\22\09\09\09\09\09"
module asm "__kstrtabns_ip_frag_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_frag_next\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_frag_next\09\09\09\09"
module asm "\09.long\09__crc_ip_frag_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_frag_next:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_frag_next\22\09\09\09\09\09"
module asm "__kstrtabns_ip_frag_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_do_fragment\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_do_fragment\09\09\09\09"
module asm "\09.long\09__crc_ip_do_fragment\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_do_fragment:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_do_fragment\22\09\09\09\09\09"
module asm "__kstrtabns_ip_do_fragment:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ip_generic_getfrag\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_generic_getfrag\09\09\09\09"
module asm "\09.long\09__crc_ip_generic_getfrag\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_generic_getfrag:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_generic_getfrag\22\09\09\09\09\09"
module asm "__kstrtabns_ip_generic_getfrag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.63 }
%struct.atomic_t = type { i32 }
%union.anon.63 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.82, %union.anon.148, %union.anon.149, [48 x i8], %union.anon.150, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.152, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.148 = type { ptr }
%union.anon.149 = type { i64 }
%union.anon.150 = type { %struct.anon.151 }
%struct.anon.151 = type { i32, ptr }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.154, i32, i32, i32, i16, i16, %union.anon.156, i32, %union.anon.157, %union.anon.158, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.154 = type { i32 }
%union.anon.156 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.147 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.l3mdev_ops = type { ptr, ptr, ptr, ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.178, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.178 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.166, [0 x i32], %union.anon.167, i16, i16, %union.anon.168, %struct.refcount_struct, [0 x i32], %union.anon.169 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.137 }
%union.anon.137 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { %struct.hlist_node }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i32 }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.170, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.171, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.172, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.170 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.171 = type { ptr }
%union.anon.172 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.139 }
%union.anon.139 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.146, i32, %struct.list_head, ptr }
%union.anon.146 = type { %struct.in6_addr }
%struct.ipstats_mib = type { [37 x i64], %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.anon.140 = type { i16, i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.ip_fraglist_iter = type { ptr, ptr, i32, i32 }
%struct.ip_frag_state = type { i8, i32, i32, i32, i32, i32, i32, i16 }
%struct.lwtunnel_state = type { i16, i16, i16, %struct.atomic_t, ptr, ptr, %struct.callback_head, [0 x i8] }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.81, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.79 }
%union.anon.20 = type { ptr }
%union.anon.79 = type { i64 }
%union.anon.81 = type { ptr }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%struct.cpumask = type { [1 x i32] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i16, i8, i16 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.ubuf_info = type { ptr, %union.anon.191, %struct.refcount_struct, i8, %struct.mmpin }
%union.anon.191 = type { %struct.anon.193 }
%struct.anon.193 = type { i32, i16, i8, i32 }
%struct.mmpin = type { ptr, i32 }
%struct.page = type { i32, %union.anon.21, %union.anon.78, %struct.atomic_t, i32 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.78 = type { %struct.atomic_t }
%struct.ip_options_data = type { %struct.ip_options_rcu, [40 x i8] }
%struct.ip_reply_arg = type { [1 x %struct.kvec], i32, i32, i32, i32, i8, %struct.kuid_t }
%struct.kvec = type { ptr, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.neigh_hash_table = type { ptr, i32, [4 x i32], %struct.callback_head }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__kstrtab_ip_send_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_send_check = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_send_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_send_check to i32), ptr @__kstrtab_ip_send_check, ptr @__kstrtabns_ip_send_check }, section "___ksymtab+ip_send_check", align 4
@__kstrtab_ip_local_out = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_local_out = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_local_out = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_local_out to i32), ptr @__kstrtab_ip_local_out, ptr @__kstrtabns_ip_local_out }, section "___ksymtab_gpl+ip_local_out", align 4
@__kstrtab_ip_build_and_send_pkt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_build_and_send_pkt = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_build_and_send_pkt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_build_and_send_pkt to i32), ptr @__kstrtab_ip_build_and_send_pkt, ptr @__kstrtabns_ip_build_and_send_pkt }, section "___ksymtab_gpl+ip_build_and_send_pkt", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__kstrtab_ip_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_output = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_output to i32), ptr @__kstrtab_ip_output, ptr @__kstrtabns_ip_output }, section "___ksymtab+ip_output", align 4
@__ip_queue_xmit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/ipv4/ip_output.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab___ip_queue_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns___ip_queue_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab___ip_queue_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ip_queue_xmit to i32), ptr @__kstrtab___ip_queue_xmit, ptr @__kstrtabns___ip_queue_xmit }, section "___ksymtab+__ip_queue_xmit", align 4
@__kstrtab_ip_queue_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_queue_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_queue_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_queue_xmit to i32), ptr @__kstrtab_ip_queue_xmit, ptr @__kstrtabns_ip_queue_xmit }, section "___ksymtab+ip_queue_xmit", align 4
@__kstrtab_ip_fraglist_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_fraglist_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_fraglist_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_fraglist_init to i32), ptr @__kstrtab_ip_fraglist_init, ptr @__kstrtabns_ip_fraglist_init }, section "___ksymtab+ip_fraglist_init", align 4
@__kstrtab_ip_fraglist_prepare = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_fraglist_prepare = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_fraglist_prepare = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_fraglist_prepare to i32), ptr @__kstrtab_ip_fraglist_prepare, ptr @__kstrtabns_ip_fraglist_prepare }, section "___ksymtab+ip_fraglist_prepare", align 4
@__kstrtab_ip_frag_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_frag_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_frag_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_frag_init to i32), ptr @__kstrtab_ip_frag_init, ptr @__kstrtabns_ip_frag_init }, section "___ksymtab+ip_frag_init", align 4
@__kstrtab_ip_frag_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_frag_next = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_frag_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_frag_next to i32), ptr @__kstrtab_ip_frag_next, ptr @__kstrtabns_ip_frag_next }, section "___ksymtab+ip_frag_next", align 4
@__kstrtab_ip_do_fragment = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_do_fragment = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_do_fragment = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_do_fragment to i32), ptr @__kstrtab_ip_do_fragment, ptr @__kstrtabns_ip_do_fragment }, section "___ksymtab+ip_do_fragment", align 4
@__kstrtab_ip_generic_getfrag = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_generic_getfrag = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_generic_getfrag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_generic_getfrag to i32), ptr @__kstrtab_ip_generic_getfrag, ptr @__kstrtabns_ip_generic_getfrag }, section "___ksymtab+ip_generic_getfrag", align 4
@sysctl_wmem_default = external dso_local local_unnamed_addr global i32, align 4
@nf_hook.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/netfilter.h\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@cgroup_bpf_enabled_key = external dso_local global [23 x %struct.static_key_false], align 4
@ip_finish_output2.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.11, ptr @.str.12, ptr @.str, ptr @.str.13, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ip_output\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ip_finish_output2\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: No header cache and no neighbour!\0A\00", [57 x i8] zeroinitializer }, align 32
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@___neigh_lookup_noref.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/neighbour.h\00", [40 x i8] zeroinitializer }, align 32
@___neigh_lookup_noref.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___neigh_lookup_noref.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@neigh_hh_output.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"./../include/linux/highmem-internal.h\00", [58 x i8] zeroinitializer }, align 32
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 16, i64 3, i64 5]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 468, i32 13 }
@___asan_gen_.42 = private unnamed_addr constant [29 x i8] c"../include/linux/netfilter.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 229, i32 15 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1011, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 161, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 271, i32 2 }
@___asan_gen_.60 = private constant [24 x i8] c"../net/ipv4/ip_output.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 234, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 749, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [27 x i8] c"../include/net/neighbour.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 305, i32 33 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 760, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 695, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 723, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 230, i32 6 }
@___asan_gen_.84 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 214, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1160, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [38 x i8] c"./../include/linux/highmem-internal.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 44, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab___ip_queue_xmit, ptr @__ksymtab_ip_build_and_send_pkt, ptr @__ksymtab_ip_do_fragment, ptr @__ksymtab_ip_frag_init, ptr @__ksymtab_ip_frag_next, ptr @__ksymtab_ip_fraglist_init, ptr @__ksymtab_ip_fraglist_prepare, ptr @__ksymtab_ip_generic_getfrag, ptr @__ksymtab_ip_local_out, ptr @__ksymtab_ip_output, ptr @__ksymtab_ip_queue_xmit, ptr @__ksymtab_ip_send_check, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_send_check(ptr noundef %iph) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %check = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 7
  %0 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %check, align 2
  %1 = ptrtoint ptr %iph to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %iph, align 4
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  %2 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %iph, i32 %conv) #12, !srcloc !97
  %asmresult.i = extractvalue { i32, ptr, i32, i32 } %2, 0
  %3 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i) #15, !srcloc !98
  %neg.i.i = xor i32 %3, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i = trunc i32 %shr.i.i to i16
  %4 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i.i, ptr %check, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ip_local_out(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %conv = trunc i32 %5 to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %tot_len, align 2
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %check.i, align 2
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %9 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i, i32 %conv.i) #12, !srcloc !97
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %9, 0
  %10 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #15, !srcloc !98
  %neg.i.i.i = xor i32 %10, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %11 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i.i.i, ptr %check.i, align 2
  %12 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %and.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %entry.skb_dst.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.skb_dst.exit.i.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge

land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, !prof !99

land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge:        ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i.i

skb_dst.exit.i.i:                                 ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst.exit.i.i_crit_edge, %land.lhs.true.i.i.i.skb_dst.exit.i.i_crit_edge, %entry.skb_dst.exit.i.i_crit_edge
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %12, align 8
  %and25.i.i.i = and i32 %16, -2
  %17 = inttoptr i32 %and25.i.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv_flags.i.i.i, align 16
  %and.i1.i.i = and i64 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i1.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i1.i.i, 0
  br i1 %tobool.i.not.i.i, label %skb_dst.exit.i.i.l3mdev_ip_out.exit_crit_edge, label %if.then.i.i

skb_dst.exit.i.i.l3mdev_ip_out.exit_crit_edge:    ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %l3mdev_ip_out.exit

if.then.i.i:                                      ; preds = %skb_dst.exit.i.i
  %call3.i.i = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %19) #12
  %tobool.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i.l3mdev_ip_out.exit_crit_edge, label %land.lhs.true.i.i

if.then.i.i.l3mdev_ip_out.exit_crit_edge:         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %l3mdev_ip_out.exit

land.lhs.true.i.i:                                ; preds = %if.then.i.i
  %l3mdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call3.i.i, i32 0, i32 45
  %22 = ptrtoint ptr %l3mdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %l3mdev_ops.i.i, align 4
  %l3mdev_l3_out.i.i = getelementptr inbounds %struct.l3mdev_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %l3mdev_l3_out.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %l3mdev_l3_out.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.l3mdev_ip_out.exit_crit_edge, label %if.then5.i.i

land.lhs.true.i.i.l3mdev_ip_out.exit_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %l3mdev_ip_out.exit

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call8.i.i = tail call ptr %25(ptr noundef nonnull %call3.i.i, ptr noundef %sk, ptr noundef %skb, i16 noundef zeroext 2) #12
  br label %l3mdev_ip_out.exit

l3mdev_ip_out.exit:                               ; preds = %if.then5.i.i, %land.lhs.true.i.i.l3mdev_ip_out.exit_crit_edge, %if.then.i.i.l3mdev_ip_out.exit_crit_edge, %skb_dst.exit.i.i.l3mdev_ip_out.exit_crit_edge
  %skb.addr.1.i.i = phi ptr [ %skb, %skb_dst.exit.i.i.l3mdev_ip_out.exit_crit_edge ], [ %call8.i.i, %if.then5.i.i ], [ %skb, %land.lhs.true.i.i.l3mdev_ip_out.exit_crit_edge ], [ %skb, %if.then.i.i.l3mdev_ip_out.exit_crit_edge ]
  %tobool.not = icmp eq ptr %skb.addr.1.i.i, null
  br i1 %tobool.not, label %l3mdev_ip_out.exit.cleanup_crit_edge, label %if.end, !prof !99

l3mdev_ip_out.exit.cleanup_crit_edge:             ; preds = %l3mdev_ip_out.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %l3mdev_ip_out.exit
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i.i, i32 0, i32 15, i32 0, i32 18
  %26 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2048, ptr %protocol, align 8
  %27 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 8
  %and.i = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.end.skb_dst.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !99

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.end.skb_dst.exit_crit_edge
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %27, align 8
  %and25.i = and i32 %31, -2
  %32 = inttoptr i32 %and25.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %call6 = tail call fastcc i32 @nf_hook(i32 noundef 3, ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %skb.addr.1.i.i, ptr noundef null, ptr noundef %34, ptr noundef nonnull @dst_output)
  br label %cleanup

cleanup:                                          ; preds = %skb_dst.exit, %l3mdev_ip_out.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %skb_dst.exit ], [ 0, %l3mdev_ip_out.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_hook(i32 noundef %hook, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %indev, ptr noundef %outdev, ptr noundef %okfn) unnamed_addr #2 align 64 {
entry:
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx3 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 %hook
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx3, align 4
  %call5 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %land.lhs.true6, label %rcu_read_lock.exit.sw.epilog_crit_edge

rcu_read_lock.exit.sw.epilog_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true6:                                   ; preds = %rcu_read_lock.exit
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true6.sw.epilog_crit_edge, label %land.lhs.true9

land.lhs.true6.sw.epilog_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true9:                                   ; preds = %land.lhs.true6
  %.b1 = load i1, ptr @nf_hook.__warned, align 1
  br i1 %.b1, label %land.lhs.true9.sw.epilog_crit_edge, label %if.then11

land.lhs.true9.sw.epilog_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @nf_hook.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 229, ptr noundef nonnull @.str.1) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %land.lhs.true9.sw.epilog_crit_edge, %land.lhs.true6.sw.epilog_crit_edge, %rcu_read_lock.exit.sw.epilog_crit_edge
  %tobool191.not = icmp eq ptr %5, null
  br i1 %tobool191.not, label %sw.epilog.if.end194_crit_edge, label %if.then192

sw.epilog.if.end194_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

if.then192:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #12
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 4
  %conv.i = trunc i32 %hook to i8
  store i8 %conv.i, ptr %state, align 4
  %pf2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %pf2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %pf2.i, align 1
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %indev, ptr %in.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %9 = ptrtoint ptr %out.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %outdev, ptr %out.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %sk3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sk, ptr %sk3.i, align 4
  %net4.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %11 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %net, ptr %net4.i, align 4
  %okfn5.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 6
  %12 = ptrtoint ptr %okfn5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %okfn, ptr %okfn5.i, align 4
  %call193 = call i32 @nf_hook_slow(ptr noundef %skb, ptr noundef nonnull %state, ptr noundef nonnull %5, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #12
  br label %if.end194

if.end194:                                        ; preds = %if.then192, %sw.epilog.if.end194_crit_edge
  %ret.0 = phi i32 [ %call193, %if.then192 ], [ 1, %sw.epilog.if.end194_crit_edge ]
  %call.i2 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i2, label %if.end194.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i5

if.end194.rcu_read_unlock.exit_crit_edge:         ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i5:                                 ; preds = %if.end194
  %call1.i3 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3)
  %tobool.not.i4 = icmp eq i32 %call1.i3, 0
  br i1 %tobool.not.i4, label %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i7

land.lhs.true.i5.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i7:                                ; preds = %land.lhs.true.i5
  %.b4.i6 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6, label %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, label %if.then.i8

land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i8:                                       ; preds = %land.lhs.true2.i7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i8, %land.lhs.true2.i7.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i5.rcu_read_unlock.exit_crit_edge, %if.end194.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  %13 = call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i.i.i9 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i9 to ptr
  %preempt_count.i.i.i.i10 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i10, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i10, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %ret.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dst_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !99

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %output = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output, align 4
  %call1 = tail call i32 %7(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_local_out(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__ip_local_out(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !prof !102

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.then.dst_output.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !99

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.then.dst_output.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %7(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %if.end

if.end:                                           ; preds = %dst_output.exit, %entry.if.end_crit_edge
  %err.0 = phi i32 [ %call1.i, %dst_output.exit ], [ %call, %entry.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_build_and_send_pkt(ptr noundef %skb, ptr noundef %sk, i32 noundef %saddr, i32 noundef %daddr, ptr noundef %opt, i8 noundef zeroext %tos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !99

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %tobool.not = icmp eq ptr %opt, null
  br i1 %tobool.not, label %skb_rtable.exit.cond.end_crit_edge, label %cond.true

skb_rtable.exit.cond.end_crit_edge:               ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %opt, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %optlen, align 4
  %conv = zext i8 %9 to i32
  %phi.bo = add nuw nsw i32 %conv, 20
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %skb_rtable.exit.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.true ], [ 20, %skb_rtable.exit.cond.end_crit_edge ]
  %call4 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %cond) #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %12 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 69, ptr %add.ptr.i.i, align 4
  %tos9 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %tos9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %tos, ptr %tos9, align 1
  %uc_ttl.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 3
  %17 = ptrtoint ptr %uc_ttl.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %uc_ttl.i, align 8
  %conv.i103112 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %cmp.i = icmp slt i16 %18, 0
  br i1 %cmp.i, label %if.then.i, label %cond.end.ip_select_ttl.exit_crit_edge

cond.end.ip_select_ttl.exit_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_select_ttl.exit

if.then.i:                                        ; preds = %cond.end
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %20, -4
  %21 = inttoptr i32 %and.i.i.i to ptr
  %arrayidx.i.i.i = getelementptr i32, ptr %21, i32 9
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp eq i32 %23, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i.ip_select_ttl.exit_crit_edge

if.then.i.ip_select_ttl.exit_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_select_ttl.exit

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %25, i32 0, i32 127
  %26 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nd_net.i.i.i, align 4
  %sysctl_ip_default_ttl.i.i = getelementptr inbounds %struct.net, ptr %27, i32 0, i32 35, i32 37
  %28 = ptrtoint ptr %sysctl_ip_default_ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sysctl_ip_default_ttl.i.i, align 2
  %conv.i.i104 = zext i8 %29 to i32
  br label %ip_select_ttl.exit

ip_select_ttl.exit:                               ; preds = %if.then.i.i, %if.then.i.ip_select_ttl.exit_crit_edge, %cond.end.ip_select_ttl.exit_crit_edge
  %ttl.0.i = phi i32 [ %conv.i103112, %cond.end.ip_select_ttl.exit_crit_edge ], [ %conv.i.i104, %if.then.i.i ], [ %23, %if.then.i.ip_select_ttl.exit_crit_edge ]
  %conv11 = trunc i32 %ttl.0.i to i8
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv11, ptr %ttl, align 4
  br i1 %tobool.not, label %ip_select_ttl.exit.cond.end19_crit_edge, label %land.lhs.true

ip_select_ttl.exit.cond.end19_crit_edge:          ; preds = %ip_select_ttl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end19

land.lhs.true:                                    ; preds = %ip_select_ttl.exit
  %srr = getelementptr inbounds %struct.ip_options_rcu, ptr %opt, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool15.not = icmp eq i8 %32, 0
  br i1 %tobool15.not, label %land.lhs.true.cond.end19_crit_edge, label %cond.true16

land.lhs.true.cond.end19_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end19

cond.true16:                                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %opt13 = getelementptr inbounds %struct.ip_options_rcu, ptr %opt, i32 0, i32 1
  %33 = ptrtoint ptr %opt13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %opt13, align 4
  br label %cond.end19

cond.end19:                                       ; preds = %cond.true16, %land.lhs.true.cond.end19_crit_edge, %ip_select_ttl.exit.cond.end19_crit_edge
  %cond20 = phi i32 [ %34, %cond.true16 ], [ %daddr, %land.lhs.true.cond.end19_crit_edge ], [ %daddr, %ip_select_ttl.exit.cond.end19_crit_edge ]
  %daddr21 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %daddr21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond20, ptr %daddr21, align 4
  %saddr22 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %saddr22 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %saddr, ptr %saddr22, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %37 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sk_protocol, align 4
  %conv23 = trunc i16 %38 to i8
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %39 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv23, ptr %protocol, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %40 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %41)
  %cmp = icmp ult i32 %41, 69
  br i1 %cmp, label %cond.end19.if.then_crit_edge, label %lor.lhs.false

cond.end19.if.then_crit_edge:                     ; preds = %cond.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %cond.end19
  %pmtudisc1.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 11
  %42 = ptrtoint ptr %pmtudisc1.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load volatile i8, ptr %pmtudisc1.i, align 1
  %44 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i8 %43, label %lor.lhs.false.if.else_crit_edge [
    i8 2, label %lor.lhs.false.if.then_crit_edge
    i8 1, label %land.rhs.i
  ]

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.rhs.i:                                       ; preds = %lor.lhs.false
  %rt_mtu_locked.i.i = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 9
  %45 = ptrtoint ptr %rt_mtu_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load.i.i = load i32, ptr %rt_mtu_locked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i105 = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i105, label %ip_dont_fragment.exit, label %land.rhs.i.if.else_crit_edge

land.rhs.i.if.else_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_dont_fragment.exit:                            ; preds = %land.rhs.i
  %_metrics.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 2
  %46 = ptrtoint ptr %_metrics.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %47, -4
  %48 = inttoptr i32 %and.i.i.i.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %51 = and i32 %50, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool27.not.not = icmp eq i32 %51, 0
  br i1 %tobool27.not.not, label %ip_dont_fragment.exit.if.then_crit_edge, label %ip_dont_fragment.exit.if.else_crit_edge

ip_dont_fragment.exit.if.else_crit_edge:          ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_dont_fragment.exit.if.then_crit_edge:          ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %ip_dont_fragment.exit.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %cond.end19.if.then_crit_edge
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 16384, ptr %frag_off, align 2
  %id = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %id, align 4
  br label %if.end38

if.else:                                          ; preds = %ip_dont_fragment.exit.if.else_crit_edge, %land.rhs.i.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %frag_off28 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %frag_off28 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %frag_off28, align 2
  %55 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %56)
  %cmp31 = icmp eq i16 %56, 6
  br i1 %cmp31, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %call34 = tail call i32 @prandom_u32() #12
  %conv35 = trunc i32 %call34 to i16
  %id36 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %id36 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %conv35, ptr %id36, align 4
  br label %if.end38

if.else37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__ip_select_ident(ptr noundef %7, ptr noundef %add.ptr.i.i, i32 noundef 1) #12
  br label %if.end38

if.end38:                                         ; preds = %if.else37, %if.then33, %if.then
  br i1 %tobool.not, label %if.end38.if.end58_crit_edge, label %land.lhs.true40

if.end38.if.end58_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

land.lhs.true40:                                  ; preds = %if.end38
  %optlen42 = getelementptr inbounds %struct.ip_options_rcu, ptr %opt, i32 0, i32 1, i32 2
  %58 = ptrtoint ptr %optlen42 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %optlen42, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool44.not = icmp eq i8 %59, 0
  br i1 %tobool44.not, label %land.lhs.true40.if.end58_crit_edge, label %if.then45

land.lhs.true40.if.end58_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then45:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  %opt41 = getelementptr inbounds %struct.ip_options_rcu, ptr %opt, i32 0, i32 1
  %60 = lshr i8 %59, 2
  %61 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load49 = load i8, ptr %add.ptr.i.i, align 4
  %narrow = add i8 %bf.load49, %60
  %bf.value = and i8 %narrow, 15
  %bf.clear55 = and i8 %bf.load49, -16
  %bf.set56 = or i8 %bf.value, %bf.clear55
  store i8 %bf.set56, ptr %add.ptr.i.i, align 4
  tail call void @ip_options_build(ptr noundef %skb, ptr noundef %opt41, i32 noundef %daddr, ptr noundef %5, i32 noundef 0) #12
  br label %if.end58

if.end58:                                         ; preds = %if.then45, %land.lhs.true40.if.end58_crit_edge, %if.end38.if.end58_crit_edge
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %62 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sk_priority, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %64 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %priority, align 4
  %65 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool59.not = icmp eq i32 %67, 0
  br i1 %tobool59.not, label %if.then60, label %if.end58.if.end61_crit_edge

if.end58.if.end61_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end61

if.then60:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %68 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sk_mark, align 8
  %70 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %65, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %if.end58.if.end61_crit_edge
  %71 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %call.i = tail call i32 @__ip_local_out(ptr noundef %7, ptr noundef %73, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i106 = icmp eq i32 %call.i, 1
  br i1 %cmp.i106, label %if.then.i108, label %if.end61.ip_local_out.exit_crit_edge, !prof !102

if.end61.ip_local_out.exit_crit_edge:             ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_local_out.exit

if.then.i108:                                     ; preds = %if.end61
  %74 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %0, align 8
  %and.i.i.i107 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i107)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i107, 0
  br i1 %tobool.not.i.i.i, label %if.then.i108.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i108.dst_output.exit.i_crit_edge:         ; preds = %if.then.i108
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i108
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i.i.dst_output.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_output.exit.i_crit_edge, !prof !99

land.rhs.i.i.i.dst_output.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge, %if.then.i108.dst_output.exit.i_crit_edge
  %76 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %0, align 8
  %and25.i.i.i = and i32 %77, -2
  %78 = inttoptr i32 %and25.i.i.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = tail call i32 %80(ptr noundef %7, ptr noundef %73, ptr noundef %skb) #12
  br label %ip_local_out.exit

ip_local_out.exit:                                ; preds = %dst_output.exit.i, %if.end61.ip_local_out.exit_crit_edge
  %err.0.i = phi i32 [ %call1.i.i, %dst_output.exit.i ], [ %call.i, %if.end61.ip_local_out.exit_crit_edge ]
  ret i32 %err.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ip_select_ident(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_options_build(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_mc_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !99

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %8 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mib, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %17, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx6 = getelementptr [37 x i64], ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx6, align 8
  %inc = add i64 %19, 1
  store i64 %inc, ptr %arrayidx6, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len, align 4
  %conv = zext i32 %21 to i64
  %arrayidx8 = getelementptr [37 x i64], ptr %17, i32 0, i32 6
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %23, %conv
  store i64 %add9, ptr %arrayidx8, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %17, i32 0, i32 1, i32 0, i32 1
  %24 = tail call ptr @llvm.returnaddress(i32 0) #12
  %25 = ptrtoint ptr %24 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %26 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  %28 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %7, ptr %28, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %30 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 2048, ptr %protocol, align 8
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 2
  %31 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rt_flags, align 4
  %and = and i32 %32, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %skb_rtable.exit.if.end34_crit_edge, label %if.then

skb_rtable.exit.if.end34_crit_edge:               ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then:                                          ; preds = %skb_rtable.exit
  %call15 = tail call zeroext i1 @sk_mc_loop(ptr noundef %sk) #12
  br i1 %call15, label %land.lhs.true, label %if.then.if.end28_crit_edge

if.then.if.end28_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

land.lhs.true:                                    ; preds = %if.then
  %33 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rt_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %tobool19.not = icmp sgt i32 %34, -1
  br i1 %tobool19.not, label %lor.lhs.false, label %land.lhs.true.if.then23_crit_edge

land.lhs.true.if.then23_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

lor.lhs.false:                                    ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %flags, align 4
  %37 = and i16 %36, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool22.not = icmp eq i16 %37, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.then23_crit_edge, label %lor.lhs.false.if.end28_crit_edge

lor.lhs.false.if.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

lor.lhs.false.if.then23_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then23

if.then23:                                        ; preds = %lor.lhs.false.if.then23_crit_edge, %land.lhs.true.if.then23_crit_edge
  %call24 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #12
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then26

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then26:                                        ; preds = %if.then23
  %38 = getelementptr inbounds %struct.anon.83, ptr %call24, i32 0, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %call.i = tail call fastcc i32 @nf_hook(i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %call24, ptr noundef null, ptr noundef %40, ptr noundef nonnull @ip_mc_finish_output) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.then26.if.end28_crit_edge

if.then26.if.end28_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @ip_mc_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %call24) #12
  br label %if.end28

if.end28:                                         ; preds = %if.then.i, %if.then26.if.end28_crit_edge, %if.then23.if.end28_crit_edge, %lor.lhs.false.if.end28_crit_edge, %if.then.if.end28_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %43 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %44 to i32
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %conv.i.i
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %45 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp = icmp eq i8 %46, 0
  br i1 %cmp, label %if.then32, label %if.end28.if.end34_crit_edge

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.end34:                                         ; preds = %if.end28.if.end34_crit_edge, %skb_rtable.exit.if.end34_crit_edge
  %47 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rt_flags, align 4
  %and36 = and i32 %48, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end45_crit_edge, label %if.then38

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then38:                                        ; preds = %if.end34
  %call40 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #12
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.then38.if.end45_crit_edge, label %if.then42

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then42:                                        ; preds = %if.then38
  %49 = getelementptr inbounds %struct.anon.83, ptr %call40, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %49, align 8
  %call.i81 = tail call fastcc i32 @nf_hook(i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %call40, ptr noundef null, ptr noundef %51, ptr noundef nonnull @ip_mc_finish_output) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i81)
  %cmp.i82 = icmp eq i32 %call.i81, 1
  br i1 %cmp.i82, label %if.then.i84, label %if.then42.if.end45_crit_edge

if.then42.if.end45_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then.i84:                                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i83 = tail call i32 @ip_mc_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %call40) #12
  br label %if.end45

if.end45:                                         ; preds = %if.then.i84, %if.then42.if.end45_crit_edge, %if.then38.if.end45_crit_edge, %if.end34.if.end45_crit_edge
  %flags48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %52 = ptrtoint ptr %flags48 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %flags48, align 4
  %54 = and i16 %53, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool51.not = icmp eq i16 %54, 0
  br i1 %tobool51.not, label %lor.lhs.false.i, label %if.end45.if.then.i89_crit_edge

if.end45.if.then.i89_crit_edge:                   ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i89

lor.lhs.false.i:                                  ; preds = %if.end45
  %55 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %28, align 8
  %call.i86 = tail call fastcc i32 @nf_hook(i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef null, ptr noundef %56, ptr noundef nonnull @ip_finish_output) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i86)
  %cmp.i87 = icmp eq i32 %call.i86, 1
  br i1 %cmp.i87, label %lor.lhs.false.i.if.then.i89_crit_edge, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.i.if.then.i89_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i89

if.then.i89:                                      ; preds = %lor.lhs.false.i.if.then.i89_crit_edge, %if.end45.if.then.i89_crit_edge
  %call1.i88 = tail call i32 @ip_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i89, %lor.lhs.false.i.cleanup_crit_edge, %if.then32
  %retval.0 = phi i32 [ 0, %if.then32 ], [ %call1.i88, %if.then.i89 ], [ %call.i86, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !104
  %5 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !105
  %14 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !106
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !107
  %33 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !102

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !108
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #12
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_mc_loop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_mc_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 1), ptr blockaddress(@ip_mc_finish_output, %l_yes.i)) #12
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !109

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  %tobool3.not = icmp eq ptr %sk, null
  %or.cond = or i1 %tobool3.not, %retval.0.i
  br i1 %or.cond, label %arch_static_branch.exit.sw.epilog_crit_edge, label %land.lhs.true4

arch_static_branch.exit.sw.epilog_crit_edge:      ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true4:                                   ; preds = %arch_static_branch.exit
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, %sk
  br i1 %cmp, label %land.lhs.true.i, label %land.lhs.true4.sw.epilog_crit_edge

land.lhs.true4.sw.epilog_crit_edge:               ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %land.lhs.true4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i = icmp eq i8 %4, 12
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.sk_to_full_sk.exit_crit_edge

land.lhs.true.i.sk_to_full_sk.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_to_full_sk.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  br label %sk_to_full_sk.exit

sk_to_full_sk.exit:                               ; preds = %if.then.i, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge
  %sk.addr.0.i = phi ptr [ %7, %if.then.i ], [ %sk, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge ]
  %skc_state.i40 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i40 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i40, align 2
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %sk_to_full_sk.exit.sw.epilog_crit_edge, label %if.end9

sk_to_full_sk.exit.sw.epilog_crit_edge:           ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.end9:                                          ; preds = %sk_to_full_sk.exit
  %call8 = tail call i32 @__cgroup_bpf_run_filter_skb(ptr noundef %sk.addr.0.i, ptr noundef %skb, i32 noundef 1) #12
  %10 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call8, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %if.end9.sw.epilog_crit_edge
  ]

if.end9.sw.epilog_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %if.end9.sw.epilog_crit_edge, %sk_to_full_sk.exit.sw.epilog_crit_edge, %land.lhs.true4.sw.epilog_crit_edge, %arch_static_branch.exit.sw.epilog_crit_edge
  %__ret.147 = phi i32 [ %call8, %if.end9.sw.epilog_crit_edge ], [ 2, %sw.bb ], [ 0, %land.lhs.true4.sw.epilog_crit_edge ], [ 0, %arch_static_branch.exit.sw.epilog_crit_edge ], [ 0, %sk_to_full_sk.exit.sw.epilog_crit_edge ]
  %do_cn.0.off0 = phi i1 [ true, %if.end9.sw.epilog_crit_edge ], [ false, %sw.bb ], [ true, %land.lhs.true4.sw.epilog_crit_edge ], [ true, %arch_static_branch.exit.sw.epilog_crit_edge ], [ true, %sk_to_full_sk.exit.sw.epilog_crit_edge ]
  %loopback_dev = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 27
  %11 = ptrtoint ptr %loopback_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %loopback_dev, align 4
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

sw.epilog.skb_rtable.exit_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %sw.epilog
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !99

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %sw.epilog.skb_rtable.exit_crit_edge
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %13, align 8
  %and25.i.i = and i32 %17, -2
  %18 = inttoptr i32 %and25.i.i to ptr
  %call12 = tail call ptr @rt_dst_clone(ptr noundef %12, ptr noundef %18) #12
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %skb_rtable.exit.if.end15_crit_edge, label %if.then14

skb_rtable.exit.if.end15_crit_edge:               ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then14:                                        ; preds = %skb_rtable.exit
  %rt_iif = getelementptr inbounds %struct.rtable, ptr %call12, i32 0, i32 6
  %19 = ptrtoint ptr %rt_iif to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rt_iif, align 4
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i41 = icmp ne i32 %21, 0
  %and.i.i42 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i42)
  %tobool.not.i.i43 = icmp eq i32 %and.i.i42, 0
  %or.cond48 = and i1 %tobool.not.i41, %tobool.not.i.i43
  br i1 %or.cond48, label %if.then.i.i, label %if.then14.skb_dst_drop.exit_crit_edge

if.then14.skb_dst_drop.exit_crit_edge:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_drop.exit

if.then.i.i:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i.i = and i32 %21, -2
  %22 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %22) #12
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %if.then.i.i, %if.then14.skb_dst_drop.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %23 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.set.i = or i32 %bf.load.i, 4096
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %24 = ptrtoint ptr %call12 to i32
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %13, align 8
  br label %if.end15

if.end15:                                         ; preds = %skb_dst_drop.exit, %skb_rtable.exit.if.end15_crit_edge
  %call16 = tail call i32 @dev_loopback_xmit(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool19.not = icmp eq i32 %call16, 0
  %or.cond39 = select i1 %do_cn.0.off0, i1 true, i1 %tobool19.not
  %cond = select i1 %or.cond39, i32 %call16, i32 %__ret.147
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %sw.default
  %retval.0 = phi i32 [ %call8, %sw.default ], [ %cond, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ([23 x %struct.static_key_false], ptr @cgroup_bpf_enabled_key, i32 0, i32 1), ptr blockaddress(@ip_finish_output, %l_yes.i)) #12
          to label %arch_static_branch.exit [label %l_yes.i], !srcloc !109

l_yes.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %arch_static_branch.exit

arch_static_branch.exit:                          ; preds = %l_yes.i, %entry
  %retval.0.i = phi i1 [ false, %l_yes.i ], [ true, %entry ]
  %tobool3.not = icmp eq ptr %sk, null
  %or.cond = or i1 %tobool3.not, %retval.0.i
  br i1 %or.cond, label %arch_static_branch.exit.sw.bb_crit_edge, label %land.lhs.true4

arch_static_branch.exit.sw.bb_crit_edge:          ; preds = %arch_static_branch.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

land.lhs.true4:                                   ; preds = %arch_static_branch.exit
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %cmp = icmp eq ptr %2, %sk
  br i1 %cmp, label %land.lhs.true.i, label %land.lhs.true4.sw.bb_crit_edge

land.lhs.true4.sw.bb_crit_edge:                   ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

land.lhs.true.i:                                  ; preds = %land.lhs.true4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i = icmp eq i8 %4, 12
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true.i.sk_to_full_sk.exit_crit_edge

land.lhs.true.i.sk_to_full_sk.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sk_to_full_sk.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  %5 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  br label %sk_to_full_sk.exit

sk_to_full_sk.exit:                               ; preds = %if.then.i, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge
  %sk.addr.0.i = phi ptr [ %7, %if.then.i ], [ %sk, %land.lhs.true.i.sk_to_full_sk.exit_crit_edge ]
  %skc_state.i27 = getelementptr inbounds %struct.sock_common, ptr %sk.addr.0.i, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state.i27 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state.i27, align 2
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %sk_to_full_sk.exit.sw.bb_crit_edge, label %if.end9

sk_to_full_sk.exit.sw.bb_crit_edge:               ; preds = %sk_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

if.end9:                                          ; preds = %sk_to_full_sk.exit
  %call8 = tail call i32 @__cgroup_bpf_run_filter_skb(ptr noundef %sk.addr.0.i, ptr noundef %skb, i32 noundef 1) #12
  %10 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call8, label %sw.default [
    i32 0, label %if.end9.sw.bb_crit_edge
    i32 2, label %sw.bb12
  ]

if.end9.sw.bb_crit_edge:                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb

sw.bb:                                            ; preds = %if.end9.sw.bb_crit_edge, %sk_to_full_sk.exit.sw.bb_crit_edge, %land.lhs.true4.sw.bb_crit_edge, %arch_static_branch.exit.sw.bb_crit_edge
  %call11 = tail call fastcc i32 @__ip_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %call13 = tail call fastcc i32 @__ip_finish_output(ptr noundef %net, ptr noundef nonnull %sk, ptr noundef %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %spec.select = select i1 %tobool14.not, i32 2, i32 %call13
  br label %cleanup

sw.default:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb12, %sw.bb
  %retval.0 = phi i32 [ %call8, %sw.default ], [ %spec.select, %sw.bb12 ], [ %call11, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !99

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %11 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mib, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i28 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i28 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %20, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx6 = getelementptr [37 x i64], ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx6, align 8
  %inc = add i64 %22, 1
  store i64 %inc, ptr %arrayidx6, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %conv = zext i32 %24 to i64
  %arrayidx8 = getelementptr [37 x i64], ptr %20, i32 0, i32 6
  %25 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx8, align 8
  %add9 = add i64 %26, %conv
  store i64 %add9, ptr %arrayidx8, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %20, i32 0, i32 1, i32 0, i32 1
  %27 = tail call ptr @llvm.returnaddress(i32 0) #12
  %28 = ptrtoint ptr %27 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %28) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %29 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %30, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %7, ptr %8, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %32 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2048, ptr %protocol, align 8
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %flags, align 4
  %35 = and i16 %34, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not = icmp eq i16 %35, 0
  br i1 %tobool.not, label %lor.lhs.false.i, label %skb_dst.exit.if.then.i_crit_edge

skb_dst.exit.if.then.i_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %skb_dst.exit
  %call.i29 = tail call fastcc i32 @nf_hook(i32 noundef 4, ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef %10, ptr noundef %7, ptr noundef nonnull @ip_finish_output) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i29)
  %cmp.i = icmp eq i32 %call.i29, 1
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge

lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %NF_HOOK_COND.exit

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %skb_dst.exit.if.then.i_crit_edge
  %call1.i = tail call i32 @ip_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %NF_HOOK_COND.exit

NF_HOOK_COND.exit:                                ; preds = %if.then.i, %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.then.i ], [ %call.i29, %lor.lhs.false.i.NF_HOOK_COND.exit_crit_edge ]
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ip_queue_xmit(ptr noundef %sk, ptr noundef %skb, ptr noundef %fl, i8 noundef zeroext %tos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %2 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %inet_opt2 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 5
  %6 = ptrtoint ptr %inet_opt2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %inet_opt2, align 4
  %call4 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end10_crit_edge

rcu_read_lock.exit.do.end10_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end10_crit_edge, label %land.lhs.true7

land.lhs.true.do.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b191 = load i1, ptr @__ip_queue_xmit.__warned, align 1
  br i1 %.b191, label %land.lhs.true7.do.end10_crit_edge, label %if.then

land.lhs.true7.do.end10_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end10

if.then:                                          ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__ip_queue_xmit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 468, ptr noundef nonnull @.str.1) #12
  br label %do.end10

do.end10:                                         ; preds = %if.then, %land.lhs.true7.do.end10_crit_edge, %land.lhs.true.do.end10_crit_edge, %rcu_read_lock.exit.do.end10_crit_edge
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %and.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.end10.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

do.end10.skb_rtable.exit_crit_edge:               ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %do.end10
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !99

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %do.end10.skb_rtable.exit_crit_edge
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 8
  %and25.i.i = and i32 %12, -2
  %13 = inttoptr i32 %and25.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool13.not = icmp eq i32 %and25.i.i, 0
  br i1 %tobool13.not, label %if.end15, label %skb_rtable.exit.packet_routed_crit_edge

skb_rtable.exit.packet_routed_crit_edge:          ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %packet_routed

if.end15:                                         ; preds = %skb_rtable.exit
  %call16 = tail call ptr @__sk_dst_check(ptr noundef %sk, i32 noundef 0) #12
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then18, label %if.end15.if.end38_crit_edge

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then18:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sk, align 8
  %tobool20.not = icmp eq ptr %7, null
  br i1 %tobool20.not, label %if.then18.if.end25_crit_edge, label %land.lhs.true21

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

land.lhs.true21:                                  ; preds = %if.then18
  %srr = getelementptr inbounds %struct.ip_options_rcu, ptr %7, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool22.not = icmp eq i8 %17, 0
  br i1 %tobool22.not, label %land.lhs.true21.if.end25_crit_edge, label %if.then23

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  %opt = getelementptr inbounds %struct.ip_options_rcu, ptr %7, i32 0, i32 1
  %18 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %opt, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true21.if.end25_crit_edge, %if.then18.if.end25_crit_edge
  %daddr.0 = phi i32 [ %19, %if.then23 ], [ %15, %land.lhs.true21.if.end25_crit_edge ], [ %15, %if.then18.if.end25_crit_edge ]
  %inet_saddr = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 2
  %20 = ptrtoint ptr %inet_saddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %inet_saddr, align 4
  %22 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %22, align 4
  %inet_sport = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 6
  %25 = ptrtoint ptr %inet_sport to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %inet_sport, align 8
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %27 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %sk_protocol, align 4
  %conv28 = trunc i16 %28 to i8
  %29 = and i8 %tos, 30
  %30 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  %33 = lshr i32 %32, 13
  %34 = trunc i32 %33 to i8
  %35 = and i8 %34, 1
  %or = or i8 %35, %29
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %36 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %skc_bound_dev_if, align 4
  %tobool.not.i193 = icmp eq ptr %sk, null
  br i1 %tobool.not.i193, label %sock_net_uid.exit32.i, label %sock_net_uid.exit.i

sock_net_uid.exit.i:                              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %sk_mark.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %38 = ptrtoint ptr %sk_mark.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sk_mark.i, align 8
  %transparent.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %40 = ptrtoint ptr %transparent.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load.i.i = load i16, ptr %transparent.i.i, align 8
  %41 = and i16 %bf.load.i.i, 5120
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %42 = icmp ne i16 %41, 0
  %flags.0.i.i = zext i1 %42 to i8
  %sk_uid.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 55
  %43 = ptrtoint ptr %sk_uid.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %retval.sroa.0.0.copyload.i.i = load i32, ptr %sk_uid.i.i, align 4
  %44 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %37, ptr %fl, align 8
  %flowic_iif.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 1
  %45 = ptrtoint ptr %flowic_iif.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %flowic_iif.i.i, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 2
  %46 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %39, ptr %flowic_mark.i.i, align 8
  %flowic_tos.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 3
  %47 = ptrtoint ptr %flowic_tos.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or, ptr %flowic_tos.i.i, align 4
  %flowic_scope.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 4
  %48 = ptrtoint ptr %flowic_scope.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %flowic_scope.i.i, align 1
  %flowic_proto.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 5
  %49 = ptrtoint ptr %flowic_proto.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv28, ptr %flowic_proto.i.i, align 2
  %flowic_flags.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 6
  %50 = ptrtoint ptr %flowic_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %flags.0.i.i, ptr %flowic_flags.i.i, align 1
  %flowic_secid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 7
  %51 = ptrtoint ptr %flowic_secid.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %flowic_secid.i.i, align 8
  %flowic_tun_key.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 9
  %52 = ptrtoint ptr %flowic_tun_key.i.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %flowic_tun_key.i.i, align 8
  %flowic_uid.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 8
  %53 = ptrtoint ptr %flowic_uid.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.sroa.0.0.copyload.i.i, ptr %flowic_uid.i.i, align 4
  %daddr10.i.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %54 = ptrtoint ptr %daddr10.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %daddr.0, ptr %daddr10.i.i, align 4
  %saddr11.i.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 1
  %55 = ptrtoint ptr %saddr11.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %21, ptr %saddr11.i.i, align 8
  %uli.i.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 3
  %56 = ptrtoint ptr %uli.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %24, ptr %uli.i.i, align 8
  %sport14.i.i = getelementptr inbounds %struct.anon.140, ptr %uli.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %sport14.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %26, ptr %sport14.i.i, align 2
  %flowic_multipath_hash.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 10
  %58 = ptrtoint ptr %flowic_multipath_hash.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %flowic_multipath_hash.i.i, align 8
  tail call void @security_sk_classify_flow(ptr noundef nonnull %sk, ptr noundef %fl) #12
  br label %ip_route_output_ports.exit

sock_net_uid.exit32.i:                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %user_ns.i28.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 11
  %59 = ptrtoint ptr %user_ns.i28.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %user_ns.i28.i, align 4
  %call.i29.i = tail call i32 @make_kuid(ptr noundef %60, i32 noundef 0) #12
  %61 = ptrtoint ptr %fl to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %37, ptr %fl, align 8
  %flowic_iif.i33.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 1
  %62 = ptrtoint ptr %flowic_iif.i33.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %flowic_iif.i33.i, align 4
  %flowic_mark.i34.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 2
  %63 = ptrtoint ptr %flowic_mark.i34.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %flowic_mark.i34.i, align 8
  %flowic_tos.i35.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 3
  %64 = ptrtoint ptr %flowic_tos.i35.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %or, ptr %flowic_tos.i35.i, align 4
  %flowic_scope.i36.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 4
  %65 = ptrtoint ptr %flowic_scope.i36.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %flowic_scope.i36.i, align 1
  %flowic_proto.i37.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 5
  %66 = ptrtoint ptr %flowic_proto.i37.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv28, ptr %flowic_proto.i37.i, align 2
  %flowic_flags.i38.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 6
  %67 = ptrtoint ptr %flowic_flags.i38.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %flowic_flags.i38.i, align 1
  %flowic_secid.i39.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 7
  %68 = ptrtoint ptr %flowic_secid.i39.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %flowic_secid.i39.i, align 8
  %flowic_tun_key.i40.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 9
  %69 = ptrtoint ptr %flowic_tun_key.i40.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %flowic_tun_key.i40.i, align 8
  %flowic_uid.i41.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 8
  %70 = ptrtoint ptr %flowic_uid.i41.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call.i29.i, ptr %flowic_uid.i41.i, align 4
  %daddr10.i42.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %71 = ptrtoint ptr %daddr10.i42.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %daddr.0, ptr %daddr10.i42.i, align 4
  %saddr11.i43.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 1
  %72 = ptrtoint ptr %saddr11.i43.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %21, ptr %saddr11.i43.i, align 8
  %uli.i44.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 3
  %73 = ptrtoint ptr %uli.i44.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %24, ptr %uli.i44.i, align 8
  %sport14.i45.i = getelementptr inbounds %struct.anon.140, ptr %uli.i44.i, i32 0, i32 1
  %74 = ptrtoint ptr %sport14.i45.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %26, ptr %sport14.i45.i, align 2
  %flowic_multipath_hash.i46.i = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 10
  %75 = ptrtoint ptr %flowic_multipath_hash.i46.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %flowic_multipath_hash.i46.i, align 8
  br label %ip_route_output_ports.exit

ip_route_output_ports.exit:                       ; preds = %sock_net_uid.exit32.i, %sock_net_uid.exit.i
  %call11.i = tail call ptr @ip_route_output_flow(ptr noundef %1, ptr noundef %fl, ptr noundef %sk) #12
  %cmp.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ip_route_output_ports.exit.no_route_crit_edge, label %cleanup.thread

ip_route_output_ports.exit.no_route_crit_edge:    ; preds = %ip_route_output_ports.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_route

cleanup.thread:                                   ; preds = %ip_route_output_ports.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @sk_setup_caps(ptr noundef %sk, ptr noundef %call11.i) #12
  br label %if.end38

if.end38:                                         ; preds = %cleanup.thread, %if.end15.if.end38_crit_edge
  %rt.0 = phi ptr [ %call16, %if.end15.if.end38_crit_edge ], [ %call11.i, %cleanup.thread ]
  %call.i194 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i195, label %land.rhs.i, label %if.end38.skb_dst_set_noref.exit_crit_edge

if.end38.skb_dst_set_noref.exit_crit_edge:        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_set_noref.exit

land.rhs.i:                                       ; preds = %if.end38
  %call1.i196 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i196)
  %tobool2.not.i = icmp eq i32 %call1.i196, 0
  br i1 %tobool2.not.i, label %do.end.i, label %land.rhs.i.skb_dst_set_noref.exit_crit_edge, !prof !99

land.rhs.i.skb_dst_set_noref.exit_crit_edge:      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_set_noref.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1043, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst_set_noref.exit

skb_dst_set_noref.exit:                           ; preds = %do.end.i, %land.rhs.i.skb_dst_set_noref.exit_crit_edge, %if.end38.skb_dst_set_noref.exit_crit_edge
  %tobool23.not.i = icmp eq ptr %rt.0, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %76 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool23.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear30.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear30.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %77 = ptrtoint ptr %rt.0 to i32
  %or31.i = or i32 %77, 1
  %78 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or31.i, ptr %8, align 8
  br label %packet_routed

packet_routed:                                    ; preds = %skb_dst_set_noref.exit, %skb_rtable.exit.packet_routed_crit_edge
  %rt.1 = phi ptr [ %13, %skb_rtable.exit.packet_routed_crit_edge ], [ %rt.0, %skb_dst_set_noref.exit ]
  %tobool40.not = icmp eq ptr %7, null
  br i1 %tobool40.not, label %packet_routed.cond.end_crit_edge, label %land.lhs.true41

packet_routed.cond.end_crit_edge:                 ; preds = %packet_routed
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

land.lhs.true41:                                  ; preds = %packet_routed
  %is_strictroute = getelementptr inbounds %struct.ip_options_rcu, ptr %7, i32 0, i32 1, i32 6
  %79 = ptrtoint ptr %is_strictroute to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load = load i8, ptr %is_strictroute, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool44.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool44.not, label %land.lhs.true41.cond.true_crit_edge, label %land.lhs.true45

land.lhs.true41.cond.true_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %rt_uses_gateway = getelementptr inbounds %struct.rtable, ptr %rt.1, i32 0, i32 5
  %80 = ptrtoint ptr %rt_uses_gateway to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %rt_uses_gateway, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool47.not = icmp eq i8 %81, 0
  br i1 %tobool47.not, label %land.lhs.true45.cond.true_crit_edge, label %land.lhs.true45.no_route_crit_edge

land.lhs.true45.no_route_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %no_route

land.lhs.true45.cond.true_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.true

cond.true:                                        ; preds = %land.lhs.true45.cond.true_crit_edge, %land.lhs.true41.cond.true_crit_edge
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %7, i32 0, i32 1, i32 2
  %82 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %optlen, align 4
  %conv52 = zext i8 %83 to i32
  %phi.bo = add nuw nsw i32 %conv52, 20
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %packet_routed.cond.end_crit_edge
  %cond = phi i32 [ %phi.bo, %cond.true ], [ 20, %packet_routed.cond.end_crit_edge ]
  %call53 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %cond) #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %84 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %86 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %87 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %88 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv.i, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i, 65535
  %add.ptr.i.i = getelementptr i8, ptr %87, i32 %conv.i.i
  %conv55 = zext i8 %tos to i16
  %or57 = or i16 %conv55, 17664
  %89 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %or57, ptr %add.ptr.i.i, align 2
  %pmtudisc1.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 11
  %90 = ptrtoint ptr %pmtudisc1.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load volatile i8, ptr %pmtudisc1.i, align 1
  %92 = zext i8 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %91, label %cond.end.if.else_crit_edge [
    i8 2, label %cond.end.land.lhs.true62_crit_edge
    i8 1, label %land.rhs.i199
  ]

cond.end.land.lhs.true62_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true62

cond.end.if.else_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.rhs.i199:                                    ; preds = %cond.end
  %rt_mtu_locked.i.i = getelementptr inbounds %struct.rtable, ptr %rt.1, i32 0, i32 9
  %93 = ptrtoint ptr %rt_mtu_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %bf.load.i.i197 = load i32, ptr %rt_mtu_locked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i197)
  %tobool.not.i.i198 = icmp sgt i32 %bf.load.i.i197, -1
  br i1 %tobool.not.i.i198, label %ip_dont_fragment.exit, label %land.rhs.i199.if.else_crit_edge

land.rhs.i199.if.else_crit_edge:                  ; preds = %land.rhs.i199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_dont_fragment.exit:                            ; preds = %land.rhs.i199
  %_metrics.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt.1, i32 0, i32 2
  %94 = ptrtoint ptr %_metrics.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i.i.i.i.i200 = and i32 %95, -4
  %96 = inttoptr i32 %and.i.i.i.i.i200 to ptr
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %96, align 4
  %99 = and i32 %98, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool61.not.not = icmp eq i32 %99, 0
  br i1 %tobool61.not.not, label %ip_dont_fragment.exit.land.lhs.true62_crit_edge, label %ip_dont_fragment.exit.if.else_crit_edge

ip_dont_fragment.exit.if.else_crit_edge:          ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

ip_dont_fragment.exit.land.lhs.true62_crit_edge:  ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true62

land.lhs.true62:                                  ; preds = %ip_dont_fragment.exit.land.lhs.true62_crit_edge, %cond.end.land.lhs.true62_crit_edge
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %100 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load63 = load i16, ptr %ignore_df, align 8
  %101 = and i16 %bf.load63, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %101)
  %tobool65.not = icmp eq i16 %101, 0
  br i1 %tobool65.not, label %land.lhs.true62.if.end68_crit_edge, label %land.lhs.true62.if.else_crit_edge

land.lhs.true62.if.else_crit_edge:                ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true62.if.end68_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.else:                                          ; preds = %land.lhs.true62.if.else_crit_edge, %ip_dont_fragment.exit.if.else_crit_edge, %land.rhs.i199.if.else_crit_edge, %cond.end.if.else_crit_edge
  br label %if.end68

if.end68:                                         ; preds = %if.else, %land.lhs.true62.if.end68_crit_edge
  %.sink = phi i16 [ 0, %if.else ], [ 16384, %land.lhs.true62.if.end68_crit_edge ]
  %frag_off67 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %102 = ptrtoint ptr %frag_off67 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %.sink, ptr %frag_off67, align 2
  %uc_ttl.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 3
  %103 = ptrtoint ptr %uc_ttl.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %uc_ttl.i, align 8
  %conv.i201240 = zext i16 %104 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %104)
  %cmp.i202 = icmp slt i16 %104, 0
  br i1 %cmp.i202, label %if.then.i203, label %if.end68.ip_select_ttl.exit_crit_edge

if.end68.ip_select_ttl.exit_crit_edge:            ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_select_ttl.exit

if.then.i203:                                     ; preds = %if.end68
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt.1, i32 0, i32 2
  %105 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %106, -4
  %107 = inttoptr i32 %and.i.i.i to ptr
  %arrayidx.i.i.i = getelementptr i32, ptr %107, i32 9
  %108 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp.i.i = icmp eq i32 %109, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then.i203.ip_select_ttl.exit_crit_edge

if.then.i203.ip_select_ttl.exit_crit_edge:        ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_select_ttl.exit

if.then.i.i:                                      ; preds = %if.then.i203
  call void @__sanitizer_cov_trace_pc() #14
  %110 = ptrtoint ptr %rt.1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rt.1, align 4
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %111, i32 0, i32 127
  %112 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %nd_net.i.i.i, align 4
  %sysctl_ip_default_ttl.i.i = getelementptr inbounds %struct.net, ptr %113, i32 0, i32 35, i32 37
  %114 = ptrtoint ptr %sysctl_ip_default_ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %sysctl_ip_default_ttl.i.i, align 2
  %conv.i.i204 = zext i8 %115 to i32
  br label %ip_select_ttl.exit

ip_select_ttl.exit:                               ; preds = %if.then.i.i, %if.then.i203.ip_select_ttl.exit_crit_edge, %if.end68.ip_select_ttl.exit_crit_edge
  %ttl.0.i = phi i32 [ %conv.i201240, %if.end68.ip_select_ttl.exit_crit_edge ], [ %conv.i.i204, %if.then.i.i ], [ %109, %if.then.i203.ip_select_ttl.exit_crit_edge ]
  %conv71 = trunc i32 %ttl.0.i to i8
  %ttl = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %116 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %conv71, ptr %ttl, align 4
  %sk_protocol72 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %117 = ptrtoint ptr %sk_protocol72 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %sk_protocol72, align 4
  %conv73 = trunc i16 %118 to i8
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %119 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv73, ptr %protocol, align 1
  %saddr.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 1
  %120 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %saddr.i, align 8
  %saddr1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %122 = ptrtoint ptr %saddr1.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %saddr1.i, align 4
  %daddr.i = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %123 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %daddr.i, align 4
  %daddr2.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %125 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %daddr2.i, align 4
  br i1 %tobool40.not, label %ip_select_ttl.exit.if.end95_crit_edge, label %land.lhs.true75

ip_select_ttl.exit.if.end95_crit_edge:            ; preds = %ip_select_ttl.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

land.lhs.true75:                                  ; preds = %ip_select_ttl.exit
  %optlen77 = getelementptr inbounds %struct.ip_options_rcu, ptr %7, i32 0, i32 1, i32 2
  %126 = ptrtoint ptr %optlen77 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %optlen77, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool79.not = icmp eq i8 %127, 0
  br i1 %tobool79.not, label %land.lhs.true75.if.end95_crit_edge, label %if.then80

land.lhs.true75.if.end95_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end95

if.then80:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #14
  %opt76 = getelementptr inbounds %struct.ip_options_rcu, ptr %7, i32 0, i32 1
  %128 = lshr i8 %127, 2
  %129 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load84 = load i8, ptr %add.ptr.i.i, align 4
  %narrow189 = add i8 %bf.load84, %128
  %bf.value = and i8 %narrow189, 15
  %bf.clear90 = and i8 %bf.load84, -16
  %bf.set = or i8 %bf.value, %bf.clear90
  store i8 %bf.set, ptr %add.ptr.i.i, align 4
  %130 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sk, align 8
  tail call void @ip_options_build(ptr noundef %skb, ptr noundef %opt76, i32 noundef %131, ptr noundef %rt.1, i32 noundef 0) #12
  br label %if.end95

if.end95:                                         ; preds = %if.then80, %land.lhs.true75.if.end95_crit_edge, %ip_select_ttl.exit.if.end95_crit_edge
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %132 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %end.i, align 4
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %133, i32 0, i32 5
  %134 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %gso_segs, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool98.not = icmp eq i16 %135, 0
  %narrow = select i1 %tobool98.not, i16 1, i16 %135
  %conv97. = zext i16 %narrow to i32
  %136 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %head.i, align 8
  %138 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i = zext i16 %139 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %137, i32 %conv.i.i.i
  %tobool.not.i205 = icmp eq ptr %sk, null
  br i1 %tobool.not.i205, label %if.end95.if.end.i_crit_edge, label %land.lhs.true.i206

if.end95.if.end.i_crit_edge:                      ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i206:                               ; preds = %if.end95
  %140 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %sk, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool3.not.i = icmp eq i32 %141, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i206.if.end.i_crit_edge, label %if.then.i207

land.lhs.true.i206.if.end.i_crit_edge:            ; preds = %land.lhs.true.i206
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i207:                                     ; preds = %land.lhs.true.i206
  call void @__sanitizer_cov_trace_pc() #14
  %inet_id.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 7
  %142 = ptrtoint ptr %inet_id.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %inet_id.i, align 2
  %id.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %144 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 %143, ptr %id.i, align 4
  %145 = load i16, ptr %inet_id.i, align 2
  %conv7.i = add i16 %145, %narrow
  store i16 %conv7.i, ptr %inet_id.i, align 2
  br label %ip_select_ident_segs.exit

if.end.i:                                         ; preds = %land.lhs.true.i206.if.end.i_crit_edge, %if.end95.if.end.i_crit_edge
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %146 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %frag_off.i, align 2
  %148 = and i16 %147, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %148)
  %tobool9.not.i = icmp eq i16 %148, 0
  br i1 %tobool9.not.i, label %if.end.i.if.else.i_crit_edge, label %land.lhs.true10.i

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

land.lhs.true10.i:                                ; preds = %if.end.i
  %ignore_df.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %149 = ptrtoint ptr %ignore_df.i to i32
  call void @__asan_load2_noabort(i32 %149)
  %bf.load.i208 = load i16, ptr %ignore_df.i, align 8
  %150 = and i16 %bf.load.i208, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %150)
  %tobool11.not.i = icmp eq i16 %150, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %land.lhs.true10.i.if.else.i_crit_edge

land.lhs.true10.i.if.else.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #14
  %id13.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %151 = ptrtoint ptr %id13.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 0, ptr %id13.i, align 4
  br label %ip_select_ident_segs.exit

if.else.i:                                        ; preds = %land.lhs.true10.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  tail call void @__ip_select_ident(ptr noundef %1, ptr noundef %add.ptr.i.i.i, i32 noundef %conv97.) #12
  br label %ip_select_ident_segs.exit

ip_select_ident_segs.exit:                        ; preds = %if.else.i, %if.then12.i, %if.then.i207
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %152 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %sk_priority, align 4
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %154 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %priority, align 4
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %155 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %sk_mark, align 8
  %157 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %158 = ptrtoint ptr %157 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %156, ptr %157, align 4
  %call.i209 = tail call i32 @__ip_local_out(ptr noundef %1, ptr noundef %sk, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i209)
  %cmp.i210 = icmp eq i32 %call.i209, 1
  br i1 %cmp.i210, label %if.then.i212, label %ip_select_ident_segs.exit.ip_local_out.exit_crit_edge, !prof !102

ip_select_ident_segs.exit.ip_local_out.exit_crit_edge: ; preds = %ip_select_ident_segs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_local_out.exit

if.then.i212:                                     ; preds = %ip_select_ident_segs.exit
  %159 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %8, align 8
  %and.i.i.i211 = and i32 %160, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i211)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i211, 0
  br i1 %tobool.not.i.i.i, label %if.then.i212.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i212.dst_output.exit.i_crit_edge:         ; preds = %if.then.i212
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i212
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i.i.dst_output.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_output.exit.i_crit_edge, !prof !99

land.rhs.i.i.i.dst_output.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge, %if.then.i212.dst_output.exit.i_crit_edge
  %161 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %8, align 8
  %and25.i.i.i = and i32 %162, -2
  %163 = inttoptr i32 %and25.i.i.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %163, i32 0, i32 6
  %164 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = tail call i32 %165(ptr noundef %1, ptr noundef %sk, ptr noundef %skb) #12
  br label %ip_local_out.exit

ip_local_out.exit:                                ; preds = %dst_output.exit.i, %ip_select_ident_segs.exit.ip_local_out.exit_crit_edge
  %err.0.i = phi i32 [ %call1.i.i, %dst_output.exit.i ], [ %call.i209, %ip_select_ident_segs.exit.ip_local_out.exit_crit_edge ]
  %call.i214 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i214, label %ip_local_out.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i217

ip_local_out.exit.rcu_read_unlock.exit_crit_edge: ; preds = %ip_local_out.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i217:                               ; preds = %ip_local_out.exit
  %call1.i215 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i215)
  %tobool.not.i216 = icmp eq i32 %call1.i215, 0
  br i1 %tobool.not.i216, label %land.lhs.true.i217.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i219

land.lhs.true.i217.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i217
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i219:                              ; preds = %land.lhs.true.i217
  %.b4.i218 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i218, label %land.lhs.true2.i219.rcu_read_unlock.exit_crit_edge, label %if.then.i220

land.lhs.true2.i219.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i219
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i220:                                     ; preds = %land.lhs.true2.i219
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i220, %land.lhs.true2.i219.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i217.rcu_read_unlock.exit_crit_edge, %ip_local_out.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  %166 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i.i.i221 = and i32 %166, -16384
  %167 = inttoptr i32 %and.i.i.i.i.i221 to ptr
  %preempt_count.i.i.i.i222 = getelementptr inbounds %struct.thread_info, ptr %167, i32 0, i32 1
  %168 = ptrtoint ptr %preempt_count.i.i.i.i222 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load volatile i32, ptr %preempt_count.i.i.i.i222, align 4
  %sub.i.i.i = add i32 %169, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i222, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br label %cleanup120

no_route:                                         ; preds = %land.lhs.true45.no_route_crit_edge, %ip_route_output_ports.exit.no_route_crit_edge
  %call.i224 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i224, label %no_route.rcu_read_unlock.exit235_crit_edge, label %land.lhs.true.i227

no_route.rcu_read_unlock.exit235_crit_edge:       ; preds = %no_route
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit235

land.lhs.true.i227:                               ; preds = %no_route
  %call1.i225 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i225)
  %tobool.not.i226 = icmp eq i32 %call1.i225, 0
  br i1 %tobool.not.i226, label %land.lhs.true.i227.rcu_read_unlock.exit235_crit_edge, label %land.lhs.true2.i229

land.lhs.true.i227.rcu_read_unlock.exit235_crit_edge: ; preds = %land.lhs.true.i227
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit235

land.lhs.true2.i229:                              ; preds = %land.lhs.true.i227
  %.b4.i228 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i228, label %land.lhs.true2.i229.rcu_read_unlock.exit235_crit_edge, label %if.then.i230

land.lhs.true2.i229.rcu_read_unlock.exit235_crit_edge: ; preds = %land.lhs.true2.i229
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit235

if.then.i230:                                     ; preds = %land.lhs.true2.i229
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %rcu_read_unlock.exit235

rcu_read_unlock.exit235:                          ; preds = %if.then.i230, %land.lhs.true2.i229.rcu_read_unlock.exit235_crit_edge, %land.lhs.true.i227.rcu_read_unlock.exit235_crit_edge, %no_route.rcu_read_unlock.exit235_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  %170 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i.i.i231 = and i32 %170, -16384
  %171 = inttoptr i32 %and.i.i.i.i.i231 to ptr
  %preempt_count.i.i.i.i232 = getelementptr inbounds %struct.thread_info, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %preempt_count.i.i.i.i232 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load volatile i32, ptr %preempt_count.i.i.i.i232, align 4
  %sub.i.i.i233 = add i32 %173, -1
  store volatile i32 %sub.i.i.i233, ptr %preempt_count.i.i.i.i232, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 30
  %174 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mib, align 4
  %176 = ptrtoint ptr %175 to i32
  %177 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i = and i32 %177, -16384
  %178 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %178, i32 0, i32 3
  %179 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %180
  %181 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %arrayidx, align 4
  %add112 = add i32 %182, %176
  %183 = inttoptr i32 %add112 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %183, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx113 = getelementptr [37 x i64], ptr %183, i32 0, i32 15
  %184 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %arrayidx113, align 8
  %add114 = add i64 %185, 1
  store i64 %add114, ptr %arrayidx113, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %183, i32 0, i32 1, i32 0, i32 1
  %186 = tail call ptr @llvm.returnaddress(i32 0) #12
  %187 = ptrtoint ptr %186 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %187) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %188 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %189, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup120

cleanup120:                                       ; preds = %rcu_read_unlock.exit235, %rcu_read_unlock.exit
  %retval.0 = phi i32 [ -113, %rcu_read_unlock.exit235 ], [ %err.0.i, %rcu_read_unlock.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__sk_dst_check(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_setup_caps(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_queue_xmit(ptr noundef %sk, ptr noundef %skb, ptr noundef %fl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tos = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %0 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tos, align 4
  %call1 = tail call i32 @__ip_queue_xmit(ptr noundef %sk, ptr noundef %skb, ptr noundef %fl, i8 noundef zeroext %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_fraglist_init(ptr nocapture noundef %skb, ptr noundef %iph, i32 noundef %hlen, ptr nocapture noundef writeonly %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i.i, align 4
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp10.not.i.i = icmp eq i8 %7, 0
  br i1 %cmp10.not.i.i, label %entry.skb_pagelen.exit_crit_edge, label %for.body.preheader.i.i

entry.skb_pagelen.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_pagelen.exit

for.body.preheader.i.i:                           ; preds = %entry
  %conv.i.i = zext i8 %7 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.012.in.i.i = phi i32 [ %i.012.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv.i.i, %for.body.preheader.i.i ]
  %len.011.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.012.i.i = add nsw i32 %i.012.in.i.i, -1
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %5, i32 0, i32 12, i32 %i.012.i.i, i32 1
  %8 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i = add i32 %9, %len.011.i.i
  %cmp.i.i = icmp ugt i32 %i.012.in.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.skb_pagelen.exit_crit_edge

for.body.i.i.skb_pagelen.exit_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_pagelen.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

skb_pagelen.exit:                                 ; preds = %for.body.i.i.skb_pagelen.exit_crit_edge, %entry.skb_pagelen.exit_crit_edge
  %len.0.lcssa.i.i = phi i32 [ 0, %entry.skb_pagelen.exit_crit_edge ], [ %add.i.i, %for.body.i.i.skb_pagelen.exit_crit_edge ]
  %sub.i.i = sub i32 %1, %3
  %add.i = add i32 %len.0.lcssa.i.i, %sub.i.i
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 6
  %10 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %frag_list, align 8
  %12 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %iter, align 4
  %13 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %frag_list.i, align 8
  %offset = getelementptr inbounds %struct.ip_fraglist_iter, ptr %iter, i32 0, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %offset, align 4
  %iph2 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %iter, i32 0, i32 1
  %17 = ptrtoint ptr %iph2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %iph, ptr %iph2, align 4
  %hlen3 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %iter, i32 0, i32 3
  %18 = ptrtoint ptr %hlen3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %hlen, ptr %hlen3, align 4
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  %sub.i.neg = sub i32 %add.i, %20
  %sub = add i32 %sub.i.neg, %22
  store i32 %sub, ptr %data_len.i.i, align 8
  store i32 %add.i, ptr %len.i.i, align 4
  %conv = trunc i32 %add.i to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 2
  %23 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv, ptr %tot_len, align 2
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 4
  %24 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 8192, ptr %frag_off, align 2
  %check.i = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 7
  %25 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %check.i, align 2
  %26 = ptrtoint ptr %iph to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %iph, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i = zext i8 %bf.clear.i to i32
  %27 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %iph, i32 %conv.i) #12, !srcloc !97
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %27, 0
  %28 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #15, !srcloc !98
  %neg.i.i.i = xor i32 %28, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %29 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i.i.i, ptr %check.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_fraglist_prepare(ptr nocapture noundef readonly %skb, ptr nocapture noundef %iter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hlen1 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %iter, i32 0, i32 3
  %0 = ptrtoint ptr %hlen1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hlen1, align 4
  %iph2 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %iter, i32 0, i32 1
  %2 = ptrtoint ptr %iph2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iph2, align 4
  %4 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iter, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %idx.neg.i = sub i32 0, %1
  %add.ptr.i = getelementptr i8, ptr %8, i32 %idx.neg.i
  store ptr %add.ptr.i, ptr %data.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %13, %1
  store i32 %add.i, ptr %len1.i, align 4
  %sub.ptr.lhs.cast.i38 = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.sub.i40 = sub i32 %sub.ptr.lhs.cast.i38, %sub.ptr.rhs.cast.i
  %conv.i41 = trunc i32 %sub.ptr.sub.i40 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i41, ptr %network_header.i, align 4
  %conv.i44 = and i32 %sub.ptr.sub.i40, 65535
  %add.ptr.i45 = getelementptr i8, ptr %10, i32 %conv.i44
  %15 = call ptr @memcpy(ptr %add.ptr.i45, ptr %3, i32 %1)
  %16 = load ptr, ptr %head.i, align 8
  %17 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %conv.i.i
  store ptr %add.ptr.i.i, ptr %iph2, align 4
  %18 = load i32, ptr %len1.i, align 4
  %conv = trunc i32 %18 to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv, ptr %tot_len, align 2
  tail call fastcc void @ip_copy_metadata(ptr noundef %5, ptr noundef %skb)
  %len8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %20 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len8, align 4
  %sub = sub i32 %21, %1
  %offset = getelementptr inbounds %struct.ip_fraglist_iter, ptr %iter, i32 0, i32 2
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset, align 4
  %add = add i32 %23, %sub
  store i32 %add, ptr %offset, align 4
  %24 = lshr i32 %add, 3
  %conv10 = trunc i32 %24 to i16
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv10, ptr %frag_off, align 2
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %conv13 = or i16 %conv10, 8192
  %28 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv13, ptr %frag_off, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %29 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %check.i, align 2
  %30 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i46 = zext i8 %bf.clear.i to i32
  %31 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i, i32 %conv.i46) #12, !srcloc !97
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %31, 0
  %32 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #15, !srcloc !98
  %neg.i.i.i = xor i32 %32, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %33 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i.i.i, ptr %check.i, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ip_copy_metadata(ptr nocapture noundef %to, ptr nocapture noundef readonly %from) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15
  %0 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr = and i16 %bf.load, -8192
  %pkt_type1 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15
  %1 = ptrtoint ptr %pkt_type1 to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load2 = load i16, ptr %pkt_type1, align 8
  %bf.clear = and i16 %bf.load2, 8191
  %bf.set = or i16 %bf.clear, %bf.lshr
  store i16 %bf.set, ptr %pkt_type1, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 6
  %2 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %priority, align 4
  %priority3 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 6
  %4 = ptrtoint ptr %priority3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %priority3, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol, align 8
  %protocol4 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol4 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %protocol4, align 8
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 7
  %8 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skb_iif, align 8
  %skb_iif5 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 7
  %10 = ptrtoint ptr %skb_iif5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %skb_iif5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %entry.skb_dst_drop.exit_crit_edge, label %if.then.i

entry.skb_dst_drop.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_drop.exit

if.then.i:                                        ; preds = %entry
  %and.i.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.refdst_drop.exit.i_crit_edge

if.then.i.refdst_drop.exit.i_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  %and1.i.i = and i32 %13, -2
  %14 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %14) #12
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i.refdst_drop.exit.i_crit_edge
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %11, align 8
  br label %skb_dst_drop.exit

skb_dst_drop.exit:                                ; preds = %refdst_drop.exit.i, %entry.skb_dst_drop.exit_crit_edge
  %16 = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i.i43 = icmp eq i32 %18, 0
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 3
  %19 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.load.mask.i.i = and i32 %bf.load.i.i, 4096
  %bf.shl.i.i = select i1 %tobool.not.i.i43, i32 %bf.load.mask.i.i, i32 4096
  %bf.clear4.i.i = and i32 %bf.load.i.i, -4097
  %bf.set.i.i = or i32 %bf.shl.i.i, %bf.clear4.i.i
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %18, ptr %11, align 8
  %and.i.i44 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i44)
  %tobool6.not.i.i = icmp eq i32 %and.i.i44, 0
  br i1 %tobool6.not.i.i, label %skb_dst.exit.i.i, label %skb_dst_drop.exit.skb_dst_copy.exit_crit_edge

skb_dst_drop.exit.skb_dst_copy.exit_crit_edge:    ; preds = %skb_dst_drop.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_copy.exit

skb_dst.exit.i.i:                                 ; preds = %skb_dst_drop.exit
  %and25.i.i.i = and i32 %18, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i.i)
  %tobool.not.i13.i.i = icmp eq i32 %and25.i.i.i, 0
  br i1 %tobool.not.i13.i.i, label %skb_dst.exit.i.i.skb_dst_copy.exit_crit_edge, label %if.then.i.i.i

skb_dst.exit.i.i.skb_dst_copy.exit_crit_edge:     ; preds = %skb_dst.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_copy.exit

if.then.i.i.i:                                    ; preds = %skb_dst.exit.i.i
  %21 = inttoptr i32 %and25.i.i.i to ptr
  %__refcnt.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %21, i32 0, i32 18
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !110
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i.i.i, i32 1, i32 3, i32 1) #12
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i.i.i, ptr %__refcnt.i.i.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i.i.i) #12, !srcloc !111
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i.i.i, label %do.end10.i.i.i.i, label %atomic_inc_not_zero.exit.thread.i.i.i.i

atomic_inc_not_zero.exit.thread.i.i.i.i:          ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !112
  br label %skb_dst_copy.exit

do.end10.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.9, i32 noundef 231, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst_copy.exit

skb_dst_copy.exit:                                ; preds = %do.end10.i.i.i.i, %atomic_inc_not_zero.exit.thread.i.i.i.i, %skb_dst.exit.i.i.skb_dst_copy.exit_crit_edge, %skb_dst_drop.exit.skb_dst_copy.exit_crit_edge
  %23 = getelementptr inbounds %struct.anon.83, ptr %from, i32 0, i32 2
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = getelementptr inbounds %struct.anon.83, ptr %to, i32 0, i32 2
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %26, align 8
  %28 = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 13
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %31 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 13
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %30, ptr %31, align 4
  %hash.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 8
  %33 = ptrtoint ptr %hash.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hash.i, align 4
  %hash1.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 8
  %35 = ptrtoint ptr %hash1.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %hash1.i, align 4
  %36 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %pkt_type, align 8
  %37 = ptrtoint ptr %pkt_type1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load3.i = load i16, ptr %pkt_type1, align 8
  %bf.shl.i = and i16 %bf.load.i, 64
  %bf.clear4.i = and i16 %bf.load3.i, -65
  %bf.set.i = or i16 %bf.clear4.i, %bf.shl.i
  store i16 %bf.set.i, ptr %pkt_type1, align 8
  %bf.load5.i = load i16, ptr %pkt_type, align 8
  %bf.shl12.i = and i16 %bf.load5.i, 128
  %bf.clear13.i = and i16 %bf.set.i, -129
  %bf.set14.i = or i16 %bf.clear13.i, %bf.shl12.i
  store i16 %bf.set14.i, ptr %pkt_type1, align 8
  %tc_index = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 4
  %38 = ptrtoint ptr %tc_index to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tc_index, align 2
  %tc_index6 = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 4
  %40 = ptrtoint ptr %tc_index6 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %tc_index6, align 2
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 5
  %41 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i45 = and i32 %42, -8
  %43 = inttoptr i32 %and.i.i45 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i45)
  %tobool.not.i.i46 = icmp eq i32 %and.i.i45, 0
  br i1 %tobool.not.i.i46, label %skb_dst_copy.exit.nf_conntrack_put.exit.i_crit_edge, label %land.lhs.true.i.i

skb_dst_copy.exit.nf_conntrack_put.exit.i_crit_edge: ; preds = %skb_dst_copy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_conntrack_put.exit.i

land.lhs.true.i.i:                                ; preds = %skb_dst_copy.exit
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %43, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr nonnull %43, i32 1, i32 3, i32 1) #12
  %44 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %43, ptr nonnull %43, i32 1, ptr nonnull elementtype(i32) %43) #12, !srcloc !114
  %asmresult.i.i.i.i.i.i.i.i47 = extractvalue { i32, i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i47)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i47, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i48, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i47)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i47, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !102

if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_conntrack_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef nonnull %43, i32 noundef 3) #12
  br label %nf_conntrack_put.exit.i

if.then.i.i48:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !115
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %43) #12
  br label %nf_conntrack_put.exit.i

nf_conntrack_put.exit.i:                          ; preds = %if.then.i.i48, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_conntrack_put.exit.i_crit_edge, %skb_dst_copy.exit.nf_conntrack_put.exit.i_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 3
  %45 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %bf.load.i49 = load i32, ptr %slow_gro.i, align 2
  %bf.cast.i = and i32 %bf.load.i49, 4096
  %46 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %bf.load2.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.clear3.i = and i32 %bf.load2.i, -4097
  %bf.set.i50 = or i32 %bf.clear3.i, %bf.cast.i
  store i32 %bf.set.i50, ptr %slow_gro.i.i, align 2
  %_nfct.i7.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 5
  %47 = ptrtoint ptr %_nfct.i7.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %_nfct.i7.i, align 8
  %49 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %_nfct.i.i, align 8
  %50 = load i32, ptr %_nfct.i7.i, align 8
  %and.i.i.i = and i32 %50, -8
  %51 = inttoptr i32 %and.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %nf_conntrack_put.exit.i.nf_copy.exit_crit_edge, label %if.then.i.i.i51

nf_conntrack_put.exit.i.nf_copy.exit_crit_edge:   ; preds = %nf_conntrack_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_copy.exit

if.then.i.i.i51:                                  ; preds = %nf_conntrack_put.exit.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %51, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr nonnull %51, i32 1, i32 3, i32 1) #12
  %52 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %51, ptr nonnull %51, i32 1, ptr nonnull elementtype(i32) %51) #12, !srcloc !116
  %asmresult.i.i.i.i.i.i.i8.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i8.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i8.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then.i.i.i51.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !99

if.then.i.i.i51.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i51
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then.i.i.i51
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i8.i, 1
  %53 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.nf_copy.exit_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !102

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.nf_copy.exit_crit_edge:       ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %nf_copy.exit

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then.i.i.i51.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i51.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %51, i32 noundef %.sink.i.i.i.i.i.i) #12
  br label %nf_copy.exit

nf_copy.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.nf_copy.exit_crit_edge, %nf_conntrack_put.exit.i.nf_copy.exit_crit_edge
  %54 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %54)
  %bf.load.i.i52 = load i16, ptr %pkt_type, align 8
  %55 = and i16 %bf.load.i.i52, 2048
  %56 = ptrtoint ptr %pkt_type1 to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load3.i.i = load i16, ptr %pkt_type1, align 8
  %bf.clear4.i.i53 = and i16 %bf.load3.i.i, -2049
  %bf.set.i.i54 = or i16 %bf.clear4.i.i53, %55
  store i16 %bf.set.i.i54, ptr %pkt_type1, align 8
  %active_extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 13
  %57 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %active_extensions.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i55 = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i55, label %nf_copy.exit.skb_ext_put.exit.i_crit_edge, label %if.then.i.i56

nf_copy.exit.skb_ext_put.exit.i_crit_edge:        ; preds = %nf_copy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_ext_put.exit.i

if.then.i.i56:                                    ; preds = %nf_copy.exit
  call void @__sanitizer_cov_trace_pc() #14
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 22
  %59 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %extensions.i.i, align 8
  tail call void @__skb_ext_put(ptr noundef %60) #12
  br label %skb_ext_put.exit.i

skb_ext_put.exit.i:                               ; preds = %if.then.i.i56, %nf_copy.exit.skb_ext_put.exit.i_crit_edge
  %active_extensions.i2.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 13
  %61 = ptrtoint ptr %active_extensions.i2.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %active_extensions.i2.i, align 1
  %63 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %active_extensions.i.i, align 1
  %64 = load i8, ptr %active_extensions.i2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i3.i = icmp eq i8 %64, 0
  br i1 %tobool.not.i3.i, label %skb_ext_put.exit.i.skb_ext_copy.exit_crit_edge, label %if.then.i5.i

skb_ext_put.exit.i.skb_ext_copy.exit_crit_edge:   ; preds = %skb_ext_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_ext_copy.exit

if.then.i5.i:                                     ; preds = %skb_ext_put.exit.i
  %extensions.i4.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 22
  %65 = ptrtoint ptr %extensions.i4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %extensions.i4.i, align 8
  %call.i.i.i.i.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %66, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %66, i32 1, i32 3, i32 1) #12
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %66, ptr %66, i32 1, ptr elementtype(i32) %66) #12, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i5.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !99

if.then.i5.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i5.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %68 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %68)
  %.not.i.i.i.i.i58 = icmp sgt i32 %68, -1
  br i1 %.not.i.i.i.i.i58, label %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !102

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_inc.exit.i.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i5.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i5.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %66, i32 noundef %.sink.i.i.i.i.i) #12
  br label %refcount_inc.exit.i.i

refcount_inc.exit.i.i:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.refcount_inc.exit.i.i_crit_edge
  %extensions3.i.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 22
  %69 = ptrtoint ptr %extensions3.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %extensions3.i.i, align 8
  br label %skb_ext_copy.exit

skb_ext_copy.exit:                                ; preds = %refcount_inc.exit.i.i, %skb_ext_put.exit.i.skb_ext_copy.exit_crit_edge
  %70 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %bf.load7 = load i32, ptr %slow_gro.i, align 2
  %bf.cast10 = and i32 %bf.load7, 8388608
  %71 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 4)
  %bf.load12 = load i32, ptr %slow_gro.i.i, align 2
  %bf.clear15 = and i32 %bf.load12, -8388609
  %bf.set16 = or i32 %bf.clear15, %bf.cast10
  store i32 %bf.set16, ptr %slow_gro.i.i, align 2
  %secmark.i = getelementptr inbounds %struct.sk_buff, ptr %from, i32 0, i32 15, i32 0, i32 12
  %72 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %secmark.i, align 8
  %secmark1.i = getelementptr inbounds %struct.sk_buff, ptr %to, i32 0, i32 15, i32 0, i32 12
  %74 = ptrtoint ptr %secmark1.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %secmark1.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @ip_frag_init(ptr nocapture noundef readonly %skb, i32 noundef %hlen, i32 noundef %ll_rs, i32 noundef %mtu, i1 noundef zeroext %DF, ptr nocapture noundef writeonly %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %DF to i8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %state, align 4
  %hlen3 = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %hlen3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %hlen, ptr %hlen3, align 4
  %ll_rs4 = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %ll_rs4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %ll_rs, ptr %ll_rs4, align 4
  %mtu5 = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %mtu5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mtu, ptr %mtu5, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  %sub = sub i32 %9, %hlen
  %left = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %left, align 4
  %ptr = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 6
  %11 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %hlen, ptr %ptr, align 4
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %frag_off, align 2
  %14 = shl i16 %13, 3
  %shl = zext i16 %14 to i32
  %offset = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 5
  %15 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shl, ptr %offset, align 4
  %16 = load i16, ptr %frag_off, align 2
  %17 = and i16 %16, 8192
  %not_last_frag = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 7
  %18 = ptrtoint ptr %not_last_frag to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %not_last_frag, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_frag_next(ptr noundef %skb, ptr nocapture noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %left = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %left, align 4
  %mtu = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %1, i32 %3)
  %and = and i32 %4, -8
  %len.1 = select i1 %cmp, i32 %and, i32 %4
  %hlen = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hlen, align 4
  %ll_rs = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 2
  %7 = ptrtoint ptr %ll_rs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ll_rs, align 4
  %add = add i32 %8, %6
  %add6 = add i32 %add, %len.1
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add6, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #12
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end9

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %entry
  tail call fastcc void @ip_copy_metadata(ptr noundef nonnull %call.i, ptr noundef %skb)
  %9 = ptrtoint ptr %ll_rs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ll_rs, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %10
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %14, i32 %10
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %15 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hlen, align 4
  %add12 = add i32 %16, %len.1
  %call13 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %add12) #12
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %19 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %21 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %network_header.i, align 4
  %22 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hlen, align 4
  %24 = trunc i32 %23 to i16
  %conv16 = add i16 %conv.i, %24
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 19
  %25 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv16, ptr %transport_header, align 2
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool17.not = icmp eq ptr %28, null
  br i1 %tobool17.not, label %if.end9.if.end19_crit_edge, label %if.then18

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then18:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @skb_set_owner_w(ptr noundef nonnull %call.i, ptr noundef nonnull %28) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end9.if.end19_crit_edge
  %29 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %head.i, align 8
  %31 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %network_header.i, align 4
  %conv.i110 = zext i16 %32 to i32
  %add.ptr.i111 = getelementptr i8, ptr %30, i32 %conv.i110
  %33 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %hlen, align 4
  %data.i112 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %35 = ptrtoint ptr %data.i112 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i112, align 4
  %37 = call ptr @memcpy(ptr %add.ptr.i111, ptr %36, i32 %34)
  %ptr = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 6
  %38 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ptr, align 4
  %40 = load ptr, ptr %head.i, align 8
  %41 = ptrtoint ptr %transport_header to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %transport_header, align 2
  %conv.i114 = zext i16 %42 to i32
  %add.ptr.i115 = getelementptr i8, ptr %40, i32 %conv.i114
  %call23 = tail call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef %39, ptr noundef %add.ptr.i115, i32 noundef %len.1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.body

do.body:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ip_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 724, 0\0A.popsection", ""() #12, !srcloc !117
  unreachable

if.end29:                                         ; preds = %if.end19
  %43 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %left, align 4
  %sub = sub i32 %44, %len.1
  store i32 %sub, ptr %left, align 4
  %45 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i, align 8
  %47 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %48 to i32
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 %conv.i.i
  %offset = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 5
  %49 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offset, align 4
  %51 = lshr i32 %50, 3
  %conv32 = trunc i32 %51 to i16
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv32, ptr %frag_off, align 2
  %53 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %state, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool33.not = icmp eq i8 %54, 0
  br i1 %tobool33.not, label %if.end29.if.end38_crit_edge, label %if.then34

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end38

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %conv37 = or i16 %conv32, 16384
  %55 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv37, ptr %frag_off, align 2
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %if.end29.if.end38_crit_edge
  %56 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp40.not = icmp eq i32 %57, 0
  br i1 %cmp40.not, label %lor.lhs.false, label %if.end38.if.then44_crit_edge

if.end38.if.then44_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44

lor.lhs.false:                                    ; preds = %if.end38
  %not_last_frag = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 7
  %58 = ptrtoint ptr %not_last_frag to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %not_last_frag, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool43.not = icmp eq i16 %59, 0
  br i1 %tobool43.not, label %lor.lhs.false.if.end49_crit_edge, label %lor.lhs.false.if.then44_crit_edge

lor.lhs.false.if.then44_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then44

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then44:                                        ; preds = %lor.lhs.false.if.then44_crit_edge, %if.end38.if.then44_crit_edge
  %60 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %frag_off, align 2
  %62 = or i16 %61, 8192
  store i16 %62, ptr %frag_off, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.then44, %lor.lhs.false.if.end49_crit_edge
  %63 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ptr, align 4
  %add51 = add i32 %64, %len.1
  store i32 %add51, ptr %ptr, align 4
  %65 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %offset, align 4
  %add53 = add i32 %66, %len.1
  store i32 %add53, ptr %offset, align 4
  %67 = ptrtoint ptr %hlen to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hlen, align 4
  %add55 = add i32 %68, %len.1
  %conv56 = trunc i32 %add55 to i16
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %69 = ptrtoint ptr %tot_len to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv56, ptr %tot_len, align 2
  %check.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %70 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 0, ptr %check.i, align 2
  %71 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  %conv.i116 = zext i8 %bf.clear.i to i32
  %72 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i, i32 %conv.i116) #12, !srcloc !97
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %72, 0
  %73 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #15, !srcloc !98
  %neg.i.i.i = xor i32 %73, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i = trunc i32 %shr.i.i.i to i16
  %74 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv.i.i.i, ptr %check.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call.i, %if.end49 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_set_owner_w(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_do_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr nocapture noundef readonly %output) #0 align 64 {
entry:
  %iter = alloca %struct.ip_fraglist_iter, align 4
  %state = alloca %struct.ip_frag_state, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !99

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i.i to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter) #12
  %6 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %iter, i32 0, i32 1
  %7 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %iter, i32 0, i32 2
  %8 = getelementptr inbounds %struct.ip_fraglist_iter, ptr %iter, i32 0, i32 3
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %10 = call ptr @memset(ptr %iter, i32 255, i32 16)
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %state) #12
  %13 = call ptr @memset(ptr %state, i32 255, i32 32)
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %14 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %ip_summed, align 8
  %15 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %15)
  %cmp = icmp eq i16 %15, 1536
  br i1 %cmp, label %land.lhs.true, label %skb_rtable.exit.if.end_crit_edge

skb_rtable.exit.if.end_crit_edge:                 ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %skb_rtable.exit
  %call2 = tail call i32 @skb_checksum_help(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.fail_crit_edge

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %skb_rtable.exit.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %call4 = tail call fastcc i32 @ip_skb_dst_mtu(ptr noundef %sk, ptr noundef %skb)
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %20 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %frag_max_size, align 2
  %conv5 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool6.not = icmp ne i16 %21, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %conv5)
  %cmp12 = icmp ugt i32 %call4, %conv5
  %or.cond = select i1 %tobool6.not, i1 %cmp12, i1 false
  %mtu.0 = select i1 %or.cond, i32 %conv5, i32 %call4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load20 = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear21 = shl i8 %bf.load20, 2
  %23 = and i8 %bf.clear21, 60
  %mul = zext i8 %23 to i32
  %sub = sub i32 %mtu.0, %mul
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags, align 4
  %26 = or i16 %25, 8
  store i16 %26, ptr %flags, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 19
  %29 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hard_header_len, align 2
  %conv27 = zext i16 %30 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 21
  %31 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %needed_headroom, align 8
  %conv30 = zext i16 %32 to i32
  %add = add nuw nsw i32 %conv30, %conv27
  %and = and i32 %add, 131056
  %add31 = add nuw nsw i32 %and, 16
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %33 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %frag_list.i, align 8
  %cmp.i.not = icmp eq ptr %36, null
  br i1 %cmp.i.not, label %if.end.slow_path_crit_edge, label %if.then33

if.end.slow_path_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

if.then33:                                        ; preds = %if.end
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %39 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i, align 8
  %nr_frags.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 2
  %41 = ptrtoint ptr %nr_frags.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nr_frags.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp10.not.i.i = icmp eq i8 %42, 0
  br i1 %cmp10.not.i.i, label %if.then33.skb_pagelen.exit_crit_edge, label %for.body.preheader.i.i

if.then33.skb_pagelen.exit_crit_edge:             ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_pagelen.exit

for.body.preheader.i.i:                           ; preds = %if.then33
  %conv.i.i439 = zext i8 %42 to i32
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.012.in.i.i = phi i32 [ %i.012.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %conv.i.i439, %for.body.preheader.i.i ]
  %len.011.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %i.012.i.i = add nsw i32 %i.012.in.i.i, -1
  %bv_len.i.i.i = getelementptr %struct.skb_shared_info, ptr %34, i32 0, i32 12, i32 %i.012.i.i, i32 1
  %43 = ptrtoint ptr %bv_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bv_len.i.i.i, align 4
  %add.i.i = add i32 %44, %len.011.i.i
  %cmp.i.i = icmp ugt i32 %i.012.in.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.skb_pagelen.exit_crit_edge

for.body.i.i.skb_pagelen.exit_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_pagelen.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

skb_pagelen.exit:                                 ; preds = %for.body.i.i.skb_pagelen.exit_crit_edge, %if.then33.skb_pagelen.exit_crit_edge
  %len.0.lcssa.i.i = phi i32 [ 0, %if.then33.skb_pagelen.exit_crit_edge ], [ %add.i.i, %for.body.i.i.skb_pagelen.exit_crit_edge ]
  %45 = add i32 %40, %mul
  %46 = sub i32 %38, %45
  %sub35 = add i32 %46, %len.0.lcssa.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub35, i32 %sub)
  %cmp36 = icmp ule i32 %sub35, %sub
  %and39 = and i32 %sub35, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  %or.cond436 = and i1 %cmp36, %tobool40.not
  br i1 %or.cond436, label %lor.lhs.false41, label %skb_pagelen.exit.slow_path_crit_edge

skb_pagelen.exit.slow_path_crit_edge:             ; preds = %skb_pagelen.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

lor.lhs.false41:                                  ; preds = %skb_pagelen.exit
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %47 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %frag_off.i, align 2
  %49 = and i16 %48, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp.i440.not = icmp eq i16 %49, 0
  br i1 %cmp.i440.not, label %lor.lhs.false44, label %lor.lhs.false41.slow_path_crit_edge

lor.lhs.false41.slow_path_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

lor.lhs.false44:                                  ; preds = %lor.lhs.false41
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %50 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %lor.lhs.false44.lor.lhs.false47_crit_edge, label %skb_cloned.exit

lor.lhs.false44.lor.lhs.false47_crit_edge:        ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false47

skb_cloned.exit:                                  ; preds = %lor.lhs.false44
  %dataref.i = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i, i32 noundef 4) #12
  %51 = ptrtoint ptr %dataref.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %dataref.i, align 4
  %and.i = and i32 %52, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i442.not = icmp eq i32 %and.i, 1
  br i1 %cmp.i442.not, label %skb_cloned.exit.lor.lhs.false47_crit_edge, label %skb_cloned.exit.slow_path_crit_edge

skb_cloned.exit.slow_path_crit_edge:              ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

skb_cloned.exit.lor.lhs.false47_crit_edge:        ; preds = %skb_cloned.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false47

lor.lhs.false47:                                  ; preds = %skb_cloned.exit.lor.lhs.false47_crit_edge, %lor.lhs.false44.lor.lhs.false47_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i, align 4
  %55 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add31)
  %cmp49 = icmp ult i32 %sub.ptr.sub.i, %add31
  br i1 %cmp49, label %lor.lhs.false47.slow_path_crit_edge, label %if.end52

lor.lhs.false47.slow_path_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

if.end52:                                         ; preds = %lor.lhs.false47
  %57 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %end.i.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %frag_list to i32
  call void @__asan_load4_noabort(i32 %59)
  %frag.0502 = load ptr, ptr %frag_list, align 8
  %tobool54.not503 = icmp eq ptr %frag.0502, null
  br i1 %tobool54.not503, label %if.end52.for.end_crit_edge, label %for.body.lr.ph

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end52
  %add65 = add nuw nsw i32 %add31, %mul
  %60 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %truesize88 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %if.end87.for.body_crit_edge, %for.body.lr.ph
  %frag.0504 = phi ptr [ %frag.0502, %for.body.lr.ph ], [ %frag.0, %if.end87.for.body_crit_edge ]
  %len = getelementptr inbounds %struct.sk_buff, ptr %frag.0504, i32 0, i32 6
  %61 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %sub)
  %cmp55 = icmp ugt i32 %62, %sub
  br i1 %cmp55, label %for.body.slow_path_clean_crit_edge, label %lor.lhs.false57

for.body.slow_path_clean_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path_clean

lor.lhs.false57:                                  ; preds = %for.body
  %and59 = and i32 %62, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %lor.lhs.false57.lor.lhs.false63_crit_edge, label %land.lhs.true61

lor.lhs.false57.lor.lhs.false63_crit_edge:        ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false63

land.lhs.true61:                                  ; preds = %lor.lhs.false57
  %63 = ptrtoint ptr %frag.0504 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %frag.0504, align 8
  %tobool62.not = icmp eq ptr %64, null
  br i1 %tobool62.not, label %land.lhs.true61.lor.lhs.false63_crit_edge, label %land.lhs.true61.slow_path_clean_crit_edge

land.lhs.true61.slow_path_clean_crit_edge:        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path_clean

land.lhs.true61.lor.lhs.false63_crit_edge:        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %land.lhs.true61.lor.lhs.false63_crit_edge, %lor.lhs.false57.lor.lhs.false63_crit_edge
  %data.i443 = getelementptr inbounds %struct.sk_buff, ptr %frag.0504, i32 0, i32 19
  %65 = ptrtoint ptr %data.i443 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %data.i443, align 4
  %head.i444 = getelementptr inbounds %struct.sk_buff, ptr %frag.0504, i32 0, i32 18
  %67 = ptrtoint ptr %head.i444 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %head.i444, align 8
  %sub.ptr.lhs.cast.i445 = ptrtoint ptr %66 to i32
  %sub.ptr.rhs.cast.i446 = ptrtoint ptr %68 to i32
  %sub.ptr.sub.i447 = sub i32 %sub.ptr.lhs.cast.i445, %sub.ptr.rhs.cast.i446
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i447, i32 %add65)
  %cmp66 = icmp ult i32 %sub.ptr.sub.i447, %add65
  br i1 %cmp66, label %lor.lhs.false63.slow_path_clean_crit_edge, label %if.end69

lor.lhs.false63.slow_path_clean_crit_edge:        ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path_clean

if.end69:                                         ; preds = %lor.lhs.false63
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0504, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #12
  %69 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %70)
  %cmp.i448.not = icmp eq i32 %70, 1
  br i1 %cmp.i448.not, label %do.body, label %if.end69.slow_path_clean_crit_edge

if.end69.slow_path_clean_crit_edge:               ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path_clean

do.body:                                          ; preds = %if.end69
  %71 = getelementptr inbounds %struct.sk_buff, ptr %frag.0504, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %tobool74.not = icmp eq ptr %73, null
  br i1 %tobool74.not, label %do.end84, label %do.body78, !prof !102

do.body78:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/ip_output.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 824, 0\0A.popsection", ""() #12, !srcloc !119
  unreachable

do.end84:                                         ; preds = %do.body
  %74 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %60, align 4
  %tobool85.not = icmp eq ptr %75, null
  br i1 %tobool85.not, label %do.end84.if.end87_crit_edge, label %if.then86

do.end84.if.end87_crit_edge:                      ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then86:                                        ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %71, align 4
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %frag.0504, i32 0, i32 4, i32 0, i32 1
  %77 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @sock_wfree, ptr %destructor, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %do.end84.if.end87_crit_edge
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %frag.0504, i32 0, i32 20
  %78 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %truesize, align 8
  %80 = ptrtoint ptr %truesize88 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %truesize88, align 8
  %sub89 = sub i32 %81, %79
  store i32 %sub89, ptr %truesize88, align 8
  %82 = ptrtoint ptr %frag.0504 to i32
  call void @__asan_load4_noabort(i32 %82)
  %frag.0 = load ptr, ptr %frag.0504, align 8
  %tobool54.not = icmp eq ptr %frag.0, null
  br i1 %tobool54.not, label %if.end87.for.end_crit_edge, label %if.end87.for.body_crit_edge

if.end87.for.body_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end87.for.end_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %if.end87.for.end_crit_edge, %if.end52.for.end_crit_edge
  call void @ip_fraglist_init(ptr noundef %skb, ptr noundef %add.ptr.i.i, i32 noundef %mul, ptr noundef nonnull %iter)
  %83 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr = load ptr, ptr %iter, align 4
  %84 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.promoted = load i32, ptr %7, align 4
  %85 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.promoted514 = load ptr, ptr %6, align 4
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  br label %for.cond91

for.cond91:                                       ; preds = %if.end149, %for.end
  %86 = phi ptr [ %127, %if.end149 ], [ %.promoted514, %for.end ]
  %add.i456512 = phi i32 [ %add.i456511, %if.end149 ], [ %.promoted, %for.end ]
  %87 = phi ptr [ %147, %if.end149 ], [ %.pr, %for.end ]
  %skb.addr.0 = phi ptr [ %87, %if.end149 ], [ %skb, %for.end ]
  %tobool93.not = icmp eq ptr %87, null
  br i1 %tobool93.not, label %for.cond91.if.end124_crit_edge, label %if.then94

for.cond91.if.end124_crit_edge:                   ; preds = %for.cond91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then94:                                        ; preds = %for.cond91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i456512)
  %cmp95 = icmp eq i32 %add.i456512, 0
  %flags99 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 20
  %88 = ptrtoint ptr %flags99 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %flags99, align 4
  %flags103 = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 3, i32 20
  %90 = ptrtoint ptr %flags103 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %flags103, align 4
  %91 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %8, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 15
  %93 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load.i449 = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i = and i16 %bf.load.i449, -1537
  store i16 %bf.clear.i, ptr %ip_summed.i, align 8
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 19
  %94 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %data.i.i, align 4
  %head.i.i450 = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 18
  %96 = ptrtoint ptr %head.i.i450 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %head.i.i450, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %95 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %97 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i451 = trunc i32 %sub.ptr.sub.i.i to i16
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 15, i32 0, i32 19
  %98 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %conv.i.i451, ptr %transport_header.i.i, align 2
  %idx.neg.i.i = sub i32 0, %92
  %add.ptr.i.i452 = getelementptr i8, ptr %95, i32 %idx.neg.i.i
  store ptr %add.ptr.i.i452, ptr %data.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 6
  %99 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %len1.i.i, align 4
  %add.i.i453 = add i32 %100, %92
  store i32 %add.i.i453, ptr %len1.i.i, align 4
  %sub.ptr.lhs.cast.i38.i = ptrtoint ptr %add.ptr.i.i452 to i32
  %sub.ptr.sub.i40.i = sub i32 %sub.ptr.lhs.cast.i38.i, %sub.ptr.rhs.cast.i.i
  %conv.i41.i = trunc i32 %sub.ptr.sub.i40.i to i16
  %network_header.i.i454 = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 15, i32 0, i32 20
  %101 = ptrtoint ptr %network_header.i.i454 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv.i41.i, ptr %network_header.i.i454, align 4
  %conv.i44.i = and i32 %sub.ptr.sub.i40.i, 65535
  %add.ptr.i45.i = getelementptr i8, ptr %97, i32 %conv.i44.i
  %102 = call ptr @memcpy(ptr %add.ptr.i45.i, ptr %86, i32 %92)
  %103 = load ptr, ptr %head.i.i450, align 8
  %104 = load i16, ptr %network_header.i.i454, align 4
  %conv.i.i.i = zext i16 %104 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %103, i32 %conv.i.i.i
  %105 = load i32, ptr %len1.i.i, align 4
  %conv.i455 = trunc i32 %105 to i16
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %106 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv.i455, ptr %tot_len.i, align 2
  tail call fastcc void @ip_copy_metadata(ptr noundef nonnull %87, ptr noundef %skb.addr.0) #12
  %len8.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %107 = ptrtoint ptr %len8.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len8.i, align 4
  %sub.i = sub i32 %108, %92
  %add.i456 = add i32 %sub.i, %add.i456512
  %109 = lshr i32 %add.i456, 3
  %conv10.i = trunc i32 %109 to i16
  %frag_off.i457 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %110 = ptrtoint ptr %frag_off.i457 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv10.i, ptr %frag_off.i457, align 2
  %111 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %87, align 8
  %tobool.not.i458 = icmp eq ptr %112, null
  br i1 %tobool.not.i458, label %if.then94.ip_fraglist_prepare.exit_crit_edge, label %if.then.i

if.then94.ip_fraglist_prepare.exit_crit_edge:     ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_fraglist_prepare.exit

if.then.i:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #14
  %conv13.i = or i16 %conv10.i, 8192
  %113 = ptrtoint ptr %frag_off.i457 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv13.i, ptr %frag_off.i457, align 2
  br label %ip_fraglist_prepare.exit

ip_fraglist_prepare.exit:                         ; preds = %if.then.i, %if.then94.ip_fraglist_prepare.exit_crit_edge
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 7
  %114 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 0, ptr %check.i.i, align 2
  %115 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, 15
  %conv.i46.i = zext i8 %bf.clear.i.i to i32
  %116 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i.i, i32 %conv.i46.i) #12, !srcloc !97
  %asmresult.i.i.i = extractvalue { i32, ptr, i32, i32 } %116, 0
  %117 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i.i) #15, !srcloc !98
  %neg.i.i.i.i = xor i32 %117, -1
  %shr.i.i.i.i = lshr i32 %neg.i.i.i.i, 16
  %conv.i.i.i.i = trunc i32 %shr.i.i.i.i to i16
  %118 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv.i.i.i.i, ptr %check.i.i, align 2
  br i1 %cmp95, label %land.lhs.true106, label %ip_fraglist_prepare.exit.if.end124_crit_edge

ip_fraglist_prepare.exit.if.end124_crit_edge:     ; preds = %ip_fraglist_prepare.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

land.lhs.true106:                                 ; preds = %ip_fraglist_prepare.exit
  %optlen = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 3, i32 12
  %119 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %optlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool110.not = icmp eq i8 %120, 0
  br i1 %tobool110.not, label %land.lhs.true106.if.end124_crit_edge, label %if.then111

land.lhs.true106.if.end124_crit_edge:             ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end124

if.then111:                                       ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #14
  %optlen120 = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 3, i32 12
  %121 = ptrtoint ptr %optlen120 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %120, ptr %optlen120, align 4
  tail call void @ip_options_fragment(ptr noundef nonnull %87) #12
  %122 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 0, ptr %check.i.i, align 2
  %123 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %bf.load.i459 = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i460 = and i8 %bf.load.i459, 15
  %conv.i461 = zext i8 %bf.clear.i460 to i32
  %124 = tail call { i32, ptr, i32, i32 } asm sideeffect "ldr\09$0, [$1], #4\09\09@ ip_fast_csum\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09sub\09$2, $2, #5\09\09\09\09\09\0A\09adds\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A1:\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09ldr\09$3, [$1], #4\09\09\09\09\09\0A\09tst\09$2, #15\09\09\09@ do this carefully\09\0A\09subne\09$2, $2, #1\09\09@ without destroying\09\0A\09bne\091b\09\09\09@ the carry flag\09\0A\09adcs\09$0, $0, $3\09\09\09\09\09\0A\09adc\09$0, $0, #0", "=r,=r,=r,=r,1,2,~{cc},~{memory}"(ptr %add.ptr.i.i.i, i32 %conv.i461) #12, !srcloc !97
  %asmresult.i.i = extractvalue { i32, ptr, i32, i32 } %124, 0
  %125 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %asmresult.i.i) #15, !srcloc !98
  %neg.i.i.i = xor i32 %125, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i.i462 = trunc i32 %shr.i.i.i to i16
  %126 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv.i.i.i462, ptr %check.i.i, align 2
  br label %if.end124

if.end124:                                        ; preds = %if.then111, %land.lhs.true106.if.end124_crit_edge, %ip_fraglist_prepare.exit.if.end124_crit_edge, %for.cond91.if.end124_crit_edge
  %127 = phi ptr [ %add.ptr.i.i.i, %ip_fraglist_prepare.exit.if.end124_crit_edge ], [ %add.ptr.i.i.i, %land.lhs.true106.if.end124_crit_edge ], [ %add.ptr.i.i.i, %if.then111 ], [ %86, %for.cond91.if.end124_crit_edge ]
  %add.i456511 = phi i32 [ %add.i456, %ip_fraglist_prepare.exit.if.end124_crit_edge ], [ %add.i456, %land.lhs.true106.if.end124_crit_edge ], [ %add.i456, %if.then111 ], [ %add.i456512, %for.cond91.if.end124_crit_edge ]
  %128 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 2
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %12, ptr %128, align 8
  %call125 = tail call i32 %output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb.addr.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cond = icmp eq i32 %call125, 0
  br i1 %cond, label %do.body128, label %if.end180

do.body128:                                       ; preds = %if.end124
  tail call fastcc void @local_bh_disable()
  %130 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mib, align 4
  %132 = ptrtoint ptr %131 to i32
  %133 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i463 = and i32 %133, -16384
  %134 = inttoptr i32 %and.i463 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %136
  %137 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx, align 4
  %add135 = add i32 %138, %132
  %139 = inttoptr i32 %add135 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %139, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx136 = getelementptr [37 x i64], ptr %139, i32 0, i32 22
  %140 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %arrayidx136, align 8
  %add137 = add i64 %141, 1
  store i64 %add137, ptr %arrayidx136, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %139, i32 0, i32 1, i32 0, i32 1
  %142 = tail call ptr @llvm.returnaddress(i32 0) #12
  %143 = ptrtoint ptr %142 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %143) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %144 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %145, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br i1 %tobool93.not, label %do.body155, label %if.end149

if.end149:                                        ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %87, align 8
  store ptr null, ptr %87, align 8
  br label %for.cond91

do.body155:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #14
  %148 = ptrtoint ptr %142 to i32
  %149 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %add.i456511, ptr %7, align 4
  %150 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %127, ptr %6, align 4
  tail call fastcc void @local_bh_disable()
  %151 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mib, align 4
  %153 = ptrtoint ptr %152 to i32
  %154 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i464 = and i32 %154, -16384
  %155 = inttoptr i32 %and.i464 to ptr
  %cpu168 = getelementptr inbounds %struct.thread_info, ptr %155, i32 0, i32 3
  %156 = ptrtoint ptr %cpu168 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %cpu168, align 4
  %arrayidx169 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %157
  %158 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx169, align 4
  %add170 = add i32 %159, %153
  %160 = inttoptr i32 %add170 to ptr
  %syncp171 = getelementptr inbounds %struct.ipstats_mib, ptr %160, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp171)
  %arrayidx173 = getelementptr [37 x i64], ptr %160, i32 0, i32 20
  %161 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_load8_noabort(i32 %161)
  %162 = load i64, ptr %arrayidx173, align 8
  %add174 = add i64 %162, 1
  store i64 %add174, ptr %arrayidx173, align 8
  %dep_map.i.i465 = getelementptr inbounds %struct.ipstats_mib, ptr %160, i32 0, i32 1, i32 0, i32 1
  tail call void @lock_release(ptr noundef %dep_map.i.i465, i32 noundef %148) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  br label %cleanup327

if.end180:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #14
  %163 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %add.i456511, ptr %7, align 4
  %164 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %127, ptr %6, align 4
  %165 = ptrtoint ptr %iter to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %87, ptr %iter, align 4
  tail call void @kfree_skb_list(ptr noundef %87) #12
  tail call fastcc void @local_bh_disable()
  %166 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %mib, align 4
  %168 = ptrtoint ptr %167 to i32
  %169 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i467 = and i32 %169, -16384
  %170 = inttoptr i32 %and.i467 to ptr
  %cpu195 = getelementptr inbounds %struct.thread_info, ptr %170, i32 0, i32 3
  %171 = ptrtoint ptr %cpu195 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %cpu195, align 4
  %arrayidx196 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %172
  %173 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx196, align 4
  %add197 = add i32 %174, %168
  %175 = inttoptr i32 %add197 to ptr
  %syncp198 = getelementptr inbounds %struct.ipstats_mib, ptr %175, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp198)
  %arrayidx200 = getelementptr [37 x i64], ptr %175, i32 0, i32 21
  %176 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %arrayidx200, align 8
  %add201 = add i64 %177, 1
  store i64 %add201, ptr %arrayidx200, align 8
  %dep_map.i.i468 = getelementptr inbounds %struct.ipstats_mib, ptr %175, i32 0, i32 1, i32 0, i32 1
  %178 = tail call ptr @llvm.returnaddress(i32 0) #12
  %179 = ptrtoint ptr %178 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i468, i32 noundef %179) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  br label %cleanup327

slow_path_clean:                                  ; preds = %if.end69.slow_path_clean_crit_edge, %lor.lhs.false63.slow_path_clean_crit_edge, %land.lhs.true61.slow_path_clean_crit_edge, %for.body.slow_path_clean_crit_edge
  %180 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %end.i.i, align 4
  %frag_list208 = getelementptr inbounds %struct.skb_shared_info, ptr %181, i32 0, i32 6
  %182 = ptrtoint ptr %frag_list208 to i32
  call void @__asan_load4_noabort(i32 %182)
  %frag2.0505 = load ptr, ptr %frag_list208, align 8
  %tobool210.not506 = icmp eq ptr %frag2.0505, null
  %cmp212507 = icmp eq ptr %frag2.0505, %frag.0504
  %or.cond437508 = select i1 %tobool210.not506, i1 true, i1 %cmp212507
  br i1 %or.cond437508, label %slow_path_clean.slow_path_crit_edge, label %slow_path_clean.if.end215_crit_edge

slow_path_clean.if.end215_crit_edge:              ; preds = %slow_path_clean
  br label %if.end215

slow_path_clean.slow_path_crit_edge:              ; preds = %slow_path_clean
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

if.end215:                                        ; preds = %if.end215.if.end215_crit_edge, %slow_path_clean.if.end215_crit_edge
  %frag2.0509 = phi ptr [ %frag2.0, %if.end215.if.end215_crit_edge ], [ %frag2.0505, %slow_path_clean.if.end215_crit_edge ]
  %183 = getelementptr inbounds %struct.sk_buff, ptr %frag2.0509, i32 0, i32 1
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr null, ptr %183, align 4
  %destructor216 = getelementptr inbounds %struct.sk_buff, ptr %frag2.0509, i32 0, i32 4, i32 0, i32 1
  %185 = ptrtoint ptr %destructor216 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %destructor216, align 4
  %truesize217 = getelementptr inbounds %struct.sk_buff, ptr %frag2.0509, i32 0, i32 20
  %186 = ptrtoint ptr %truesize217 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %truesize217, align 8
  %188 = ptrtoint ptr %truesize88 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %truesize88, align 8
  %add219 = add i32 %189, %187
  store i32 %add219, ptr %truesize88, align 8
  %190 = ptrtoint ptr %frag2.0509 to i32
  call void @__asan_load4_noabort(i32 %190)
  %frag2.0 = load ptr, ptr %frag2.0509, align 8
  %tobool210.not = icmp eq ptr %frag2.0, null
  %cmp212 = icmp eq ptr %frag2.0, %frag.0504
  %or.cond437 = select i1 %tobool210.not, i1 true, i1 %cmp212
  br i1 %or.cond437, label %if.end215.slow_path_crit_edge, label %if.end215.if.end215_crit_edge

if.end215.if.end215_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end215

if.end215.slow_path_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #14
  br label %slow_path

slow_path:                                        ; preds = %if.end215.slow_path_crit_edge, %slow_path_clean.slow_path_crit_edge, %lor.lhs.false47.slow_path_crit_edge, %skb_cloned.exit.slow_path_crit_edge, %lor.lhs.false41.slow_path_crit_edge, %skb_pagelen.exit.slow_path_crit_edge, %if.end.slow_path_crit_edge
  %191 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %flags, align 4
  %193 = trunc i16 %192 to i8
  %194 = lshr i8 %193, 6
  %195 = and i8 %194, 1
  %196 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %head.i.i, align 8
  %198 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i471 = zext i16 %199 to i32
  %add.ptr.i.i.i472 = getelementptr i8, ptr %197, i32 %conv.i.i.i471
  %200 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %195, ptr %state, align 4
  %hlen3.i = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 1
  %201 = ptrtoint ptr %hlen3.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %mul, ptr %hlen3.i, align 4
  %ll_rs4.i = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 2
  %202 = ptrtoint ptr %ll_rs4.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add31, ptr %ll_rs4.i, align 4
  %mtu5.i = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 3
  %203 = ptrtoint ptr %mtu5.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %sub, ptr %mtu5.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %204 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %len.i, align 4
  %sub.i473 = sub i32 %205, %mul
  %left.i = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 4
  %206 = ptrtoint ptr %left.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %sub.i473, ptr %left.i, align 4
  %ptr.i = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 6
  %207 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %mul, ptr %ptr.i, align 4
  %frag_off.i474 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i472, i32 0, i32 4
  %208 = ptrtoint ptr %frag_off.i474 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %frag_off.i474, align 2
  %210 = shl i16 %209, 3
  %shl.i = zext i16 %210 to i32
  %offset.i475 = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 5
  %211 = ptrtoint ptr %offset.i475 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %shl.i, ptr %offset.i475, align 4
  %212 = and i16 %209, 8192
  %not_last_frag.i = getelementptr inbounds %struct.ip_frag_state, ptr %state, i32 0, i32 7
  %213 = ptrtoint ptr %not_last_frag.i to i32
  call void @__asan_store2_noabort(i32 %213)
  store i16 %212, ptr %not_last_frag.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %205, i32 %mul)
  %cmp232.not519 = icmp eq i32 %205, %mul
  br i1 %cmp232.not519, label %slow_path.while.end_crit_edge, label %while.body.lr.ph

slow_path.while.end_crit_edge:                    ; preds = %slow_path
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %slow_path
  %mib258 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  br label %while.body

while.body:                                       ; preds = %cleanup274.while.body_crit_edge, %while.body.lr.ph
  %214 = ptrtoint ptr %offset.i475 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %offset.i475, align 4
  %call239 = call ptr @ip_frag_next(ptr noundef %skb, ptr noundef nonnull %state)
  %cmp.i476 = icmp ugt ptr %call239, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i476, label %if.then241, label %if.end243

if.then241:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %216 = ptrtoint ptr %call239 to i32
  br label %fail

if.end243:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp236 = icmp eq i32 %215, 0
  %217 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %217)
  %218 = load i16, ptr %flags, align 4
  %flags3.i = getelementptr inbounds %struct.sk_buff, ptr %call239, i32 0, i32 3, i32 20
  %219 = ptrtoint ptr %flags3.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %218, ptr %flags3.i, align 4
  br i1 %cmp236, label %if.then.i477, label %if.end243.ip_frag_ipcb.exit_crit_edge

if.end243.ip_frag_ipcb.exit_crit_edge:            ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_frag_ipcb.exit

if.then.i477:                                     ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ip_options_fragment(ptr noundef %skb) #12
  br label %ip_frag_ipcb.exit

ip_frag_ipcb.exit:                                ; preds = %if.then.i477, %if.end243.ip_frag_ipcb.exit_crit_edge
  %220 = getelementptr inbounds %struct.sk_buff, ptr %call239, i32 0, i32 2
  %221 = ptrtoint ptr %220 to i32
  call void @__asan_store8_noabort(i32 %221)
  store i64 %12, ptr %220, align 8
  %call245 = tail call i32 %output(ptr noundef %net, ptr noundef %sk, ptr noundef %call239) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call245)
  %tobool246.not = icmp eq i32 %call245, 0
  br i1 %tobool246.not, label %cleanup274, label %ip_frag_ipcb.exit.fail_crit_edge

ip_frag_ipcb.exit.fail_crit_edge:                 ; preds = %ip_frag_ipcb.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

cleanup274:                                       ; preds = %ip_frag_ipcb.exit
  tail call fastcc void @local_bh_disable()
  %222 = ptrtoint ptr %mib258 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mib258, align 4
  %224 = ptrtoint ptr %223 to i32
  %225 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i478 = and i32 %225, -16384
  %226 = inttoptr i32 %and.i478 to ptr
  %cpu262 = getelementptr inbounds %struct.thread_info, ptr %226, i32 0, i32 3
  %227 = ptrtoint ptr %cpu262 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %cpu262, align 4
  %arrayidx263 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %228
  %229 = ptrtoint ptr %arrayidx263 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %arrayidx263, align 4
  %add264 = add i32 %230, %224
  %231 = inttoptr i32 %add264 to ptr
  %syncp265 = getelementptr inbounds %struct.ipstats_mib, ptr %231, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp265)
  %arrayidx267 = getelementptr [37 x i64], ptr %231, i32 0, i32 22
  %232 = ptrtoint ptr %arrayidx267 to i32
  call void @__asan_load8_noabort(i32 %232)
  %233 = load i64, ptr %arrayidx267, align 8
  %add268 = add i64 %233, 1
  store i64 %add268, ptr %arrayidx267, align 8
  %dep_map.i.i479 = getelementptr inbounds %struct.ipstats_mib, ptr %231, i32 0, i32 1, i32 0, i32 1
  %234 = tail call ptr @llvm.returnaddress(i32 0) #12
  %235 = ptrtoint ptr %234 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i479, i32 noundef %235) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %236 = ptrtoint ptr %syncp265 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %syncp265, align 4
  %inc.i.i.i480 = add i32 %237, 1
  store i32 %inc.i.i.i480, ptr %syncp265, align 4
  tail call fastcc void @local_bh_enable()
  %238 = ptrtoint ptr %left.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %left.i, align 4
  %cmp232.not = icmp eq i32 %239, 0
  br i1 %cmp232.not, label %cleanup274.while.end_crit_edge, label %cleanup274.while.body_crit_edge

cleanup274.while.body_crit_edge:                  ; preds = %cleanup274
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup274.while.end_crit_edge:                   ; preds = %cleanup274
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %cleanup274.while.end_crit_edge, %slow_path.while.end_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #12
  tail call fastcc void @local_bh_disable()
  %mib286 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %240 = ptrtoint ptr %mib286 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mib286, align 4
  %242 = ptrtoint ptr %241 to i32
  %243 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i481 = and i32 %243, -16384
  %244 = inttoptr i32 %and.i481 to ptr
  %cpu290 = getelementptr inbounds %struct.thread_info, ptr %244, i32 0, i32 3
  %245 = ptrtoint ptr %cpu290 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %cpu290, align 4
  %arrayidx291 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %246
  %247 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx291, align 4
  %add292 = add i32 %248, %242
  %249 = inttoptr i32 %add292 to ptr
  %syncp293 = getelementptr inbounds %struct.ipstats_mib, ptr %249, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp293)
  %arrayidx295 = getelementptr [37 x i64], ptr %249, i32 0, i32 20
  %250 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_load8_noabort(i32 %250)
  %251 = load i64, ptr %arrayidx295, align 8
  %add296 = add i64 %251, 1
  store i64 %add296, ptr %arrayidx295, align 8
  %dep_map.i.i482 = getelementptr inbounds %struct.ipstats_mib, ptr %249, i32 0, i32 1, i32 0, i32 1
  %252 = tail call ptr @llvm.returnaddress(i32 0) #12
  %253 = ptrtoint ptr %252 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i482, i32 noundef %253) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  br label %cleanup327

fail:                                             ; preds = %ip_frag_ipcb.exit.fail_crit_edge, %if.then241, %land.lhs.true.fail_crit_edge
  %err.5 = phi i32 [ %call2, %land.lhs.true.fail_crit_edge ], [ %216, %if.then241 ], [ %call245, %ip_frag_ipcb.exit.fail_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  tail call fastcc void @local_bh_disable()
  %mib311 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %254 = ptrtoint ptr %mib311 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %mib311, align 4
  %256 = ptrtoint ptr %255 to i32
  %257 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i484 = and i32 %257, -16384
  %258 = inttoptr i32 %and.i484 to ptr
  %cpu315 = getelementptr inbounds %struct.thread_info, ptr %258, i32 0, i32 3
  %259 = ptrtoint ptr %cpu315 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %cpu315, align 4
  %arrayidx316 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %260
  %261 = ptrtoint ptr %arrayidx316 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx316, align 4
  %add317 = add i32 %262, %256
  %263 = inttoptr i32 %add317 to ptr
  %syncp318 = getelementptr inbounds %struct.ipstats_mib, ptr %263, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp318)
  %arrayidx320 = getelementptr [37 x i64], ptr %263, i32 0, i32 21
  %264 = ptrtoint ptr %arrayidx320 to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %arrayidx320, align 8
  %add321 = add i64 %265, 1
  store i64 %add321, ptr %arrayidx320, align 8
  %dep_map.i.i485 = getelementptr inbounds %struct.ipstats_mib, ptr %263, i32 0, i32 1, i32 0, i32 1
  %266 = tail call ptr @llvm.returnaddress(i32 0) #12
  %267 = ptrtoint ptr %266 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i485, i32 noundef %267) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  br label %cleanup327

cleanup327:                                       ; preds = %fail, %while.end, %if.end180, %do.body155
  %syncp171.sink543 = phi ptr [ %syncp171, %do.body155 ], [ %syncp198, %if.end180 ], [ %syncp318, %fail ], [ %syncp293, %while.end ]
  %retval.2 = phi i32 [ 0, %do.body155 ], [ %call125, %if.end180 ], [ %err.5, %fail ], [ 0, %while.end ]
  %268 = ptrtoint ptr %syncp171.sink543 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %syncp171.sink543, align 4
  %inc.i.i.i466 = add i32 %269, 1
  store i32 %inc.i.i.i466, ptr %syncp171.sink543, align 4
  tail call fastcc void @local_bh_enable()
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %state) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter) #12
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_skb_dst_mtu(ptr noundef %sk, ptr nocapture noundef readonly %skb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %sk, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state.i, align 2
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %and.i = and i32 %shl.i, -4161
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false1

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %pmtudisc.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 11
  %2 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pmtudisc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp.i = icmp ult i8 %3, 3
  br i1 %cmp.i, label %lor.lhs.false1.if.then_crit_edge, label %if.end

lor.lhs.false1.if.then_crit_edge:                 ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false1.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 4
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool3 = icmp ne i16 %6, 0
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %and.i21 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i21)
  %tobool.not.i = icmp eq i32 %and.i21, 0
  br i1 %tobool.not.i, label %if.then.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then.skb_dst.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !99

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.then.skb_dst.exit_crit_edge
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 8
  %and25.i = and i32 %11, -2
  %12 = inttoptr i32 %and25.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 127
  %15 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nd_net.i.i, align 4
  %sysctl_ip_fwd_use_pmtu.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 35, i32 39
  %17 = ptrtoint ptr %sysctl_ip_fwd_use_pmtu.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sysctl_ip_fwd_use_pmtu.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i22 = icmp eq i8 %18, 0
  br i1 %tobool.not.i22, label %lor.lhs.false.i, label %skb_dst.exit.if.then.i_crit_edge

skb_dst.exit.if.then.i_crit_edge:                 ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %skb_dst.exit
  %rt_mtu_locked.i.i = getelementptr inbounds %struct.rtable, ptr %12, i32 0, i32 9
  %19 = ptrtoint ptr %rt_mtu_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i.i = load i32, ptr %rt_mtu_locked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %ip_mtu_locked.exit.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

ip_mtu_locked.exit.i:                             ; preds = %lor.lhs.false.i
  %_metrics.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 2
  %20 = ptrtoint ptr %_metrics.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %21, -4
  %22 = inttoptr i32 %and.i.i.i.i.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not.i = icmp eq i32 %25, 0
  %26 = and i1 %tobool3, %tobool2.not.i
  br i1 %26, label %ip_mtu_locked.exit.i.if.end9.i_crit_edge, label %ip_mtu_locked.exit.i.if.then.i_crit_edge

ip_mtu_locked.exit.i.if.then.i_crit_edge:         ; preds = %ip_mtu_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

ip_mtu_locked.exit.i.if.end9.i_crit_edge:         ; preds = %ip_mtu_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

if.then.i:                                        ; preds = %ip_mtu_locked.exit.i.if.then.i_crit_edge, %lor.lhs.false.i.if.then.i_crit_edge, %skb_dst.exit.if.then.i_crit_edge
  %rt_pmtu.i = getelementptr inbounds %struct.rtable, ptr %12, i32 0, i32 9
  %27 = ptrtoint ptr %rt_pmtu.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load.i = load i32, ptr %rt_pmtu.i, align 4
  %bf.clear.i = and i32 %bf.load.i, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i)
  %tobool5.not.i = icmp eq i32 %bf.clear.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end9.i_crit_edge, label %land.lhs.true.i24

if.then.i.if.end9.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

land.lhs.true.i24:                                ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %expires.i = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 3
  %29 = ptrtoint ptr %expires.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %expires.i, align 4
  %sub.i = sub i32 %28, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i23 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i23, label %land.lhs.true.i24.out.i_crit_edge, label %land.lhs.true.i24.if.end9.i_crit_edge

land.lhs.true.i24.if.end9.i_crit_edge:            ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9.i

land.lhs.true.i24.out.i_crit_edge:                ; preds = %land.lhs.true.i24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end9.i:                                        ; preds = %land.lhs.true.i24.if.end9.i_crit_edge, %if.then.i.if.end9.i_crit_edge, %ip_mtu_locked.exit.i.if.end9.i_crit_edge
  %_metrics.i.i = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 2
  %31 = ptrtoint ptr %_metrics.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %_metrics.i.i, align 4
  %and.i.i = and i32 %32, -4
  %33 = inttoptr i32 %and.i.i to ptr
  %arrayidx.i.i = getelementptr i32, ptr %33, i32 1
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool11.not.i = icmp eq i32 %35, 0
  br i1 %tobool11.not.i, label %do.end.i25, label %if.end9.i.out.i_crit_edge

if.end9.i.out.i_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.end.i25:                                       ; preds = %if.end9.i
  %mtu16.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 20
  %36 = ptrtoint ptr %mtu16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %mtu16.i, align 4
  %rt_mtu_locked.i50.i = getelementptr inbounds %struct.rtable, ptr %12, i32 0, i32 9
  %38 = ptrtoint ptr %rt_mtu_locked.i50.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load.i51.i = load i32, ptr %rt_mtu_locked.i50.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i51.i)
  %tobool.not.i52.i = icmp sgt i32 %bf.load.i51.i, -1
  br i1 %tobool.not.i52.i, label %ip_mtu_locked.exit58.i, label %do.end.i25.if.then21.i_crit_edge

do.end.i25.if.then21.i_crit_edge:                 ; preds = %do.end.i25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

ip_mtu_locked.exit58.i:                           ; preds = %do.end.i25
  %39 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %33, align 4
  %41 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool18.not.i = icmp eq i32 %41, 0
  br i1 %tobool18.not.i, label %ip_mtu_locked.exit58.i.out.i_crit_edge, label %ip_mtu_locked.exit58.i.if.then21.i_crit_edge, !prof !102

ip_mtu_locked.exit58.i.if.then21.i_crit_edge:     ; preds = %ip_mtu_locked.exit58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then21.i

ip_mtu_locked.exit58.i.out.i_crit_edge:           ; preds = %ip_mtu_locked.exit58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then21.i:                                      ; preds = %ip_mtu_locked.exit58.i.if.then21.i_crit_edge, %do.end.i25.if.then21.i_crit_edge
  %rt_uses_gateway.i = getelementptr inbounds %struct.rtable, ptr %12, i32 0, i32 5
  %42 = ptrtoint ptr %rt_uses_gateway.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rt_uses_gateway.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool23.not.i = icmp eq i8 %43, 0
  %44 = tail call i32 @llvm.umin.i32(i32 %37, i32 576) #12
  %spec.select.i = select i1 %tobool23.not.i, i32 %37, i32 %44
  br label %out.i

out.i:                                            ; preds = %if.then21.i, %ip_mtu_locked.exit58.i.out.i_crit_edge, %if.end9.i.out.i_crit_edge, %land.lhs.true.i24.out.i_crit_edge
  %mtu.0.i = phi i32 [ %bf.clear.i, %land.lhs.true.i24.out.i_crit_edge ], [ %35, %if.end9.i.out.i_crit_edge ], [ %37, %ip_mtu_locked.exit58.i.out.i_crit_edge ], [ %spec.select.i, %if.then21.i ]
  %45 = tail call i32 @llvm.umin.i32(i32 %mtu.0.i, i32 65535) #12
  %lwtstate.i = getelementptr inbounds %struct.dst_entry, ptr %12, i32 0, i32 13
  %46 = ptrtoint ptr %lwtstate.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lwtstate.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %47, null
  br i1 %tobool.not.i.i.i, label %out.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i.i

out.i.if.end.i.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i.i:                              ; preds = %out.i
  %flags.i.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %flags.i.i.i, align 2
  %50 = and i16 %49, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %land.lhs.true.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

land.lhs.true.i.i.i.if.end.i.i_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %land.lhs.true.i.i.i
  %headroom.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %47, i32 0, i32 2
  %52 = ptrtoint ptr %headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %headroom.i.i, align 4
  %conv.i.i = zext i16 %53 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv.i.i)
  %cmp.i.i = icmp ugt i32 %45, %conv.i.i
  br i1 %cmp.i.i, label %land.lhs.true.i.i.ip_dst_mtu_maybe_forward.exit_crit_edge, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i.ip_dst_mtu_maybe_forward.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_dst_mtu_maybe_forward.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %land.lhs.true.i.i.i.if.end.i.i_crit_edge, %out.i.if.end.i.i_crit_edge
  br label %ip_dst_mtu_maybe_forward.exit

ip_dst_mtu_maybe_forward.exit:                    ; preds = %if.end.i.i, %land.lhs.true.i.i.ip_dst_mtu_maybe_forward.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.i.i ], [ %conv.i.i, %land.lhs.true.i.i.ip_dst_mtu_maybe_forward.exit_crit_edge ]
  %sub34.i = sub nsw i32 %45, %retval.0.i.i
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 8
  %and.i26 = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i26)
  %tobool.not.i27 = icmp eq i32 %and.i26, 0
  br i1 %tobool.not.i27, label %if.end.skb_dst.exit36_crit_edge, label %land.lhs.true.i30

if.end.skb_dst.exit36_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit36

land.lhs.true.i30:                                ; preds = %if.end
  %call.i28 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool1.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool1.not.i29, label %land.rhs.i33, label %land.lhs.true.i30.skb_dst.exit36_crit_edge

land.lhs.true.i30.skb_dst.exit36_crit_edge:       ; preds = %land.lhs.true.i30
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit36

land.rhs.i33:                                     ; preds = %land.lhs.true.i30
  %call2.i31 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i31)
  %tobool3.not.i32 = icmp eq i32 %call2.i31, 0
  br i1 %tobool3.not.i32, label %do.end.i34, label %land.rhs.i33.skb_dst.exit36_crit_edge, !prof !99

land.rhs.i33.skb_dst.exit36_crit_edge:            ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit36

do.end.i34:                                       ; preds = %land.rhs.i33
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit36

skb_dst.exit36:                                   ; preds = %do.end.i34, %land.rhs.i33.skb_dst.exit36_crit_edge, %land.lhs.true.i30.skb_dst.exit36_crit_edge, %if.end.skb_dst.exit36_crit_edge
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %54, align 8
  %and25.i35 = and i32 %58, -2
  %59 = inttoptr i32 %and25.i35 to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %mtu8 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 20
  %62 = ptrtoint ptr %mtu8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %mtu8, align 4
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 65535)
  %and.i37 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool.not.i38, label %skb_dst.exit36.skb_dst.exit47_crit_edge, label %land.lhs.true.i41

skb_dst.exit36.skb_dst.exit47_crit_edge:          ; preds = %skb_dst.exit36
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit47

land.lhs.true.i41:                                ; preds = %skb_dst.exit36
  %call.i39 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool1.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool1.not.i40, label %land.rhs.i44, label %land.lhs.true.i41.skb_dst.exit47_crit_edge

land.lhs.true.i41.skb_dst.exit47_crit_edge:       ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit47

land.rhs.i44:                                     ; preds = %land.lhs.true.i41
  %call2.i42 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i42)
  %tobool3.not.i43 = icmp eq i32 %call2.i42, 0
  br i1 %tobool3.not.i43, label %do.end.i45, label %land.rhs.i44.skb_dst.exit47_crit_edge, !prof !99

land.rhs.i44.skb_dst.exit47_crit_edge:            ; preds = %land.rhs.i44
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit47

do.end.i45:                                       ; preds = %land.rhs.i44
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit47

skb_dst.exit47:                                   ; preds = %do.end.i45, %land.rhs.i44.skb_dst.exit47_crit_edge, %land.lhs.true.i41.skb_dst.exit47_crit_edge, %skb_dst.exit36.skb_dst.exit47_crit_edge
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %54, align 8
  %and25.i46 = and i32 %66, -2
  %67 = inttoptr i32 %and25.i46 to ptr
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %67, i32 0, i32 13
  %68 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %lwtstate, align 4
  %tobool.not.i.i48 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i48, label %skb_dst.exit47.if.end.i_crit_edge, label %land.lhs.true.i.i49

skb_dst.exit47.if.end.i_crit_edge:                ; preds = %skb_dst.exit47
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i.i49:                              ; preds = %skb_dst.exit47
  %flags.i.i = getelementptr inbounds %struct.lwtunnel_state, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %flags.i.i, align 2
  %72 = and i16 %71, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %land.lhs.true.i.i49.if.end.i_crit_edge, label %land.lhs.true.i52

land.lhs.true.i.i49.if.end.i_crit_edge:           ; preds = %land.lhs.true.i.i49
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i52:                                ; preds = %land.lhs.true.i.i49
  %headroom.i = getelementptr inbounds %struct.lwtunnel_state, ptr %69, i32 0, i32 2
  %74 = ptrtoint ptr %headroom.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %headroom.i, align 4
  %conv.i50 = zext i16 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %conv.i50)
  %cmp.i51 = icmp ugt i32 %64, %conv.i50
  br i1 %cmp.i51, label %land.lhs.true.i52.lwtunnel_headroom.exit_crit_edge, label %land.lhs.true.i52.if.end.i_crit_edge

land.lhs.true.i52.if.end.i_crit_edge:             ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

land.lhs.true.i52.lwtunnel_headroom.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #14
  br label %lwtunnel_headroom.exit

if.end.i:                                         ; preds = %land.lhs.true.i52.if.end.i_crit_edge, %land.lhs.true.i.i49.if.end.i_crit_edge, %skb_dst.exit47.if.end.i_crit_edge
  br label %lwtunnel_headroom.exit

lwtunnel_headroom.exit:                           ; preds = %if.end.i, %land.lhs.true.i52.lwtunnel_headroom.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %conv.i50, %land.lhs.true.i52.lwtunnel_headroom.exit_crit_edge ]
  %sub = sub nsw i32 %64, %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %lwtunnel_headroom.exit, %ip_dst_mtu_maybe_forward.exit
  %retval.0 = phi i32 [ %sub34.i, %ip_dst_mtu_maybe_forward.exit ], [ %sub, %lwtunnel_headroom.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_wfree(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_options_fragment(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_generic_getfrag(ptr noundef %from, ptr noundef %to, i32 %offset, i32 noundef %len, i32 noundef %odd, ptr nocapture noundef %skb) #0 align 64 {
entry:
  %csum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %0 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %ip_summed, align 8
  %1 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %1)
  %cmp = icmp eq i16 %1, 1536
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %from, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %if.then
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !102

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__check_object_size(ptr noundef %to, i32 noundef %len, i1 noundef zeroext false) #12
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %to, i32 noundef %len, ptr noundef %msg_iter) #12
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %len)
  %cmp.i = icmp eq i32 %retval.0.i.i, %len
  br i1 %cmp.i, label %copy_from_iter.exit.i.cleanup9_crit_edge, label %copy_from_iter_full.exit, !prof !102

copy_from_iter.exit.i.cleanup9_crit_edge:         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup9

copy_from_iter_full.exit:                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i) #12
  br label %cleanup9

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %csum) #12
  %2 = ptrtoint ptr %csum to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %csum, align 4
  %msg_iter3 = getelementptr inbounds %struct.msghdr, ptr %from, i32 0, i32 2
  %call.i = call i32 @csum_and_copy_from_iter(ptr noundef %to, i32 noundef %len, ptr noundef nonnull %csum, ptr noundef %msg_iter3) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %len)
  %cmp.i15 = icmp eq i32 %call.i, %len
  br i1 %cmp.i15, label %if.end6, label %cleanup9.critedge, !prof !102

if.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %6 = ptrtoint ptr %csum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %csum, align 4
  %and.i.i = and i32 %odd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 24) #12
  %retval.0.i.i17 = select i1 %tobool.not.i.i, i32 %7, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i17, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i17)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i17
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add1.i.i, ptr %3, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum) #12
  br label %cleanup9

cleanup9.critedge:                                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  call void @iov_iter_revert(ptr noundef %msg_iter3, i32 noundef %call.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %csum) #12
  br label %cleanup9

cleanup9:                                         ; preds = %cleanup9.critedge, %if.end6, %copy_from_iter_full.exit, %copy_from_iter.exit.i.cleanup9_crit_edge
  %retval.1 = phi i32 [ -14, %copy_from_iter_full.exit ], [ -14, %cleanup9.critedge ], [ 0, %if.end6 ], [ 0, %copy_from_iter.exit.i.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_append_data(ptr noundef %sk, ptr nocapture noundef readonly %fl4, ptr nocapture noundef readonly %getfrag, ptr noundef %from, i32 noundef %length, i32 noundef %transhdrlen, ptr nocapture noundef readonly %ipc, ptr nocapture noundef %rtp, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %0 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i.not = icmp eq ptr %1, %sk_write_queue
  br i1 %cmp.i.not, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %cork = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %call4 = tail call fastcc i32 @ip_setup_cork(ptr noundef %sk, ptr noundef %cork, ptr noundef %ipc, ptr noundef %rtp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %transhdrlen.addr.0 = phi i32 [ %transhdrlen, %if.then3.if.end8_crit_edge ], [ 0, %if.end.if.end8_crit_edge ]
  %cork10 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %sk_allocation.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %2 = ptrtoint ptr %sk_allocation.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sk_allocation.i, align 8
  %and.i = and i32 %3, 132224
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %and.i)
  %cmp.i23 = icmp eq i32 %and.i, 1152
  br i1 %cmp.i23, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %4 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task.i, align 8
  %task_frag.i = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 180
  br label %sk_page_frag.exit

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %sk_frag.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 37
  br label %sk_page_frag.exit

sk_page_frag.exit:                                ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %task_frag.i, %if.then.i ], [ %sk_frag.i, %if.end.i ]
  %call13 = tail call fastcc i32 @__ip_append_data(ptr noundef %sk, ptr noundef %fl4, ptr noundef %sk_write_queue, ptr noundef %cork10, ptr noundef %retval.0.i, ptr noundef %getfrag, ptr noundef %from, i32 noundef %length, i32 noundef %transhdrlen.addr.0, i32 noundef %flags)
  br label %cleanup

cleanup:                                          ; preds = %sk_page_frag.exit, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %sk_page_frag.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_setup_cork(ptr noundef %sk, ptr noundef %cork, ptr nocapture noundef readonly %ipc, ptr nocapture noundef %rtp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rtp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rtp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !99

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %opt4 = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 3
  %2 = ptrtoint ptr %opt4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %opt4, align 8
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end.if.end28_crit_edge, label %if.then6

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.then6:                                         ; preds = %if.end
  %opt7 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 2
  %4 = ptrtoint ptr %opt7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %opt7, align 8
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.then9, label %if.then6.if.end23_crit_edge

if.then6.if.end23_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then9:                                         ; preds = %if.then6
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %6 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sk_allocation, align 8
  %and.i.i = and i32 %7, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %if.then9.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !102

if.then9.kmalloc.exit_crit_edge:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %if.then9
  %and2.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and6.i.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %if.then9.kmalloc.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.then9.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i, i32 7
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef %7, i32 noundef 56) #16
  %10 = ptrtoint ptr %opt7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i, ptr %opt7, align 8
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %kmalloc.exit.cleanup_crit_edge, label %kmalloc.exit.if.end23_crit_edge, !prof !99

kmalloc.exit.if.end23_crit_edge:                  ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end23:                                         ; preds = %kmalloc.exit.if.end23_crit_edge, %if.then6.if.end23_crit_edge
  %11 = ptrtoint ptr %opt7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %opt7, align 8
  %opt25 = getelementptr inbounds %struct.ip_options_rcu, ptr %3, i32 0, i32 1
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %3, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %optlen, align 4
  %conv = zext i8 %14 to i32
  %add = add nuw nsw i32 %conv, 16
  %15 = call ptr @memcpy(ptr %12, ptr %opt25, i32 %add)
  %16 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cork, align 8
  %or = or i32 %17, 1
  store i32 %or, ptr %cork, align 8
  %addr = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %addr, align 8
  %addr27 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 1
  %20 = ptrtoint ptr %addr27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %addr27, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end23, %if.end.if.end28_crit_edge
  %pmtudisc.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 11
  %21 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pmtudisc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp.i = icmp ult i8 %22, 3
  br i1 %cmp.i, label %cond.true, label %do.end

cond.true:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mtu.i, align 4
  %call.i = tail call i32 %26(ptr noundef nonnull %1) #12
  br label %cond.end

do.end:                                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 20
  %29 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %mtu, align 4
  br label %cond.end

cond.end:                                         ; preds = %do.end, %cond.true
  %cond = phi i32 [ %call.i, %cond.true ], [ %30, %do.end ]
  %fragsize = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 3
  %31 = ptrtoint ptr %fragsize to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond, ptr %fragsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67, i32 %cond)
  %cmp.i82 = icmp ugt i32 %cond, 67
  br i1 %cmp.i82, label %if.end36, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end36:                                         ; preds = %cond.end
  %gso_size = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 7
  %32 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %gso_size, align 2
  %gso_size37 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 10
  %34 = ptrtoint ptr %gso_size37 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %gso_size37, align 2
  %dst39 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 5
  %35 = ptrtoint ptr %dst39 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %1, ptr %dst39, align 4
  %36 = ptrtoint ptr %rtp to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rtp, align 4
  %length = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 4
  %37 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %length, align 8
  %ttl = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 4
  %38 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ttl, align 4
  %ttl40 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 7
  %40 = ptrtoint ptr %ttl40 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %ttl40, align 1
  %tos = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 5
  %41 = ptrtoint ptr %tos to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %tos, align 2
  %tos41 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 8
  %43 = ptrtoint ptr %tos41 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %tos41, align 2
  %mark = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc, i32 0, i32 1
  %44 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mark, align 8
  %mark42 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 12
  %46 = ptrtoint ptr %mark42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %mark42, align 8
  %priority = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 6
  %47 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %priority, align 8
  %priority43 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 9
  %49 = ptrtoint ptr %priority43 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %priority43, align 4
  %50 = ptrtoint ptr %ipc to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %ipc, align 8
  %transmit_time45 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 11
  %52 = ptrtoint ptr %transmit_time45 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %51, ptr %transmit_time45, align 8
  %tx_flags = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 6
  %53 = ptrtoint ptr %tx_flags to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %tx_flags, align 8
  %tsflags = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc, i32 0, i32 2
  %54 = ptrtoint ptr %tsflags to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tsflags, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i.i = icmp eq i16 %55, 0
  br i1 %tobool.not.i.i, label %if.end36.if.end10.i.i_crit_edge, label %if.then.i.i, !prof !102

if.end36.if.end10.i.i_crit_edge:                  ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i.i

if.then.i.i:                                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__sock_tx_timestamp(i16 noundef zeroext %55, ptr noundef %tx_flags) #12
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then.i.i, %if.end36.if.end10.i.i_crit_edge
  %56 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %56, align 4
  %59 = and i32 %58, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.i.not.i.i = icmp eq i32 %59, 0
  br i1 %tobool.i.not.i.i, label %if.end10.i.i.cleanup_crit_edge, label %if.then18.i.i, !prof !102

if.end10.i.i.cleanup_crit_edge:                   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tx_flags, align 1
  %62 = or i8 %61, 16
  store i8 %62, ptr %tx_flags, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then18.i.i, %if.end10.i.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %kmalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ -105, %kmalloc.exit.cleanup_crit_edge ], [ -101, %cond.end.cleanup_crit_edge ], [ 0, %if.end10.i.i.cleanup_crit_edge ], [ 0, %if.then18.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ip_append_data(ptr noundef %sk, ptr nocapture noundef readonly %fl4, ptr noundef %queue, ptr nocapture noundef %cork, ptr noundef %pfrag, ptr nocapture noundef readonly %getfrag, ptr noundef %from, i32 noundef %length, i32 noundef %transhdrlen, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %opt1 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 2
  %0 = ptrtoint ptr %opt1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opt1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #12
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !120
  %dst = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 5
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %queue, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %6, %queue
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %6
  %tobool.not = icmp eq ptr %spec.store.select.i, null
  br i1 %tobool.not, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %header_len = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 9
  %7 = ptrtoint ptr %header_len to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %header_len, align 4
  %conv = zext i16 %8 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %gso_size = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 10
  %9 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %gso_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool5.not = icmp eq i16 %10, 0
  br i1 %tobool5.not, label %cond.false7, label %cond.end.cond.end8_crit_edge

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %fragsize = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 3
  %11 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fragsize, align 4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.end.cond.end8_crit_edge
  %cond9 = phi i32 [ %12, %cond.false7 ], [ 65535, %cond.end.cond.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool11 = icmp ne i16 %10, 0
  %tx_flags = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 6
  %13 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tx_flags, align 8
  %15 = and i8 %14, 66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %cond.end8.if.end_crit_edge, label %land.lhs.true

cond.end8.if.end_crit_edge:                       ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %cond.end8
  %sk_tsflags = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 65
  %16 = ptrtoint ptr %sk_tsflags to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %sk_tsflags, align 8
  %18 = and i16 %17, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool17.not = icmp eq i16 %18, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %sk_tskey = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 67
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_tskey, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !121
  tail call void @llvm.prefetch.p0(ptr %sk_tskey, i32 1, i32 3, i32 1) #12
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_tskey, ptr %sk_tskey, i32 1, ptr elementtype(i32) %sk_tskey) #12, !srcloc !122
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !123
  %sub = add i32 %asmresult.i.i.i.i, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %cond.end8.if.end_crit_edge
  %tskey.0 = phi i32 [ %sub, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %cond.end8.if.end_crit_edge ]
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hard_header_len, align 2
  %conv20 = zext i16 %23 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 21
  %24 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %needed_headroom, align 8
  %conv23 = zext i16 %25 to i32
  %add = add nuw nsw i32 %conv23, %conv20
  %and24 = and i32 %add, 131056
  %add25 = add nuw nsw i32 %and24, 16
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %if.end.cond.end30_crit_edge, label %cond.true27

if.end.cond.end30_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end30

cond.true27:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %optlen = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %optlen, align 4
  %conv28 = zext i8 %27 to i32
  br label %cond.end30

cond.end30:                                       ; preds = %cond.true27, %if.end.cond.end30_crit_edge
  %cond31 = phi i32 [ %conv28, %cond.true27 ], [ 0, %if.end.cond.end30_crit_edge ]
  %add32 = add nuw nsw i32 %cond31, 20
  %sub33 = sub i32 %cond9, %add32
  %and34 = and i32 %sub33, -8
  %add35 = add i32 %and34, %add32
  %pmtudisc.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 11
  %28 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pmtudisc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %cmp.i623 = icmp ult i8 %29, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %29)
  %cmp5.i = icmp eq i8 %29, 5
  %spec.select.i = or i1 %cmp.i623, %cmp5.i
  %spec.select = select i1 %spec.select.i, i32 65535, i32 %cond9
  %length42 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 4
  %30 = ptrtoint ptr %length42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length42, align 8
  %add43 = add i32 %31, %length
  %sub44 = sub i32 %spec.select, %add32
  call void @__sanitizer_cov_trace_cmp4(i32 %add43, i32 %sub44)
  %cmp = icmp ugt i32 %add43, %sub44
  br i1 %cmp, label %if.then46, label %if.end56

if.then46:                                        ; preds = %cond.end30
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %32 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %daddr, align 4
  %34 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %34, align 4
  br i1 %tobool26.not, label %if.then46.cond.end53_crit_edge, label %cond.true49

if.then46.cond.end53_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end53

cond.true49:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %optlen50 = getelementptr inbounds %struct.ip_options, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %optlen50 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %optlen50, align 4
  %conv51 = zext i8 %38 to i32
  br label %cond.end53

cond.end53:                                       ; preds = %cond.true49, %if.then46.cond.end53_crit_edge
  %cond54 = phi i32 [ %conv51, %cond.true49 ], [ 0, %if.then46.cond.end53_crit_edge ]
  %sub55 = sub i32 %cond9, %cond54
  tail call void @ip_local_error(ptr noundef %sk, i32 noundef 90, i32 noundef %33, i16 noundef zeroext %36, i32 noundef %sub55) #12
  br label %cleanup378

if.end56:                                         ; preds = %cond.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transhdrlen)
  %tobool57.not = icmp eq i32 %transhdrlen, 0
  %add59 = add i32 %add32, %length
  call void @__sanitizer_cov_trace_cmp4(i32 %add59, i32 %cond9)
  %cmp60.not = icmp ugt i32 %add59, %cond9
  %or.cond = select i1 %tobool57.not, i1 true, i1 %cmp60.not
  br i1 %or.cond, label %if.end56.if.end82_crit_edge, label %land.lhs.true62

if.end56.if.end82_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true62:                                  ; preds = %if.end56
  %features = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 23
  %39 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %features, align 16
  %and65 = and i64 %40, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and65)
  %tobool66.not = icmp eq i64 %and65, 0
  br i1 %tobool66.not, label %land.lhs.true62.if.end82_crit_edge, label %land.lhs.true67

land.lhs.true62.if.end82_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true67:                                  ; preds = %land.lhs.true62
  %and68 = and i32 %flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %land.lhs.true67.land.lhs.true73_crit_edge, label %lor.lhs.false

land.lhs.true67.land.lhs.true73_crit_edge:        ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true73

lor.lhs.false:                                    ; preds = %land.lhs.true67
  %41 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %gso_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool72.not = icmp eq i16 %42, 0
  br i1 %tobool72.not, label %lor.lhs.false.if.end82_crit_edge, label %lor.lhs.false.land.lhs.true73_crit_edge

lor.lhs.false.land.lhs.true73_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true73

lor.lhs.false.if.end82_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true73:                                  ; preds = %lor.lhs.false.land.lhs.true73_crit_edge, %land.lhs.true67.land.lhs.true73_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool74.not = icmp ne i32 %cond, 0
  %and79 = and i64 %40, 2251799813685248
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and79)
  %tobool80.not = icmp eq i64 %and79, 0
  %or.cond758 = select i1 %tobool74.not, i1 %tobool80.not, i1 false
  %not.or.cond758 = xor i1 %or.cond758, true
  %spec.select760 = select i1 %or.cond758, i32 0, i32 3
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true73, %lor.lhs.false.if.end82_crit_edge, %land.lhs.true62.if.end82_crit_edge, %if.end56.if.end82_crit_edge
  %cmp106 = phi i1 [ false, %lor.lhs.false.if.end82_crit_edge ], [ false, %land.lhs.true62.if.end82_crit_edge ], [ false, %if.end56.if.end82_crit_edge ], [ %not.or.cond758, %land.lhs.true73 ]
  %csummode.0 = phi i32 [ 0, %lor.lhs.false.if.end82_crit_edge ], [ 0, %land.lhs.true62.if.end82_crit_edge ], [ 0, %if.end56.if.end82_crit_edge ], [ %spec.select760, %land.lhs.true73 ]
  %and83 = and i32 %flags, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %tobool86.not = icmp eq i32 %length, 0
  %or.cond618 = or i1 %tobool86.not, %tobool84.not
  br i1 %or.cond618, label %if.end82.if.end110_crit_edge, label %land.lhs.true87

if.end82.if.end110_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

land.lhs.true87:                                  ; preds = %if.end82
  %43 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 13
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %43, align 4
  %46 = and i32 %45, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.i.not = icmp eq i32 %46, 0
  br i1 %tobool.i.not, label %land.lhs.true87.if.end110_crit_edge, label %if.then90

land.lhs.true87.if.end110_crit_edge:              ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then90:                                        ; preds = %land.lhs.true87
  br i1 %tobool.not, label %skb_zcopy.exit.thread, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then90
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 17
  %47 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 8
  %51 = and i8 %50, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.not.i = icmp eq i8 %51, 0
  br i1 %tobool1.not.i, label %land.rhs.i.skb_zcopy.exit_crit_edge, label %cond.true.i

land.rhs.i.skb_zcopy.exit_crit_edge:              ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_zcopy.exit

cond.true.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %destructor_arg.i = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 11
  %52 = ptrtoint ptr %destructor_arg.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %destructor_arg.i, align 4
  br label %skb_zcopy.exit

skb_zcopy.exit:                                   ; preds = %cond.true.i, %land.rhs.i.skb_zcopy.exit_crit_edge
  %cond.i = phi ptr [ %53, %cond.true.i ], [ null, %land.rhs.i.skb_zcopy.exit_crit_edge ]
  %call92 = tail call ptr @msg_zerocopy_realloc(ptr noundef %sk, i32 noundef %length, ptr noundef %cond.i) #12
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %skb_zcopy.exit.cleanup378_crit_edge, label %land.rhs.i627.critedge

skb_zcopy.exit.cleanup378_crit_edge:              ; preds = %skb_zcopy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

skb_zcopy.exit.thread:                            ; preds = %if.then90
  %call92724 = tail call ptr @msg_zerocopy_realloc(ptr noundef %sk, i32 noundef %length, ptr noundef null) #12
  %tobool93.not725 = icmp eq ptr %call92724, null
  br i1 %tobool93.not725, label %skb_zcopy.exit.thread.cleanup378_crit_edge, label %skb_zcopy.exit.thread.skb_zcopy.exit631_crit_edge

skb_zcopy.exit.thread.skb_zcopy.exit631_crit_edge: ; preds = %skb_zcopy.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_zcopy.exit631

skb_zcopy.exit.thread.cleanup378_crit_edge:       ; preds = %skb_zcopy.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

land.rhs.i627.critedge:                           ; preds = %skb_zcopy.exit
  %54 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %end.i.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 8
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool1.not.i626 = icmp eq i8 %58, 0
  br i1 %tobool1.not.i626, label %land.rhs.i627.critedge.skb_zcopy.exit631_crit_edge, label %cond.true.i629

land.rhs.i627.critedge.skb_zcopy.exit631_crit_edge: ; preds = %land.rhs.i627.critedge
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_zcopy.exit631

cond.true.i629:                                   ; preds = %land.rhs.i627.critedge
  call void @__sanitizer_cov_trace_pc() #14
  %destructor_arg.i628 = getelementptr inbounds %struct.skb_shared_info, ptr %55, i32 0, i32 11
  %59 = ptrtoint ptr %destructor_arg.i628 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %destructor_arg.i628, align 4
  br label %skb_zcopy.exit631

skb_zcopy.exit631:                                ; preds = %cond.true.i629, %land.rhs.i627.critedge.skb_zcopy.exit631_crit_edge, %skb_zcopy.exit.thread.skb_zcopy.exit631_crit_edge
  %call92726728 = phi ptr [ %call92, %cond.true.i629 ], [ %call92, %land.rhs.i627.critedge.skb_zcopy.exit631_crit_edge ], [ %call92724, %skb_zcopy.exit.thread.skb_zcopy.exit631_crit_edge ]
  %cond.i630 = phi ptr [ %60, %cond.true.i629 ], [ null, %land.rhs.i627.critedge.skb_zcopy.exit631_crit_edge ], [ null, %skb_zcopy.exit.thread.skb_zcopy.exit631_crit_edge ]
  %tobool97.not = icmp eq ptr %cond.i630, null
  %61 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %4, align 4
  %features102 = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 23
  %63 = ptrtoint ptr %features102 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %features102, align 16
  %and103 = and i64 %64, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and103)
  %tobool104.not = icmp ne i64 %and103, 0
  %65 = and i1 %cmp106, %tobool104.not
  br i1 %65, label %skb_zcopy.exit631.if.end110_crit_edge, label %if.else

skb_zcopy.exit631.if.end110_crit_edge:            ; preds = %skb_zcopy.exit631
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.else:                                          ; preds = %skb_zcopy.exit631
  %zerocopy = getelementptr inbounds %struct.ubuf_info, ptr %call92726728, i32 0, i32 1, i32 0, i32 2
  %66 = ptrtoint ptr %zerocopy to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %zerocopy, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %zerocopy, align 2
  br i1 %tobool.not, label %if.else.if.end110_crit_edge, label %land.rhs.i.i

if.else.if.end110_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

land.rhs.i.i:                                     ; preds = %if.else
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 17
  %67 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %end.i.i.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %68, align 8
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool1.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i.if.then.i_crit_edge, label %skb_zcopy.exit.i

land.rhs.i.i.if.then.i_crit_edge:                 ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

skb_zcopy.exit.i:                                 ; preds = %land.rhs.i.i
  %destructor_arg.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %68, i32 0, i32 11
  %72 = ptrtoint ptr %destructor_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %destructor_arg.i.i, align 4
  %tobool3.not.i = icmp eq ptr %73, null
  br i1 %tobool3.not.i, label %skb_zcopy.exit.i.if.then.i_crit_edge, label %skb_zcopy.exit.i.if.end110.thread_crit_edge

skb_zcopy.exit.i.if.end110.thread_crit_edge:      ; preds = %skb_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110.thread

skb_zcopy.exit.i.if.then.i_crit_edge:             ; preds = %skb_zcopy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %skb_zcopy.exit.i.if.then.i_crit_edge, %land.rhs.i.i.if.then.i_crit_edge
  br i1 %tobool97.not, label %if.then.i.if.end.i_crit_edge, label %if.else.i, !prof !99

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  %refcnt.i.i = getelementptr inbounds %struct.ubuf_info, ptr %call92726728, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #12
  %74 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #12, !srcloc !116
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !99

if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.else.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %75 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %.not.i.i.i.i.i = icmp sgt i32 %75, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !102

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end.i_crit_edge:             ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.else.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %if.end.i

if.end.i:                                         ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %76 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %end.i.i.i, align 4
  %destructor_arg.i17.i = getelementptr inbounds %struct.skb_shared_info, ptr %77, i32 0, i32 11
  %78 = ptrtoint ptr %destructor_arg.i17.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call92726728, ptr %destructor_arg.i17.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ubuf_info, ptr %call92726728, i32 0, i32 3
  %79 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %flags.i.i, align 4
  %81 = load ptr, ptr %end.i.i.i, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %81, align 8
  %or7.i.i = or i8 %83, %80
  store i8 %or7.i.i, ptr %81, align 8
  br label %if.end110.thread

if.end110.thread:                                 ; preds = %if.end.i, %skb_zcopy.exit.i.if.end110.thread_crit_edge
  %extra_uref.2.shrunk.ph = phi i1 [ %tobool97.not, %skb_zcopy.exit.i.if.end110.thread_crit_edge ], [ false, %if.end.i ]
  %extra_uref.2826 = zext i1 %extra_uref.2.shrunk.ph to i8
  %84 = ptrtoint ptr %length42 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %length42, align 8
  %add112827 = add i32 %85, %length
  store i32 %add112827, ptr %length42, align 8
  br label %while.cond.preheader

if.end110:                                        ; preds = %if.else.if.end110_crit_edge, %skb_zcopy.exit631.if.end110_crit_edge, %land.lhs.true87.if.end110_crit_edge, %if.end82.if.end110_crit_edge
  %extra_uref.2.shrunk = phi i1 [ false, %if.end82.if.end110_crit_edge ], [ %tobool97.not, %skb_zcopy.exit631.if.end110_crit_edge ], [ false, %land.lhs.true87.if.end110_crit_edge ], [ %tobool97.not, %if.else.if.end110_crit_edge ]
  %paged.0.shrunk = phi i1 [ %tobool11, %if.end82.if.end110_crit_edge ], [ true, %skb_zcopy.exit631.if.end110_crit_edge ], [ %tobool11, %land.lhs.true87.if.end110_crit_edge ], [ %tobool11, %if.else.if.end110_crit_edge ]
  %uarg.0 = phi ptr [ null, %if.end82.if.end110_crit_edge ], [ %call92726728, %skb_zcopy.exit631.if.end110_crit_edge ], [ null, %land.lhs.true87.if.end110_crit_edge ], [ %call92726728, %if.else.if.end110_crit_edge ]
  %extra_uref.2 = zext i1 %extra_uref.2.shrunk to i8
  %86 = ptrtoint ptr %length42 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %length42, align 8
  %add112 = add i32 %87, %length
  store i32 %add112, ptr %length42, align 8
  br i1 %tobool.not, label %if.end110.alloc_new_skb_crit_edge, label %if.end110.while.cond.preheader_crit_edge

if.end110.while.cond.preheader_crit_edge:         ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.preheader

if.end110.alloc_new_skb_crit_edge:                ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %alloc_new_skb

while.cond.preheader:                             ; preds = %if.end257, %if.end110.while.cond.preheader_crit_edge, %if.end110.thread
  %uarg.0830 = phi ptr [ %uarg.0, %if.end110.while.cond.preheader_crit_edge ], [ %uarg.0831, %if.end257 ], [ %call92726728, %if.end110.thread ]
  %paged.0.shrunk828 = phi i1 [ %paged.0.shrunk, %if.end110.while.cond.preheader_crit_edge ], [ %paged.0.shrunk829, %if.end257 ], [ %tobool11, %if.end110.thread ]
  %extra_uref.3.ph = phi i8 [ %extra_uref.2, %if.end110.while.cond.preheader_crit_edge ], [ %extra_uref.6, %if.end257 ], [ %extra_uref.2826, %if.end110.thread ]
  %exthdrlen.0.ph = phi i32 [ %cond, %if.end110.while.cond.preheader_crit_edge ], [ 0, %if.end257 ], [ %cond, %if.end110.thread ]
  %offset.0.ph = phi i32 [ 0, %if.end110.while.cond.preheader_crit_edge ], [ %add238, %if.end257 ], [ 0, %if.end110.thread ]
  %csummode.1.ph = phi i32 [ %csummode.0, %if.end110.while.cond.preheader_crit_edge ], [ 0, %if.end257 ], [ %csummode.0, %if.end110.thread ]
  %wmem_alloc_delta.0.ph = phi i32 [ 0, %if.end110.while.cond.preheader_crit_edge ], [ %wmem_alloc_delta.2, %if.end257 ], [ 0, %if.end110.thread ]
  %tskey.1.ph = phi i32 [ %tskey.0, %if.end110.while.cond.preheader_crit_edge ], [ 0, %if.end257 ], [ %tskey.0, %if.end110.thread ]
  %skb.0.ph = phi ptr [ %6, %if.end110.while.cond.preheader_crit_edge ], [ %skb.3738, %if.end257 ], [ %6, %if.end110.thread ]
  %transhdrlen.addr.0.ph = phi i32 [ %transhdrlen, %if.end110.while.cond.preheader_crit_edge ], [ 0, %if.end257 ], [ %transhdrlen, %if.end110.thread ]
  %length.addr.0.ph = phi i32 [ %length, %if.end110.while.cond.preheader_crit_edge ], [ %sub240, %if.end257 ], [ %length, %if.end110.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length.addr.0.ph)
  %cmp116791 = icmp sgt i32 %length.addr.0.ph, 0
  br i1 %cmp116791, label %while.body.lr.ph, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 6
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 7
  %end.i668 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 17
  %tail.i669 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 16
  %tobool281.not = icmp eq ptr %uarg.0830, null
  %zerocopy283 = getelementptr inbounds %struct.ubuf_info, ptr %uarg.0830, i32 0, i32 1, i32 0, i32 2
  %offset292 = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 1
  %tobool.not.i.i = icmp eq ptr %skb.0.ph, null
  %pfmemalloc.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 12
  %size = getelementptr inbounds %struct.page_frag, ptr %pfrag, i32 0, i32 2
  %truesize339 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %if.end352.while.body_crit_edge, %while.body.lr.ph
  %length.addr.0796 = phi i32 [ %length.addr.0.ph, %while.body.lr.ph ], [ %sub354, %if.end352.while.body_crit_edge ]
  %wmem_alloc_delta.0795 = phi i32 [ %wmem_alloc_delta.0.ph, %while.body.lr.ph ], [ %wmem_alloc_delta.4, %if.end352.while.body_crit_edge ]
  %offset.0792 = phi i32 [ %offset.0.ph, %while.body.lr.ph ], [ %add353, %if.end352.while.body_crit_edge ]
  %88 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len, align 4
  %sub118 = sub i32 %cond9, %89
  call void @__sanitizer_cov_trace_cmp4(i32 %sub118, i32 %length.addr.0796)
  %cmp119 = icmp slt i32 %sub118, %length.addr.0796
  %sub123 = sub i32 %add35, %89
  %spec.select619 = select i1 %cmp119, i32 %sub123, i32 %sub118
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select619)
  %cmp125 = icmp slt i32 %spec.select619, 1
  br i1 %cmp125, label %while.body.alloc_new_skb_crit_edge, label %if.end258

while.body.alloc_new_skb_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %alloc_new_skb

alloc_new_skb:                                    ; preds = %while.body.alloc_new_skb_crit_edge, %if.end110.alloc_new_skb_crit_edge
  %uarg.0831 = phi ptr [ %uarg.0, %if.end110.alloc_new_skb_crit_edge ], [ %uarg.0830, %while.body.alloc_new_skb_crit_edge ]
  %paged.0.shrunk829 = phi i1 [ %paged.0.shrunk, %if.end110.alloc_new_skb_crit_edge ], [ %paged.0.shrunk828, %while.body.alloc_new_skb_crit_edge ]
  %extra_uref.4 = phi i8 [ %extra_uref.2, %if.end110.alloc_new_skb_crit_edge ], [ %extra_uref.3.ph, %while.body.alloc_new_skb_crit_edge ]
  %exthdrlen.1 = phi i32 [ %cond, %if.end110.alloc_new_skb_crit_edge ], [ %exthdrlen.0.ph, %while.body.alloc_new_skb_crit_edge ]
  %offset.1 = phi i32 [ 0, %if.end110.alloc_new_skb_crit_edge ], [ %offset.0792, %while.body.alloc_new_skb_crit_edge ]
  %csummode.2 = phi i32 [ %csummode.0, %if.end110.alloc_new_skb_crit_edge ], [ %csummode.1.ph, %while.body.alloc_new_skb_crit_edge ]
  %wmem_alloc_delta.1 = phi i32 [ 0, %if.end110.alloc_new_skb_crit_edge ], [ %wmem_alloc_delta.0795, %while.body.alloc_new_skb_crit_edge ]
  %tskey.2 = phi i32 [ %tskey.0, %if.end110.alloc_new_skb_crit_edge ], [ %tskey.1.ph, %while.body.alloc_new_skb_crit_edge ]
  %skb.1 = phi ptr [ null, %if.end110.alloc_new_skb_crit_edge ], [ %skb.0.ph, %while.body.alloc_new_skb_crit_edge ]
  %transhdrlen.addr.1 = phi i32 [ %transhdrlen, %if.end110.alloc_new_skb_crit_edge ], [ %transhdrlen.addr.0.ph, %while.body.alloc_new_skb_crit_edge ]
  %length.addr.1 = phi i32 [ %length, %if.end110.alloc_new_skb_crit_edge ], [ %length.addr.0796, %while.body.alloc_new_skb_crit_edge ]
  %tobool128.not = icmp eq ptr %skb.1, null
  br i1 %tobool128.not, label %alloc_new_skb.if.end133_crit_edge, label %if.then129

alloc_new_skb.if.end133_crit_edge:                ; preds = %alloc_new_skb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.then129:                                       ; preds = %alloc_new_skb
  call void @__sanitizer_cov_trace_pc() #14
  %len130 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %90 = ptrtoint ptr %len130 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %len130, align 4
  %sub131 = sub i32 %91, %add35
  br label %if.end133

if.end133:                                        ; preds = %if.then129, %alloc_new_skb.if.end133_crit_edge
  %fraggap.0 = phi i32 [ %sub131, %if.then129 ], [ 0, %alloc_new_skb.if.end133_crit_edge ]
  %add134 = add i32 %fraggap.0, %length.addr.1
  call void @__sanitizer_cov_trace_cmp4(i32 %add134, i32 %sub33)
  %cmp136 = icmp ugt i32 %add134, %sub33
  %spec.select620 = select i1 %cmp136, i32 %and34, i32 %add134
  %add141 = add i32 %spec.select620, %add32
  %add142 = add nuw nsw i32 %and24, 31
  %add143 = add nsw i32 %add142, %exthdrlen.1
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select620, i32 %add134)
  %cmp145 = icmp eq i32 %spec.select620, %add134
  br i1 %cmp145, label %if.then147, label %if.end133.if.end151_crit_edge

if.end133.if.end151_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then147:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  %trailer_len = getelementptr inbounds %struct.dst_entry, ptr %4, i32 0, i32 10
  %92 = ptrtoint ptr %trailer_len to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %trailer_len, align 2
  %conv149 = zext i16 %93 to i32
  %add150 = add nsw i32 %add143, %conv149
  br label %if.end151

if.end151:                                        ; preds = %if.then147, %if.end133.if.end151_crit_edge
  %alloc_extra.0 = phi i32 [ %add150, %if.then147 ], [ %add143, %if.end133.if.end151_crit_edge ]
  %and152 = and i32 %flags, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152)
  %tobool153.not = icmp eq i32 %and152, 0
  br i1 %tobool153.not, label %if.end151.if.else161_crit_edge, label %land.lhs.true154

if.end151.if.else161_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else161

land.lhs.true154:                                 ; preds = %if.end151
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %4, align 4
  %features157 = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 23
  %96 = ptrtoint ptr %features157 to i32
  call void @__asan_load8_noabort(i32 %96)
  %97 = load i64, ptr %features157, align 16
  %and158 = and i64 %97, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and158)
  %tobool159.not = icmp eq i64 %and158, 0
  br i1 %tobool159.not, label %land.lhs.true154.if.end183_crit_edge, label %land.lhs.true154.if.else161_crit_edge

land.lhs.true154.if.else161_crit_edge:            ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else161

land.lhs.true154.if.end183_crit_edge:             ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.else161:                                       ; preds = %land.lhs.true154.if.else161_crit_edge, %if.end151.if.else161_crit_edge
  br i1 %paged.0.shrunk829, label %if.else161.if.else174_crit_edge, label %land.lhs.true163

if.else161.if.else174_crit_edge:                  ; preds = %if.else161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else174

land.lhs.true163:                                 ; preds = %if.else161
  %add164 = add i32 %alloc_extra.0, %add141
  call void @__sanitizer_cov_trace_const_cmp4(i32 16128, i32 %add164)
  %cmp165 = icmp ult i32 %add164, 16128
  br i1 %cmp165, label %land.lhs.true163.if.end183_crit_edge, label %lor.lhs.false167

land.lhs.true163.if.end183_crit_edge:             ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

lor.lhs.false167:                                 ; preds = %land.lhs.true163
  %98 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %4, align 4
  %features170 = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 23
  %100 = ptrtoint ptr %features170 to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %features170, align 16
  %and171 = and i64 %101, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and171)
  %tobool172.not = icmp eq i64 %and171, 0
  br i1 %tobool172.not, label %lor.lhs.false167.if.end183_crit_edge, label %lor.lhs.false167.if.else174_crit_edge

lor.lhs.false167.if.else174_crit_edge:            ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else174

lor.lhs.false167.if.end183_crit_edge:             ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end183

if.else174:                                       ; preds = %lor.lhs.false167.if.else174_crit_edge, %if.else161.if.else174_crit_edge
  %102 = call i32 @llvm.smin.i32(i32 %add141, i32 176)
  %sub181.neg = sub i32 %102, %add141
  br label %if.end183

if.end183:                                        ; preds = %if.else174, %lor.lhs.false167.if.end183_crit_edge, %land.lhs.true163.if.end183_crit_edge, %land.lhs.true154.if.end183_crit_edge
  %alloclen.0 = phi i32 [ %102, %if.else174 ], [ %cond9, %land.lhs.true154.if.end183_crit_edge ], [ %add141, %lor.lhs.false167.if.end183_crit_edge ], [ %add141, %land.lhs.true163.if.end183_crit_edge ]
  %pagedlen.0.neg798 = phi i32 [ %sub181.neg, %if.else174 ], [ 0, %land.lhs.true154.if.end183_crit_edge ], [ 0, %lor.lhs.false167.if.end183_crit_edge ], [ 0, %land.lhs.true163.if.end183_crit_edge ]
  %add184 = add i32 %alloclen.0, %alloc_extra.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transhdrlen.addr.1)
  %tobool185.not = icmp eq i32 %transhdrlen.addr.1, 0
  br i1 %tobool185.not, label %if.else189, label %if.end204

if.else189:                                       ; preds = %if.end183
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %sk_wmem_alloc, i32 noundef 4) #12
  %103 = ptrtoint ptr %sk_wmem_alloc to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %sk_wmem_alloc, align 4
  %add191 = add i32 %104, %wmem_alloc_delta.1
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %105 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sk_sndbuf, align 4
  %mul = shl i32 %106, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add191, i32 %mul)
  %cmp192.not = icmp ugt i32 %add191, %mul
  br i1 %cmp192.not, label %if.else189.if.end204.thread_crit_edge, label %if.end196

if.else189.if.end204.thread_crit_edge:            ; preds = %if.else189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204.thread

if.end196:                                        ; preds = %if.else189
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %107 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sk_allocation, align 8
  %call.i = call ptr @__alloc_skb(i32 noundef %add184, i32 noundef %108, i32 noundef 0, i32 noundef -1) #12
  %tobool197.not = icmp eq ptr %call.i, null
  br i1 %tobool197.not, label %if.end196.if.end204.thread_crit_edge, label %if.end196.if.end207_crit_edge, !prof !99

if.end196.if.end207_crit_edge:                    ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.end196.if.end204.thread_crit_edge:             ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end204.thread

if.end204.thread:                                 ; preds = %if.end196.if.end204.thread_crit_edge, %if.else189.if.end204.thread_crit_edge
  %109 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -105, ptr %err, align 4
  br label %error

if.end204:                                        ; preds = %if.end183
  %and187 = and i32 %flags, 64
  %call188 = call ptr @sock_alloc_send_skb(ptr noundef %sk, i32 noundef %add184, i32 noundef %and187, ptr noundef nonnull %err) #12
  %tobool205.not = icmp eq ptr %call188, null
  br i1 %tobool205.not, label %if.end204.error_crit_edge, label %if.end204.if.end207_crit_edge

if.end204.if.end207_crit_edge:                    ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end207

if.end204.error_crit_edge:                        ; preds = %if.end204
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end207:                                        ; preds = %if.end204.if.end207_crit_edge, %if.end196.if.end207_crit_edge
  %skb.3738 = phi ptr [ %call188, %if.end204.if.end207_crit_edge ], [ %call.i, %if.end196.if.end207_crit_edge ]
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 15
  %110 = trunc i32 %csummode.2 to i16
  %111 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %111)
  %bf.load209 = load i16, ptr %ip_summed, align 8
  %bf.value = shl i16 %110, 9
  %bf.shl = and i16 %bf.value, 1536
  %bf.clear210 = and i16 %bf.load209, -1537
  %bf.set211 = or i16 %bf.clear210, %bf.shl
  store i16 %bf.set211, ptr %ip_summed, align 8
  %112 = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 15, i32 0, i32 5
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %112, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 19
  %114 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %115, i32 %add25
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 16
  %116 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %117, i32 %add25
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %add212 = add i32 %add141, %exthdrlen.1
  %sub213 = add i32 %add212, %pagedlen.0.neg798
  %call214 = call ptr @skb_put(ptr noundef nonnull %skb.3738, i32 noundef %sub213) #12
  %118 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 18
  %120 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %119 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %121 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i635 = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 15, i32 0, i32 20
  %122 = trunc i32 %exthdrlen.1 to i16
  %conv1.i = add i16 %conv.i.i635, %122
  %123 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %124 = trunc i32 %add32 to i16
  %conv217 = add i16 %conv1.i, %124
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 15, i32 0, i32 19
  %125 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 %conv217, ptr %transport_header, align 2
  %add218 = add nsw i32 %exthdrlen.1, %add32
  %add.ptr = getelementptr i8, ptr %call214, i32 %add218
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fraggap.0)
  %tobool219.not = icmp eq i32 %fraggap.0, 0
  br i1 %tobool219.not, label %if.end207.if.end225_crit_edge, label %if.then220

if.end207.if.end225_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225

if.then220:                                       ; preds = %if.end207
  %add.ptr221 = getelementptr i8, ptr %add.ptr, i32 %transhdrlen.addr.1
  %call222 = call i32 @skb_copy_and_csum_bits(ptr noundef %skb.1, i32 noundef %add35, ptr noundef %add.ptr221, i32 noundef %fraggap.0) #12
  %126 = ptrtoint ptr %112 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %call222, ptr %112, align 8
  %127 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 15, i32 0, i32 5
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %127, align 8
  %neg.i = xor i32 %call222, -1
  %add.i.i = add i32 %129, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %neg.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %neg.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %130 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add1.i.i, ptr %127, align 8
  %add.ptr224 = getelementptr i8, ptr %add.ptr, i32 %fraggap.0
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 6
  %131 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %132, i32 %add35)
  %cmp.i.i636 = icmp ugt i32 %132, %add35
  br i1 %cmp.i.i636, label %cond.true.i.i, label %if.then220.if.end225_crit_edge

if.then220.if.end225_crit_edge:                   ; preds = %if.then220
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225

cond.true.i.i:                                    ; preds = %if.then220
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 7
  %133 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool.not.i.i.i = icmp eq i32 %134, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %135 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %add35, ptr %len1.i.i, align 4
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %136 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %137, i32 %add35
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 16
  %138 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end225

pskb_trim.exit.i:                                 ; preds = %cond.true.i.i
  %call.i.i.i637 = call i32 @___pskb_trim(ptr noundef %skb.1, i32 noundef %add35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i637)
  %tobool.not.i638 = icmp eq i32 %call.i.i.i637, 0
  br i1 %tobool.not.i638, label %pskb_trim.exit.i.if.end225_crit_edge, label %do.body3.i, !prof !102

pskb_trim.exit.i.if.end225_crit_edge:             ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end225

do.body3.i:                                       ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2827, 0\0A.popsection", ""() #12, !srcloc !124
  unreachable

if.end225:                                        ; preds = %pskb_trim.exit.i.if.end225_crit_edge, %__skb_trim.exit.i.i.i, %if.then220.if.end225_crit_edge, %if.end207.if.end225_crit_edge
  %data.0 = phi ptr [ %add.ptr, %if.end207.if.end225_crit_edge ], [ %add.ptr224, %if.then220.if.end225_crit_edge ], [ %add.ptr224, %__skb_trim.exit.i.i.i ], [ %add.ptr224, %pskb_trim.exit.i.if.end225_crit_edge ]
  %139 = add i32 %fraggap.0, %transhdrlen.addr.1
  %.neg761 = sub i32 %spec.select620, %139
  %sub228 = add i32 %.neg761, %pagedlen.0.neg798
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub228)
  %cmp229 = icmp sgt i32 %sub228, 0
  br i1 %cmp229, label %land.lhs.true231, label %if.end225.if.end237_crit_edge

if.end225.if.end237_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

land.lhs.true231:                                 ; preds = %if.end225
  %add.ptr232 = getelementptr i8, ptr %data.0, i32 %transhdrlen.addr.1
  %call233 = call i32 %getfrag(ptr noundef %from, ptr noundef %add.ptr232, i32 noundef %offset.1, i32 noundef %sub228, i32 noundef %fraggap.0, ptr noundef nonnull %skb.3738) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %cmp234 = icmp slt i32 %call233, 0
  br i1 %cmp234, label %if.then236, label %land.lhs.true231.if.end237_crit_edge

land.lhs.true231.if.end237_crit_edge:             ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end237

if.then236:                                       ; preds = %land.lhs.true231
  call void @__sanitizer_cov_trace_pc() #14
  %140 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -14, ptr %err, align 4
  call void @kfree_skb_reason(ptr noundef nonnull %skb.3738, i32 noundef 0) #12
  br label %error

if.end237:                                        ; preds = %land.lhs.true231.if.end237_crit_edge, %if.end225.if.end237_crit_edge
  %add238 = add i32 %sub228, %offset.1
  %141 = add i32 %transhdrlen.addr.1, %sub228
  %sub240 = sub i32 %length.addr.1, %141
  %142 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %tx_flags, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 17
  %144 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %end.i, align 4
  %tx_flags243 = getelementptr inbounds %struct.skb_shared_info, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %tx_flags243 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %143, ptr %tx_flags243, align 1
  store i8 0, ptr %tx_flags, align 8
  %147 = load ptr, ptr %end.i, align 4
  %tskey246 = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 9
  %148 = ptrtoint ptr %tskey246 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %tskey.2, ptr %tskey246, align 4
  %tobool1.not.i641 = icmp eq ptr %uarg.0831, null
  br i1 %tobool1.not.i641, label %if.end237.skb_zcopy_set.exit667_crit_edge, label %land.rhs.i.i645

if.end237.skb_zcopy_set.exit667_crit_edge:        ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_zcopy_set.exit667

land.rhs.i.i645:                                  ; preds = %if.end237
  %149 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %end.i, align 4
  %151 = ptrtoint ptr %150 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %150, align 8
  %153 = and i8 %152, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool1.not.i.i644 = icmp eq i8 %153, 0
  br i1 %tobool1.not.i.i644, label %land.rhs.i.i645.if.then.i649_crit_edge, label %skb_zcopy.exit.i648

land.rhs.i.i645.if.then.i649_crit_edge:           ; preds = %land.rhs.i.i645
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i649

skb_zcopy.exit.i648:                              ; preds = %land.rhs.i.i645
  %destructor_arg.i.i646 = getelementptr inbounds %struct.skb_shared_info, ptr %150, i32 0, i32 11
  %154 = ptrtoint ptr %destructor_arg.i.i646 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %destructor_arg.i.i646, align 4
  %tobool3.not.i647 = icmp eq ptr %155, null
  br i1 %tobool3.not.i647, label %skb_zcopy.exit.i648.if.then.i649_crit_edge, label %skb_zcopy.exit.i648.skb_zcopy_set.exit667_crit_edge

skb_zcopy.exit.i648.skb_zcopy_set.exit667_crit_edge: ; preds = %skb_zcopy.exit.i648
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_zcopy_set.exit667

skb_zcopy.exit.i648.if.then.i649_crit_edge:       ; preds = %skb_zcopy.exit.i648
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i649

if.then.i649:                                     ; preds = %skb_zcopy.exit.i648.if.then.i649_crit_edge, %land.rhs.i.i645.if.then.i649_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %extra_uref.4)
  %tobool5.not.i650 = icmp eq i8 %extra_uref.4, 0
  br i1 %tobool5.not.i650, label %if.else.i657, label %if.then.i649.if.end.i666_crit_edge, !prof !102

if.then.i649.if.end.i666_crit_edge:               ; preds = %if.then.i649
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i666

if.else.i657:                                     ; preds = %if.then.i649
  %refcnt.i.i653 = getelementptr inbounds %struct.ubuf_info, ptr %uarg.0831, i32 0, i32 2
  %call.i.i.i.i.i.i.i654 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i653, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %refcnt.i.i653, i32 1, i32 3, i32 1) #12
  %156 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i653, ptr %refcnt.i.i653, i32 1, ptr elementtype(i32) %refcnt.i.i653) #12, !srcloc !116
  %asmresult.i.i.i.i.i.i.i655 = extractvalue { i32, i32, i32 } %156, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i655)
  %tobool1.not.i.i.i.i.i656 = icmp eq i32 %asmresult.i.i.i.i.i.i.i655, 0
  br i1 %tobool1.not.i.i.i.i.i656, label %if.else.i657.if.end15.sink.split.i.i.i.i.i662_crit_edge, label %if.else.i.i.i.i.i660, !prof !99

if.else.i657.if.end15.sink.split.i.i.i.i.i662_crit_edge: ; preds = %if.else.i657
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i662

if.else.i.i.i.i.i660:                             ; preds = %if.else.i657
  %add.i.i.i.i.i658 = add i32 %asmresult.i.i.i.i.i.i.i655, 1
  %157 = or i32 %add.i.i.i.i.i658, %asmresult.i.i.i.i.i.i.i655
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %157)
  %.not.i.i.i.i.i659 = icmp sgt i32 %157, -1
  br i1 %.not.i.i.i.i.i659, label %if.else.i.i.i.i.i660.if.end.i666_crit_edge, label %if.else.i.i.i.i.i660.if.end15.sink.split.i.i.i.i.i662_crit_edge, !prof !102

if.else.i.i.i.i.i660.if.end15.sink.split.i.i.i.i.i662_crit_edge: ; preds = %if.else.i.i.i.i.i660
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i662

if.else.i.i.i.i.i660.if.end.i666_crit_edge:       ; preds = %if.else.i.i.i.i.i660
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i666

if.end15.sink.split.i.i.i.i.i662:                 ; preds = %if.else.i.i.i.i.i660.if.end15.sink.split.i.i.i.i.i662_crit_edge, %if.else.i657.if.end15.sink.split.i.i.i.i.i662_crit_edge
  %.sink.i.i.i.i.i661 = phi i32 [ 2, %if.else.i657.if.end15.sink.split.i.i.i.i.i662_crit_edge ], [ 1, %if.else.i.i.i.i.i660.if.end15.sink.split.i.i.i.i.i662_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i653, i32 noundef %.sink.i.i.i.i.i661) #12
  br label %if.end.i666

if.end.i666:                                      ; preds = %if.end15.sink.split.i.i.i.i.i662, %if.else.i.i.i.i.i660.if.end.i666_crit_edge, %if.then.i649.if.end.i666_crit_edge
  %158 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %end.i, align 4
  %destructor_arg.i17.i663 = getelementptr inbounds %struct.skb_shared_info, ptr %159, i32 0, i32 11
  %160 = ptrtoint ptr %destructor_arg.i17.i663 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %uarg.0831, ptr %destructor_arg.i17.i663, align 4
  %flags.i.i664 = getelementptr inbounds %struct.ubuf_info, ptr %uarg.0831, i32 0, i32 3
  %161 = ptrtoint ptr %flags.i.i664 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %flags.i.i664, align 4
  %163 = load ptr, ptr %end.i, align 4
  %164 = ptrtoint ptr %163 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %163, align 8
  %or7.i.i665 = or i8 %165, %162
  store i8 %or7.i.i665, ptr %163, align 8
  br label %skb_zcopy_set.exit667

skb_zcopy_set.exit667:                            ; preds = %if.end.i666, %skb_zcopy.exit.i648.skb_zcopy_set.exit667_crit_edge, %if.end237.skb_zcopy_set.exit667_crit_edge
  %extra_uref.6 = phi i8 [ %extra_uref.4, %if.end237.skb_zcopy_set.exit667_crit_edge ], [ 0, %if.end.i666 ], [ %extra_uref.4, %skb_zcopy.exit.i648.skb_zcopy_set.exit667_crit_edge ]
  %and247 = and i32 %flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and247)
  %tobool248.not = icmp eq i32 %and247, 0
  %tobool128.not.not = xor i1 %tobool128.not, true
  %brmerge621 = select i1 %tobool248.not, i1 true, i1 %tobool128.not.not
  br i1 %brmerge621, label %skb_zcopy_set.exit667.if.end252_crit_edge, label %if.then251

skb_zcopy_set.exit667.if.end252_crit_edge:        ; preds = %skb_zcopy_set.exit667
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end252

if.then251:                                       ; preds = %skb_zcopy_set.exit667
  call void @__sanitizer_cov_trace_pc() #14
  %dst_pending_confirm.i = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 15, i32 0, i32 3
  %166 = ptrtoint ptr %dst_pending_confirm.i to i32
  call void @__asan_loadN_noabort(i32 %166, i32 4)
  %bf.load.i = load i32, ptr %dst_pending_confirm.i, align 2
  %bf.set.i = or i32 %bf.load.i, 67108864
  store i32 %bf.set.i, ptr %dst_pending_confirm.i, align 2
  br label %if.end252

if.end252:                                        ; preds = %if.then251, %skb_zcopy_set.exit667.if.end252_crit_edge
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 4, i32 0, i32 1
  %167 = ptrtoint ptr %destructor to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %destructor, align 4
  %tobool253.not = icmp eq ptr %168, null
  br i1 %tobool253.not, label %if.then254, label %if.end252.if.end257_crit_edge

if.end252.if.end257_crit_edge:                    ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end257

if.then254:                                       ; preds = %if.end252
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @sock_wfree, ptr %destructor, align 4
  %170 = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 1
  %171 = ptrtoint ptr %170 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %sk, ptr %170, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.3738, i32 0, i32 20
  %172 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %truesize, align 8
  %add256 = add i32 %173, %wmem_alloc_delta.1
  br label %if.end257

if.end257:                                        ; preds = %if.then254, %if.end252.if.end257_crit_edge
  %wmem_alloc_delta.2 = phi i32 [ %wmem_alloc_delta.1, %if.end252.if.end257_crit_edge ], [ %add256, %if.then254 ]
  %174 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %prev.i, align 4
  %176 = ptrtoint ptr %skb.3738 to i32
  call void @__asan_store4_noabort(i32 %176)
  store volatile ptr %queue, ptr %skb.3738, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %skb.3738, i32 0, i32 1
  %177 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store volatile ptr %175, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb.3738, ptr %prev.i, align 4
  %178 = ptrtoint ptr %175 to i32
  call void @__asan_store4_noabort(i32 %178)
  store volatile ptr %skb.3738, ptr %175, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %179 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %180, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %while.cond.preheader

if.end258:                                        ; preds = %while.body
  %181 = call i32 @llvm.umin.i32(i32 %spec.select619, i32 %length.addr.0796)
  %182 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %4, align 4
  %features265 = getelementptr inbounds %struct.net_device, ptr %183, i32 0, i32 23
  %184 = ptrtoint ptr %features265 to i32
  call void @__asan_load8_noabort(i32 %184)
  %185 = load i64, ptr %features265, align 16
  %and266 = and i64 %185, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and266)
  %tobool267.not = icmp eq i64 %and266, 0
  br i1 %tobool267.not, label %land.lhs.true268, label %if.end258.if.else280_crit_edge

if.end258.if.else280_crit_edge:                   ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else280

land.lhs.true268:                                 ; preds = %if.end258
  %186 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool.i.not.i = icmp eq i32 %187, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %land.lhs.true268.skb_tailroom.exit_crit_edge

land.lhs.true268.skb_tailroom.exit_crit_edge:     ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %land.lhs.true268
  call void @__sanitizer_cov_trace_pc() #14
  %188 = ptrtoint ptr %end.i668 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %end.i668, align 4
  %190 = ptrtoint ptr %tail.i669 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %tail.i669, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %189 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %191 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %land.lhs.true268.skb_tailroom.exit_crit_edge
  %cond.i670 = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %land.lhs.true268.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i670, i32 %181)
  %cmp270.not = icmp slt i32 %cond.i670, %181
  br i1 %cmp270.not, label %skb_tailroom.exit.if.else280_crit_edge, label %if.then272

skb_tailroom.exit.if.else280_crit_edge:           ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else280

if.then272:                                       ; preds = %skb_tailroom.exit
  %call274 = call ptr @skb_put(ptr noundef %skb.0.ph, i32 noundef %181) #12
  %call275 = call i32 %getfrag(ptr noundef %from, ptr noundef %call274, i32 noundef %offset.0792, i32 noundef %181, i32 noundef %89, ptr noundef %skb.0.ph) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275)
  %cmp276 = icmp slt i32 %call275, 0
  br i1 %cmp276, label %if.then278, label %if.then272.if.end352_crit_edge

if.then272.if.end352_crit_edge:                   ; preds = %if.then272
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end352

if.then278:                                       ; preds = %if.then272
  %192 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool.i.not.i.i = icmp eq i32 %193, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !102

do.end.i.i:                                       ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 2789, i32 noundef 9, ptr noundef null) #12
  br label %cleanup

if.end21.critedge.i.i:                            ; preds = %if.then278
  call void @__sanitizer_cov_trace_pc() #14
  %194 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %89, ptr %len, align 4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph, i32 0, i32 19
  %195 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %196, i32 %89
  %197 = ptrtoint ptr %tail.i669 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %add.ptr.i.i.i, ptr %tail.i669, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end21.critedge.i.i, %do.end.i.i
  %198 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 -14, ptr %err, align 4
  br label %error

if.else280:                                       ; preds = %skb_tailroom.exit.if.else280_crit_edge, %if.end258.if.else280_crit_edge
  br i1 %tobool281.not, label %if.else280.if.then286_crit_edge, label %lor.lhs.false282

if.else280.if.then286_crit_edge:                  ; preds = %if.else280
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then286

lor.lhs.false282:                                 ; preds = %if.else280
  %199 = ptrtoint ptr %zerocopy283 to i32
  call void @__asan_load1_noabort(i32 %199)
  %bf.load284 = load i8, ptr %zerocopy283, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load284)
  %tobool285.not = icmp sgt i8 %bf.load284, -1
  br i1 %tobool285.not, label %lor.lhs.false282.if.then286_crit_edge, label %if.else345

lor.lhs.false282.if.then286_crit_edge:            ; preds = %lor.lhs.false282
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then286

if.then286:                                       ; preds = %lor.lhs.false282.if.then286_crit_edge, %if.else280.if.then286_crit_edge
  %200 = ptrtoint ptr %end.i668 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %end.i668, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %nr_frags, align 2
  %conv288 = zext i8 %203 to i32
  %204 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 -12, ptr %err, align 4
  %call289 = call zeroext i1 @sk_page_frag_refill(ptr noundef %sk, ptr noundef %pfrag) #12
  br i1 %call289, label %if.end291, label %if.then286.error_crit_edge

if.then286.error_crit_edge:                       ; preds = %if.then286
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end291:                                        ; preds = %if.then286
  %205 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %pfrag, align 4
  %207 = ptrtoint ptr %offset292 to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %offset292, align 4
  %conv293 = zext i16 %208 to i32
  br i1 %tobool.not.i.i, label %if.end291.skb_zcopy.exit.i680_crit_edge, label %land.rhs.i.i675

if.end291.skb_zcopy.exit.i680_crit_edge:          ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_zcopy.exit.i680

land.rhs.i.i675:                                  ; preds = %if.end291
  %209 = ptrtoint ptr %end.i668 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %end.i668, align 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %210, align 8
  %213 = and i8 %212, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %213)
  %tobool1.not.i.i674 = icmp eq i8 %213, 0
  br i1 %tobool1.not.i.i674, label %land.rhs.i.i675.skb_zcopy.exit.i680_crit_edge, label %cond.true.i.i677

land.rhs.i.i675.skb_zcopy.exit.i680_crit_edge:    ; preds = %land.rhs.i.i675
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_zcopy.exit.i680

cond.true.i.i677:                                 ; preds = %land.rhs.i.i675
  call void @__sanitizer_cov_trace_pc() #14
  %destructor_arg.i.i676 = getelementptr inbounds %struct.skb_shared_info, ptr %210, i32 0, i32 11
  %214 = ptrtoint ptr %destructor_arg.i.i676 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %destructor_arg.i.i676, align 4
  %phi.cmp.i = icmp ne ptr %215, null
  br label %skb_zcopy.exit.i680

skb_zcopy.exit.i680:                              ; preds = %cond.true.i.i677, %land.rhs.i.i675.skb_zcopy.exit.i680_crit_edge, %if.end291.skb_zcopy.exit.i680_crit_edge
  %cond.i.i = phi i1 [ %phi.cmp.i, %cond.true.i.i677 ], [ false, %land.rhs.i.i675.skb_zcopy.exit.i680_crit_edge ], [ false, %if.end291.skb_zcopy.exit.i680_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool1.not.i678 = icmp eq i8 %203, 0
  %or.cond.i679 = or i1 %tobool1.not.i678, %cond.i.i
  br i1 %or.cond.i679, label %skb_zcopy.exit.i680.if.then295_crit_edge, label %if.then2.i

skb_zcopy.exit.i680.if.then295_crit_edge:         ; preds = %skb_zcopy.exit.i680
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then295

if.then2.i:                                       ; preds = %skb_zcopy.exit.i680
  %216 = ptrtoint ptr %end.i668 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %end.i668, align 4
  %sub.i = add nsw i32 %conv288, -1
  %arrayidx.i = getelementptr %struct.skb_shared_info, ptr %217, i32 0, i32 12, i32 %sub.i
  %218 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i682 = icmp eq ptr %219, %206
  br i1 %cmp.i682, label %skb_can_coalesce.exit, label %if.then2.i.if.then295_crit_edge

if.then2.i.if.then295_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then295

skb_can_coalesce.exit:                            ; preds = %if.then2.i
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %217, i32 0, i32 12, i32 %sub.i, i32 2
  %220 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %217, i32 0, i32 12, i32 %sub.i, i32 1
  %222 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %bv_len.i.i, align 4
  %add.i = add i32 %223, %221
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %conv293)
  %cmp7.i = icmp eq i32 %add.i, %conv293
  br i1 %cmp7.i, label %skb_can_coalesce.exit.if.end307_crit_edge, label %skb_can_coalesce.exit.if.then295_crit_edge

skb_can_coalesce.exit.if.then295_crit_edge:       ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then295

skb_can_coalesce.exit.if.end307_crit_edge:        ; preds = %skb_can_coalesce.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end307

if.then295:                                       ; preds = %skb_can_coalesce.exit.if.then295_crit_edge, %if.then2.i.if.then295_crit_edge, %skb_zcopy.exit.i680.if.then295_crit_edge
  %224 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -90, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %203)
  %cmp296 = icmp eq i8 %203, 17
  br i1 %cmp296, label %if.then295.error_crit_edge, label %if.end299

if.then295.error_crit_edge:                       ; preds = %if.then295
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end299:                                        ; preds = %if.then295
  %225 = ptrtoint ptr %end.i668 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %end.i668, align 4
  %arrayidx.i685 = getelementptr %struct.skb_shared_info, ptr %226, i32 0, i32 12, i32 %conv288
  %227 = ptrtoint ptr %arrayidx.i685 to i32
  call void @__asan_store4_noabort(i32 %227)
  store ptr %206, ptr %arrayidx.i685, align 4
  %bv_offset.i = getelementptr %struct.skb_shared_info, ptr %226, i32 0, i32 12, i32 %conv288, i32 2
  %228 = ptrtoint ptr %bv_offset.i to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %conv293, ptr %bv_offset.i, align 4
  %bv_len.i.i686 = getelementptr %struct.skb_shared_info, ptr %226, i32 0, i32 12, i32 %conv288, i32 1
  %229 = ptrtoint ptr %bv_len.i.i686 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %bv_len.i.i686, align 4
  %230 = getelementptr inbounds %struct.page, ptr %206, i32 0, i32 1
  %231 = ptrtoint ptr %230 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load volatile i32, ptr %230, align 4
  %and.i.i = and i32 %232, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i687 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i687, label %if.end.i.i, label %if.then.i.i, !prof !102

if.then.i.i:                                      ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = add i32 %232, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #14
  %233 = ptrtoint ptr %206 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %233, %if.end.i.i ]
  %234 = inttoptr i32 %retval.0.i.i to ptr
  %235 = getelementptr inbounds %struct.page, ptr %234, i32 0, i32 1
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %238 = ptrtoint ptr %237 to i32
  %and.i1.i = and i32 %238, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1.i)
  %tobool.i.not.i688 = icmp eq i32 %and.i1.i, 0
  br i1 %tobool.i.not.i688, label %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge, label %if.then.i691

_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge: ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_fill_page_desc.exit

if.then.i691:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %239 = ptrtoint ptr %pfmemalloc.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %bf.load.i689 = load i8, ptr %pfmemalloc.i, align 2
  %bf.set.i690 = or i8 %bf.load.i689, 2
  store i8 %bf.set.i690, ptr %pfmemalloc.i, align 2
  br label %__skb_fill_page_desc.exit

__skb_fill_page_desc.exit:                        ; preds = %if.then.i691, %_compound_head.exit.i.__skb_fill_page_desc.exit_crit_edge
  %inc = add nuw nsw i32 %conv288, 1
  %conv303 = trunc i32 %inc to i8
  %240 = ptrtoint ptr %end.i668 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %end.i668, align 4
  %nr_frags305 = getelementptr inbounds %struct.skb_shared_info, ptr %241, i32 0, i32 2
  %242 = ptrtoint ptr %nr_frags305 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv303, ptr %nr_frags305, align 2
  %243 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %pfrag, align 4
  %245 = getelementptr inbounds %struct.page, ptr %244, i32 0, i32 1
  %246 = ptrtoint ptr %245 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load volatile i32, ptr %245, align 4
  %and.i.i694 = and i32 %247, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i694)
  %tobool.not.i.i695 = icmp eq i32 %and.i.i694, 0
  br i1 %tobool.not.i.i695, label %if.end.i.i698, label %if.then.i.i697, !prof !102

if.then.i.i697:                                   ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i696 = add i32 %247, -1
  br label %_compound_head.exit.i702

if.end.i.i698:                                    ; preds = %__skb_fill_page_desc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %248 = ptrtoint ptr %244 to i32
  br label %_compound_head.exit.i702

_compound_head.exit.i702:                         ; preds = %if.end.i.i698, %if.then.i.i697
  %retval.0.i.i699 = phi i32 [ %sub.i.i696, %if.then.i.i697 ], [ %248, %if.end.i.i698 ]
  %249 = inttoptr i32 %retval.0.i.i699 to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %249, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  %250 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i700 = add i32 %251, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i700)
  %cmp.i.i701 = icmp ult i32 %add.i.i700, 128
  br i1 %cmp.i.i701, label %if.then.i1.i, label %do.end5.i.i, !prof !99

if.then.i1.i:                                     ; preds = %_compound_head.exit.i702
  call void @__sanitizer_cov_trace_pc() #14
  %252 = inttoptr i32 %retval.0.i.i699 to ptr
  call void @dump_page(ptr noundef %252, ptr noundef nonnull @.str.24) #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #12, !srcloc !125
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i702
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i9.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #12
  %253 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #12, !srcloc !126
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@__ip_append_data, %if.then.i.i.i.i)) #12
          to label %if.end307 [label %if.then.i.i.i.i], !srcloc !109

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @__page_ref_mod(ptr noundef %249, i32 noundef 1) #12
  br label %if.end307

if.end307:                                        ; preds = %if.then.i.i.i.i, %do.end5.i.i, %skb_can_coalesce.exit.if.end307_crit_edge
  %i.0 = phi i32 [ %conv288, %skb_can_coalesce.exit.if.end307_crit_edge ], [ %inc, %do.end5.i.i ], [ %inc, %if.then.i.i.i.i ]
  %254 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %254)
  %255 = load i16, ptr %size, align 2
  %conv308 = zext i16 %255 to i32
  %256 = ptrtoint ptr %offset292 to i32
  call void @__asan_load2_noabort(i32 %256)
  %257 = load i16, ptr %offset292, align 4
  %conv310 = zext i16 %257 to i32
  %sub311 = sub nsw i32 %conv308, %conv310
  %258 = call i32 @llvm.smin.i32(i32 %181, i32 %sub311)
  %259 = ptrtoint ptr %pfrag to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %pfrag, align 4
  %call320 = call ptr @page_address(ptr noundef %260) #12
  %261 = ptrtoint ptr %offset292 to i32
  call void @__asan_load2_noabort(i32 %261)
  %262 = load i16, ptr %offset292, align 4
  %conv322 = zext i16 %262 to i32
  %add.ptr323 = getelementptr i8, ptr %call320, i32 %conv322
  %263 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %len, align 4
  %call325 = call i32 %getfrag(ptr noundef %from, ptr noundef %add.ptr323, i32 noundef %offset.0792, i32 noundef %258, i32 noundef %264, ptr noundef %skb.0.ph) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call325)
  %cmp326 = icmp slt i32 %call325, 0
  br i1 %cmp326, label %error_efault, label %cleanup342.thread744

cleanup342.thread744:                             ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #14
  %265 = ptrtoint ptr %offset292 to i32
  call void @__asan_load2_noabort(i32 %265)
  %266 = load i16, ptr %offset292, align 4
  %267 = trunc i32 %258 to i16
  %conv333 = add i16 %266, %267
  store i16 %conv333, ptr %offset292, align 4
  %268 = ptrtoint ptr %end.i668 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %end.i668, align 4
  %sub335 = add nsw i32 %i.0, -1
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %269, i32 0, i32 12, i32 %sub335, i32 1
  %270 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %bv_len.i, align 4
  %add.i704 = add i32 %271, %258
  store i32 %add.i704, ptr %bv_len.i, align 4
  %272 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %len, align 4
  %add337 = add i32 %273, %258
  store i32 %add337, ptr %len, align 4
  %274 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %data_len.i.i, align 8
  %add338 = add i32 %275, %258
  store i32 %add338, ptr %data_len.i.i, align 8
  %276 = ptrtoint ptr %truesize339 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %truesize339, align 8
  %add340 = add i32 %277, %258
  store i32 %add340, ptr %truesize339, align 8
  %add341 = add i32 %258, %wmem_alloc_delta.0795
  br label %if.end352

if.else345:                                       ; preds = %lor.lhs.false282
  %call346 = call i32 @skb_zerocopy_iter_dgram(ptr noundef %skb.0.ph, ptr noundef %from, i32 noundef %181) #12
  %278 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %call346, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %cmp347 = icmp slt i32 %call346, 0
  br i1 %cmp347, label %if.else345.if.then.i710_crit_edge, label %if.else345.if.end352_crit_edge

if.else345.if.end352_crit_edge:                   ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end352

if.else345.if.then.i710_crit_edge:                ; preds = %if.else345
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i710

if.end352:                                        ; preds = %if.else345.if.end352_crit_edge, %cleanup342.thread744, %if.then272.if.end352_crit_edge
  %copy.3 = phi i32 [ %181, %if.else345.if.end352_crit_edge ], [ %258, %cleanup342.thread744 ], [ %181, %if.then272.if.end352_crit_edge ]
  %wmem_alloc_delta.4 = phi i32 [ %wmem_alloc_delta.0795, %if.else345.if.end352_crit_edge ], [ %add341, %cleanup342.thread744 ], [ %wmem_alloc_delta.0795, %if.then272.if.end352_crit_edge ]
  %add353 = add i32 %copy.3, %offset.0792
  %sub354 = sub i32 %length.addr.0796, %copy.3
  %cmp116 = icmp sgt i32 %sub354, 0
  br i1 %cmp116, label %if.end352.while.body_crit_edge, label %if.end352.while.end_crit_edge

if.end352.while.end_crit_edge:                    ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end352.while.body_crit_edge:                   ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end352.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %wmem_alloc_delta.0.lcssa = phi i32 [ %wmem_alloc_delta.0.ph, %while.cond.preheader.while.end_crit_edge ], [ %wmem_alloc_delta.4, %if.end352.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wmem_alloc_delta.0.lcssa)
  %tobool355.not = icmp eq i32 %wmem_alloc_delta.0.lcssa, 0
  br i1 %tobool355.not, label %while.end.cleanup378_crit_edge, label %if.then356

while.end.cleanup378_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.then356:                                       ; preds = %while.end
  %sk_wmem_alloc357 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc357, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %sk_wmem_alloc357, i32 1, i32 3, i32 1) #12
  %279 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc357, ptr %sk_wmem_alloc357, i32 %wmem_alloc_delta.0.lcssa, ptr elementtype(i32) %sk_wmem_alloc357) #12, !srcloc !116
  %asmresult.i.i.i.i705 = extractvalue { i32, i32, i32 } %279, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i705)
  %tobool1.not.i.i706 = icmp eq i32 %asmresult.i.i.i.i705, 0
  br i1 %tobool1.not.i.i706, label %if.then356.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !99

if.then356.if.end15.sink.split.i.i_crit_edge:     ; preds = %if.then356
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then356
  %add.i.i707 = add i32 %asmresult.i.i.i.i705, %wmem_alloc_delta.0.lcssa
  %280 = or i32 %add.i.i707, %asmresult.i.i.i.i705
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %280)
  %.not.i.i = icmp sgt i32 %280, -1
  br i1 %.not.i.i, label %if.else.i.i.cleanup378_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !102

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i.cleanup378_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup378

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %if.then356.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %if.then356.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc357, i32 noundef %.sink.i.i) #12
  br label %cleanup378

error_efault:                                     ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #14
  %281 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 -14, ptr %err, align 4
  br label %error

error:                                            ; preds = %error_efault, %if.then295.error_crit_edge, %if.then286.error_crit_edge, %cleanup, %if.then236, %if.end204.error_crit_edge, %if.end204.thread
  %uarg.0832 = phi ptr [ %uarg.0831, %if.end204.error_crit_edge ], [ %uarg.0831, %if.then236 ], [ %uarg.0830, %error_efault ], [ %uarg.0830, %cleanup ], [ %uarg.0831, %if.end204.thread ], [ %uarg.0830, %if.then286.error_crit_edge ], [ %uarg.0830, %if.then295.error_crit_edge ]
  %extra_uref.7 = phi i8 [ %extra_uref.4, %if.end204.error_crit_edge ], [ %extra_uref.4, %if.then236 ], [ %extra_uref.3.ph, %error_efault ], [ %extra_uref.3.ph, %cleanup ], [ %extra_uref.4, %if.end204.thread ], [ %extra_uref.3.ph, %if.then286.error_crit_edge ], [ %extra_uref.3.ph, %if.then295.error_crit_edge ]
  %wmem_alloc_delta.5 = phi i32 [ %wmem_alloc_delta.1, %if.end204.error_crit_edge ], [ %wmem_alloc_delta.1, %if.then236 ], [ %wmem_alloc_delta.0795, %error_efault ], [ %wmem_alloc_delta.0795, %cleanup ], [ %wmem_alloc_delta.1, %if.end204.thread ], [ %wmem_alloc_delta.0795, %if.then286.error_crit_edge ], [ %wmem_alloc_delta.0795, %if.then295.error_crit_edge ]
  %length.addr.2 = phi i32 [ %length.addr.1, %if.end204.error_crit_edge ], [ %length.addr.1, %if.then236 ], [ %length.addr.0796, %error_efault ], [ %length.addr.0796, %cleanup ], [ %length.addr.1, %if.end204.thread ], [ %length.addr.0796, %if.then286.error_crit_edge ], [ %length.addr.0796, %if.then295.error_crit_edge ]
  %tobool.not.i708 = icmp eq ptr %uarg.0832, null
  br i1 %tobool.not.i708, label %error.net_zcopy_put_abort.exit_crit_edge, label %error.if.then.i710_crit_edge

error.if.then.i710_crit_edge:                     ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i710

error.net_zcopy_put_abort.exit_crit_edge:         ; preds = %error
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_zcopy_put_abort.exit

if.then.i710:                                     ; preds = %error.if.then.i710_crit_edge, %if.else345.if.then.i710_crit_edge
  %uarg.0835 = phi ptr [ %uarg.0832, %error.if.then.i710_crit_edge ], [ %uarg.0830, %if.else345.if.then.i710_crit_edge ]
  %tobool359757.in = phi i8 [ %extra_uref.7, %error.if.then.i710_crit_edge ], [ %extra_uref.3.ph, %if.else345.if.then.i710_crit_edge ]
  %length.addr.2755 = phi i32 [ %length.addr.2, %error.if.then.i710_crit_edge ], [ %length.addr.0796, %if.else345.if.then.i710_crit_edge ]
  %wmem_alloc_delta.5753 = phi i32 [ %wmem_alloc_delta.5, %error.if.then.i710_crit_edge ], [ %wmem_alloc_delta.0795, %if.else345.if.then.i710_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tobool359757.in)
  %tobool359757 = icmp ne i8 %tobool359757.in, 0
  %282 = ptrtoint ptr %uarg.0835 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %uarg.0835, align 4
  %cmp.i709 = icmp eq ptr %283, @msg_zerocopy_callback
  br i1 %cmp.i709, label %if.then1.i, label %if.else.i711

if.then1.i:                                       ; preds = %if.then.i710
  call void @__sanitizer_cov_trace_pc() #14
  call void @msg_zerocopy_put_abort(ptr noundef nonnull %uarg.0835, i1 noundef zeroext %tobool359757) #12
  br label %net_zcopy_put_abort.exit

if.else.i711:                                     ; preds = %if.then.i710
  br i1 %tobool359757, label %net_zcopy_put.exit.i, label %if.else.i711.net_zcopy_put_abort.exit_crit_edge

if.else.i711.net_zcopy_put_abort.exit_crit_edge:  ; preds = %if.else.i711
  call void @__sanitizer_cov_trace_pc() #14
  br label %net_zcopy_put_abort.exit

net_zcopy_put.exit.i:                             ; preds = %if.else.i711
  call void @__sanitizer_cov_trace_pc() #14
  call void %283(ptr noundef null, ptr noundef nonnull %uarg.0835, i1 noundef zeroext true) #12
  br label %net_zcopy_put_abort.exit

net_zcopy_put_abort.exit:                         ; preds = %net_zcopy_put.exit.i, %if.else.i711.net_zcopy_put_abort.exit_crit_edge, %if.then1.i, %error.net_zcopy_put_abort.exit_crit_edge
  %length.addr.2756 = phi i32 [ %length.addr.2, %error.net_zcopy_put_abort.exit_crit_edge ], [ %length.addr.2755, %if.then1.i ], [ %length.addr.2755, %if.else.i711.net_zcopy_put_abort.exit_crit_edge ], [ %length.addr.2755, %net_zcopy_put.exit.i ]
  %wmem_alloc_delta.5754 = phi i32 [ %wmem_alloc_delta.5, %error.net_zcopy_put_abort.exit_crit_edge ], [ %wmem_alloc_delta.5753, %if.then1.i ], [ %wmem_alloc_delta.5753, %if.else.i711.net_zcopy_put_abort.exit_crit_edge ], [ %wmem_alloc_delta.5753, %net_zcopy_put.exit.i ]
  %284 = ptrtoint ptr %length42 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %length42, align 8
  %sub361 = sub i32 %285, %length.addr.2756
  store i32 %sub361, ptr %length42, align 8
  call fastcc void @local_bh_disable()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %286 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %skc_net.i, align 4
  %mib = getelementptr inbounds %struct.net, ptr %287, i32 0, i32 30
  %288 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %mib, align 4
  %290 = ptrtoint ptr %289 to i32
  %291 = call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i = and i32 %291, -16384
  %292 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %292, i32 0, i32 3
  %293 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %cpu, align 4
  %arrayidx368 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %294
  %295 = ptrtoint ptr %arrayidx368 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx368, align 4
  %add369 = add i32 %296, %290
  %297 = inttoptr i32 %add369 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %297, i32 0, i32 1
  call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx370 = getelementptr [37 x i64], ptr %297, i32 0, i32 14
  %298 = ptrtoint ptr %arrayidx370 to i32
  call void @__asan_load8_noabort(i32 %298)
  %299 = load i64, ptr %arrayidx370, align 8
  %add371 = add i64 %299, 1
  store i64 %add371, ptr %arrayidx370, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %297, i32 0, i32 1, i32 0, i32 1
  %300 = call ptr @llvm.returnaddress(i32 0) #12
  %301 = ptrtoint ptr %300 to i32
  call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %301) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %302 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %303, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  call fastcc void @local_bh_enable()
  %sk_wmem_alloc377 = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %call.i.i.i.i712 = call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc377, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr %sk_wmem_alloc377, i32 1, i32 3, i32 1) #12
  %304 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc377, ptr %sk_wmem_alloc377, i32 %wmem_alloc_delta.5754, ptr elementtype(i32) %sk_wmem_alloc377) #12, !srcloc !116
  %asmresult.i.i.i.i713 = extractvalue { i32, i32, i32 } %304, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i713)
  %tobool1.not.i.i714 = icmp eq i32 %asmresult.i.i.i.i713, 0
  br i1 %tobool1.not.i.i714, label %net_zcopy_put_abort.exit.if.end15.sink.split.i.i719_crit_edge, label %if.else.i.i717, !prof !99

net_zcopy_put_abort.exit.if.end15.sink.split.i.i719_crit_edge: ; preds = %net_zcopy_put_abort.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i719

if.else.i.i717:                                   ; preds = %net_zcopy_put_abort.exit
  %add.i.i715 = add i32 %asmresult.i.i.i.i713, %wmem_alloc_delta.5754
  %305 = or i32 %add.i.i715, %asmresult.i.i.i.i713
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %305)
  %.not.i.i716 = icmp sgt i32 %305, -1
  br i1 %.not.i.i716, label %if.else.i.i717.refcount_add.exit720_crit_edge, label %if.else.i.i717.if.end15.sink.split.i.i719_crit_edge, !prof !102

if.else.i.i717.if.end15.sink.split.i.i719_crit_edge: ; preds = %if.else.i.i717
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i719

if.else.i.i717.refcount_add.exit720_crit_edge:    ; preds = %if.else.i.i717
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_add.exit720

if.end15.sink.split.i.i719:                       ; preds = %if.else.i.i717.if.end15.sink.split.i.i719_crit_edge, %net_zcopy_put_abort.exit.if.end15.sink.split.i.i719_crit_edge
  %.sink.i.i718 = phi i32 [ 2, %net_zcopy_put_abort.exit.if.end15.sink.split.i.i719_crit_edge ], [ 1, %if.else.i.i717.if.end15.sink.split.i.i719_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc377, i32 noundef %.sink.i.i718) #12
  br label %refcount_add.exit720

refcount_add.exit720:                             ; preds = %if.end15.sink.split.i.i719, %if.else.i.i717.refcount_add.exit720_crit_edge
  %306 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %err, align 4
  br label %cleanup378

cleanup378:                                       ; preds = %refcount_add.exit720, %if.end15.sink.split.i.i, %if.else.i.i.cleanup378_crit_edge, %while.end.cleanup378_crit_edge, %skb_zcopy.exit.thread.cleanup378_crit_edge, %skb_zcopy.exit.cleanup378_crit_edge, %cond.end53
  %retval.0 = phi i32 [ -90, %cond.end53 ], [ %307, %refcount_add.exit720 ], [ -105, %skb_zcopy.exit.cleanup378_crit_edge ], [ 0, %while.end.cleanup378_crit_edge ], [ -105, %skb_zcopy.exit.thread.cleanup378_crit_edge ], [ 0, %if.else.i.i.cleanup378_crit_edge ], [ 0, %if.end15.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_append_page(ptr noundef %sk, ptr nocapture noundef readonly %fl4, ptr noundef %page, i32 noundef %offset, i32 noundef %size, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %hdrincl = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 12
  %0 = ptrtoint ptr %hdrincl to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %hdrincl, align 8
  %1 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup148_crit_edge

entry.cleanup148_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup148

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup148_crit_edge

if.end.cleanup148_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup148

if.end3:                                          ; preds = %if.end
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %2 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i.not = icmp eq ptr %3, %sk_write_queue
  br i1 %cmp.i.not, label %if.end3.cleanup148_crit_edge, label %if.end7

if.end3.cleanup148_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup148

if.end7:                                          ; preds = %if.end3
  %cork8 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %dst = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 0, i32 5
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %6 = ptrtoint ptr %cork8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cork8, align 8
  %and10 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end7.if.end14_crit_edge, label %if.then12

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %opt13 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 0, i32 2
  %8 = ptrtoint ptr %opt13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %opt13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end7.if.end14_crit_edge
  %opt.0 = phi ptr [ %9, %if.then12 ], [ null, %if.end7.if.end14_crit_edge ]
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features, align 16
  %and16 = and i64 %13, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16)
  %tobool17.not = icmp eq i64 %and16, 0
  br i1 %tobool17.not, label %if.end14.cleanup148_crit_edge, label %if.end19

if.end14.cleanup148_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup148

if.end19:                                         ; preds = %if.end14
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 19
  %14 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %15 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 21
  %16 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %needed_headroom, align 8
  %conv24 = zext i16 %17 to i32
  %add = add nuw nsw i32 %conv24, %conv
  %and25 = and i32 %add, 131056
  %add26 = add nuw nsw i32 %and25, 16
  %gso_size = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 0, i32 10
  %18 = ptrtoint ptr %gso_size to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool28.not = icmp eq i16 %19, 0
  br i1 %tobool28.not, label %cond.false, label %if.end19.cond.end_crit_edge

if.end19.cond.end_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.false:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %fragsize = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 0, i32 3
  %20 = ptrtoint ptr %fragsize to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fragsize, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end19.cond.end_crit_edge
  %cond = phi i32 [ %21, %cond.false ], [ 65535, %if.end19.cond.end_crit_edge ]
  %tobool29.not = icmp eq ptr %opt.0, null
  br i1 %tobool29.not, label %cond.end.cond.end33_crit_edge, label %cond.true30

cond.end.cond.end33_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end33

cond.true30:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %optlen = getelementptr inbounds %struct.ip_options, ptr %opt.0, i32 0, i32 2
  %22 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %optlen, align 4
  %conv31 = zext i8 %23 to i32
  %phi.bo = add nuw nsw i32 %conv31, 20
  br label %cond.end33

cond.end33:                                       ; preds = %cond.true30, %cond.end.cond.end33_crit_edge
  %cond34 = phi i32 [ %phi.bo, %cond.true30 ], [ 20, %cond.end.cond.end33_crit_edge ]
  %sub = sub i32 %cond, %cond34
  %and36 = and i32 %sub, -8
  %add37 = add i32 %and36, %cond34
  %pmtudisc.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 11
  %24 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pmtudisc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp.i255 = icmp ult i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %25)
  %cmp5.i = icmp eq i8 %25, 5
  %spec.select.i = or i1 %cmp.i255, %cmp5.i
  %spec.select = select i1 %spec.select.i, i32 65535, i32 %cond
  %length = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 0, i32 4
  %26 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length, align 8
  %add44 = add i32 %27, %size
  %sub45 = sub i32 %spec.select, %cond34
  call void @__sanitizer_cov_trace_cmp4(i32 %add44, i32 %sub45)
  %cmp = icmp ugt i32 %add44, %sub45
  br i1 %cmp, label %if.then47, label %if.end57

if.then47:                                        ; preds = %cond.end33
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %28 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %daddr, align 4
  %30 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 4
  br i1 %tobool29.not, label %if.then47.cond.end54_crit_edge, label %cond.true50

if.then47.cond.end54_crit_edge:                   ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end54

cond.true50:                                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #14
  %optlen51 = getelementptr inbounds %struct.ip_options, ptr %opt.0, i32 0, i32 2
  %33 = ptrtoint ptr %optlen51 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %optlen51, align 4
  %conv52 = zext i8 %34 to i32
  br label %cond.end54

cond.end54:                                       ; preds = %cond.true50, %if.then47.cond.end54_crit_edge
  %cond55 = phi i32 [ %conv52, %cond.true50 ], [ 0, %if.then47.cond.end54_crit_edge ]
  %sub56 = sub i32 %cond, %cond55
  tail call void @ip_local_error(ptr noundef %sk, i32 noundef 90, i32 noundef %29, i16 noundef zeroext %32, i32 noundef %sub56) #12
  br label %cleanup148

if.end57:                                         ; preds = %cond.end33
  %prev.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 0, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i256 = icmp eq ptr %36, %sk_write_queue
  %tobool60.not268 = icmp eq ptr %36, null
  %tobool60.not = or i1 %cmp.i256, %tobool60.not268
  br i1 %tobool60.not, label %if.end57.cleanup148_crit_edge, label %if.end62

if.end57.cleanup148_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup148

if.end62:                                         ; preds = %if.end57
  %37 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add44, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp65.not278282 = icmp eq i32 %size, 0
  br i1 %cmp65.not278282, label %if.end62.cleanup148_crit_edge, label %while.body.lr.ph.lr.ph

if.end62.cleanup148_crit_edge:                    ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup148

while.body.lr.ph.lr.ph:                           ; preds = %if.end62
  %sk_wmem_alloc = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 23
  %sk_allocation = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %38 = trunc i32 %cond34 to i16
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %cleanup, %while.body.lr.ph.lr.ph
  %offset.addr.0.ph285 = phi i32 [ %offset, %while.body.lr.ph.lr.ph ], [ %offset.addr.0280, %cleanup ]
  %size.addr.0.ph284 = phi i32 [ %size, %while.body.lr.ph.lr.ph ], [ %size.addr.0279, %cleanup ]
  %skb.0.ph283 = phi ptr [ %36, %while.body.lr.ph.lr.ph ], [ %call83, %cleanup ]
  %len67 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph283, i32 0, i32 6
  %ip_summed114 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph283, i32 0, i32 15
  %39 = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph283, i32 0, i32 15, i32 0, i32 5
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph283, i32 0, i32 7
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph283, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %refcount_add.exit.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.0280 = phi i32 [ %offset.addr.0.ph285, %while.body.lr.ph ], [ %add131, %refcount_add.exit.while.body_crit_edge ]
  %size.addr.0279 = phi i32 [ %size.addr.0.ph284, %while.body.lr.ph ], [ %sub132, %refcount_add.exit.while.body_crit_edge ]
  %40 = ptrtoint ptr %len67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len67, align 4
  %sub68 = sub i32 %cond, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %sub68, i32 %size.addr.0279)
  %cmp69 = icmp ult i32 %sub68, %size.addr.0279
  %sub73 = sub i32 %add37, %41
  %spec.select249 = select i1 %cmp69, i32 %sub73, i32 %sub68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %spec.select249)
  %cmp75 = icmp slt i32 %spec.select249, 1
  br i1 %cmp75, label %if.then77, label %if.end105

if.then77:                                        ; preds = %while.body
  %sub79 = sub i32 %41, %add37
  %add80 = add i32 %sub79, %cond34
  %add81 = add i32 %add80, 15
  %add82 = add i32 %add81, %add26
  %42 = ptrtoint ptr %sk_allocation to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sk_allocation, align 8
  %call83 = tail call ptr @sock_wmalloc(ptr noundef %sk, i32 noundef %add82, i32 noundef 1, i32 noundef %43) #12
  %tobool84.not = icmp eq ptr %call83, null
  br i1 %tobool84.not, label %if.then77.error_crit_edge, label %if.end89, !prof !99

if.then77.error_crit_edge:                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end89:                                         ; preds = %if.then77
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %call83, i32 0, i32 15
  %44 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %44)
  %bf.load90 = load i16, ptr %ip_summed, align 8
  %bf.clear91 = and i16 %bf.load90, -1537
  store i16 %bf.clear91, ptr %ip_summed, align 8
  %45 = getelementptr inbounds %struct.sk_buff, ptr %call83, i32 0, i32 15, i32 0, i32 5
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %45, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call83, i32 0, i32 19
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %48, i32 %add26
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call83, i32 0, i32 16
  %49 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %50, i32 %add26
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call93 = tail call ptr @skb_put(ptr noundef nonnull %call83, i32 noundef %add80) #12
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call83, i32 0, i32 18
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %52 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i258 = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %call83, i32 0, i32 15, i32 0, i32 20
  %55 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i258, ptr %network_header.i, align 4
  %conv96 = add i16 %conv.i258, %38
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %call83, i32 0, i32 15, i32 0, i32 19
  %56 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv96, ptr %transport_header, align 2
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add37)
  %tobool97.not = icmp eq i32 %41, %add37
  br i1 %tobool97.not, label %if.end89.cleanup_crit_edge, label %if.then98

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then98:                                        ; preds = %if.end89
  %conv.i260 = zext i16 %conv96 to i32
  %add.ptr.i261 = getelementptr i8, ptr %54, i32 %conv.i260
  %call100 = tail call i32 @skb_copy_and_csum_bits(ptr noundef %skb.0.ph283, i32 noundef %add37, ptr noundef %add.ptr.i261, i32 noundef %sub79) #12
  %57 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call100, ptr %45, align 8
  %58 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %39, align 8
  %neg.i = xor i32 %call100, -1
  %add.i.i = add i32 %59, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %neg.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %neg.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %60 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add1.i.i, ptr %39, align 8
  %61 = ptrtoint ptr %len67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len67, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %add37)
  %cmp.i.i262 = icmp ugt i32 %62, %add37
  br i1 %cmp.i.i262, label %cond.true.i.i, label %if.then98.cleanup_crit_edge

if.then98.cleanup_crit_edge:                      ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cond.true.i.i:                                    ; preds = %if.then98
  %63 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %data_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i.i.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %pskb_trim.exit.i

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %len67 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add37, ptr %len67, align 4
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph283, i32 0, i32 19
  %66 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %67, i32 %add37
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0.ph283, i32 0, i32 16
  %68 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %cleanup

pskb_trim.exit.i:                                 ; preds = %cond.true.i.i
  %call.i.i.i = tail call i32 @___pskb_trim(ptr noundef %skb.0.ph283, i32 noundef %add37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %pskb_trim.exit.i.cleanup_crit_edge, label %do.body3.i, !prof !102

pskb_trim.exit.i.cleanup_crit_edge:               ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body3.i:                                       ; preds = %pskb_trim.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2827, 0\0A.popsection", ""() #12, !srcloc !124
  unreachable

cleanup:                                          ; preds = %pskb_trim.exit.i.cleanup_crit_edge, %__skb_trim.exit.i.i.i, %if.then98.cleanup_crit_edge, %if.end89.cleanup_crit_edge
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i, align 4
  %71 = ptrtoint ptr %call83 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %sk_write_queue, ptr %call83, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.83, ptr %call83, i32 0, i32 1
  %72 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %70, ptr %prev10.i.i.i, align 4
  store volatile ptr %call83, ptr %prev.i, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %call83, ptr %70, align 4
  %74 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %75, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %while.body.lr.ph

if.end105:                                        ; preds = %while.body
  %76 = tail call i32 @llvm.umin.i32(i32 %spec.select249, i32 %size.addr.0279)
  %call110 = tail call i32 @skb_append_pagefrags(ptr noundef %skb.0.ph283, ptr noundef %page, i32 noundef %offset.addr.0280, i32 noundef %76) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.end105.error_crit_edge

if.end105.error_crit_edge:                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end113:                                        ; preds = %if.end105
  %77 = ptrtoint ptr %ip_summed114 to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load115 = load i16, ptr %ip_summed114, align 8
  %78 = and i16 %bf.load115, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %cmp120 = icmp eq i16 %78, 0
  br i1 %cmp120, label %if.then122, label %if.end113.if.end126_crit_edge

if.end113.if.end126_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end126

if.then122:                                       ; preds = %if.end113
  tail call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 44) #12
  %79 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %page, align 4
  %shr.i.i.i = lshr i32 %80, 30
  %81 = zext i32 %shr.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %shr.i.i.i, label %if.then122.if.then.i.i_crit_edge [
    i32 2, label %if.then122.if.else.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i.i
  ]

if.then122.if.else.i.i_crit_edge:                 ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then122.if.then.i.i_crit_edge:                 ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

is_highmem_idx.exit.i.i:                          ; preds = %if.then122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %82 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp2.i.not.i.i = icmp eq i32 %82, 2
  br i1 %cmp2.i.not.i.i, label %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, label %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge

is_highmem_idx.exit.i.i.if.then.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i

is_highmem_idx.exit.i.i.if.else.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.then.i.i_crit_edge, %if.then122.if.then.i.i_crit_edge
  %call5.i.i = tail call ptr @page_address(ptr noundef %page) #12
  br label %kmap.exit.i

if.else.i.i:                                      ; preds = %is_highmem_idx.exit.i.i.if.else.i.i_crit_edge, %if.then122.if.else.i.i_crit_edge
  %call6.i.i = tail call ptr @kmap_high(ptr noundef %page) #12
  br label %kmap.exit.i

kmap.exit.i:                                      ; preds = %if.else.i.i, %if.then.i.i
  %addr.0.i.i = phi ptr [ %call6.i.i, %if.else.i.i ], [ %call5.i.i, %if.then.i.i ]
  %add.ptr.i263 = getelementptr i8, ptr %addr.0.i.i, i32 %offset.addr.0280
  %call1.i = tail call i32 @csum_partial(ptr noundef %add.ptr.i263, i32 noundef %76, i32 noundef 0) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str.25, i32 noundef 55) #12
  %83 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %page, align 4
  %shr.i.i3.i = lshr i32 %84, 30
  %85 = zext i32 %shr.i.i3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %shr.i.i3.i, label %kmap.exit.i.csum_page.exit_crit_edge [
    i32 2, label %kmap.exit.i.if.end.i.i_crit_edge
    i32 3, label %is_highmem_idx.exit.i5.i
  ]

kmap.exit.i.if.end.i.i_crit_edge:                 ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

kmap.exit.i.csum_page.exit_crit_edge:             ; preds = %kmap.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csum_page.exit

is_highmem_idx.exit.i5.i:                         ; preds = %kmap.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @movable_zone to i32))
  %86 = load i32, ptr @movable_zone, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %86)
  %cmp2.i.not.i4.i = icmp eq i32 %86, 2
  br i1 %cmp2.i.not.i4.i, label %is_highmem_idx.exit.i5.i.if.end.i.i_crit_edge, label %is_highmem_idx.exit.i5.i.csum_page.exit_crit_edge

is_highmem_idx.exit.i5.i.csum_page.exit_crit_edge: ; preds = %is_highmem_idx.exit.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %csum_page.exit

is_highmem_idx.exit.i5.i.if.end.i.i_crit_edge:    ; preds = %is_highmem_idx.exit.i5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %is_highmem_idx.exit.i5.i.if.end.i.i_crit_edge, %kmap.exit.i.if.end.i.i_crit_edge
  tail call void @kunmap_high(ptr noundef %page) #12
  br label %csum_page.exit

csum_page.exit:                                   ; preds = %if.end.i.i, %is_highmem_idx.exit.i5.i.csum_page.exit_crit_edge, %kmap.exit.i.csum_page.exit_crit_edge
  %87 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %39, align 8
  %89 = ptrtoint ptr %len67 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len67, align 4
  %and.i.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %call1.i, i32 %call1.i, i32 24) #12
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %call1.i, i32 %or.i.i.i
  %add.i.i251 = add i32 %retval.0.i.i, %88
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i251, i32 %retval.0.i.i)
  %cmp.i.i252 = icmp ult i32 %add.i.i251, %retval.0.i.i
  %conv.i.i253 = zext i1 %cmp.i.i252 to i32
  %add1.i.i254 = add i32 %add.i.i251, %conv.i.i253
  %91 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %add1.i.i254, ptr %39, align 8
  br label %if.end126

if.end126:                                        ; preds = %csum_page.exit, %if.end113.if.end126_crit_edge
  %92 = ptrtoint ptr %len67 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %len67, align 4
  %add128 = add i32 %93, %76
  store i32 %add128, ptr %len67, align 4
  %94 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %data_len, align 8
  %add129 = add i32 %95, %76
  store i32 %add129, ptr %data_len, align 8
  %96 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %truesize, align 8
  %add130 = add i32 %97, %76
  store i32 %add130, ptr %truesize, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc, i32 1, i32 3, i32 1) #12
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc, ptr %sk_wmem_alloc, i32 %76, ptr elementtype(i32) %sk_wmem_alloc) #12, !srcloc !116
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end126.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i265, !prof !99

if.end126.if.end15.sink.split.i.i_crit_edge:      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i265:                                   ; preds = %if.end126
  %add.i.i264 = add i32 %asmresult.i.i.i.i, %76
  %99 = or i32 %add.i.i264, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %99)
  %.not.i.i = icmp sgt i32 %99, -1
  br i1 %.not.i.i, label %if.else.i.i265.refcount_add.exit_crit_edge, label %if.else.i.i265.if.end15.sink.split.i.i_crit_edge, !prof !102

if.else.i.i265.if.end15.sink.split.i.i_crit_edge: ; preds = %if.else.i.i265
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i265.refcount_add.exit_crit_edge:       ; preds = %if.else.i.i265
  call void @__sanitizer_cov_trace_pc() #14
  br label %refcount_add.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i265.if.end15.sink.split.i.i_crit_edge, %if.end126.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %if.end126.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i265.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc, i32 noundef %.sink.i.i) #12
  br label %refcount_add.exit

refcount_add.exit:                                ; preds = %if.end15.sink.split.i.i, %if.else.i.i265.refcount_add.exit_crit_edge
  %add131 = add i32 %76, %offset.addr.0280
  %sub132 = sub i32 %size.addr.0279, %76
  %cmp65.not = icmp eq i32 %sub132, 0
  br i1 %cmp65.not, label %refcount_add.exit.cleanup148_crit_edge, label %refcount_add.exit.while.body_crit_edge

refcount_add.exit.while.body_crit_edge:           ; preds = %refcount_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

refcount_add.exit.cleanup148_crit_edge:           ; preds = %refcount_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup148

error:                                            ; preds = %if.end105.error_crit_edge, %if.then77.error_crit_edge
  %err.2 = phi i32 [ -90, %if.end105.error_crit_edge ], [ -105, %if.then77.error_crit_edge ]
  %100 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %length, align 8
  %sub134 = sub i32 %101, %size.addr.0279
  store i32 %sub134, ptr %length, align 8
  tail call fastcc void @local_bh_disable()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %102 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %skc_net.i, align 4
  %mib = getelementptr inbounds %struct.net, ptr %103, i32 0, i32 30
  %104 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mib, align 4
  %106 = ptrtoint ptr %105 to i32
  %107 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i = and i32 %107, -16384
  %108 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %110
  %111 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx, align 4
  %add140 = add i32 %112, %106
  %113 = inttoptr i32 %add140 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %113, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx141 = getelementptr [37 x i64], ptr %113, i32 0, i32 14
  %114 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx141, align 8
  %add142 = add i64 %115, 1
  store i64 %add142, ptr %arrayidx141, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %113, i32 0, i32 1, i32 0, i32 1
  %116 = tail call ptr @llvm.returnaddress(i32 0) #12
  %117 = ptrtoint ptr %116 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %117) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %118 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %119, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %cleanup148

cleanup148:                                       ; preds = %error, %refcount_add.exit.cleanup148_crit_edge, %if.end62.cleanup148_crit_edge, %if.end57.cleanup148_crit_edge, %cond.end54, %if.end14.cleanup148_crit_edge, %if.end3.cleanup148_crit_edge, %if.end.cleanup148_crit_edge, %entry.cleanup148_crit_edge
  %retval.0 = phi i32 [ -90, %cond.end54 ], [ %err.2, %error ], [ -1, %entry.cleanup148_crit_edge ], [ 0, %if.end.cleanup148_crit_edge ], [ -22, %if.end3.cleanup148_crit_edge ], [ -95, %if.end14.cleanup148_crit_edge ], [ -22, %if.end57.cleanup148_crit_edge ], [ 0, %if.end62.cleanup148_crit_edge ], [ 0, %refcount_add.exit.cleanup148_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_local_error(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_wmalloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_append_pagefrags(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @__ip_make_skb(ptr noundef %sk, ptr nocapture noundef readonly %fl4, ptr noundef %queue, ptr nocapture noundef %cork) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %dst = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 5
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 4
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %cmp.i.i = icmp eq ptr %5, %queue
  %spec.store.select.i.i = select i1 %cmp.i.i, ptr null, ptr %5
  %tobool.not.i = icmp eq ptr %spec.store.select.i.i, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %entry
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %6 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i, ptr %qlen.i.i, align 4
  %8 = ptrtoint ptr %spec.store.select.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spec.store.select.i.i, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.83, ptr %spec.store.select.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %spec.store.select.i.i, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.83, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %prev17.i.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %11, align 8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 17
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %end.i, align 4
  %frag_list = getelementptr inbounds %struct.skb_shared_info, ptr %15, i32 0, i32 6
  %data = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 18
  %18 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 20
  %20 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %network_header.i, align 4
  %conv.i = zext i16 %21 to i32
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv.i
  %cmp = icmp ult ptr %17, %add.ptr.i
  br i1 %cmp, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then5:                                         ; preds = %if.end
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %23, %sub.ptr.sub.i
  store i32 %sub.i, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 7
  %24 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %25)
  %cmp.i = icmp ult i32 %sub.i, %25
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !99

do.body4.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

__skb_pull.exit:                                  ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i175 = getelementptr i8, ptr %17, i32 %sub.ptr.sub.i
  %26 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i175, ptr %data, align 4
  br label %if.end8

if.end8:                                          ; preds = %__skb_pull.exit, %if.end.if.end8_crit_edge
  %27 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue, align 4
  %cmp.i.i176218 = icmp eq ptr %28, %queue
  %tobool.not.i178217219 = icmp eq ptr %28, null
  %tobool.not.i178220 = or i1 %cmp.i.i176218, %tobool.not.i178217219
  br i1 %tobool.not.i178220, label %if.end8.while.end_crit_edge, label %while.body.lr.ph

if.end8.while.end_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 19
  %len13 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 7
  %truesize16 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %__skb_pull.exit195.while.body_crit_edge, %while.body.lr.ph
  %29 = phi ptr [ %28, %while.body.lr.ph ], [ %64, %__skb_pull.exit195.while.body_crit_edge ]
  %tail_skb.0221 = phi ptr [ %frag_list, %while.body.lr.ph ], [ %29, %__skb_pull.exit195.while.body_crit_edge ]
  %30 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %qlen.i.i, align 4
  %sub.i.i180 = add i32 %31, -1
  store volatile i32 %sub.i.i180, ptr %qlen.i.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %29, align 8
  %prev9.i.i181 = getelementptr inbounds %struct.anon.83, ptr %29, i32 0, i32 1
  %34 = ptrtoint ptr %prev9.i.i181 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev9.i.i181, align 4
  store ptr null, ptr %prev9.i.i181, align 4
  store ptr null, ptr %29, align 8
  %prev17.i.i182 = getelementptr inbounds %struct.anon.83, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %prev17.i.i182 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %35, ptr %prev17.i.i182, align 4
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %33, ptr %35, align 8
  %38 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %transport_header.i, align 2
  %conv.i185 = zext i16 %39 to i32
  %40 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %network_header.i, align 4
  %conv1.i = zext i16 %41 to i32
  %sub.i187 = sub nsw i32 %conv.i185, %conv1.i
  %len1.i188 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 6
  %42 = ptrtoint ptr %len1.i188 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len1.i188, align 4
  %sub.i189 = sub i32 %43, %sub.i187
  store i32 %sub.i189, ptr %len1.i188, align 4
  %data_len.i190 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i190 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i190, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i189, i32 %45)
  %cmp.i191 = icmp ult i32 %sub.i189, %45
  br i1 %cmp.i191, label %do.body4.i192, label %__skb_pull.exit195, !prof !99

do.body4.i192:                                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #12, !srcloc !127
  unreachable

__skb_pull.exit195:                               ; preds = %while.body
  %data.i193 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 19
  %46 = ptrtoint ptr %data.i193 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i193, align 4
  %add.ptr.i194 = getelementptr i8, ptr %47, i32 %sub.i187
  store ptr %add.ptr.i194, ptr %data.i193, align 4
  %48 = ptrtoint ptr %tail_skb.0221 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %29, ptr %tail_skb.0221, align 4
  %49 = ptrtoint ptr %len1.i188 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len1.i188, align 4
  %51 = ptrtoint ptr %len13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len13, align 4
  %add = add i32 %52, %50
  store i32 %add, ptr %len13, align 4
  %53 = load i32, ptr %len1.i188, align 4
  %54 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data_len, align 8
  %add15 = add i32 %55, %53
  store i32 %add15, ptr %data_len, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 20
  %56 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %truesize, align 8
  %58 = ptrtoint ptr %truesize16 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %truesize16, align 8
  %add17 = add i32 %59, %57
  store i32 %add17, ptr %truesize16, align 8
  %destructor = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 4, i32 0, i32 1
  %60 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %destructor, align 4
  %61 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 1
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %61, align 4
  %63 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %queue, align 4
  %cmp.i.i176 = icmp eq ptr %64, %queue
  %tobool.not.i178217 = icmp eq ptr %64, null
  %tobool.not.i178 = or i1 %cmp.i.i176, %tobool.not.i178217
  br i1 %tobool.not.i178, label %__skb_pull.exit195.while.end_crit_edge, label %__skb_pull.exit195.while.body_crit_edge

__skb_pull.exit195.while.body_crit_edge:          ; preds = %__skb_pull.exit195
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

__skb_pull.exit195.while.end_crit_edge:           ; preds = %__skb_pull.exit195
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %__skb_pull.exit195.while.end_crit_edge, %if.end8.while.end_crit_edge
  %pmtudisc.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 11
  %65 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %pmtudisc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %66)
  %cmp.i196 = icmp ult i8 %66, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %66)
  %cmp5.i = icmp eq i8 %66, 5
  %spec.select.i = or i1 %cmp.i196, %cmp5.i
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15
  %67 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.shl = select i1 %spec.select.i, i16 4096, i16 0
  %bf.clear = and i16 %bf.load, -4097
  %bf.set = or i16 %bf.shl, %bf.clear
  store i16 %bf.set, ptr %ignore_df, align 8
  %68 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pmtudisc.i, align 1
  %70 = and i8 %69, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %70)
  %switch = icmp eq i8 %70, 2
  br i1 %switch, label %while.end.if.then35_crit_edge, label %lor.lhs.false26

while.end.if.then35_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

lor.lhs.false26:                                  ; preds = %while.end
  %len27 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 6
  %71 = ptrtoint ptr %len27 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len27, align 4
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %3, i32 0, i32 1
  %73 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %74, i32 0, i32 5
  %75 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mtu.i, align 4
  %call.i = tail call i32 %76(ptr noundef %3) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %call.i)
  %cmp30.not = icmp ugt i32 %72, %call.i
  br i1 %cmp30.not, label %lor.lhs.false26.if.end36_crit_edge, label %land.lhs.true

lor.lhs.false26.if.end36_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.lhs.true:                                    ; preds = %lor.lhs.false26
  %77 = ptrtoint ptr %pmtudisc.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load volatile i8, ptr %pmtudisc.i, align 1
  %79 = zext i8 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %78, label %land.lhs.true.if.end36_crit_edge [
    i8 2, label %land.lhs.true.if.then35_crit_edge
    i8 1, label %land.rhs.i
  ]

land.lhs.true.if.then35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

land.rhs.i:                                       ; preds = %land.lhs.true
  %rt_mtu_locked.i.i = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 9
  %80 = ptrtoint ptr %rt_mtu_locked.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %bf.load.i.i = load i32, ptr %rt_mtu_locked.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %ip_dont_fragment.exit, label %land.rhs.i.if.end36_crit_edge

land.rhs.i.if.end36_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

ip_dont_fragment.exit:                            ; preds = %land.rhs.i
  %_metrics.i.i.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %3, i32 0, i32 2
  %81 = ptrtoint ptr %_metrics.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %_metrics.i.i.i.i.i, align 4
  %and.i.i.i.i.i = and i32 %82, -4
  %83 = inttoptr i32 %and.i.i.i.i.i to ptr
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %83, align 4
  %86 = and i32 %85, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool34.not.not = icmp eq i32 %86, 0
  br i1 %tobool34.not.not, label %ip_dont_fragment.exit.if.then35_crit_edge, label %ip_dont_fragment.exit.if.end36_crit_edge

ip_dont_fragment.exit.if.end36_crit_edge:         ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

ip_dont_fragment.exit.if.then35_crit_edge:        ; preds = %ip_dont_fragment.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then35

if.then35:                                        ; preds = %ip_dont_fragment.exit.if.then35_crit_edge, %land.lhs.true.if.then35_crit_edge, %while.end.if.then35_crit_edge
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %ip_dont_fragment.exit.if.end36_crit_edge, %land.rhs.i.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %lor.lhs.false26.if.end36_crit_edge
  %df.0 = phi i16 [ 16384, %if.then35 ], [ 0, %ip_dont_fragment.exit.if.end36_crit_edge ], [ 0, %lor.lhs.false26.if.end36_crit_edge ], [ 0, %land.rhs.i.if.end36_crit_edge ], [ 0, %land.lhs.true.if.end36_crit_edge ]
  %87 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cork, align 8
  %and = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %if.end36.if.end40_crit_edge, label %if.then38

if.end36.if.end40_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then38:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  %opt39 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 2
  %89 = ptrtoint ptr %opt39 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %opt39, align 8
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end36.if.end40_crit_edge
  %opt.0 = phi ptr [ %90, %if.then38 ], [ null, %if.end36.if.end40_crit_edge ]
  %ttl41 = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 7
  %91 = ptrtoint ptr %ttl41 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %ttl41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp43.not = icmp eq i8 %92, 0
  br i1 %cmp43.not, label %if.else, label %if.end40.if.end56_crit_edge

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

if.else:                                          ; preds = %if.end40
  %rt_type = getelementptr inbounds %struct.rtable, ptr %3, i32 0, i32 3
  %93 = ptrtoint ptr %rt_type to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %rt_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %94)
  %cmp48 = icmp eq i16 %94, 5
  br i1 %cmp48, label %if.then50, label %if.else51

if.then50:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %mc_ttl = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 10
  %95 = ptrtoint ptr %mc_ttl to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %mc_ttl, align 2
  br label %if.end56

if.else51:                                        ; preds = %if.else
  %uc_ttl.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 3
  %97 = ptrtoint ptr %uc_ttl.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %uc_ttl.i, align 8
  %conv.i197222 = zext i16 %98 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %98)
  %cmp.i198 = icmp slt i16 %98, 0
  br i1 %cmp.i198, label %if.then.i200, label %if.else51.ip_select_ttl.exit_crit_edge

if.else51.ip_select_ttl.exit_crit_edge:           ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_select_ttl.exit

if.then.i200:                                     ; preds = %if.else51
  %_metrics.i.i.i = getelementptr inbounds %struct.dst_entry, ptr %3, i32 0, i32 2
  %99 = ptrtoint ptr %_metrics.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %_metrics.i.i.i, align 4
  %and.i.i.i = and i32 %100, -4
  %101 = inttoptr i32 %and.i.i.i to ptr
  %arrayidx.i.i.i = getelementptr i32, ptr %101, i32 9
  %102 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i.i199 = icmp eq i32 %103, 0
  br i1 %cmp.i.i199, label %if.then.i.i, label %if.then.i200.ip_select_ttl.exit_crit_edge

if.then.i200.ip_select_ttl.exit_crit_edge:        ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_select_ttl.exit

if.then.i.i:                                      ; preds = %if.then.i200
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %3, align 4
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %105, i32 0, i32 127
  %106 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nd_net.i.i.i, align 4
  %sysctl_ip_default_ttl.i.i = getelementptr inbounds %struct.net, ptr %107, i32 0, i32 35, i32 37
  %108 = ptrtoint ptr %sysctl_ip_default_ttl.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %sysctl_ip_default_ttl.i.i, align 2
  %conv.i.i201 = zext i8 %109 to i32
  br label %ip_select_ttl.exit

ip_select_ttl.exit:                               ; preds = %if.then.i.i, %if.then.i200.ip_select_ttl.exit_crit_edge, %if.else51.ip_select_ttl.exit_crit_edge
  %ttl.0.i = phi i32 [ %conv.i197222, %if.else51.ip_select_ttl.exit_crit_edge ], [ %conv.i.i201, %if.then.i.i ], [ %103, %if.then.i200.ip_select_ttl.exit_crit_edge ]
  %conv54 = trunc i32 %ttl.0.i to i8
  br label %if.end56

if.end56:                                         ; preds = %ip_select_ttl.exit, %if.then50, %if.end40.if.end56_crit_edge
  %ttl.0 = phi i8 [ %96, %if.then50 ], [ %conv54, %ip_select_ttl.exit ], [ %92, %if.end40.if.end56_crit_edge ]
  %110 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %head.i, align 8
  %112 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %network_header.i, align 4
  %conv.i.i204 = zext i16 %113 to i32
  %add.ptr.i.i205 = getelementptr i8, ptr %111, i32 %conv.i.i204
  %114 = ptrtoint ptr %add.ptr.i.i205 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 69, ptr %add.ptr.i.i205, align 4
  %tos = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 8
  %115 = ptrtoint ptr %tos to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %tos, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %116)
  %cmp65.not = icmp eq i16 %116, -1
  br i1 %cmp65.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %conv64 = trunc i16 %116 to i8
  br label %cond.end

cond.false:                                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %tos69 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %117 = ptrtoint ptr %tos69 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %tos69, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8 [ %conv64, %cond.true ], [ %118, %cond.false ]
  %tos72 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i205, i32 0, i32 1
  %119 = ptrtoint ptr %tos72 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %cond, ptr %tos72, align 1
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i205, i32 0, i32 4
  %120 = ptrtoint ptr %frag_off to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %df.0, ptr %frag_off, align 2
  %ttl73 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i205, i32 0, i32 5
  %121 = ptrtoint ptr %ttl73 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %ttl.0, ptr %ttl73, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %122 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %sk_protocol, align 4
  %conv74 = trunc i16 %123 to i8
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i205, i32 0, i32 6
  %124 = ptrtoint ptr %protocol to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv74, ptr %protocol, align 1
  %saddr.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %125 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %saddr.i, align 8
  %saddr1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i205, i32 0, i32 8
  %127 = ptrtoint ptr %saddr1.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %saddr1.i, align 4
  %daddr.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %128 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %daddr.i, align 4
  %daddr2.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i205, i32 0, i32 9
  %130 = ptrtoint ptr %daddr2.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %daddr2.i, align 4
  %131 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %head.i, align 8
  %133 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i.i = zext i16 %134 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %132, i32 %conv.i.i.i.i
  %tobool.not.i.i206 = icmp eq ptr %sk, null
  br i1 %tobool.not.i.i206, label %cond.end.if.end.i.i_crit_edge, label %land.lhs.true.i.i

cond.end.if.end.i.i_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %cond.end
  %135 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %sk, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool3.not.i.i = icmp eq i32 %136, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i207

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i.i207:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inet_id.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 7
  %137 = ptrtoint ptr %inet_id.i.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %inet_id.i.i, align 2
  %id.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %139 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 %138, ptr %id.i.i, align 4
  %140 = load i16, ptr %inet_id.i.i, align 2
  %conv7.i.i = add i16 %140, 1
  store i16 %conv7.i.i, ptr %inet_id.i.i, align 2
  br label %ip_select_ident.exit

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %cond.end.if.end.i.i_crit_edge
  %frag_off.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 4
  %141 = ptrtoint ptr %frag_off.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %frag_off.i.i, align 2
  %143 = and i16 %142, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool9.not.i.i = icmp eq i16 %143, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i.if.else.i.i_crit_edge, label %land.lhs.true10.i.i

if.end.i.i.if.else.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

land.lhs.true10.i.i:                              ; preds = %if.end.i.i
  %144 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %144)
  %bf.load.i.i208 = load i16, ptr %ignore_df, align 8
  %145 = and i16 %bf.load.i.i208, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %tobool11.not.i.i = icmp eq i16 %145, 0
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %land.lhs.true10.i.i.if.else.i.i_crit_edge

land.lhs.true10.i.i.if.else.i.i_crit_edge:        ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else.i.i

if.then12.i.i:                                    ; preds = %land.lhs.true10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %id13.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %146 = ptrtoint ptr %id13.i.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %id13.i.i, align 4
  br label %ip_select_ident.exit

if.else.i.i:                                      ; preds = %land.lhs.true10.i.i.if.else.i.i_crit_edge, %if.end.i.i.if.else.i.i_crit_edge
  tail call void @__ip_select_ident(ptr noundef %1, ptr noundef %add.ptr.i.i.i.i, i32 noundef 1) #12
  br label %ip_select_ident.exit

ip_select_ident.exit:                             ; preds = %if.else.i.i, %if.then12.i.i, %if.then.i.i207
  %tobool75.not = icmp eq ptr %opt.0, null
  br i1 %tobool75.not, label %ip_select_ident.exit.if.end87_crit_edge, label %if.then76

ip_select_ident.exit.if.end87_crit_edge:          ; preds = %ip_select_ident.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end87

if.then76:                                        ; preds = %ip_select_ident.exit
  call void @__sanitizer_cov_trace_pc() #14
  %optlen = getelementptr inbounds %struct.ip_options, ptr %opt.0, i32 0, i32 2
  %147 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %optlen, align 4
  %149 = lshr i8 %148, 2
  %150 = ptrtoint ptr %add.ptr.i.i205 to i32
  call void @__asan_load1_noabort(i32 %150)
  %bf.load78 = load i8, ptr %add.ptr.i.i205, align 4
  %narrow = add i8 %bf.load78, %149
  %bf.value84 = and i8 %narrow, 15
  %bf.clear85 = and i8 %bf.load78, -16
  %bf.set86 = or i8 %bf.value84, %bf.clear85
  store i8 %bf.set86, ptr %add.ptr.i.i205, align 4
  %addr = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 1
  %151 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %addr, align 4
  tail call void @ip_options_build(ptr noundef %spec.store.select.i.i, ptr noundef nonnull %opt.0, i32 noundef %152, ptr noundef %3, i32 noundef 0) #12
  br label %if.end87

if.end87:                                         ; preds = %if.then76, %ip_select_ident.exit.if.end87_crit_edge
  %153 = ptrtoint ptr %tos to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %tos, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %154)
  %cmp90.not = icmp eq i16 %154, -1
  br i1 %cmp90.not, label %cond.false94, label %cond.true92

cond.true92:                                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %priority = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 9
  %155 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %priority, align 4
  %conv93 = zext i8 %156 to i32
  br label %cond.end95

cond.false94:                                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #14
  %sk_priority = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 33
  %157 = ptrtoint ptr %sk_priority to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %sk_priority, align 4
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false94, %cond.true92
  %cond96 = phi i32 [ %conv93, %cond.true92 ], [ %158, %cond.false94 ]
  %priority97 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 6
  %159 = ptrtoint ptr %priority97 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %cond96, ptr %priority97, align 4
  %mark = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 12
  %160 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %mark, align 8
  %162 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 13
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %161, ptr %162, align 4
  %transmit_time = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 11
  %164 = ptrtoint ptr %transmit_time to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %transmit_time, align 8
  %166 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 2
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_store8_noabort(i32 %167)
  store i64 %165, ptr %166, align 8
  %168 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr null, ptr %dst, align 4
  %tobool.not.i209 = icmp eq ptr %3, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 3
  %169 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i209, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %170 = ptrtoint ptr %3 to i32
  %171 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 4
  %172 = ptrtoint ptr %171 to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %170, ptr %171, align 8
  %173 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %174)
  %cmp102 = icmp eq i8 %174, 1
  br i1 %cmp102, label %if.then104, label %cond.end95.if.end106_crit_edge

cond.end95.if.end106_crit_edge:                   ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end106

if.then104:                                       ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %head.i, align 8
  %transport_header.i211 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i.i, i32 0, i32 15, i32 0, i32 19
  %177 = ptrtoint ptr %transport_header.i211 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %transport_header.i211, align 2
  %conv.i212 = zext i16 %178 to i32
  %add.ptr.i213 = getelementptr i8, ptr %176, i32 %conv.i212
  %179 = ptrtoint ptr %add.ptr.i213 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %add.ptr.i213, align 4
  tail call void @icmp_out_count(ptr noundef %1, i8 noundef zeroext %180) #12
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %cond.end95.if.end106_crit_edge
  %181 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %cork, align 8
  %and.i = and i32 %182, -2
  store i32 %and.i, ptr %cork, align 8
  %opt.i = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 2
  %183 = ptrtoint ptr %opt.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %opt.i, align 8
  tail call void @kfree(ptr noundef %184) #12
  %185 = ptrtoint ptr %opt.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %opt.i, align 8
  %186 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %dst, align 4
  tail call void @dst_release(ptr noundef %187) #12
  %188 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr null, ptr %dst, align 4
  br label %out

out:                                              ; preds = %if.end106, %entry.out_crit_edge
  ret ptr %spec.store.select.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icmp_out_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_send_skb(ptr noundef %net, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call.i = tail call i32 @__ip_local_out(ptr noundef %net, ptr noundef %2, ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  br i1 %cmp.i, label %if.then.i, label %entry.ip_local_out.exit_crit_edge, !prof !102

entry.ip_local_out.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_local_out.exit

if.then.i:                                        ; preds = %entry
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.dst_output.exit.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.dst_output.exit.i_crit_edge:            ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge

land.lhs.true.i.i.i.dst_output.exit.i_crit_edge:  ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.dst_output.exit.i_crit_edge, !prof !99

land.rhs.i.i.i.dst_output.exit.i_crit_edge:       ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %dst_output.exit.i

dst_output.exit.i:                                ; preds = %do.end.i.i.i, %land.rhs.i.i.i.dst_output.exit.i_crit_edge, %land.lhs.true.i.i.i.dst_output.exit.i_crit_edge, %if.then.i.dst_output.exit.i_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %and25.i.i.i = and i32 %7, -2
  %8 = inttoptr i32 %and25.i.i.i to ptr
  %output.i.i = getelementptr inbounds %struct.dst_entry, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %output.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %output.i.i, align 4
  %call1.i.i = tail call i32 %10(ptr noundef %net, ptr noundef %2, ptr noundef %skb) #12
  br label %ip_local_out.exit

ip_local_out.exit:                                ; preds = %dst_output.exit.i, %entry.ip_local_out.exit_crit_edge
  %err.0.i = phi i32 [ %call1.i.i, %dst_output.exit.i ], [ %call.i, %entry.ip_local_out.exit_crit_edge ]
  %11 = zext i32 %err.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %err.0.i, label %do.body [
    i32 0, label %ip_local_out.exit.if.end17_crit_edge
    i32 2, label %ip_local_out.exit.if.end17_crit_edge26
  ]

ip_local_out.exit.if.end17_crit_edge26:           ; preds = %ip_local_out.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

ip_local_out.exit.if.end17_crit_edge:             ; preds = %ip_local_out.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

do.body:                                          ; preds = %ip_local_out.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp = icmp sgt i32 %err.0.i, 0
  %err.0 = select i1 %cmp, i32 -105, i32 %err.0.i
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %12 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mib, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %add = add i32 %20, %14
  %21 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %21, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx9 = getelementptr [37 x i64], ptr %21, i32 0, i32 14
  %22 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx9, align 8
  %add10 = add i64 %23, 1
  store i64 %add10, ptr %arrayidx9, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %21, i32 0, i32 1, i32 0, i32 1
  %24 = tail call ptr @llvm.returnaddress(i32 0) #12
  %25 = ptrtoint ptr %24 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %25) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %26 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %if.end17

if.end17:                                         ; preds = %do.body, %ip_local_out.exit.if.end17_crit_edge, %ip_local_out.exit.if.end17_crit_edge26
  %err.1 = phi i32 [ %err.0, %do.body ], [ 0, %ip_local_out.exit.if.end17_crit_edge ], [ 0, %ip_local_out.exit.if.end17_crit_edge26 ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ip_push_pending_frames(ptr noundef %sk, ptr nocapture noundef readonly %fl4) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %cork.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %call1.i = tail call ptr @__ip_make_skb(ptr noundef %sk, ptr noundef %fl4, ptr noundef %sk_write_queue.i, ptr noundef %cork.i) #12
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %call2 = tail call i32 @ip_send_skb(ptr noundef %1, ptr noundef nonnull %call1.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_flush_pending_frames(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %prev.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %prev.i.i.i, align 4
  %cmp.i.i2.i = icmp eq ptr %1, %sk_write_queue
  %tobool.not.i13.i = icmp eq ptr %1, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %entry.__ip_flush_pending_frames.exit_crit_edge, label %while.body.lr.ph.i

entry.__ip_flush_pending_frames.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ip_flush_pending_frames.exit

while.body.lr.ph.i:                               ; preds = %entry
  %qlen.i.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %12, %while.body.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #12
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %prev.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %12, %sk_write_queue
  %tobool.not.i1.i = icmp eq ptr %12, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__ip_flush_pending_frames.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.__ip_flush_pending_frames.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ip_flush_pending_frames.exit

__ip_flush_pending_frames.exit:                   ; preds = %while.body.i.__ip_flush_pending_frames.exit_crit_edge, %entry.__ip_flush_pending_frames.exit_crit_edge
  %cork = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %13 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cork, align 8
  %and.i.i = and i32 %14, -2
  store i32 %and.i.i, ptr %cork, align 8
  %opt.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 0, i32 2
  %15 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %opt.i.i, align 8
  tail call void @kfree(ptr noundef %16) #12
  %17 = ptrtoint ptr %opt.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %opt.i.i, align 8
  %dst.i.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19, i32 0, i32 5
  %18 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst.i.i, align 4
  tail call void @dst_release(ptr noundef %19) #12
  %20 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %dst.i.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ip_make_skb(ptr noundef %sk, ptr nocapture noundef readonly %fl4, ptr nocapture noundef readonly %getfrag, ptr noundef %from, i32 noundef %length, i32 noundef %transhdrlen, ptr nocapture noundef readonly %ipc, ptr nocapture noundef %rtp, ptr noundef %cork, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %queue = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %queue) #12
  %0 = getelementptr inbounds i8, ptr %queue, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %and = and i32 %flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.anon.90, ptr %queue, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %queue, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %queue, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %5 = ptrtoint ptr %cork to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %cork, align 8
  %addr = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %addr, align 4
  %opt = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 2
  %7 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %opt, align 8
  %call = call fastcc i32 @ip_setup_cork(ptr noundef %sk, ptr noundef %cork, ptr noundef %ipc, ptr noundef %rtp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = inttoptr i32 %call to ptr
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %task_frag = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 180
  %call7 = call fastcc i32 @__ip_append_data(ptr noundef %sk, ptr noundef %fl4, ptr noundef nonnull %queue, ptr noundef %cork, ptr noundef %task_frag, ptr noundef %getfrag, ptr noundef %from, i32 noundef %length, i32 noundef %transhdrlen, i32 noundef %flags)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end5
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i.i2.i = icmp eq ptr %14, %queue
  %tobool.not.i13.i = icmp eq ptr %14, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then9.__ip_flush_pending_frames.exit_crit_edge, label %if.then9.while.body.i_crit_edge

if.then9.while.body.i_crit_edge:                  ; preds = %if.then9
  br label %while.body.i

if.then9.__ip_flush_pending_frames.exit_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ip_flush_pending_frames.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then9.while.body.i_crit_edge
  %15 = phi ptr [ %25, %while.body.i.while.body.i_crit_edge ], [ %14, %if.then9.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.83, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %15, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.83, ptr %19, i32 0, i32 1
  %22 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %21, ptr %prev17.i.i.i, align 4
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %19, ptr %21, align 8
  call void @kfree_skb_reason(ptr noundef nonnull %15, i32 noundef 0) #12
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i.i.i = icmp eq ptr %25, %queue
  %tobool.not.i1.i = icmp eq ptr %25, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__ip_flush_pending_frames.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.body.i.__ip_flush_pending_frames.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__ip_flush_pending_frames.exit

__ip_flush_pending_frames.exit:                   ; preds = %while.body.i.__ip_flush_pending_frames.exit_crit_edge, %if.then9.__ip_flush_pending_frames.exit_crit_edge
  %26 = ptrtoint ptr %cork to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cork, align 8
  %and.i.i = and i32 %27, -2
  store i32 %and.i.i, ptr %cork, align 8
  %28 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %opt, align 8
  call void @kfree(ptr noundef %29) #12
  %30 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %opt, align 8
  %dst.i.i = getelementptr inbounds %struct.inet_cork, ptr %cork, i32 0, i32 5
  %31 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst.i.i, align 4
  call void @dst_release(ptr noundef %32) #12
  %33 = ptrtoint ptr %dst.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %dst.i.i, align 4
  %34 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call12 = call ptr @__ip_make_skb(ptr noundef %sk, ptr noundef %fl4, ptr noundef nonnull %queue, ptr noundef %cork)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %__ip_flush_pending_frames.exit, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %if.then3 ], [ %34, %__ip_flush_pending_frames.exit ], [ %call12, %if.end11 ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %queue) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_send_unicast_reply(ptr noundef %sk, ptr noundef %skb, ptr noundef %sopt, i32 noundef %daddr, i32 noundef %saddr, ptr nocapture noundef readonly %arg, i32 noundef %len, i64 noundef %transmit_time) local_unnamed_addr #0 align 64 {
entry:
  %replyopts = alloca %struct.ip_options_data, align 4
  %ipc = alloca %struct.ipcm_cookie, align 8
  %fl4 = alloca %struct.flowi4, align 8
  %rt = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %replyopts) #12
  %0 = call ptr @memset(ptr %replyopts, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ipc) #12
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #12
  %1 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt) #12
  %2 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %rt, align 4, !annotation !120
  %3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %and.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.skb_rtable.exit_crit_edge, label %land.lhs.true.i.i

entry.skb_rtable.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.lhs.true.i.i:                                ; preds = %entry
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !99

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %6 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %skc_net.i, align 4
  %opt2 = getelementptr inbounds %struct.ip_options_rcu, ptr %replyopts, i32 0, i32 1
  %call3 = call i32 @__ip_options_echo(ptr noundef %7, ptr noundef %opt2, ptr noundef %skb, ptr noundef %sopt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %skb_rtable.exit.cleanup_crit_edge

skb_rtable.exit.cleanup_crit_edge:                ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %skb_rtable.exit
  %8 = getelementptr inbounds i8, ptr %ipc, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 22)
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc, i32 30
  %10 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc, i32 32
  %11 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  %addr = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 1
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %daddr, ptr %addr, align 8
  %13 = ptrtoint ptr %ipc to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %transmit_time, ptr %ipc, align 8
  %optlen = getelementptr inbounds %struct.ip_options_rcu, ptr %replyopts, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %optlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.end.if.end18_crit_edge, label %if.then8

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then8:                                         ; preds = %if.end
  %opt10 = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 3
  %16 = ptrtoint ptr %opt10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %replyopts, ptr %opt10, align 8
  %srr = getelementptr inbounds %struct.ip_options_rcu, ptr %replyopts, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool13.not = icmp eq i8 %18, 0
  br i1 %tobool13.not, label %if.then8.if.end18_crit_edge, label %if.then14

if.then8.if.end18_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %opt2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %opt2, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.then8.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %daddr.addr.0 = phi i32 [ %20, %if.then14 ], [ %daddr, %if.then8.if.end18_crit_edge ], [ %daddr, %if.end.if.end18_crit_edge ]
  %bound_dev_if = getelementptr inbounds %struct.ip_reply_arg, ptr %arg, i32 0, i32 4
  %21 = ptrtoint ptr %bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool19.not = icmp eq i32 %22, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end18
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %23 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i112 = icmp eq i32 %24, 0
  br i1 %cmp.i112, label %land.lhs.true.if.end23_crit_edge, label %if.end.i

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.end.i:                                         ; preds = %land.lhs.true
  %25 = call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !100
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i113 = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i113, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i115

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i115:                             ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i114 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i114, label %land.lhs.true.i.i115.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i115.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i115
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i115
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 696, ptr noundef nonnull @.str.20) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i115.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call.i = call ptr @dev_get_by_index_rcu(ptr noundef %7, i32 noundef %24) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %rcu_read_lock.exit.i.if.end3.i_crit_edge, label %if.then1.i

rcu_read_lock.exit.i.if.end3.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end3.i

if.then1.i:                                       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 15
  %29 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i116 = and i64 %30, 262144
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i116)
  %tobool.i.i = icmp ne i64 %and.i.i116, 0
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %rcu_read_lock.exit.i.if.end3.i_crit_edge
  %rc.0.off0.i = phi i1 [ %tobool.i.i, %if.then1.i ], [ false, %rcu_read_lock.exit.i.if.end3.i_crit_edge ]
  %call.i8.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i8.i, label %if.end3.i.netif_index_is_l3_master.exit_crit_edge, label %land.lhs.true.i11.i

if.end3.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_index_is_l3_master.exit

land.lhs.true.i11.i:                              ; preds = %if.end3.i
  %call1.i9.i = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_index_is_l3_master.exit

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge: ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %netif_index_is_l3_master.exit

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 724, ptr noundef nonnull @.str.21) #12
  br label %netif_index_is_l3_master.exit

netif_index_is_l3_master.exit:                    ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.netif_index_is_l3_master.exit_crit_edge, %land.lhs.true.i11.i.netif_index_is_l3_master.exit_crit_edge, %if.end3.i.netif_index_is_l3_master.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !101
  %31 = call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i.i.i15.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  call void @rcu_read_unlock_strict() #12
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  br i1 %rc.0.off0.i, label %if.then21, label %netif_index_is_l3_master.exit.if.end23_crit_edge

netif_index_is_l3_master.exit.if.end23_crit_edge: ; preds = %netif_index_is_l3_master.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23

if.then21:                                        ; preds = %netif_index_is_l3_master.exit
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %skb_iif, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %netif_index_is_l3_master.exit.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  %oif.0 = phi i32 [ %22, %if.end18.if.end23_crit_edge ], [ %36, %if.then21 ], [ 0, %netif_index_is_l3_master.exit.if.end23_crit_edge ], [ 0, %land.lhs.true.if.end23_crit_edge ]
  %sysctl_fwmark_reflect = getelementptr inbounds %struct.net, ptr %7, i32 0, i32 35, i32 49
  %37 = ptrtoint ptr %sysctl_fwmark_reflect to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sysctl_fwmark_reflect, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool24.not = icmp eq i8 %38, 0
  br i1 %tobool24.not, label %if.end23.cond.false27_crit_edge, label %cond.end

if.end23.cond.false27_crit_edge:                  ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false27

cond.end:                                         ; preds = %if.end23
  %39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool25.not = icmp eq i32 %41, 0
  br i1 %tobool25.not, label %cond.end.cond.false27_crit_edge, label %cond.end.cond.end28_crit_edge

cond.end.cond.end28_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end28

cond.end.cond.false27_crit_edge:                  ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.false27

cond.false27:                                     ; preds = %cond.end.cond.false27_crit_edge, %if.end23.cond.false27_crit_edge
  %sk_mark = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 34
  %42 = ptrtoint ptr %sk_mark to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sk_mark, align 8
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false27, %cond.end.cond.end28_crit_edge
  %cond29 = phi i32 [ %43, %cond.false27 ], [ %41, %cond.end.cond.end28_crit_edge ]
  %tos = getelementptr inbounds %struct.ip_reply_arg, ptr %arg, i32 0, i32 5
  %44 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %tos, align 4
  %46 = and i8 %45, 30
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %49 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %50 to i32
  %add.ptr.i.i = getelementptr i8, ptr %48, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %protocol, align 1
  %flags.i = getelementptr inbounds %struct.ip_reply_arg, ptr %arg, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 4
  %55 = trunc i32 %54 to i8
  %56 = and i8 %55, 1
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %57 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i118 = zext i16 %58 to i32
  %add.ptr.i.i119 = getelementptr i8, ptr %48, i32 %conv.i.i118
  %59 = ptrtoint ptr %add.ptr.i.i119 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i.i119, align 4
  %dest = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i119, i32 0, i32 1
  %61 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %dest, align 2
  %uid = getelementptr inbounds %struct.ip_reply_arg, ptr %arg, i32 0, i32 6
  %63 = ptrtoint ptr %uid to i32
  call void @__asan_load4_noabort(i32 %63)
  %.unpack = load i32, ptr %uid, align 4
  %64 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %oif.0, ptr %fl4, align 8
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 1
  %65 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %flowic_iif.i, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %66 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %cond29, ptr %flowic_mark.i, align 8
  %flowic_tos.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %67 = ptrtoint ptr %flowic_tos.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %46, ptr %flowic_tos.i, align 4
  %flowic_scope.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 4
  %68 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 0, ptr %flowic_scope.i, align 1
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %69 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %52, ptr %flowic_proto.i, align 2
  %flowic_flags.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 6
  %70 = ptrtoint ptr %flowic_flags.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %56, ptr %flowic_flags.i, align 1
  %flowic_secid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 7
  %71 = ptrtoint ptr %flowic_secid.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %flowic_secid.i, align 8
  %flowic_tun_key.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 9
  %72 = ptrtoint ptr %flowic_tun_key.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 0, ptr %flowic_tun_key.i, align 8
  %flowic_uid.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %73 = ptrtoint ptr %flowic_uid.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %.unpack, ptr %flowic_uid.i, align 4
  %daddr10.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %74 = ptrtoint ptr %daddr10.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %daddr.addr.0, ptr %daddr10.i, align 4
  %saddr11.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %75 = ptrtoint ptr %saddr11.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %saddr, ptr %saddr11.i, align 8
  %uli.i = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %76 = ptrtoint ptr %uli.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %60, ptr %uli.i, align 8
  %sport14.i = getelementptr inbounds %struct.anon.140, ptr %uli.i, i32 0, i32 1
  %77 = ptrtoint ptr %sport14.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %62, ptr %sport14.i, align 2
  %flowic_multipath_hash.i = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 10
  %78 = ptrtoint ptr %flowic_multipath_hash.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %flowic_multipath_hash.i, align 8
  call void @security_skb_classify_flow(ptr noundef %skb, ptr noundef nonnull %fl4) #12
  %call.i124 = call ptr @ip_route_output_flow(ptr noundef %7, ptr noundef nonnull %fl4, ptr noundef null) #12
  %79 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i124, ptr %rt, align 4
  %cmp.i125 = icmp ugt ptr %call.i124, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i125, label %cond.end28.cleanup_crit_edge, label %if.end40

cond.end28.cleanup_crit_edge:                     ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end40:                                         ; preds = %cond.end28
  %80 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tos, align 4
  %82 = and i8 %81, -4
  %tos46 = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 8
  %83 = ptrtoint ptr %tos46 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %tos46, align 4
  %84 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %head.i.i, align 8
  %86 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i128 = zext i16 %87 to i32
  %add.ptr.i.i129 = getelementptr i8, ptr %85, i32 %conv.i.i128
  %protocol48 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i129, i32 0, i32 6
  %88 = ptrtoint ptr %protocol48 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %protocol48, align 1
  %conv49 = zext i8 %89 to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 46
  %90 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv49, ptr %sk_protocol, align 4
  %91 = ptrtoint ptr %bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %bound_dev_if, align 4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %93 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %skc_bound_dev_if, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sysctl_wmem_default to i32))
  %94 = load i32, ptr @sysctl_wmem_default, align 4
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 21
  %95 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %sk_sndbuf, align 4
  %96 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %flowic_mark.i, align 8
  %mark = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc, i32 0, i32 1
  %98 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %mark, align 8
  %99 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arg, align 4
  %sk_write_queue.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 26
  %101 = ptrtoint ptr %sk_write_queue.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sk_write_queue.i, align 4
  %cmp.i.not.i = icmp eq ptr %102, %sk_write_queue.i
  br i1 %cmp.i.not.i, label %if.then3.i, label %if.end40.if.end8.i_crit_edge

if.end40.if.end8.i_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end40
  %cork.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %call4.i = call fastcc i32 @ip_setup_cork(ptr noundef %sk, ptr noundef %cork.i, ptr noundef nonnull %ipc, ptr noundef nonnull %rt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then3.i.if.end8.i_crit_edge, label %if.then3.i.if.then56_crit_edge

if.then3.i.if.then56_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %if.end40.if.end8.i_crit_edge
  %cork10.i = getelementptr inbounds %struct.inet_sock, ptr %sk, i32 0, i32 19
  %sk_allocation.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 41
  %103 = ptrtoint ptr %sk_allocation.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %sk_allocation.i.i, align 8
  %and.i.i131 = and i32 %104, 132224
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %and.i.i131)
  %cmp.i23.i = icmp eq i32 %and.i.i131, 1152
  br i1 %cmp.i23.i, label %if.then.i.i132, label %if.end.i.i

if.then.i.i132:                                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %105 = call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i.i.i = and i32 %105, -16384
  %106 = inttoptr i32 %and.i.i.i to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %106, i32 0, i32 2
  %107 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %task.i.i, align 8
  %task_frag.i.i = getelementptr inbounds %struct.task_struct, ptr %108, i32 0, i32 180
  br label %ip_append_data.exit

if.end.i.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  %sk_frag.i.i = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 37
  br label %ip_append_data.exit

ip_append_data.exit:                              ; preds = %if.end.i.i, %if.then.i.i132
  %retval.0.i.i = phi ptr [ %task_frag.i.i, %if.then.i.i132 ], [ %sk_frag.i.i, %if.end.i.i ]
  %call13.i = call fastcc i32 @__ip_append_data(ptr noundef %sk, ptr noundef nonnull %fl4, ptr noundef %sk_write_queue.i, ptr noundef %cork10.i, ptr noundef %retval.0.i.i, ptr noundef nonnull @ip_reply_glue_bits, ptr noundef %100, i32 noundef %len, i32 noundef 0, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool53.not = icmp eq i32 %call13.i, 0
  br i1 %tobool53.not, label %if.end57, label %ip_append_data.exit.if.then56_crit_edge, !prof !102

ip_append_data.exit.if.then56_crit_edge:          ; preds = %ip_append_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then56

if.then56:                                        ; preds = %ip_append_data.exit.if.then56_crit_edge, %if.then3.i.if.then56_crit_edge
  call void @ip_flush_pending_frames(ptr noundef %sk)
  br label %out

if.end57:                                         ; preds = %ip_append_data.exit
  %109 = ptrtoint ptr %sk_write_queue.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sk_write_queue.i, align 4
  %cmp.i134 = icmp eq ptr %110, %sk_write_queue.i
  %tobool59.not146 = icmp eq ptr %110, null
  %tobool59.not = or i1 %cmp.i134, %tobool59.not146
  br i1 %tobool59.not, label %if.end57.out_crit_edge, label %if.then60

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then60:                                        ; preds = %if.end57
  %csumoffset = getelementptr inbounds %struct.ip_reply_arg, ptr %arg, i32 0, i32 3
  %111 = ptrtoint ptr %csumoffset to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %csumoffset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %112)
  %cmp = icmp sgt i32 %112, -1
  br i1 %cmp, label %if.then62, label %if.then60.if.end67_crit_edge

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then62:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #14
  %113 = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 15, i32 0, i32 5
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %113, align 8
  %csum = getelementptr inbounds %struct.ip_reply_arg, ptr %arg, i32 0, i32 2
  %116 = ptrtoint ptr %csum to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %csum, align 4
  %add.i = add i32 %117, %115
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %117)
  %cmp.i = icmp ult i32 %add.i, %117
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add i32 %add.i, %conv.i
  %118 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i) #15, !srcloc !98
  %neg.i = xor i32 %118, -1
  %shr.i = lshr i32 %neg.i, 16
  %conv.i135 = trunc i32 %shr.i to i16
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 18
  %119 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %head.i, align 8
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 15, i32 0, i32 19
  %121 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %transport_header.i, align 2
  %conv.i136 = zext i16 %122 to i32
  %add.ptr.i = getelementptr i8, ptr %120, i32 %conv.i136
  %add.ptr = getelementptr i16, ptr %add.ptr.i, i32 %112
  %123 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i135, ptr %add.ptr, align 2
  br label %if.end67

if.end67:                                         ; preds = %if.then62, %if.then60.if.end67_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %110, i32 0, i32 15
  %124 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %124)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call1.i.i137 = call ptr @__ip_make_skb(ptr noundef %sk, ptr noundef nonnull %fl4, ptr noundef %sk_write_queue.i, ptr noundef %cork10.i) #12
  %tobool.not.i138 = icmp eq ptr %call1.i.i137, null
  br i1 %tobool.not.i138, label %if.end67.out_crit_edge, label %if.end.i139

if.end67.out_crit_edge:                           ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i139:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  %125 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %skc_net.i, align 4
  %call2.i = call i32 @ip_send_skb(ptr noundef %126, ptr noundef nonnull %call1.i.i137) #12
  br label %out

out:                                              ; preds = %if.end.i139, %if.end67.out_crit_edge, %if.end57.out_crit_edge, %if.then56
  %127 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %rt, align 4
  call void @dst_release(ptr noundef %128) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %cond.end28.cleanup_crit_edge, %skb_rtable.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt) #12
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ipc) #12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %replyopts) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_echo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_skb_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_reply_glue_bits(ptr noundef %dptr, ptr noundef %to, i32 noundef %offset, i32 noundef %len, i32 noundef %odd, ptr nocapture noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dptr, i32 %offset
  %call = tail call i32 @csum_partial_copy_nocheck(ptr noundef %add.ptr, ptr noundef %to, i32 noundef %len) #12
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i.i = and i32 %odd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %call, i32 %call, i32 24) #12
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %call, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i, %2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add1.i.i, ptr %0, align 8
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ip_rt_init() #12
  tail call void @inet_initpeers() #17
  %call1 = tail call i32 @igmp_mc_init() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_rt_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @inet_initpeers() local_unnamed_addr #6 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @igmp_mc_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hook_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cgroup_bpf_run_filter_skb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rt_dst_clone(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_loopback_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ip_finish_output(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !99

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %xfrm = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %xfrm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %xfrm, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %skb_dst.exit
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 4
  %10 = or i16 %9, 16
  store i16 %10, ptr %flags, align 4
  %and.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.dst_output.exit_crit_edge, label %land.lhs.true.i.i

if.then.dst_output.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.dst_output.exit_crit_edge

land.lhs.true.i.i.dst_output.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.dst_output.exit_crit_edge, !prof !99

land.rhs.i.i.dst_output.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_output.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %dst_output.exit

dst_output.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.dst_output.exit_crit_edge, %land.lhs.true.i.i.dst_output.exit_crit_edge, %if.then.dst_output.exit_crit_edge
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %12, -2
  %13 = inttoptr i32 %and25.i.i to ptr
  %output.i = getelementptr inbounds %struct.dst_entry, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %output.i, align 4
  %call1.i = tail call i32 %15(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit
  %call3 = tail call fastcc i32 @ip_skb_dst_mtu(ptr noundef %sk, ptr noundef %skb)
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.not = icmp eq i16 %19, 0
  br i1 %tobool.i.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %call.i35 = tail call zeroext i1 @skb_gso_validate_network_len(ptr noundef %skb, i32 noundef %call3) #12
  br i1 %call.i35, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i36 = tail call i32 @ip_finish_output2(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then5
  %call2.i37 = tail call i64 @netif_skb_features(ptr noundef %skb) #12
  %and.i38 = and i64 %call2.i37, -34359672833
  %call.i.i39 = tail call ptr @__skb_gso_segment(ptr noundef %skb, i64 noundef %and.i38, i1 noundef zeroext true) #12
  %tobool.not.i.i40 = icmp eq ptr %call.i.i39, null
  %cmp.i.i = icmp ugt ptr %call.i.i39, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i40, %cmp.i.i
  br i1 %spec.select.i.i, label %if.then5.i, label %cond.end.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

cond.end.i:                                       ; preds = %if.end.i
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %cond.end.i
  %nskb.041.sink.i = phi ptr [ %call.i.i39, %cond.end.i ], [ %21, %for.body.i.for.body.i_crit_edge ]
  %ret.042.i = phi i32 [ 0, %cond.end.i ], [ %ret.1.i, %for.body.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %nskb.041.sink.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nskb.041.sink.i, align 8
  store ptr null, ptr %nskb.041.sink.i, align 8
  %call8.i = tail call fastcc i32 @ip_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef nonnull %nskb.041.sink.i, i32 noundef %call3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp ne i32 %call8.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.042.i)
  %cmp.i = icmp eq i32 %ret.042.i, 0
  %or.cond.i = select i1 %tobool9.not.i, i1 %cmp.i, i1 false
  %ret.1.i = select i1 %or.cond.i, i32 %call8.i, i32 %ret.042.i
  %tobool12.not.i = icmp eq ptr %21, null
  br i1 %tobool12.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %call3)
  %cmp = icmp ugt i32 %23, %call3
  br i1 %cmp, label %if.end7.if.then13_crit_edge, label %lor.lhs.false

if.end7.if.then13_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end7
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %24 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %frag_max_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool12.not = icmp eq i16 %25, 0
  br i1 %tobool12.not, label %if.end15, label %lor.lhs.false.if.then13_crit_edge

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end7.if.then13_crit_edge
  %call14 = tail call fastcc i32 @ip_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, i32 noundef %call3)
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call16 = tail call i32 @ip_finish_output2(ptr noundef %net, ptr noundef %sk, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %for.body.i.cleanup_crit_edge, %if.then5.i, %if.then.i, %dst_output.exit
  %retval.0 = phi i32 [ %call1.i, %dst_output.exit ], [ %call14, %if.then13 ], [ %call16, %if.end15 ], [ %call1.i36, %if.then.i ], [ -12, %if.then5.i ], [ %ret.1.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, i32 noundef %mtu) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %frag_off, align 2
  %6 = and i16 %5, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp = icmp eq i16 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call2 = tail call i32 @ip_do_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull @ip_finish_output2)
  br label %cleanup

if.end:                                           ; preds = %entry
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %7 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %ignore_df, align 8
  %8 = and i16 %bf.load, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %lor.rhs, !prof !99

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.rhs:                                          ; preds = %if.end
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %9 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %frag_max_size, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool4.not = icmp ne i16 %10, 0
  %conv3 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %mtu)
  %cmp9 = icmp ugt i32 %conv3, %mtu
  %or.cond = and i1 %tobool4.not, %cmp9
  br i1 %or.cond, label %lor.rhs.do.body_crit_edge, label %if.end25, !prof !128

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.rhs.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %11 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mib, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %add = add i32 %19, %13
  %20 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %20, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx18 = getelementptr [37 x i64], ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %arrayidx18, align 8
  %add19 = add i64 %22, 1
  store i64 %add19, ptr %arrayidx18, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %20, i32 0, i32 1, i32 0, i32 1
  %23 = tail call ptr @llvm.returnaddress(i32 0) #12
  %24 = ptrtoint ptr %23 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %24) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  %25 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %26, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  tail call void @__icmp_send(ptr noundef %skb, i32 noundef 3, i32 noundef 4, i32 noundef %mtu, ptr noundef %opt.i) #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup

if.end25:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 @ip_do_fragment(ptr noundef %net, ptr noundef %sk, ptr noundef %skb, ptr noundef nonnull @ip_finish_output2)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %do.body, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ -90, %do.body ], [ %call26, %if.end25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ip_finish_output2(ptr nocapture noundef readonly %net, ptr nocapture noundef readnone %sk, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.skb_dst.exit_crit_edge, label %land.lhs.true.i

entry.skb_dst.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %entry
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !99

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 19
  %8 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %9 to i32
  %needed_headroom = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 21
  %10 = ptrtoint ptr %needed_headroom to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %needed_headroom, align 8
  %conv2 = zext i16 %11 to i32
  %add = add nuw nsw i32 %conv2, %conv
  %and = and i32 %add, 131056
  %add3 = add nuw nsw i32 %and, 16
  %rt_type = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %rt_type to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %rt_type, align 4
  %14 = zext i16 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.33)
  switch i16 %13, label %skb_dst.exit.if.end56_crit_edge [
    i16 5, label %do.body
    i16 3, label %do.body26
  ]

skb_dst.exit.if.end56_crit_edge:                  ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end56

do.body:                                          ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %mib = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %15 = ptrtoint ptr %mib to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mib, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i136 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i136 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  %add10 = add i32 %23, %17
  %24 = inttoptr i32 %add10 to ptr
  %syncp = getelementptr inbounds %struct.ipstats_mib, ptr %24, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %arrayidx11 = getelementptr [37 x i64], ptr %24, i32 0, i32 24
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %arrayidx11, align 8
  %inc = add i64 %26, 1
  store i64 %inc, ptr %arrayidx11, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %conv12 = zext i32 %28 to i64
  %arrayidx14 = getelementptr [37 x i64], ptr %24, i32 0, i32 28
  %29 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx14, align 8
  %add15 = add i64 %30, %conv12
  store i64 %add15, ptr %arrayidx14, align 8
  %dep_map.i.i = getelementptr inbounds %struct.ipstats_mib, ptr %24, i32 0, i32 1, i32 0, i32 1
  %31 = tail call ptr @llvm.returnaddress(i32 0) #12
  %32 = ptrtoint ptr %31 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %32) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  br label %if.end56.sink.split

do.body26:                                        ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @local_bh_disable()
  %mib35 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30
  %33 = ptrtoint ptr %mib35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mib35, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !87) #12
  %and.i137 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i137 to ptr
  %cpu39 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu39, align 4
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %41, %35
  %42 = inttoptr i32 %add41 to ptr
  %syncp42 = getelementptr inbounds %struct.ipstats_mib, ptr %42, i32 0, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp42)
  %arrayidx44 = getelementptr [37 x i64], ptr %42, i32 0, i32 26
  %43 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %arrayidx44, align 8
  %inc45 = add i64 %44, 1
  store i64 %inc45, ptr %arrayidx44, align 8
  %len46 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len46, align 4
  %conv47 = zext i32 %46 to i64
  %arrayidx49 = getelementptr [37 x i64], ptr %42, i32 0, i32 30
  %47 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %arrayidx49, align 8
  %add50 = add i64 %48, %conv47
  store i64 %add50, ptr %arrayidx49, align 8
  %dep_map.i.i138 = getelementptr inbounds %struct.ipstats_mib, ptr %42, i32 0, i32 1, i32 0, i32 1
  %49 = tail call ptr @llvm.returnaddress(i32 0) #12
  %50 = ptrtoint ptr %49 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i138, i32 noundef %50) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !103
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %do.body26, %do.body
  %syncp42.sink184 = phi ptr [ %syncp42, %do.body26 ], [ %syncp, %do.body ]
  %51 = ptrtoint ptr %syncp42.sink184 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %syncp42.sink184, align 4
  %inc.i.i.i139 = add i32 %52, 1
  store i32 %inc.i.i.i139, ptr %syncp42.sink184, align 4
  tail call fastcc void @local_bh_enable()
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %skb_dst.exit.if.end56_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %55 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %add3)
  %cmp58 = icmp ult i32 %sub.ptr.sub.i, %add3
  br i1 %cmp58, label %land.rhs, label %if.end56.if.end67_crit_edge

if.end56.if.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

land.rhs:                                         ; preds = %if.end56
  %header_ops = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 49
  %57 = ptrtoint ptr %header_ops to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %header_ops, align 4
  %tobool.not = icmp eq ptr %58, null
  br i1 %tobool.not, label %land.rhs.if.end67_crit_edge, label %if.then62, !prof !102

land.rhs.if.end67_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then62:                                        ; preds = %land.rhs
  %call63 = tail call ptr @skb_expand_head(ptr noundef %skb, i32 noundef %add3) #12
  %tobool64.not = icmp eq ptr %call63, null
  br i1 %tobool64.not, label %if.then62.cleanup102_crit_edge, label %if.then62.if.end67_crit_edge

if.then62.if.end67_crit_edge:                     ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end67

if.then62.cleanup102_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup102

if.end67:                                         ; preds = %if.then62.if.end67_crit_edge, %land.rhs.if.end67_crit_edge, %if.end56.if.end67_crit_edge
  %skb.addr.0 = phi ptr [ %call63, %if.then62.if.end67_crit_edge ], [ %skb, %land.rhs.if.end67_crit_edge ], [ %skb, %if.end56.if.end67_crit_edge ]
  %lwtstate = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 13
  %59 = ptrtoint ptr %lwtstate to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lwtstate, align 4
  %tobool.not.i140 = icmp eq ptr %60, null
  br i1 %tobool.not.i140, label %if.end67.if.end77_crit_edge, label %land.lhs.true.i142

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

land.lhs.true.i142:                               ; preds = %if.end67
  %flags.i = getelementptr inbounds %struct.lwtunnel_state, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %flags.i, align 2
  %63 = and i16 %62, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool1.not.i141 = icmp eq i16 %63, 0
  br i1 %tobool1.not.i141, label %land.lhs.true.i142.if.end77_crit_edge, label %if.then69

land.lhs.true.i142.if.end77_crit_edge:            ; preds = %land.lhs.true.i142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then69:                                        ; preds = %land.lhs.true.i142
  %call70 = tail call i32 @lwtunnel_xmit(ptr noundef %skb.addr.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call70)
  %64 = icmp slt i32 %call70, 1
  br i1 %64, label %if.then69.cleanup102_crit_edge, label %if.then69.if.end77_crit_edge

if.then69.if.end77_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then69.cleanup102_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup102

if.end77:                                         ; preds = %if.then69.if.end77_crit_edge, %land.lhs.true.i142.if.end77_crit_edge, %if.end67.if.end77_crit_edge
  tail call fastcc void @local_bh_disable() #12
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #12
  %call.i144 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i144, label %if.end77.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i146

if.end77.rcu_read_lock_bh.exit_crit_edge:         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true.i146:                               ; preds = %if.end77
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i145 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i145, label %land.lhs.true.i146.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i146.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true.i146
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i146
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 750, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i146.rcu_read_lock_bh.exit_crit_edge, %if.end77.rcu_read_lock_bh.exit_crit_edge
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %5, align 4
  %rt_gw_family.i = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 7
  %67 = ptrtoint ptr %rt_gw_family.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rt_gw_family.i, align 4
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %68, label %if.else10.i [
    i8 2, label %if.then.i149
    i8 10, label %if.then8.i
  ], !prof !129

if.then.i149:                                     ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  %70 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 8
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 4
  %call.i148 = tail call fastcc ptr @ip_neigh_gw4(ptr noundef %66, i32 noundef %72) #12
  br label %ip_neigh_for_gw.exit

if.then8.i:                                       ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  %73 = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 8
  %call9.i = tail call fastcc ptr @ip_neigh_gw6(ptr noundef %66, ptr noundef %73) #12
  br label %ip_neigh_for_gw.exit

if.else10.i:                                      ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #14
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %74 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 20
  %76 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %77 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %75, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %78 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %daddr.i, align 4
  %call12.i = tail call fastcc ptr @ip_neigh_gw4(ptr noundef %66, i32 noundef %79) #12
  br label %ip_neigh_for_gw.exit

ip_neigh_for_gw.exit:                             ; preds = %if.else10.i, %if.then8.i, %if.then.i149
  %tobool82.not = phi i1 [ true, %if.then.i149 ], [ false, %if.then8.i ], [ true, %if.else10.i ]
  %neigh.0.i = phi ptr [ %call.i148, %if.then.i149 ], [ %call9.i, %if.then8.i ], [ %call12.i, %if.else10.i ]
  %cmp.i = icmp ugt ptr %neigh.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end85, label %if.then80

if.then80:                                        ; preds = %ip_neigh_for_gw.exit
  %dst_pending_confirm.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 15, i32 0, i32 3
  %80 = ptrtoint ptr %dst_pending_confirm.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %bf.load.i.i = load i32, ptr %dst_pending_confirm.i.i, align 2
  %81 = and i32 %bf.load.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp.i.not.i = icmp eq i32 %81, 0
  br i1 %cmp.i.not.i, label %if.then80.sock_confirm_neigh.exit_crit_edge, label %if.then.i151

if.then80.sock_confirm_neigh.exit_crit_edge:      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_confirm_neigh.exit

if.then.i151:                                     ; preds = %if.then80
  %82 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 1
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %tobool.not.i150 = icmp eq ptr %84, null
  br i1 %tobool.not.i150, label %if.then.i151.if.end.i154_crit_edge, label %do.end.i153

if.then.i151.if.end.i154_crit_edge:               ; preds = %if.then.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i154

do.end.i153:                                      ; preds = %if.then.i151
  %sk_dst_pending_confirm.i = getelementptr inbounds %struct.sock, ptr %84, i32 0, i32 29
  %85 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %sk_dst_pending_confirm.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool1.not.i152 = icmp eq i32 %86, 0
  br i1 %tobool1.not.i152, label %do.end.i153.if.end.i154_crit_edge, label %do.body7.i

do.end.i153.if.end.i154_crit_edge:                ; preds = %do.end.i153
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i154

do.body7.i:                                       ; preds = %do.end.i153
  call void @__sanitizer_cov_trace_pc() #14
  %87 = ptrtoint ptr %sk_dst_pending_confirm.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile i32 0, ptr %sk_dst_pending_confirm.i, align 8
  br label %if.end.i154

if.end.i154:                                      ; preds = %do.body7.i, %do.end.i153.if.end.i154_crit_edge, %if.then.i151.if.end.i154_crit_edge
  %tobool.not.i.i = icmp eq ptr %neigh.0.i, null
  br i1 %tobool.not.i.i, label %if.end.i154.sock_confirm_neigh.exit_crit_edge, label %if.then.i.i

if.end.i154.sock_confirm_neigh.exit_crit_edge:    ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_confirm_neigh.exit

if.then.i.i:                                      ; preds = %if.end.i154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %88 = load volatile i32, ptr @jiffies, align 128
  %confirmed.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 3
  %89 = ptrtoint ptr %confirmed.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %confirmed.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %88)
  %cmp.not.i.i = icmp eq i32 %90, %88
  br i1 %cmp.not.i.i, label %if.then.i.i.sock_confirm_neigh.exit_crit_edge, label %do.body6.i.i

if.then.i.i.sock_confirm_neigh.exit_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sock_confirm_neigh.exit

do.body6.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %91 = ptrtoint ptr %confirmed.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile i32 %88, ptr %confirmed.i.i, align 4
  br label %sock_confirm_neigh.exit

sock_confirm_neigh.exit:                          ; preds = %do.body6.i.i, %if.then.i.i.sock_confirm_neigh.exit_crit_edge, %if.end.i154.sock_confirm_neigh.exit_crit_edge, %if.then80.sock_confirm_neigh.exit_crit_edge
  %hh1.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 19
  br i1 %tobool82.not, label %do.end.i155, label %sock_confirm_neigh.exit.if.end.i160_crit_edge

sock_confirm_neigh.exit.if.end.i160_crit_edge:    ; preds = %sock_confirm_neigh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i160

do.end.i155:                                      ; preds = %sock_confirm_neigh.exit
  %nud_state.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 12
  %92 = ptrtoint ptr %nud_state.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load volatile i8, ptr %nud_state.i, align 8
  %94 = and i8 %93, -62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool2.not.i = icmp eq i8 %94, 0
  br i1 %tobool2.not.i, label %do.end.i155.if.end.i160_crit_edge, label %do.end6.i

do.end.i155.if.end.i160_crit_edge:                ; preds = %do.end.i155
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i160

do.end6.i:                                        ; preds = %do.end.i155
  %95 = ptrtoint ptr %hh1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %hh1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool8.not.i = icmp eq i32 %96, 0
  br i1 %tobool8.not.i, label %do.end6.i.if.end.i160_crit_edge, label %if.then.i156

do.end6.i.if.end.i160_crit_edge:                  ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i160

if.then.i156:                                     ; preds = %do.end6.i
  %hh_lock.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 19, i32 1
  %dep_map.c48.i.i.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 19, i32 1, i32 0, i32 0, i32 1
  %data.i110.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 19
  %head.i111.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 18
  %hh_data24.i.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 19, i32 2
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond28.i.i.do.body.i.i_crit_edge, %if.then.i156
  %97 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !130
  %and.i.i.i.i.i = and i32 %97, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.i.i, label %do.body24.critedge.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  %98 = tail call ptr @llvm.returnaddress(i32 0) #12
  %99 = ptrtoint ptr %98 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %99) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %99) #12
  tail call void @trace_hardirqs_on() #12
  br label %do.body24.i.i.i.i

do.body24.critedge.i.i.i.i:                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %100 = tail call ptr @llvm.returnaddress(i32 0) #12
  %101 = ptrtoint ptr %100 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %101) #12
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i.i.i, i32 noundef %101) #12
  br label %do.body24.i.i.i.i

do.body24.i.i.i.i:                                ; preds = %do.body24.critedge.i.i.i.i, %if.then.i.i.i.i
  %102 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !131
  %and.i.i.i.i.i.i = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool32.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i.i, label %if.then36.i.i.i.i, label %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge, !prof !99

do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge: ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %seqcount_lockdep_reader_access.exit.i.i.i

if.then36.i.i.i.i:                                ; preds = %do.body24.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %seqcount_lockdep_reader_access.exit.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i:        ; preds = %if.then36.i.i.i.i, %do.body24.i.i.i.i.seqcount_lockdep_reader_access.exit.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %97) #12, !srcloc !132
  %103 = ptrtoint ptr %hh_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %hh_lock.i.i, align 4
  %and18.i.i.i = and i32 %104, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i.i)
  %tobool.not19.i.i.i = icmp eq i32 %and18.i.i.i, 0
  br i1 %tobool.not19.i.i.i, label %seqcount_lockdep_reader_access.exit.i.i.i.read_seqbegin.exit.i.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge

seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  br label %do.end.i.i.i

seqcount_lockdep_reader_access.exit.i.i.i.read_seqbegin.exit.i.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_seqbegin.exit.i.i

do.end.i.i.i:                                     ; preds = %do.end.i.i.i.do.end.i.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.do.end.i.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !133
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !134
  %105 = ptrtoint ptr %hh_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile i32, ptr %hh_lock.i.i, align 4
  %and.i.i.i = and i32 %106, 1
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.end.i.i.i.read_seqbegin.exit.i.i_crit_edge, label %do.end.i.i.i.do.end.i.i.i_crit_edge

do.end.i.i.i.do.end.i.i.i_crit_edge:              ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i.i.i

do.end.i.i.i.read_seqbegin.exit.i.i_crit_edge:    ; preds = %do.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %read_seqbegin.exit.i.i

read_seqbegin.exit.i.i:                           ; preds = %do.end.i.i.i.read_seqbegin.exit.i.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.i.i.read_seqbegin.exit.i.i_crit_edge
  %.lcssa.i.i.i = phi i32 [ %104, %seqcount_lockdep_reader_access.exit.i.i.i.read_seqbegin.exit.i.i_crit_edge ], [ %106, %do.end.i.i.i.read_seqbegin.exit.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !135
  %107 = ptrtoint ptr %hh1.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %hh1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %108)
  %cmp.i.i = icmp ult i32 %108, 17
  br i1 %cmp.i.i, label %if.then.i.i157, label %if.else.i.i, !prof !102

if.then.i.i157:                                   ; preds = %read_seqbegin.exit.i.i
  %109 = ptrtoint ptr %data.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data.i110.i.i, align 4
  %111 = ptrtoint ptr %head.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %head.i111.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %110 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %112 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.ptr.sub.i.i.i)
  %cmp5.i.i = icmp ugt i32 %sub.ptr.sub.i.i.i, 15
  br i1 %cmp5.i.i, label %if.then12.i.i, label %if.then.i.i157.do.cond28.i.i_crit_edge, !prof !102

if.then.i.i157.do.cond28.i.i_crit_edge:           ; preds = %if.then.i.i157
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond28.i.i

if.then12.i.i:                                    ; preds = %if.then.i.i157
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i = getelementptr i8, ptr %110, i32 -16
  %113 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %hh_data24.i.i, i32 16)
  br label %do.cond28.i.i

if.else.i.i:                                      ; preds = %read_seqbegin.exit.i.i
  %add.i.i = add i32 %108, 15
  %and.i.i = and i32 %add.i.i, -16
  %114 = ptrtoint ptr %data.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %data.i110.i.i, align 4
  %116 = ptrtoint ptr %head.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %head.i111.i.i, align 8
  %sub.ptr.lhs.cast.i112.i.i = ptrtoint ptr %115 to i32
  %sub.ptr.rhs.cast.i113.i.i = ptrtoint ptr %117 to i32
  %sub.ptr.sub.i114.i.i = sub i32 %sub.ptr.lhs.cast.i112.i.i, %sub.ptr.rhs.cast.i113.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i114.i.i, i32 %and.i.i)
  %cmp14.not.i.i = icmp ult i32 %sub.ptr.sub.i114.i.i, %and.i.i
  br i1 %cmp14.not.i.i, label %if.else.i.i.do.cond28.i.i_crit_edge, label %if.then21.i.i, !prof !99

if.else.i.i.do.cond28.i.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.cond28.i.i

if.then21.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %idx.neg.i.i = sub i32 0, %and.i.i
  %add.ptr23.i.i = getelementptr i8, ptr %115, i32 %idx.neg.i.i
  %118 = call ptr @memcpy(ptr %add.ptr23.i.i, ptr %hh_data24.i.i, i32 %and.i.i)
  br label %do.cond28.i.i

do.cond28.i.i:                                    ; preds = %if.then21.i.i, %if.else.i.i.do.cond28.i.i_crit_edge, %if.then12.i.i, %if.then.i.i157.do.cond28.i.i_crit_edge
  %hh_alen.0.i.i = phi i32 [ 16, %if.then12.i.i ], [ 16, %if.then.i.i157.do.cond28.i.i_crit_edge ], [ %and.i.i, %if.then21.i.i ], [ %and.i.i, %if.else.i.i.do.cond28.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !136
  %119 = ptrtoint ptr %hh_lock.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load volatile i32, ptr %hh_lock.i.i, align 4
  %cmp.i.i.i.not.i.i = icmp eq i32 %120, %.lcssa.i.i.i
  br i1 %cmp.i.i.i.not.i.i, label %do.end32.i.i, label %do.cond28.i.i.do.body.i.i_crit_edge

do.cond28.i.i.do.body.i.i_crit_edge:              ; preds = %do.cond28.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i.i

do.end32.i.i:                                     ; preds = %do.cond28.i.i
  %121 = ptrtoint ptr %data.i110.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %data.i110.i.i, align 4
  %123 = ptrtoint ptr %head.i111.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %head.i111.i.i, align 8
  %sub.ptr.lhs.cast.i117.i.i = ptrtoint ptr %122 to i32
  %sub.ptr.rhs.cast.i118.i.i = ptrtoint ptr %124 to i32
  %sub.ptr.sub.i119.i.i = sub i32 %sub.ptr.lhs.cast.i117.i.i, %sub.ptr.rhs.cast.i118.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i119.i.i, i32 %hh_alen.0.i.i)
  %cmp34.i.i = icmp ult i32 %sub.ptr.sub.i119.i.i, %hh_alen.0.i.i
  br i1 %cmp34.i.i, label %land.rhs.i.i, label %if.end85.i.i

land.rhs.i.i:                                     ; preds = %do.end32.i.i
  %.b108.i.i = load i1, ptr @neigh_hh_output.__already_done, align 1
  br i1 %.b108.i.i, label %land.rhs.i.i.if.then84.i.i_crit_edge, label %if.then49.i.i, !prof !102

land.rhs.i.i.if.then84.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then84.i.i

if.then49.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @neigh_hh_output.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 527, i32 noundef 9, ptr noundef null) #12
  br label %if.then84.i.i

if.then84.i.i:                                    ; preds = %if.then49.i.i, %land.rhs.i.i.if.then84.i.i_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #12
  br label %neigh_output.exit

if.end85.i.i:                                     ; preds = %do.end32.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %idx.neg.i.i.i = sub i32 0, %108
  %add.ptr.i.i.i158 = getelementptr i8, ptr %122, i32 %idx.neg.i.i.i
  %125 = ptrtoint ptr %data.i110.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %add.ptr.i.i.i158, ptr %data.i110.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0, i32 0, i32 6
  %126 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %len1.i.i.i, align 4
  %add.i.i.i = add i32 %127, %108
  store i32 %add.i.i.i, ptr %len1.i.i.i, align 4
  %call87.i.i = tail call i32 @dev_queue_xmit(ptr noundef %skb.addr.0) #12
  br label %neigh_output.exit

if.end.i160:                                      ; preds = %do.end6.i.if.end.i160_crit_edge, %do.end.i155.if.end.i160_crit_edge, %sock_confirm_neigh.exit.if.end.i160_crit_edge
  %output.i = getelementptr inbounds %struct.neighbour, ptr %neigh.0.i, i32 0, i32 20
  %128 = ptrtoint ptr %output.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %output.i, align 4
  %call9.i159 = tail call i32 %129(ptr noundef %neigh.0.i, ptr noundef %skb.addr.0) #12
  br label %neigh_output.exit

neigh_output.exit:                                ; preds = %if.end.i160, %if.end85.i.i, %if.then84.i.i
  %retval.0.i161 = phi i32 [ %call9.i159, %if.end.i160 ], [ 1, %if.then84.i.i ], [ %call87.i.i, %if.end85.i.i ]
  %call.i162 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i162, label %neigh_output.exit.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i165

neigh_output.exit.rcu_read_unlock_bh.exit_crit_edge: ; preds = %neigh_output.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i165:                               ; preds = %neigh_output.exit
  %call1.i163 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool.not.i164 = icmp eq i32 %call1.i163, 0
  br i1 %tobool.not.i164, label %land.lhs.true.i165.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i167

land.lhs.true.i165.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i165
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i167:                              ; preds = %land.lhs.true.i165
  %.b4.i166 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i166, label %land.lhs.true2.i167.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i168

land.lhs.true2.i167.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit

if.then.i168:                                     ; preds = %land.lhs.true2.i167
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.19) #12
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i168, %land.lhs.true2.i167.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i165.rcu_read_unlock_bh.exit_crit_edge, %neigh_output.exit.rcu_read_unlock_bh.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  br label %cleanup102

if.end85:                                         ; preds = %ip_neigh_for_gw.exit
  %call.i170 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i170, label %if.end85.rcu_read_unlock_bh.exit178_crit_edge, label %land.lhs.true.i173

if.end85.rcu_read_unlock_bh.exit178_crit_edge:    ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit178

land.lhs.true.i173:                               ; preds = %if.end85
  %call1.i171 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i171)
  %tobool.not.i172 = icmp eq i32 %call1.i171, 0
  br i1 %tobool.not.i172, label %land.lhs.true.i173.rcu_read_unlock_bh.exit178_crit_edge, label %land.lhs.true2.i175

land.lhs.true.i173.rcu_read_unlock_bh.exit178_crit_edge: ; preds = %land.lhs.true.i173
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit178

land.lhs.true2.i175:                              ; preds = %land.lhs.true.i173
  %.b4.i174 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i174, label %land.lhs.true2.i175.rcu_read_unlock_bh.exit178_crit_edge, label %if.then.i176

land.lhs.true2.i175.rcu_read_unlock_bh.exit178_crit_edge: ; preds = %land.lhs.true2.i175
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock_bh.exit178

if.then.i176:                                     ; preds = %land.lhs.true2.i175
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 761, ptr noundef nonnull @.str.19) #12
  br label %rcu_read_unlock_bh.exit178

rcu_read_unlock_bh.exit178:                       ; preds = %if.then.i176, %land.lhs.true2.i175.rcu_read_unlock_bh.exit178_crit_edge, %land.lhs.true.i173.rcu_read_unlock_bh.exit178_crit_edge, %if.end85.rcu_read_unlock_bh.exit178_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #12
  tail call fastcc void @local_bh_enable() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ip_finish_output2.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ip_finish_output2, %land.lhs.true)) #12
          to label %do.end101 [label %land.lhs.true], !srcloc !109

land.lhs.true:                                    ; preds = %rcu_read_unlock_bh.exit178
  %call96 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %land.lhs.true.do.end101_crit_edge, label %if.then98

land.lhs.true.do.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end101

if.then98:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ip_finish_output2.descriptor, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12) #12
  br label %do.end101

do.end101:                                        ; preds = %if.then98, %land.lhs.true.do.end101_crit_edge, %rcu_read_unlock_bh.exit178
  tail call void @kfree_skb_reason(ptr noundef %skb.addr.0, i32 noundef 0) #12
  br label %cleanup102

cleanup102:                                       ; preds = %do.end101, %rcu_read_unlock_bh.exit, %if.then69.cleanup102_crit_edge, %if.then62.cleanup102_crit_edge
  %retval.1 = phi i32 [ -22, %do.end101 ], [ %retval.0.i161, %rcu_read_unlock_bh.exit ], [ -12, %if.then62.cleanup102_crit_edge ], [ %call70, %if.then69.cleanup102_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_gso_validate_network_len(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @netif_skb_features(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__skb_gso_segment(ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__icmp_send(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_expand_head(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lwtunnel_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_neigh_gw4(ptr noundef %dev, i32 noundef %daddr) unnamed_addr #2 align 64 {
entry:
  %daddr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %daddr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %daddr, ptr %daddr.addr, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %2, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 %daddr, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31) to i32))
  %3 = load volatile ptr, ptr getelementptr inbounds (%struct.neigh_table, ptr @arp_tbl, i32 0, i32 31), align 4
  %call.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end8.i.i_crit_edge

entry.do.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b65.i.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b65.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 305, ptr noundef nonnull @.str.1) #12
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %entry.do.end8.i.i_crit_edge
  %hash_rnd.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  %xor.i.i = xor i32 %spec.store.select.i, %4
  %5 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hash_rnd.i.i, align 4
  %mul.i.i = mul i32 %6, %xor.i.i
  %hash_shift.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hash_shift.i.i, align 4
  %sub.i.i = sub i32 32, %8
  %shr.i.i = lshr i32 %mul.i.i, %sub.i.i
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %10, i32 %shr.i.i
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call16.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true18.i.i, label %do.end8.i.i.do.end26.i.i_crit_edge

do.end8.i.i.do.end26.i.i_crit_edge:               ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i.i

land.lhs.true18.i.i:                              ; preds = %do.end8.i.i
  %call19.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %land.lhs.true18.i.i.do.end26.i.i_crit_edge, label %land.lhs.true21.i.i

land.lhs.true18.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i.i

land.lhs.true21.i.i:                              ; preds = %land.lhs.true18.i.i
  %.b6164.i.i = load i1, ptr @___neigh_lookup_noref.__warned.17, align 1
  br i1 %.b6164.i.i, label %land.lhs.true21.i.i.do.end26.i.i_crit_edge, label %if.then23.i.i

land.lhs.true21.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 310, ptr noundef nonnull @.str.1) #12
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.then23.i.i, %land.lhs.true21.i.i.do.end26.i.i_crit_edge, %land.lhs.true18.i.i.do.end26.i.i_crit_edge, %do.end8.i.i.do.end26.i.i_crit_edge
  %cmp.not66.i.i = icmp eq ptr %12, null
  br i1 %cmp.not66.i.i, label %do.end26.i.i.if.then_crit_edge, label %do.end26.i.i.for.body.i.i_crit_edge

do.end26.i.i.for.body.i.i_crit_edge:              ; preds = %do.end26.i.i
  br label %for.body.i.i

do.end26.i.i.if.then_crit_edge:                   ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.i.i:                                     ; preds = %do.end49.i.i.for.body.i.i_crit_edge, %do.end26.i.i.for.body.i.i_crit_edge
  %n.067.i.i = phi ptr [ %18, %do.end49.i.i.for.body.i.i_crit_edge ], [ %12, %do.end26.i.i.for.body.i.i_crit_edge ]
  %dev28.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 25
  %13 = ptrtoint ptr %dev28.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev28.i.i, align 4
  %cmp29.i.i = icmp eq ptr %14, %dev
  br i1 %cmp29.i.i, label %land.lhs.true30.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true30.i.i:                              ; preds = %for.body.i.i
  %primary_key.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 27
  %15 = ptrtoint ptr %primary_key.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %primary_key.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %spec.store.select.i)
  %cmp.i.i = icmp eq i32 %16, %spec.store.select.i
  br i1 %cmp.i.i, label %land.lhs.true30.i.i.if.end_crit_edge, label %land.lhs.true30.i.i.for.inc.i.i_crit_edge

land.lhs.true30.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true30.i.i.if.end_crit_edge:             ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.i.i:                                      ; preds = %land.lhs.true30.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %17 = ptrtoint ptr %n.067.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %n.067.i.i, align 8
  %call39.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %land.lhs.true41.i.i, label %for.inc.i.i.do.end49.i.i_crit_edge

for.inc.i.i.do.end49.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i.i

land.lhs.true41.i.i:                              ; preds = %for.inc.i.i
  %call42.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %land.lhs.true41.i.i.do.end49.i.i_crit_edge, label %land.lhs.true44.i.i

land.lhs.true41.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i.i

land.lhs.true44.i.i:                              ; preds = %land.lhs.true41.i.i
  %.b6263.i.i = load i1, ptr @___neigh_lookup_noref.__warned.18, align 1
  br i1 %.b6263.i.i, label %land.lhs.true44.i.i.do.end49.i.i_crit_edge, label %if.then46.i.i

land.lhs.true44.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i.i

if.then46.i.i:                                    ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 312, ptr noundef nonnull @.str.1) #12
  br label %do.end49.i.i

do.end49.i.i:                                     ; preds = %if.then46.i.i, %land.lhs.true44.i.i.do.end49.i.i_crit_edge, %land.lhs.true41.i.i.do.end49.i.i_crit_edge, %for.inc.i.i.do.end49.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %18, null
  br i1 %cmp.not.i.i, label %do.end49.i.i.if.then_crit_edge, label %do.end49.i.i.for.body.i.i_crit_edge

do.end49.i.i.for.body.i.i_crit_edge:              ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.end49.i.i.if.then_crit_edge:                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %do.end49.i.i.if.then_crit_edge, %do.end26.i.i.if.then_crit_edge
  %call4 = call ptr @__neigh_create(ptr noundef nonnull @arp_tbl, ptr noundef nonnull %daddr.addr, ptr noundef %dev, i1 noundef zeroext false) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true30.i.i.if.end_crit_edge
  %neigh.0 = phi ptr [ %call4, %if.then ], [ %n.067.i.i, %land.lhs.true30.i.i.if.end_crit_edge ]
  ret ptr %neigh.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ip_neigh_gw6(ptr noundef %dev, ptr noundef %addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %0 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl.i = getelementptr inbounds %struct.ipv6_stub, ptr %0, i32 0, i32 20
  %1 = ptrtoint ptr %nd_tbl.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nd_tbl.i, align 4
  %nht1.i.i = getelementptr inbounds %struct.neigh_table, ptr %2, i32 0, i32 31
  %3 = ptrtoint ptr %nht1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %nht1.i.i, align 4
  %call.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end8.i.i_crit_edge

entry.do.end8.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call3.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %land.lhs.true.i.i.do.end8.i.i_crit_edge, label %land.lhs.true5.i.i

land.lhs.true.i.i.do.end8.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

land.lhs.true5.i.i:                               ; preds = %land.lhs.true.i.i
  %.b65.i.i = load i1, ptr @___neigh_lookup_noref.__warned, align 1
  br i1 %.b65.i.i, label %land.lhs.true5.i.i.do.end8.i.i_crit_edge, label %if.then.i.i

land.lhs.true5.i.i.do.end8.i.i_crit_edge:         ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8.i.i

if.then.i.i:                                      ; preds = %land.lhs.true5.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 305, ptr noundef nonnull @.str.1) #12
  br label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true5.i.i.do.end8.i.i_crit_edge, %land.lhs.true.i.i.do.end8.i.i_crit_edge, %entry.do.end8.i.i_crit_edge
  %hash_rnd.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %dev to i32
  %xor.i1.i = xor i32 %6, %7
  %8 = ptrtoint ptr %hash_rnd.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hash_rnd.i.i, align 4
  %mul.i.i = mul i32 %xor.i1.i, %9
  %arrayidx2.i2.i = getelementptr i32, ptr %addr, i32 1
  %10 = ptrtoint ptr %arrayidx2.i2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i2.i, align 4
  %arrayidx3.i3.i = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx3.i3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i3.i, align 4
  %mul4.i.i = mul i32 %13, %11
  %add.i.i = add i32 %mul4.i.i, %mul.i.i
  %arrayidx5.i4.i = getelementptr i32, ptr %addr, i32 2
  %14 = ptrtoint ptr %arrayidx5.i4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx5.i4.i, align 4
  %arrayidx6.i5.i = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %arrayidx6.i5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx6.i5.i, align 4
  %mul7.i.i = mul i32 %17, %15
  %add8.i.i = add i32 %add.i.i, %mul7.i.i
  %arrayidx9.i6.i = getelementptr i32, ptr %addr, i32 3
  %18 = ptrtoint ptr %arrayidx9.i6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx9.i6.i, align 4
  %arrayidx10.i7.i = getelementptr %struct.neigh_hash_table, ptr %4, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %arrayidx10.i7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10.i7.i, align 4
  %mul11.i.i = mul i32 %21, %19
  %add12.i.i = add i32 %add8.i.i, %mul11.i.i
  %hash_shift.i.i = getelementptr inbounds %struct.neigh_hash_table, ptr %4, i32 0, i32 1
  %22 = ptrtoint ptr %hash_shift.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hash_shift.i.i, align 4
  %sub.i.i = sub i32 32, %23
  %shr.i.i = lshr i32 %add12.i.i, %sub.i.i
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %4, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %25, i32 %shr.i.i
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call16.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true18.i.i, label %do.end8.i.i.do.end26.i.i_crit_edge

do.end8.i.i.do.end26.i.i_crit_edge:               ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i.i

land.lhs.true18.i.i:                              ; preds = %do.end8.i.i
  %call19.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %land.lhs.true18.i.i.do.end26.i.i_crit_edge, label %land.lhs.true21.i.i

land.lhs.true18.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true18.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i.i

land.lhs.true21.i.i:                              ; preds = %land.lhs.true18.i.i
  %.b6164.i.i = load i1, ptr @___neigh_lookup_noref.__warned.17, align 1
  br i1 %.b6164.i.i, label %land.lhs.true21.i.i.do.end26.i.i_crit_edge, label %if.then23.i.i

land.lhs.true21.i.i.do.end26.i.i_crit_edge:       ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end26.i.i

if.then23.i.i:                                    ; preds = %land.lhs.true21.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 310, ptr noundef nonnull @.str.1) #12
  br label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.then23.i.i, %land.lhs.true21.i.i.do.end26.i.i_crit_edge, %land.lhs.true18.i.i.do.end26.i.i_crit_edge, %do.end8.i.i.do.end26.i.i_crit_edge
  %cmp.not66.i.i = icmp eq ptr %27, null
  br i1 %cmp.not66.i.i, label %do.end26.i.i.if.then_crit_edge, label %do.end26.i.i.for.body.i.i_crit_edge

do.end26.i.i.for.body.i.i_crit_edge:              ; preds = %do.end26.i.i
  br label %for.body.i.i

do.end26.i.i.if.then_crit_edge:                   ; preds = %do.end26.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.body.i.i:                                     ; preds = %do.end49.i.i.for.body.i.i_crit_edge, %do.end26.i.i.for.body.i.i_crit_edge
  %n.067.i.i = phi ptr [ %47, %do.end49.i.i.for.body.i.i_crit_edge ], [ %27, %do.end26.i.i.for.body.i.i_crit_edge ]
  %dev28.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 25
  %28 = ptrtoint ptr %dev28.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev28.i.i, align 4
  %cmp29.i.i = icmp eq ptr %29, %dev
  br i1 %cmp29.i.i, label %land.lhs.true30.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true30.i.i:                              ; preds = %for.body.i.i
  %primary_key.i.i = getelementptr inbounds %struct.neighbour, ptr %n.067.i.i, i32 0, i32 27
  %30 = ptrtoint ptr %primary_key.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %primary_key.i.i, align 4
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %addr, align 4
  %xor.i.i = xor i32 %33, %31
  %arrayidx2.i.i = getelementptr %struct.neighbour, ptr %n.067.i.i, i32 1
  %34 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx2.i.i, align 4
  %36 = ptrtoint ptr %arrayidx2.i2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx2.i2.i, align 4
  %xor4.i.i = xor i32 %37, %35
  %or.i.i = or i32 %xor4.i.i, %xor.i.i
  %arrayidx5.i.i = getelementptr %struct.neighbour, ptr %n.067.i.i, i32 1, i32 1
  %38 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx5.i.i, align 4
  %40 = ptrtoint ptr %arrayidx5.i4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx5.i4.i, align 4
  %xor7.i.i = xor i32 %41, %39
  %or8.i.i = or i32 %or.i.i, %xor7.i.i
  %arrayidx9.i.i = getelementptr %struct.neighbour, ptr %n.067.i.i, i32 1, i32 2
  %42 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx9.i.i, align 4
  %44 = ptrtoint ptr %arrayidx9.i6.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx9.i6.i, align 4
  %xor11.i.i = xor i32 %45, %43
  %or12.i.i = or i32 %or8.i.i, %xor11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or12.i.i)
  %cmp.i.i = icmp eq i32 %or12.i.i, 0
  br i1 %cmp.i.i, label %land.lhs.true30.i.i.if.end_crit_edge, label %land.lhs.true30.i.i.for.inc.i.i_crit_edge

land.lhs.true30.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true30.i.i.if.end_crit_edge:             ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

for.inc.i.i:                                      ; preds = %land.lhs.true30.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %46 = ptrtoint ptr %n.067.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %n.067.i.i, align 8
  %call39.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i.i)
  %tobool40.not.i.i = icmp eq i32 %call39.i.i, 0
  br i1 %tobool40.not.i.i, label %land.lhs.true41.i.i, label %for.inc.i.i.do.end49.i.i_crit_edge

for.inc.i.i.do.end49.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i.i

land.lhs.true41.i.i:                              ; preds = %for.inc.i.i
  %call42.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %land.lhs.true41.i.i.do.end49.i.i_crit_edge, label %land.lhs.true44.i.i

land.lhs.true41.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true41.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i.i

land.lhs.true44.i.i:                              ; preds = %land.lhs.true41.i.i
  %.b6263.i.i = load i1, ptr @___neigh_lookup_noref.__warned.18, align 1
  br i1 %.b6263.i.i, label %land.lhs.true44.i.i.do.end49.i.i_crit_edge, label %if.then46.i.i

land.lhs.true44.i.i.do.end49.i.i_crit_edge:       ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end49.i.i

if.then46.i.i:                                    ; preds = %land.lhs.true44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @___neigh_lookup_noref.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.16, i32 noundef 312, ptr noundef nonnull @.str.1) #12
  br label %do.end49.i.i

do.end49.i.i:                                     ; preds = %if.then46.i.i, %land.lhs.true44.i.i.do.end49.i.i_crit_edge, %land.lhs.true41.i.i.do.end49.i.i_crit_edge, %for.inc.i.i.do.end49.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %47, null
  br i1 %cmp.not.i.i, label %do.end49.i.i.if.then_crit_edge, label %do.end49.i.i.for.body.i.i_crit_edge

do.end49.i.i.for.body.i.i_crit_edge:              ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.end49.i.i.if.then_crit_edge:                   ; preds = %do.end49.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %do.end49.i.i.if.then_crit_edge, %do.end26.i.i.if.then_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %48 = load ptr, ptr @ipv6_stub, align 4
  %nd_tbl = getelementptr inbounds %struct.ipv6_stub, ptr %48, i32 0, i32 20
  %49 = ptrtoint ptr %nd_tbl to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %nd_tbl, align 4
  %call4 = tail call ptr @__neigh_create(ptr noundef %50, ptr noundef %addr, ptr noundef %dev, i1 noundef zeroext false) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true30.i.i.if.end_crit_edge
  %neigh.0 = phi ptr [ %call4, %if.then ], [ %n.067.i.i, %land.lhs.true30.i.i.if.end_crit_edge ]
  ret ptr %neigh.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__neigh_create(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_sk_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__skb_ext_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_and_copy_from_iter(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__sock_tx_timestamp(i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msg_zerocopy_realloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sock_alloc_send_skb(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sk_page_frag_refill(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_zerocopy_iter_dgram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_callback(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msg_zerocopy_put_abort(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kunmap_high(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85}
!llvm.named.register.sp = !{!87}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__ksymtab_ip_send_check, !1, !"__ksymtab_ip_send_check", i1 false, i1 false}
!1 = !{!"../net/ipv4/ip_output.c", i32 97, i32 1}
!2 = !{ptr @__ksymtab_ip_local_out, !3, !"__ksymtab_ip_local_out", i1 false, i1 false}
!3 = !{!"../net/ipv4/ip_output.c", i32 130, i32 1}
!4 = !{ptr @__ksymtab_ip_build_and_send_pkt, !5, !"__ksymtab_ip_build_and_send_pkt", i1 false, i1 false}
!5 = !{!"../net/ipv4/ip_output.c", i32 192, i32 1}
!6 = !{ptr @__ksymtab_ip_output, !7, !"__ksymtab_ip_output", i1 false, i1 false}
!7 = !{!"../net/ipv4/ip_output.c", i32 435, i32 1}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/ipv4/ip_output.c", i32 468, i32 13}
!10 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__ksymtab___ip_queue_xmit, !13, !"__ksymtab___ip_queue_xmit", i1 false, i1 false}
!13 = !{!"../net/ipv4/ip_output.c", i32 542, i32 1}
!14 = !{ptr @__ksymtab_ip_queue_xmit, !15, !"__ksymtab_ip_queue_xmit", i1 false, i1 false}
!15 = !{!"../net/ipv4/ip_output.c", i32 548, i32 1}
!16 = !{ptr @__ksymtab_ip_fraglist_init, !17, !"__ksymtab_ip_fraglist_init", i1 false, i1 false}
!17 = !{!"../net/ipv4/ip_output.c", i32 614, i32 1}
!18 = !{ptr @__ksymtab_ip_fraglist_prepare, !19, !"__ksymtab_ip_fraglist_prepare", i1 false, i1 false}
!19 = !{!"../net/ipv4/ip_output.c", i32 639, i32 1}
!20 = !{ptr @__ksymtab_ip_frag_init, !21, !"__ksymtab_ip_frag_init", i1 false, i1 false}
!21 = !{!"../net/ipv4/ip_output.c", i32 658, i32 1}
!22 = !{ptr @__ksymtab_ip_frag_next, !23, !"__ksymtab_ip_frag_next", i1 false, i1 false}
!23 = !{!"../net/ipv4/ip_output.c", i32 750, i32 1}
!24 = !{ptr @__ksymtab_ip_do_fragment, !25, !"__ksymtab_ip_do_fragment", i1 false, i1 false}
!25 = !{!"../net/ipv4/ip_output.c", i32 927, i32 1}
!26 = !{ptr @__ksymtab_ip_generic_getfrag, !27, !"__ksymtab_ip_generic_getfrag", i1 false, i1 false}
!27 = !{!"../net/ipv4/ip_output.c", i32 945, i32 1}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/netfilter.h", i32 229, i32 15}
!30 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/netfilter.h", i32 232, i32 15}
!33 = distinct !{null, !34, !"__already_done", i1 false, i1 false}
!34 = !{!"../include/linux/netfilter.h", i32 236, i32 7}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/netfilter.h", i32 238, i32 15}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/netfilter.h", i32 243, i32 15}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/netfilter.h", i32 248, i32 15}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/netfilter.h", i32 252, i32 3}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../include/net/dst.h", i32 161, i32 2}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ipv4/ip_output.c", i32 234, i32 2}
!53 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ip_finish_output2.descriptor, !52, !"descriptor", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!58 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/net/neighbour.h", i32 305, i32 33}
!62 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/net/neighbour.h", i32 310, i32 11}
!65 = distinct !{null, !66, !"__warned", i1 false, i1 false}
!66 = !{!"../include/net/neighbour.h", i32 312, i32 11}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/net/neighbour.h", i32 527, i32 6}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!71 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"__warned", i1 false, i1 false}
!73 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!74 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"__warned", i1 false, i1 false}
!76 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!77 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!80 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"./../include/linux/highmem-internal.h", i32 44, i32 2}
!87 = !{!"sp"}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 6873845, i64 6873884, i64 6873910, i64 6873934, i64 6873959, i64 6873985, i64 6874010, i64 6874036, i64 6874063, i64 6874089, i64 6874128, i64 6874172, i64 6874203, i64 6874228}
!98 = !{i64 6873462}
!99 = !{!"branch_weights", i32 1, i32 2000}
!100 = !{i64 2149302840}
!101 = !{i64 2149303106}
!102 = !{!"branch_weights", i32 2000, i32 1}
!103 = !{i64 2150231021}
!104 = !{i64 2150122623}
!105 = !{i64 2150127557}
!106 = !{i64 2150149275}
!107 = !{i64 2150154169}
!108 = !{i64 2150230696}
!109 = !{i64 2148298966, i64 2148298971, i64 2148298984, i64 2148299028, i64 2148299062, i64 2148299083}
!110 = !{i64 2148484992}
!111 = !{i64 971592, i64 971617, i64 971639, i64 971655, i64 971667, i64 971687, i64 971711, i64 971727, i64 971739}
!112 = !{i64 2148485180}
!113 = !{i64 2148575104}
!114 = !{i64 2148489568, i64 2148489600, i64 2148489629, i64 2148489663, i64 2148489694, i64 2148489717}
!115 = !{i64 2149610827}
!116 = !{i64 2148487103, i64 2148487135, i64 2148487164, i64 2148487198, i64 2148487229, i64 2148487252}
!117 = !{i64 2158400310, i64 2158400795, i64 2158400347, i64 2158400403, i64 2158400437, i64 2158400461, i64 2158400502, i64 2158400523, i64 2158400551, i64 2158400585}
!118 = !{i8 0, i8 2}
!119 = !{i64 2158408200, i64 2158408685, i64 2158408237, i64 2158408293, i64 2158408327, i64 2158408351, i64 2158408392, i64 2158408413, i64 2158408441, i64 2158408475}
!120 = !{!"auto-init"}
!121 = !{i64 2148570984}
!122 = !{i64 2148486293, i64 2148486325, i64 2148486354, i64 2148486388, i64 2148486419, i64 2148486442}
!123 = !{i64 2148571213}
!124 = !{i64 2154815194, i64 2154815682, i64 2154815231, i64 2154815287, i64 2154815321, i64 2154815345, i64 2154815386, i64 2154815407, i64 2154815435, i64 2154815469}
!125 = !{i64 2153379188, i64 2153379672, i64 2153379225, i64 2153379281, i64 2153379315, i64 2153379339, i64 2153379380, i64 2153379401, i64 2153379429, i64 2153379463}
!126 = !{i64 2148485573, i64 2148485599, i64 2148485628, i64 2148485662, i64 2148485693, i64 2148485716}
!127 = !{i64 2154802254, i64 2154802742, i64 2154802291, i64 2154802347, i64 2154802381, i64 2154802405, i64 2154802446, i64 2154802467, i64 2154802495, i64 2154802529}
!128 = !{!"branch_weights", i32 1, i32 4001}
!129 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!130 = !{i64 879831, i64 879892}
!131 = !{i64 882563}
!132 = !{i64 882848}
!133 = !{i64 2150245130}
!134 = !{i64 2150244972}
!135 = !{i64 2150245300}
!136 = !{i64 2150230371}
