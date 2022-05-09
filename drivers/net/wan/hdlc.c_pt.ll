; ModuleID = '/llk/IR_all_yes/drivers/net/wan/hdlc.c_pt.bc'
source_filename = "../drivers/net/wan/hdlc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+hdlc_start_xmit\22, \22a\22\09"
module asm "\09.weak\09__crc_hdlc_start_xmit\09\09\09\09"
module asm "\09.long\09__crc_hdlc_start_xmit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdlc_start_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22hdlc_start_xmit\22\09\09\09\09\09"
module asm "__kstrtabns_hdlc_start_xmit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hdlc_open\22, \22a\22\09"
module asm "\09.weak\09__crc_hdlc_open\09\09\09\09"
module asm "\09.long\09__crc_hdlc_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdlc_open:\09\09\09\09\09"
module asm "\09.asciz \09\22hdlc_open\22\09\09\09\09\09"
module asm "__kstrtabns_hdlc_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hdlc_close\22, \22a\22\09"
module asm "\09.weak\09__crc_hdlc_close\09\09\09\09"
module asm "\09.long\09__crc_hdlc_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdlc_close:\09\09\09\09\09"
module asm "\09.asciz \09\22hdlc_close\22\09\09\09\09\09"
module asm "__kstrtabns_hdlc_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+hdlc_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_hdlc_ioctl\09\09\09\09"
module asm "\09.long\09__crc_hdlc_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hdlc_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22hdlc_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_hdlc_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+alloc_hdlcdev\22, \22a\22\09"
module asm "\09.weak\09__crc_alloc_hdlcdev\09\09\09\09"
module asm "\09.long\09__crc_alloc_hdlcdev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alloc_hdlcdev:\09\09\09\09\09"
module asm "\09.asciz \09\22alloc_hdlcdev\22\09\09\09\09\09"
module asm "__kstrtabns_alloc_hdlcdev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_hdlc_device\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_hdlc_device\09\09\09\09"
module asm "\09.long\09__crc_unregister_hdlc_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_hdlc_device:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_hdlc_device\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_hdlc_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+attach_hdlc_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_attach_hdlc_protocol\09\09\09\09"
module asm "\09.long\09__crc_attach_hdlc_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_attach_hdlc_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22attach_hdlc_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_attach_hdlc_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+detach_hdlc_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_detach_hdlc_protocol\09\09\09\09"
module asm "\09.long\09__crc_detach_hdlc_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_detach_hdlc_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22detach_hdlc_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_detach_hdlc_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+register_hdlc_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_register_hdlc_protocol\09\09\09\09"
module asm "\09.long\09__crc_register_hdlc_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_hdlc_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22register_hdlc_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_register_hdlc_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_hdlc_protocol\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_hdlc_protocol\09\09\09\09"
module asm "\09.long\09__crc_unregister_hdlc_protocol\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_hdlc_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_hdlc_protocol\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_hdlc_protocol:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.5 }
%union.anon.5 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.45, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.45 = type { %struct.anon.46 }
%struct.anon.46 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.50, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.50 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hdlc_proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.96, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.96 = type { ptr }
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

@__kstrtab_hdlc_start_xmit = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdlc_start_xmit = external dso_local constant [0 x i8], align 1
@__ksymtab_hdlc_start_xmit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdlc_start_xmit to i32), ptr @__kstrtab_hdlc_start_xmit, ptr @__kstrtabns_hdlc_start_xmit }, section "___ksymtab+hdlc_start_xmit", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Carrier detected\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"No carrier\0A\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_hdlc_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdlc_open = external dso_local constant [0 x i8], align 1
@__ksymtab_hdlc_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdlc_open to i32), ptr @__kstrtab_hdlc_open, ptr @__kstrtabns_hdlc_open }, section "___ksymtab+hdlc_open", align 4
@__kstrtab_hdlc_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdlc_close = external dso_local constant [0 x i8], align 1
@__ksymtab_hdlc_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdlc_close to i32), ptr @__kstrtab_hdlc_close, ptr @__kstrtabns_hdlc_close }, section "___ksymtab+hdlc_close", align 4
@first_proto = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_hdlc_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_hdlc_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_hdlc_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hdlc_ioctl to i32), ptr @__kstrtab_hdlc_ioctl, ptr @__kstrtabns_hdlc_ioctl }, section "___ksymtab+hdlc_ioctl", align 4
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hdlc%d\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_alloc_hdlcdev = external dso_local constant [0 x i8], align 1
@__kstrtabns_alloc_hdlcdev = external dso_local constant [0 x i8], align 1
@__ksymtab_alloc_hdlcdev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alloc_hdlcdev to i32), ptr @__kstrtab_alloc_hdlcdev, ptr @__kstrtabns_alloc_hdlcdev }, section "___ksymtab+alloc_hdlcdev", align 4
@__kstrtab_unregister_hdlc_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_hdlc_device = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_hdlc_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_hdlc_device to i32), ptr @__kstrtab_unregister_hdlc_device, ptr @__kstrtabns_unregister_hdlc_device }, section "___ksymtab+unregister_hdlc_device", align 4
@__kstrtab_attach_hdlc_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_attach_hdlc_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_attach_hdlc_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @attach_hdlc_protocol to i32), ptr @__kstrtab_attach_hdlc_protocol, ptr @__kstrtabns_attach_hdlc_protocol }, section "___ksymtab+attach_hdlc_protocol", align 4
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Refused to change device type\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_detach_hdlc_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_detach_hdlc_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_detach_hdlc_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @detach_hdlc_protocol to i32), ptr @__kstrtab_detach_hdlc_protocol, ptr @__kstrtabns_detach_hdlc_protocol }, section "___ksymtab+detach_hdlc_protocol", align 4
@__kstrtab_register_hdlc_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_hdlc_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_register_hdlc_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_hdlc_protocol to i32), ptr @__kstrtab_register_hdlc_protocol, ptr @__kstrtabns_register_hdlc_protocol }, section "___ksymtab+register_hdlc_protocol", align 4
@__kstrtab_unregister_hdlc_protocol = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_hdlc_protocol = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_hdlc_protocol = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_hdlc_protocol to i32), ptr @__kstrtab_unregister_hdlc_protocol, ptr @__kstrtabns_unregister_hdlc_protocol }, section "___ksymtab+unregister_hdlc_protocol", align 4
@__UNIQUE_ID_author343 = internal constant [45 x i8] c"hdlc.author=Krzysztof Halasa <khc@pm.waw.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description344 = internal constant [37 x i8] c"hdlc.description=HDLC support module\00", section ".modinfo", align 1
@__UNIQUE_ID_file345 = internal constant [31 x i8] c"hdlc.file=drivers/net/wan/hdlc\00", section ".modinfo", align 1
@__UNIQUE_ID_license346 = internal constant [20 x i8] c"hdlc.license=GPL v2\00", section ".modinfo", align 1
@hdlc_packet_type = internal global %struct.packet_type { i16 25, i8 0, ptr null, ptr null, ptr @hdlc_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@hdlc_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @hdlc_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_hdlc__347_378_hdlc_module_init6 = internal global ptr @hdlc_module_init, section ".initcall6.init", align 4
@__exitcall_hdlc_module_exit = internal global ptr @hdlc_module_exit, section ".exitcall.exit", align 4
@hdlc_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&hdlc->state_lock\00", [46 x i8] zeroinitializer }, align 32
@hdlc_null_ops = internal constant { %struct.header_ops, [40 x i8] } zeroinitializer, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Carrier lost\0A\00", [18 x i8] zeroinitializer }, align 32
@hdlc_module_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016hdlc: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdlc_module_init\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/net/wan/hdlc.c\00", [41 x i8] zeroinitializer }, align 32
@hdlc_module_init._entry_ptr = internal global ptr @hdlc_module_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDLC support module revision 1.22\00", [62 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 164, i32 20 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 167, i32 20 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"first_proto\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 43, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 255, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 306, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"hdlc_notifier\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 356, i32 30 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 248, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"hdlc_null_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 222, i32 32 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 133, i32 20 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 364, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private constant [26 x i8] c"../drivers/net/wan/hdlc.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 39, i32 30 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author343, ptr @__UNIQUE_ID_description344, ptr @__UNIQUE_ID_file345, ptr @__UNIQUE_ID_license346, ptr @__exitcall_hdlc_module_exit, ptr @__initcall__kmod_hdlc__347_378_hdlc_module_init6, ptr @__ksymtab_alloc_hdlcdev, ptr @__ksymtab_attach_hdlc_protocol, ptr @__ksymtab_detach_hdlc_protocol, ptr @__ksymtab_hdlc_close, ptr @__ksymtab_hdlc_ioctl, ptr @__ksymtab_hdlc_open, ptr @__ksymtab_hdlc_start_xmit, ptr @__ksymtab_register_hdlc_protocol, ptr @__ksymtab_unregister_hdlc_device, ptr @__ksymtab_unregister_hdlc_protocol, ptr @hdlc_module_exit, ptr @hdlc_module_init._entry, ptr @hdlc_module_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @first_proto, ptr @.str.2, ptr @.str.3, ptr @hdlc_notifier, ptr @hdlc_setup.__key, ptr @.str.4, ptr @hdlc_null_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @first_proto to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlc_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlc_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlc_null_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdlc_module_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdlc_start_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %xmit = getelementptr inbounds %struct.hdlc_proto, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %xmit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xmit, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %xmit4 = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %xmit4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xmit4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %.sink = phi ptr [ %5, %if.end ], [ %3, %entry.cleanup_crit_edge ]
  %call5 = tail call i32 %.sink(ptr noundef %skb, ptr noundef %dev) #5
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdlc_open(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup16_crit_edge, label %if.end

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup16

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 %3(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then3.if.end10_crit_edge, label %if.then3.cleanup16_crit_edge

if.then3.cleanup16_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup16

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %if.then3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %state_lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock) #5
  %carrier = getelementptr i8, ptr %dev, i32 2316
  %4 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %carrier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool11.not = icmp eq i32 %5, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end10
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str) #8
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proto, align 4
  %start.i = getelementptr inbounds %struct.hdlc_proto, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %start.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then12.if.end13_crit_edge, label %if.then.i

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef %dev) #5
  br label %if.end13

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then.i, %if.then12.if.end13_crit_edge
  %open14 = getelementptr i8, ptr %dev, i32 2320
  %10 = ptrtoint ptr %open14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %open14, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock) #5
  br label %cleanup16

cleanup16:                                        ; preds = %if.end13, %if.then3.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.1 = phi i32 [ 0, %if.end13 ], [ %call6, %if.then3.cleanup16_crit_edge ], [ -38, %entry.cleanup16_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdlc_close(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock) #5
  %open = getelementptr i8, ptr %dev, i32 2320
  %0 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %open, align 4
  %carrier = getelementptr i8, ptr %dev, i32 2316
  %1 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %carrier, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %proto.i = getelementptr i8, ptr %dev, i32 2312
  %3 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %proto.i, align 4
  %stop.i = getelementptr inbounds %struct.hdlc_proto, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stop.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %6(ptr noundef %dev) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock) #5
  %proto = getelementptr i8, ptr %dev, i32 2312
  %7 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %proto, align 4
  %close = getelementptr inbounds %struct.hdlc_proto, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %close, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %10(ptr noundef %dev) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdlc_ioctl(ptr noundef %dev, ptr noundef %ifs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @first_proto, align 4
  %proto1 = getelementptr i8, ptr %dev, i32 2312
  %1 = ptrtoint ptr %proto1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %proto1, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %ioctl = getelementptr inbounds %struct.hdlc_proto, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ioctl, align 4
  %call4 = tail call i32 %4(ptr noundef %dev, ptr noundef %ifs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call4)
  %cmp.not = icmp eq i32 %call4, -22
  br i1 %cmp.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %tobool7.not24 = icmp eq ptr %0, null
  br i1 %tobool7.not24, label %if.end6.cleanup_crit_edge, label %if.end6.while.body_crit_edge

if.end6.while.body_crit_edge:                     ; preds = %if.end6
  br label %while.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %if.end6.while.body_crit_edge
  %proto.025 = phi ptr [ %8, %if.end12.while.body_crit_edge ], [ %0, %if.end6.while.body_crit_edge ]
  %ioctl8 = getelementptr inbounds %struct.hdlc_proto, ptr %proto.025, i32 0, i32 5
  %5 = ptrtoint ptr %ioctl8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioctl8, align 4
  %call9 = tail call i32 %6(ptr noundef %dev, ptr noundef %ifs) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, -22
  br i1 %cmp10.not, label %if.end12, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %while.body
  %next = getelementptr inbounds %struct.hdlc_proto, ptr %proto.025, i32 0, i32 10
  %7 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.end12.cleanup_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call9, %while.body.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @alloc_hdlcdev(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_netdev_mqs(i32 noundef 72, ptr noundef nonnull @.str.2, i8 noundef zeroext 0, ptr noundef nonnull @hdlc_setup, i32 noundef 1, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %priv2 = getelementptr i8, ptr %call, i32 2372
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %priv2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdlc_setup(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 144, ptr %flags.i, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %1 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 16, ptr %priv_flags.i, align 16
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1500, ptr %mtu.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %3 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 68, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %4 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1500, ptr %max_mtu.i, align 4
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 518, ptr %type.i, align 16
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %hard_header_len.i, align 2
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %7 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %needed_headroom.i, align 8
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %8 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %addr_len.i, align 1
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %9 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hdlc_null_ops, ptr %header_ops.i, align 4
  %carrier = getelementptr i8, ptr %dev, i32 2316
  %10 = ptrtoint ptr %carrier to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %carrier, align 4
  %open = getelementptr i8, ptr %dev, i32 2320
  %11 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %open, align 4
  %state_lock = getelementptr i8, ptr %dev, i32 2324
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @hdlc_setup.__key, i16 noundef signext 3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_hdlc_device(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #5
  %call = tail call i32 @detach_hdlc_protocol(ptr noundef %dev)
  tail call void @unregister_netdevice_queue(ptr noundef %dev, ptr noundef null) #5
  tail call void @rtnl_unlock() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @detach_hdlc_protocol(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %proto = getelementptr i8, ptr %dev, i32 2312
  %0 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %proto, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @call_netdevice_notifiers(i32 noundef 15, ptr noundef %dev) #5
  %and.i = and i32 %call1, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.i = icmp sgt i32 %and.i, 1
  %sub.i = sub i32 1, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool3.not = icmp eq i32 %spec.select.i, 0
  br i1 %tobool3.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %2 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proto, align 4
  %detach = getelementptr inbounds %struct.hdlc_proto, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %detach to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %detach, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %5(ptr noundef %dev) #5
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  %6 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %proto, align 4
  %module = getelementptr inbounds %struct.hdlc_proto, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %9) #5
  %10 = ptrtoint ptr %proto to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %proto, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end10, %entry.if.end13_crit_edge
  %state = getelementptr i8, ptr %dev, i32 2368
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  tail call void @kfree(ptr noundef %12) #5
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %state, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 144, ptr %flags.i, align 8
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %15 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 16, ptr %priv_flags.i, align 16
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %16 = ptrtoint ptr %mtu.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1500, ptr %mtu.i, align 4
  %min_mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 30
  %17 = ptrtoint ptr %min_mtu.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 68, ptr %min_mtu.i, align 8
  %max_mtu.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 31
  %18 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1500, ptr %max_mtu.i, align 4
  %type.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 518, ptr %type.i, align 16
  %hard_header_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %20 = ptrtoint ptr %hard_header_len.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %hard_header_len.i, align 2
  %needed_headroom.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 21
  %21 = ptrtoint ptr %needed_headroom.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %needed_headroom.i, align 8
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 56
  %22 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %addr_len.i, align 1
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %23 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @hdlc_null_ops, ptr %header_ops.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then4
  %retval.0 = phi i32 [ %spec.select.i, %if.then4 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @attach_hdlc_protocol(ptr noundef %dev, ptr noundef %proto, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @detach_hdlc_protocol(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %module = getelementptr inbounds %struct.hdlc_proto, ptr %proto, i32 0, i32 9
  %0 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %module, align 4
  %call1 = tail call zeroext i1 @try_module_get(ptr noundef %1) #5
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool4.not = icmp eq i32 %size, 0
  br i1 %tobool4.not, label %if.end3.if.end14_crit_edge, label %if.end8.i

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.end8.i:                                        ; preds = %if.end3
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %size, i32 noundef 3264) #9
  %state = getelementptr i8, ptr %dev, i32 2368
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9.i, ptr %state, align 4
  %tobool10.not = icmp eq ptr %call9.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end8.i.if.end14_crit_edge

if.end8.i.if.end14_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then11:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %4) #5
  br label %cleanup

if.end14:                                         ; preds = %if.end8.i.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %proto16 = getelementptr i8, ptr %dev, i32 2312
  %5 = ptrtoint ptr %proto16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %proto, ptr %proto16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -105, %if.then11 ], [ %call, %entry.cleanup_crit_edge ], [ -38, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @register_hdlc_protocol(ptr noundef %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #5
  %0 = load ptr, ptr @first_proto, align 4
  %next = getelementptr inbounds %struct.hdlc_proto, ptr %proto, i32 0, i32 10
  %1 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %0, ptr %next, align 4
  store ptr %proto, ptr @first_proto, align 4
  tail call void @rtnl_unlock() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_hdlc_protocol(ptr noundef readonly %proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #5
  %0 = load ptr, ptr @first_proto, align 4
  %cmp.not16 = icmp eq ptr %0, %proto
  br i1 %cmp.not16, label %entry.while.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.cond:                                       ; preds = %do.body
  %next = getelementptr inbounds %struct.hdlc_proto, ptr %3, i32 0, i32 10
  %1 = ptrtoint ptr %next to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %next, align 4
  %cmp.not = icmp eq ptr %2, %proto
  br i1 %cmp.not, label %while.end.loopexit, label %while.cond.do.body_crit_edge

while.cond.do.body_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.body:                                          ; preds = %while.cond.do.body_crit_edge, %entry.do.body_crit_edge
  %3 = phi ptr [ %2, %while.cond.do.body_crit_edge ], [ %0, %entry.do.body_crit_edge ]
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body4, label %while.cond, !prof !71

do.body4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wan/hdlc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 339, 0\0A.popsection", ""() #5, !srcloc !72
  unreachable

while.end.loopexit:                               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  %next.le = getelementptr inbounds %struct.hdlc_proto, ptr %3, i32 0, i32 10
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %p.0.lcssa = phi ptr [ @first_proto, %entry.while.end_crit_edge ], [ %next.le, %while.end.loopexit ]
  %next10 = getelementptr inbounds %struct.hdlc_proto, ptr %proto, i32 0, i32 10
  %4 = ptrtoint ptr %next10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next10, align 4
  %6 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %p.0.lcssa, align 4
  tail call void @rtnl_unlock() #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hdlc_module_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dev_remove_pack(ptr noundef nonnull @hdlc_packet_type) #5
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @hdlc_notifier) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlc_module_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9) #8
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @hdlc_notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @dev_add_pack(ptr noundef nonnull @hdlc_packet_type) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlc_rcv(ptr noundef %skb, ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %p, ptr nocapture noundef readnone %orig_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %priv_flags, align 16
  %and = and i64 %1, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not, label %do.body, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

do.body:                                          ; preds = %if.end
  %proto = getelementptr i8, ptr %dev, i32 2312
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proto, align 4
  %netif_rx = getelementptr inbounds %struct.hdlc_proto, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %netif_rx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netif_rx, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %do.body11, label %do.end17, !prof !71

do.body11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/wan/hdlc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #5, !srcloc !73
  unreachable

do.end17:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 %7(ptr noundef %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then4, %if.then
  %retval.0 = phi i32 [ %call20, %do.end17 ], [ 0, %if.then4 ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdlc_device_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
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
  %priv_flags = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags, align 16
  %and = and i64 %5, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp ne i64 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %event)
  %cmp.not = icmp eq i32 %event, 4
  %or.cond = and i1 %cmp.not, %tobool3.not
  br i1 %or.cond, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %.lobit = lshr exact i32 %8, 2
  %9 = xor i32 %.lobit, 1
  %state_lock = getelementptr i8, ptr %1, i32 2324
  %call14 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %state_lock) #5
  %carrier = getelementptr i8, ptr %1, i32 2316
  %10 = ptrtoint ptr %carrier to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %carrier, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp17 = icmp eq i32 %11, %9
  br i1 %cmp17, label %if.end7.carrier_exit_crit_edge, label %if.end20

if.end7.carrier_exit_crit_edge:                   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %carrier_exit

if.end20:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %carrier to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %carrier, align 4
  %open = getelementptr i8, ptr %1, i32 2320
  %13 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %open, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool22.not = icmp eq i32 %14, 0
  br i1 %tobool22.not, label %if.end20.carrier_exit_crit_edge, label %if.end24

if.end20.carrier_exit_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %carrier_exit

if.end24:                                         ; preds = %if.end20
  br i1 %tobool.not.i, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str) #8
  %proto.i = getelementptr i8, ptr %1, i32 2312
  %15 = ptrtoint ptr %proto.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %proto.i, align 4
  %start.i = getelementptr inbounds %struct.hdlc_proto, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %start.i, align 4
  %tobool.not.i46 = icmp eq ptr %18, null
  br i1 %tobool.not.i46, label %if.then27.carrier_exit_crit_edge, label %if.then27.carrier_exit.sink.split_crit_edge

if.then27.carrier_exit.sink.split_crit_edge:      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %carrier_exit.sink.split

if.then27.carrier_exit_crit_edge:                 ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  br label %carrier_exit

if.else:                                          ; preds = %if.end24
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %1, ptr noundef nonnull @.str.5) #8
  %proto.i47 = getelementptr i8, ptr %1, i32 2312
  %19 = ptrtoint ptr %proto.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %proto.i47, align 4
  %stop.i = getelementptr inbounds %struct.hdlc_proto, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %stop.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop.i, align 4
  %tobool.not.i48 = icmp eq ptr %22, null
  br i1 %tobool.not.i48, label %if.else.carrier_exit_crit_edge, label %if.else.carrier_exit.sink.split_crit_edge

if.else.carrier_exit.sink.split_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %carrier_exit.sink.split

if.else.carrier_exit_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %carrier_exit

carrier_exit.sink.split:                          ; preds = %if.else.carrier_exit.sink.split_crit_edge, %if.then27.carrier_exit.sink.split_crit_edge
  %.sink = phi ptr [ %18, %if.then27.carrier_exit.sink.split_crit_edge ], [ %22, %if.else.carrier_exit.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %1) #5
  br label %carrier_exit

carrier_exit:                                     ; preds = %carrier_exit.sink.split, %if.else.carrier_exit_crit_edge, %if.then27.carrier_exit_crit_edge, %if.end20.carrier_exit_crit_edge, %if.end7.carrier_exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %state_lock, i32 noundef %call14) #5
  br label %cleanup

cleanup:                                          ; preds = %carrier_exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__ksymtab_hdlc_start_xmit, !1, !"__ksymtab_hdlc_start_xmit", i1 false, i1 false}
!1 = !{!"../drivers/net/wan/hdlc.c", i32 76, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wan/hdlc.c", i32 164, i32 20}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wan/hdlc.c", i32 167, i32 20}
!6 = !{ptr @__ksymtab_hdlc_open, !7, !"__ksymtab_hdlc_open", i1 false, i1 false}
!7 = !{!"../drivers/net/wan/hdlc.c", i32 175, i32 1}
!8 = !{ptr @__ksymtab_hdlc_close, !9, !"__ksymtab_hdlc_close", i1 false, i1 false}
!9 = !{!"../drivers/net/wan/hdlc.c", i32 197, i32 1}
!10 = !{ptr @__ksymtab_hdlc_ioctl, !11, !"__ksymtab_hdlc_ioctl", i1 false, i1 false}
!11 = !{!"../drivers/net/wan/hdlc.c", i32 220, i32 1}
!12 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/wan/hdlc.c", i32 255, i32 8}
!14 = !{ptr @__ksymtab_alloc_hdlcdev, !15, !"__ksymtab_alloc_hdlcdev", i1 false, i1 false}
!15 = !{!"../drivers/net/wan/hdlc.c", i32 261, i32 1}
!16 = !{ptr @__ksymtab_unregister_hdlc_device, !17, !"__ksymtab_unregister_hdlc_device", i1 false, i1 false}
!17 = !{!"../drivers/net/wan/hdlc.c", i32 270, i32 1}
!18 = !{ptr @__ksymtab_attach_hdlc_protocol, !19, !"__ksymtab_attach_hdlc_protocol", i1 false, i1 false}
!19 = !{!"../drivers/net/wan/hdlc.c", i32 295, i32 1}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/wan/hdlc.c", i32 306, i32 20}
!22 = !{ptr @__ksymtab_detach_hdlc_protocol, !23, !"__ksymtab_detach_hdlc_protocol", i1 false, i1 false}
!23 = !{!"../drivers/net/wan/hdlc.c", i32 321, i32 1}
!24 = !{ptr @__ksymtab_register_hdlc_protocol, !25, !"__ksymtab_register_hdlc_protocol", i1 false, i1 false}
!25 = !{!"../drivers/net/wan/hdlc.c", i32 330, i32 1}
!26 = !{ptr @__ksymtab_unregister_hdlc_protocol, !27, !"__ksymtab_unregister_hdlc_protocol", i1 false, i1 false}
!27 = !{!"../drivers/net/wan/hdlc.c", i32 345, i32 1}
!28 = !{ptr @__UNIQUE_ID_author343, !29, !"__UNIQUE_ID_author343", i1 false, i1 false}
!29 = !{!"../drivers/net/wan/hdlc.c", i32 347, i32 1}
!30 = !{ptr @__UNIQUE_ID_description344, !31, !"__UNIQUE_ID_description344", i1 false, i1 false}
!31 = !{!"../drivers/net/wan/hdlc.c", i32 348, i32 1}
!32 = !{ptr @__UNIQUE_ID_file345, !33, !"__UNIQUE_ID_file345", i1 false, i1 false}
!33 = !{!"../drivers/net/wan/hdlc.c", i32 349, i32 1}
!34 = !{ptr @__UNIQUE_ID_license346, !33, !"__UNIQUE_ID_license346", i1 false, i1 false}
!35 = !{ptr @__initcall__kmod_hdlc__347_378_hdlc_module_init6, !36, !"__initcall__kmod_hdlc__347_378_hdlc_module_init6", i1 false, i1 false}
!36 = !{!"../drivers/net/wan/hdlc.c", i32 378, i32 1}
!37 = !{ptr @__exitcall_hdlc_module_exit, !38, !"__exitcall_hdlc_module_exit", i1 false, i1 false}
!38 = !{!"../drivers/net/wan/hdlc.c", i32 379, i32 1}
!39 = !{ptr @first_proto, !40, !"first_proto", i1 false, i1 false}
!40 = !{!"../drivers/net/wan/hdlc.c", i32 43, i32 27}
!41 = !{ptr @hdlc_setup.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/net/wan/hdlc.c", i32 248, i32 2}
!43 = !{ptr @.str.4, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @hdlc_null_ops, !45, !"hdlc_null_ops", i1 false, i1 false}
!45 = !{!"../drivers/net/wan/hdlc.c", i32 222, i32 32}
!46 = !{ptr @hdlc_packet_type, !47, !"hdlc_packet_type", i1 false, i1 false}
!47 = !{!"../drivers/net/wan/hdlc.c", i32 351, i32 27}
!48 = !{ptr @hdlc_notifier, !49, !"hdlc_notifier", i1 false, i1 false}
!49 = !{!"../drivers/net/wan/hdlc.c", i32 356, i32 30}
!50 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/wan/hdlc.c", i32 133, i32 20}
!52 = !{ptr @.str.6, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/wan/hdlc.c", i32 364, i32 2}
!54 = !{ptr @.str.7, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.8, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @hdlc_module_init._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @hdlc_module_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/wan/hdlc.c", i32 39, i32 30}
!60 = distinct !{null, !61, !"version", i1 false, i1 false}
!61 = !{!"../drivers/net/wan/hdlc.c", i32 39, i32 20}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2156008431, i64 2156008918, i64 2156008468, i64 2156008524, i64 2156008558, i64 2156008582, i64 2156008623, i64 2156008644, i64 2156008672, i64 2156008706}
!73 = !{i64 2155992612, i64 2155993098, i64 2155992649, i64 2155992705, i64 2155992739, i64 2155992763, i64 2155992804, i64 2155992825, i64 2155992853, i64 2155992887}
