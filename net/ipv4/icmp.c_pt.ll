; ModuleID = '/llk/IR_all_yes/net/ipv4/icmp.c_pt.bc'
source_filename = "../net/ipv4/icmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+icmp_err_convert\22, \22a\22\09"
module asm "\09.weak\09__crc_icmp_err_convert\09\09\09\09"
module asm "\09.long\09__crc_icmp_err_convert\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmp_err_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22icmp_err_convert\22\09\09\09\09\09"
module asm "__kstrtabns_icmp_err_convert:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+icmp_global_allow\22, \22a\22\09"
module asm "\09.weak\09__crc_icmp_global_allow\09\09\09\09"
module asm "\09.long\09__crc_icmp_global_allow\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmp_global_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22icmp_global_allow\22\09\09\09\09\09"
module asm "__kstrtabns_icmp_global_allow:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__icmp_send\22, \22a\22\09"
module asm "\09.weak\09__crc___icmp_send\09\09\09\09"
module asm "\09.long\09__crc___icmp_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___icmp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22__icmp_send\22\09\09\09\09\09"
module asm "__kstrtabns___icmp_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+icmp_ndo_send\22, \22a\22\09"
module asm "\09.weak\09__crc_icmp_ndo_send\09\09\09\09"
module asm "\09.long\09__crc_icmp_ndo_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmp_ndo_send:\09\09\09\09\09"
module asm "\09.asciz \09\22icmp_ndo_send\22\09\09\09\09\09"
module asm "__kstrtabns_icmp_ndo_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+icmp_build_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_icmp_build_probe\09\09\09\09"
module asm "\09.long\09__crc_icmp_build_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icmp_build_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22icmp_build_probe\22\09\09\09\09\09"
module asm "__kstrtabns_icmp_build_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ip_icmp_error_rfc4884\22, \22a\22\09"
module asm "\09.weak\09__crc_ip_icmp_error_rfc4884\09\09\09\09"
module asm "\09.long\09__crc_ip_icmp_error_rfc4884\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ip_icmp_error_rfc4884:\09\09\09\09\09"
module asm "\09.asciz \09\22ip_icmp_error_rfc4884\22\09\09\09\09\09"
module asm "__kstrtabns_ip_icmp_error_rfc4884:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.icmp_err = type { i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon = type { %struct.spinlock, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.icmp_control = type { ptr, i16 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.189, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.189 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.90, i32, %struct.spinlock }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.icmp_bxm = type { ptr, i32, i32, %struct.anon.195, i32, %struct.ip_options_data }
%struct.anon.195 = type { %struct.icmphdr, [3 x i32] }
%struct.icmphdr = type { i8, i8, i16, %union.anon.196 }
%union.anon.196 = type { i32 }
%struct.ip_options_data = type { %struct.ip_options_rcu, [40 x i8] }
%struct.ip_options_rcu = type { %struct.callback_head, %struct.ip_options }
%struct.callback_head = type { ptr, ptr }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.ipcm_cookie = type { %struct.sockcm_cookie, i32, i32, ptr, i8, i16, i8, i16 }
%struct.sockcm_cookie = type { i64, i32, i16 }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.sk_buff = type { %union.anon.83, %union.anon.158, %union.anon.159, [48 x i8], %union.anon.160, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.162, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.83 = type { %struct.anon.84 }
%struct.anon.84 = type { ptr, ptr, %union.anon.85 }
%union.anon.85 = type { ptr }
%union.anon.158 = type { ptr }
%union.anon.159 = type { i64 }
%union.anon.160 = type { %struct.anon.161 }
%struct.anon.161 = type { i32, ptr }
%union.anon.162 = type { %struct.anon.163 }
%struct.anon.163 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.164, i32, i32, i32, i16, i16, %union.anon.166, i32, %union.anon.167, %union.anon.168, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.164 = type { i32 }
%union.anon.166 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.86, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.86 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.157 = type { ptr }
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
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.152, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.152 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.143 }
%union.anon.143 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.181, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.182, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.183, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.15, %union.anon.17, %union.anon.18, i16, i8, i8, i32, %union.anon.20, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.177, [0 x i32], %union.anon.178, i16, i16, %union.anon.179, %struct.refcount_struct, [0 x i32], %union.anon.180 }
%union.anon.15 = type { i64 }
%union.anon.17 = type { i32 }
%union.anon.18 = type { i32 }
%union.anon.20 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { %struct.hlist_node }
%union.anon.179 = type { i32 }
%union.anon.180 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.181 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.182 = type { ptr }
%union.anon.183 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.145 }
%union.anon.145 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.anon.147 = type { i8, i8 }
%struct.inetpeer_addr = type { %union.anon.228, i16 }
%union.anon.228 = type { %struct.in6_addr }
%struct.ipv4_addr_key = type { i32, i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.223, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.215 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.215 = type { %union.nf_inet_addr, %union.anon.216, i8, i8 }
%union.anon.216 = type { i16 }
%struct.anon.223 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.icmp_ext_hdr = type { i8, i8, i16 }
%struct.icmp_ext_echo_iio = type { %struct.icmp_extobj_hdr, %union.anon.224 }
%struct.icmp_extobj_hdr = type { i16, i8, i8 }
%union.anon.224 = type { %struct.anon.225 }
%struct.anon.225 = type { %struct.icmp_ext_echo_ctype3_hdr, %union.anon.226 }
%struct.icmp_ext_echo_ctype3_hdr = type { i16, i8, i8 }
%union.anon.226 = type { %struct.in6_addr }
%struct.anon.197 = type { i16, i16 }
%struct.ipv6_stub = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.skb_ext = type { %struct.refcount_struct, [4 x i8], i8, [7 x i8], [0 x i8] }
%struct.sec_path = type { i32, i32, [6 x ptr], [1 x %struct.xfrm_offload] }
%struct.xfrm_offload = type { %struct.anon.227, i32, i32, i8, i8 }
%struct.anon.227 = type { i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.142, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.144, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%union.anon.142 = type { %struct.hlist_node }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.144 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.sock_ee_data_rfc4884 = type { i16, i8, i8 }
%struct.anon.198 = type { i16, i16 }
%struct.net_protocol = type { ptr, ptr, ptr, ptr, i8 }

@icmp_err_convert = dso_local constant { [16 x %struct.icmp_err], [32 x i8] } { [16 x %struct.icmp_err] [%struct.icmp_err { i32 101, i8 0 }, %struct.icmp_err { i32 113, i8 0 }, %struct.icmp_err { i32 92, i8 -128 }, %struct.icmp_err { i32 111, i8 -128 }, %struct.icmp_err { i32 90, i8 0 }, %struct.icmp_err { i32 95, i8 0 }, %struct.icmp_err { i32 101, i8 -128 }, %struct.icmp_err { i32 112, i8 -128 }, %struct.icmp_err { i32 64, i8 -128 }, %struct.icmp_err { i32 101, i8 -128 }, %struct.icmp_err { i32 113, i8 -128 }, %struct.icmp_err { i32 101, i8 0 }, %struct.icmp_err { i32 113, i8 0 }, %struct.icmp_err { i32 113, i8 -128 }, %struct.icmp_err { i32 113, i8 -128 }, %struct.icmp_err { i32 113, i8 -128 }], [32 x i8] zeroinitializer }, align 32
@__kstrtab_icmp_err_convert = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmp_err_convert = external dso_local constant [0 x i8], align 1
@__ksymtab_icmp_err_convert = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmp_err_convert to i32), ptr @__kstrtab_icmp_err_convert, ptr @__kstrtabns_icmp_err_convert }, section "___ksymtab+icmp_err_convert", align 4
@sysctl_icmp_msgs_per_sec = dso_local local_unnamed_addr global i32 1000, section ".data..read_mostly", align 4
@sysctl_icmp_msgs_burst = dso_local local_unnamed_addr global i32 50, section ".data..read_mostly", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@icmp_global = internal global { %struct.anon, [44 x i8] } { %struct.anon { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_icmp_global_allow = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmp_global_allow = external dso_local constant [0 x i8], align 1
@__ksymtab_icmp_global_allow = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmp_global_allow to i32), ptr @__kstrtab_icmp_global_allow, ptr @__kstrtabns_icmp_global_allow }, section "___ksymtab+icmp_global_allow", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@icmp_pointers = internal constant { [19 x %struct.icmp_control], [40 x i8] } { [19 x %struct.icmp_control] [%struct.icmp_control { ptr @ping_rcv, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_unreach, i16 1 }, %struct.icmp_control { ptr @icmp_unreach, i16 1 }, %struct.icmp_control { ptr @icmp_redirect, i16 1 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_echo, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_discard, i16 1 }, %struct.icmp_control { ptr @icmp_unreach, i16 1 }, %struct.icmp_control { ptr @icmp_unreach, i16 1 }, %struct.icmp_control { ptr @icmp_timestamp, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }, %struct.icmp_control { ptr @icmp_discard, i16 0 }], [40 x i8] zeroinitializer }, align 32
@__kstrtab___icmp_send = external dso_local constant [0 x i8], align 1
@__kstrtabns___icmp_send = external dso_local constant [0 x i8], align 1
@__ksymtab___icmp_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__icmp_send to i32), ptr @__kstrtab___icmp_send, ptr @__kstrtabns___icmp_send }, section "___ksymtab+__icmp_send", align 4
@__kstrtab_icmp_ndo_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmp_ndo_send = external dso_local constant [0 x i8], align 1
@__ksymtab_icmp_ndo_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmp_ndo_send to i32), ptr @__kstrtab_icmp_ndo_send, ptr @__kstrtabns_icmp_ndo_send }, section "___ksymtab+icmp_ndo_send", align 4
@ipv6_stub = external dso_local local_unnamed_addr global ptr, section ".data..read_mostly", align 4
@icmp_build_probe.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv4/icmp.c\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_icmp_build_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_icmp_build_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_icmp_build_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icmp_build_probe to i32), ptr @__kstrtab_icmp_build_probe, ptr @__kstrtabns_icmp_build_probe }, section "___ksymtab_gpl+icmp_build_probe", align 4
@__kstrtab_ip_icmp_error_rfc4884 = external dso_local constant [0 x i8], align 1
@__kstrtabns_ip_icmp_error_rfc4884 = external dso_local constant [0 x i8], align 1
@__ksymtab_ip_icmp_error_rfc4884 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ip_icmp_error_rfc4884 to i32), ptr @__kstrtab_ip_icmp_error_rfc4884, ptr @__kstrtabns_ip_icmp_error_rfc4884 }, section "___ksymtab_gpl+ip_icmp_error_rfc4884", align 4
@icmp_sk_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @icmp_sk_init, ptr null, ptr @icmp_sk_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"icmp_global.lock\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@icmp_unreach.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str, ptr @.str.12, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"icmp\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"icmp_unreach\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%pI4: fragmentation needed and DF set\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"icmp: %pI4: fragmentation needed and DF set\0A\00", [51 x i8] zeroinitializer }, align 32
@icmp_unreach.descriptor.14 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str, ptr @.str.15, i8 0, i8 -30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%pI4: Source Route Failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"icmp: %pI4: Source Route Failed\0A\00", [63 x i8] zeroinitializer }, align 32
@icmp_unreach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"\014icmp: %pI4 sent an invalid ICMP type %u, code %u error to a broadcast: %pI4 on %s\0A\00", [43 x i8] zeroinitializer }, align 32
@icmp_unreach._entry_ptr = internal global ptr @icmp_unreach._entry, section ".printk_index", align 4
@inet_protos = external dso_local global [256 x ptr], align 4
@icmp_tag_validation.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@icmp_socket_deliver.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 42, i64 43]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 8, i64 8, i64 13, i64 17, i64 18]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 13]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 8, i64 3, i64 11, i64 12]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 3]
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"icmp_err_convert\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 116, i32 23 }
@___asan_gen_.29 = private unnamed_addr constant [12 x i8] c"icmp_global\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 235, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"icmp_pointers\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1366, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1116, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"icmp_sk_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 1508, i32 48 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 236, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 1011, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 695, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 723, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 316, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 232, i32 9 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 890, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 904, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [19 x i8] c"../net/ipv4/icmp.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 943, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__ksymtab___icmp_send, ptr @__ksymtab_icmp_build_probe, ptr @__ksymtab_icmp_err_convert, ptr @__ksymtab_icmp_global_allow, ptr @__ksymtab_icmp_ndo_send, ptr @__ksymtab_ip_icmp_error_rfc4884, ptr @icmp_unreach._entry, ptr @icmp_unreach._entry_ptr, ptr @icmp_err_convert, ptr @icmp_global, ptr @icmp_pointers, ptr @.str, ptr @.str.1, ptr @icmp_sk_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmp_err_convert to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmp_global to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmp_pointers to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmp_sk_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icmp_unreach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @icmp_global_allow() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = load volatile i32, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = load volatile i32, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 2), align 4
  %sub = sub i32 %0, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %phi.cmp = icmp ult i32 %sub, 2
  br i1 %phi.cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @icmp_global) #12
  %3 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 2), align 4
  %sub9 = sub i32 %0, %3
  %4 = tail call i32 @llvm.umin.i32(i32 %sub9, i32 100)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp16 = icmp ugt i32 %4, 1
  br i1 %cmp16, label %if.then17, label %if.end8.if.end30_crit_edge

if.end8.if.end30_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then17:                                        ; preds = %if.end8
  %5 = load i32, ptr @sysctl_icmp_msgs_per_sec, align 4
  %mul = mul i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %mul)
  %6 = icmp ult i32 %mul, 100
  br i1 %6, label %if.then17.if.end30_crit_edge, label %do.body24

if.then17.if.end30_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.body24:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  %div = udiv i32 %mul, 100
  store volatile i32 %0, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 2), align 4
  br label %if.end30

if.end30:                                         ; preds = %do.body24, %if.then17.if.end30_crit_edge, %if.end8.if.end30_crit_edge
  %incr.0 = phi i32 [ %div, %do.body24 ], [ 0, %if.then17.if.end30_crit_edge ], [ 0, %if.end8.if.end30_crit_edge ]
  %7 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 1), align 4
  %add = add i32 %7, %incr.0
  %8 = load i32, ptr @sysctl_icmp_msgs_burst, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %add, i32 %8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool37.not = icmp eq i32 %9, 0
  br i1 %tobool37.not, label %if.end30.do.body51_crit_edge, label %if.then38

if.end30.do.body51_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body51

if.then38:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @prandom_u32() #12
  %conv.i = zext i32 %call.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 3
  %shr.i = lshr i64 %mul.i, 32
  %conv2.i = trunc i64 %shr.i to i32
  %sub39 = sub i32 %9, %conv2.i
  %10 = tail call i32 @llvm.smax.i32(i32 %sub39, i32 0)
  br label %do.body51

do.body51:                                        ; preds = %if.then38, %if.end30.do.body51_crit_edge
  %credit.0 = phi i32 [ %10, %if.then38 ], [ 0, %if.end30.do.body51_crit_edge ]
  %11 = xor i1 %tobool37.not, true
  store volatile i32 %credit.0, ptr getelementptr inbounds (%struct.anon, ptr @icmp_global, i32 0, i32 1), align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @icmp_global) #12
  br label %cleanup

cleanup:                                          ; preds = %do.body51, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ %11, %do.body51 ], [ false, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icmp_out_count(ptr nocapture noundef readonly %net, i8 noundef zeroext %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %icmpmsg_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 12
  %0 = ptrtoint ptr %icmpmsg_statistics to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icmpmsg_statistics, align 4
  %conv = zext i8 %type to i32
  %add = or i32 %conv, 256
  %arrayidx = getelementptr [512 x %struct.atomic_t], ptr %1, i32 0, i32 %add
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx, ptr %arrayidx, i32 1, ptr elementtype(i32) %arrayidx) #12, !srcloc !74
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !75
  %icmp_statistics = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 30, i32 11
  %4 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx14 = getelementptr [28 x i32], ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %arrayidx14 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx17, align 4
  %add18 = add i32 %12, %6
  %13 = inttoptr i32 %add18 to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add19 = add i32 %15, 1
  store i32 %add19, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !76
  %and.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.end34_crit_edge, !prof !77

entry.do.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end34

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end34

do.end34:                                         ; preds = %if.then, %entry.do.end34_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #12, !srcloc !78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__icmp_send(ptr noundef %skb_in, i32 noundef %type, i32 noundef %code, i32 noundef %info, ptr noundef %opt) #0 align 64 {
entry:
  %icmp_param = alloca %struct.icmp_bxm, align 4
  %rt = alloca ptr, align 4
  %ipc = alloca %struct.ipcm_cookie, align 8
  %fl4 = alloca %struct.flowi4, align 8
  %_inner_type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %icmp_param) #12
  %0 = call ptr @memset(ptr %icmp_param, i32 255, i32 100)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt) #12
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 1
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
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !77

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %and25.i.i = and i32 %5, -2
  %6 = inttoptr i32 %and25.i.i to ptr
  %7 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rt, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ipc) #12
  %8 = call ptr @memset(ptr %ipc, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #12
  %9 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not, label %skb_rtable.exit.out_crit_edge, label %if.end

skb_rtable.exit.out_crit_edge:                    ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %skb_rtable.exit
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %6, align 4
  %tobool1.not = icmp eq ptr %11, null
  br i1 %tobool1.not, label %if.else, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else:                                          ; preds = %if.end
  %12 = getelementptr inbounds %struct.anon.84, ptr %skb_in, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  %tobool6.not = icmp eq ptr %14, null
  br i1 %tobool6.not, label %if.else.out_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %.pn = phi ptr [ %11, %if.end.if.end11_crit_edge ], [ %14, %if.else.if.end11_crit_edge ]
  %net.0.in = getelementptr inbounds %struct.net_device, ptr %.pn, i32 0, i32 127
  %15 = ptrtoint ptr %net.0.in to i32
  call void @__asan_load4_noabort(i32 %15)
  %net.0 = load ptr, ptr %net.0.in, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 15, i32 0, i32 20
  %18 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %19 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %cmp = icmp ult ptr %add.ptr.i.i, %17
  br i1 %cmp, label %if.end11.out_crit_edge, label %lor.lhs.false

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false:                                    ; preds = %if.end11
  %add.ptr = getelementptr i8, ptr %add.ptr.i.i, i32 20
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i, align 8
  %cmp15 = icmp ugt ptr %add.ptr, %21
  br i1 %cmp15, label %lor.lhs.false.out_crit_edge, label %if.end17

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end17:                                         ; preds = %lor.lhs.false
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 15
  %22 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load = load i16, ptr %pkt_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load)
  %cmp18.not = icmp ult i16 %bf.load, 8192
  br i1 %cmp18.not, label %if.end21, label %if.end17.out_crit_edge

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end21:                                         ; preds = %if.end17
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %6, i32 0, i32 2
  %23 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rt_flags, align 4
  %and = and i32 %24, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end24, label %if.end21.out_crit_edge

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end24:                                         ; preds = %if.end21
  %frag_off = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %frag_off to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %frag_off, align 2
  %27 = and i16 %26, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool27.not = icmp eq i16 %27, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end29:                                         ; preds = %if.end24
  %28 = and i32 %type, 536870911
  %29 = lshr i32 516353, %28
  %30 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool30.not.not = icmp eq i32 %30, 0
  br i1 %tobool30.not.not, label %if.then31, label %if.end29.if.end57_crit_edge

if.end29.if.end57_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then31:                                        ; preds = %if.end29
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp33 = icmp eq i8 %32, 1
  br i1 %cmp33, label %if.then35, label %if.then31.if.end57_crit_edge

if.then31.if.end57_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then35:                                        ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_inner_type) #12
  %33 = ptrtoint ptr %_inner_type to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %_inner_type, align 1, !annotation !79
  %34 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load37 = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear = shl i8 %bf.load37, 2
  %35 = and i8 %bf.clear, 60
  %shl = zext i8 %35 to i32
  %add.ptr39 = getelementptr i8, ptr %add.ptr.i.i, i32 %shl
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 19
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr39 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %37 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call41 = call fastcc ptr @skb_header_pointer(ptr noundef %skb_in, i32 noundef %sub.ptr.sub, i32 noundef 1, ptr noundef nonnull %_inner_type)
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %if.then35.cleanup.thread_crit_edge, label %if.end44

if.then35.cleanup.thread_crit_edge:               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.end44:                                         ; preds = %if.then35
  %38 = ptrtoint ptr %call41 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call41, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %39)
  %cmp46 = icmp ugt i8 %39, 18
  br i1 %cmp46, label %if.end44.cleanup.thread_crit_edge, label %lor.lhs.false48

if.end44.cleanup.thread_crit_edge:                ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

lor.lhs.false48:                                  ; preds = %if.end44
  %conv45 = zext i8 %39 to i32
  %40 = lshr i32 516353, %conv45
  %41 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool52.not.not = icmp eq i32 %41, 0
  br i1 %tobool52.not.not, label %lor.lhs.false48.cleanup.thread_crit_edge, label %cleanup

lor.lhs.false48.cleanup.thread_crit_edge:         ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %lor.lhs.false48.cleanup.thread_crit_edge, %if.end44.cleanup.thread_crit_edge, %if.then35.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_inner_type) #12
  br label %out

cleanup:                                          ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_inner_type) #12
  br label %if.end57

if.end57:                                         ; preds = %cleanup, %if.then31.if.end57_crit_edge, %if.end29.if.end57_crit_edge
  call fastcc void @local_bh_disable()
  %42 = getelementptr inbounds %struct.anon.84, ptr %skb_in, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %tobool58.not = icmp eq ptr %44, null
  br i1 %tobool58.not, label %land.lhs.true61, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end57
  %flags = getelementptr inbounds %struct.net_device, ptr %44, i32 0, i32 14
  %45 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags, align 8
  %and59 = and i32 %46, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp ne i32 %and59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %type)
  %cmp.i.i = icmp sgt i32 %type, 18
  %or.cond = or i1 %cmp.i.i, %tobool60.not
  br i1 %or.cond, label %land.lhs.true.if.end64_crit_edge, label %land.lhs.true.if.end.i.i_crit_edge

land.lhs.true.if.end.i.i_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

land.lhs.true61:                                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %type)
  %cmp.i.i.old = icmp sgt i32 %type, 18
  br i1 %cmp.i.i.old, label %land.lhs.true61.if.end64_crit_edge, label %land.lhs.true61.if.end.i.i_crit_edge

land.lhs.true61.if.end.i.i_crit_edge:             ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true61.if.end64_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.end.i.i:                                       ; preds = %land.lhs.true61.if.end.i.i_crit_edge, %land.lhs.true.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp1.i.i = icmp eq i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %code)
  %cmp2.i.i = icmp eq i32 %code, 4
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.if.end64_crit_edge, label %icmpv4_mask_allow.exit.i

if.end.i.i.if.end64_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

icmpv4_mask_allow.exit.i:                         ; preds = %if.end.i.i
  %shl.i.i = shl nuw nsw i32 1, %type
  %sysctl_icmp_ratemask.i.i = getelementptr inbounds %struct.net, ptr %net.0, i32 0, i32 35, i32 31
  %47 = ptrtoint ptr %sysctl_icmp_ratemask.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sysctl_icmp_ratemask.i.i, align 4
  %and.i.i226 = and i32 %48, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i226)
  %tobool.not.i.i227 = icmp eq i32 %and.i.i226, 0
  br i1 %tobool.not.i.i227, label %icmpv4_mask_allow.exit.i.if.end64_crit_edge, label %icmpv4_global_allow.exit

icmpv4_mask_allow.exit.i.if.end64_crit_edge:      ; preds = %icmpv4_mask_allow.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

icmpv4_global_allow.exit:                         ; preds = %icmpv4_mask_allow.exit.i
  %call1.i228 = call zeroext i1 @icmp_global_allow() #12
  br i1 %call1.i228, label %icmpv4_global_allow.exit.if.end64_crit_edge, label %icmpv4_global_allow.exit.out_bh_enable_crit_edge

icmpv4_global_allow.exit.out_bh_enable_crit_edge: ; preds = %icmpv4_global_allow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh_enable

icmpv4_global_allow.exit.if.end64_crit_edge:      ; preds = %icmpv4_global_allow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.end64:                                         ; preds = %icmpv4_global_allow.exit.if.end64_crit_edge, %icmpv4_mask_allow.exit.i.if.end64_crit_edge, %if.end.i.i.if.end64_crit_edge, %land.lhs.true61.if.end64_crit_edge, %land.lhs.true.if.end64_crit_edge
  %call65 = call fastcc ptr @icmp_xmit_lock(ptr noundef %net.0)
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end64.out_bh_enable_crit_edge, label %if.end68

if.end64.out_bh_enable_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh_enable

if.end68:                                         ; preds = %if.end64
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %49 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %daddr, align 4
  %51 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rt, align 4
  %rt_flags69 = getelementptr inbounds %struct.rtable, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %rt_flags69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rt_flags69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %tobool71.not = icmp sgt i32 %54, -1
  br i1 %tobool71.not, label %if.then72, label %if.end68.if.end89_crit_edge

if.end68.if.end89_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end89

if.then72:                                        ; preds = %if.end68
  %55 = call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %58, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %if.then72.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then72.rcu_read_lock.exit_crit_edge:           ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then72
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #12
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
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then72.rcu_read_lock.exit_crit_edge
  %59 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rt, align 4
  %rt_is_input.i = getelementptr inbounds %struct.rtable, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %rt_is_input.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %rt_is_input.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp.i.not = icmp eq i8 %62, 0
  br i1 %cmp.i.not, label %rcu_read_lock.exit.if.end88_crit_edge, label %land.lhs.true76

rcu_read_lock.exit.if.end88_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

land.lhs.true76:                                  ; preds = %rcu_read_lock.exit
  %sysctl_icmp_errors_use_inbound_ifaddr = getelementptr inbounds %struct.net, ptr %net.0, i32 0, i32 35, i32 29
  %63 = ptrtoint ptr %sysctl_icmp_errors_use_inbound_ifaddr to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %sysctl_icmp_errors_use_inbound_ifaddr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool78.not = icmp eq i8 %64, 0
  br i1 %tobool78.not, label %land.lhs.true76.if.end88_crit_edge, label %if.end82

land.lhs.true76.if.end88_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.end82:                                         ; preds = %land.lhs.true76
  %call80 = call fastcc i32 @inet_iif(ptr noundef %skb_in)
  %call81 = call ptr @dev_get_by_index_rcu(ptr noundef %net.0, i32 noundef %call80) #12
  %tobool83.not = icmp eq ptr %call81, null
  br i1 %tobool83.not, label %if.end82.if.end88_crit_edge, label %if.then84

if.end82.if.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end88

if.then84:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  %saddr85 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %65 = ptrtoint ptr %saddr85 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %saddr85, align 4
  %call86 = call i32 @inet_select_addr(ptr noundef nonnull %call81, i32 noundef %66, i32 noundef 253) #12
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end82.if.end88_crit_edge, %land.lhs.true76.if.end88_crit_edge, %rcu_read_lock.exit.if.end88_crit_edge
  %saddr.0 = phi i32 [ %call86, %if.then84 ], [ 0, %if.end82.if.end88_crit_edge ], [ 0, %land.lhs.true76.if.end88_crit_edge ], [ 0, %rcu_read_lock.exit.if.end88_crit_edge ]
  call fastcc void @rcu_read_unlock()
  br label %if.end89

if.end89:                                         ; preds = %if.end88, %if.end68.if.end89_crit_edge
  %saddr.1 = phi i32 [ %50, %if.end68.if.end89_crit_edge ], [ %saddr.0, %if.end88 ]
  %tos94 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %tos94 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %tos94, align 1
  %and96 = and i8 %68, 30
  %or = or i8 %and96, -64
  %cond = select i1 %tobool30.not.not, i8 %or, i8 %68
  %sysctl_fwmark_reflect = getelementptr inbounds %struct.net, ptr %net.0, i32 0, i32 35, i32 49
  %69 = ptrtoint ptr %sysctl_fwmark_reflect to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %sysctl_fwmark_reflect, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool102.not = icmp eq i8 %70, 0
  br i1 %tobool102.not, label %if.end89.cond.end105_crit_edge, label %cond.true103

if.end89.cond.end105_crit_edge:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end105

cond.true103:                                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #14
  %71 = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 15, i32 0, i32 13
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  br label %cond.end105

cond.end105:                                      ; preds = %cond.true103, %if.end89.cond.end105_crit_edge
  %cond106 = phi i32 [ %73, %cond.true103 ], [ 0, %if.end89.cond.end105_crit_edge ]
  %opt108 = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 5, i32 0, i32 1
  %call109 = call i32 @__ip_options_echo(ptr noundef %net.0, ptr noundef %opt108, ptr noundef %skb_in, ptr noundef %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end112, label %cond.end105.out_unlock_crit_edge

cond.end105.out_unlock_crit_edge:                 ; preds = %cond.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end112:                                        ; preds = %cond.end105
  %replyopts = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 5
  %conv113 = trunc i32 %type to i8
  %data114 = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3
  %74 = ptrtoint ptr %data114 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv113, ptr %data114, align 4
  %conv116 = trunc i32 %code to i8
  %code119 = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3, i32 0, i32 1
  %75 = ptrtoint ptr %code119 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv116, ptr %code119, align 1
  %un = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3, i32 0, i32 3
  %76 = ptrtoint ptr %un to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %info, ptr %un, align 4
  %checksum = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3, i32 0, i32 2
  %77 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %checksum, align 2
  %78 = ptrtoint ptr %icmp_param to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %skb_in, ptr %icmp_param, align 4
  %79 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %head.i.i, align 8
  %81 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i231 = zext i16 %82 to i32
  %add.ptr.i.i232 = getelementptr i8, ptr %80, i32 %conv.i.i231
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 19
  %83 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i232 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %84 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %offset = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 1
  %85 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %sub.ptr.sub.i, ptr %offset, align 4
  %tos126 = getelementptr inbounds %struct.inet_sock, ptr %call65, i32 0, i32 8
  %86 = ptrtoint ptr %tos126 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %cond, ptr %tos126, align 4
  %87 = call ptr @memset(ptr %ipc, i32 0, i32 30)
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc, i32 30
  %88 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc, i32 32
  %89 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  %saddr127 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %90 = ptrtoint ptr %saddr127 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %saddr127, align 4
  %addr = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 1
  %92 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %addr, align 8
  %opt130 = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 3
  %93 = ptrtoint ptr %opt130 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %replyopts, ptr %opt130, align 8
  %mark131 = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc, i32 0, i32 1
  %94 = ptrtoint ptr %mark131 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %cond106, ptr %mark131, align 8
  %call132 = call fastcc ptr @icmp_route_lookup(ptr noundef %net.0, ptr noundef nonnull %fl4, ptr noundef %skb_in, ptr noundef %add.ptr.i.i, i32 noundef %saddr.1, i8 noundef zeroext %cond, i32 noundef %cond106, i32 noundef %type, i32 noundef %code, ptr noundef nonnull %icmp_param)
  %95 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call132, ptr %rt, align 4
  %cmp.i233 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.end112.out_unlock_crit_edge, label %if.end135

if.end112.out_unlock_crit_edge:                   ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end135:                                        ; preds = %if.end112
  %call136 = call fastcc zeroext i1 @icmpv4_xrlim_allow(ptr noundef %net.0, ptr noundef %call132, ptr noundef nonnull %fl4, i32 noundef %type, i32 noundef %code)
  br i1 %call136, label %if.end138, label %if.end135.ende_crit_edge

if.end135.ende_crit_edge:                         ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #14
  br label %ende

if.end138:                                        ; preds = %if.end135
  %96 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rt, align 4
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ops.i, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %mtu.i, align 4
  %call.i234 = call i32 %101(ptr noundef %97) #12
  %102 = call i32 @llvm.smin.i32(i32 %call.i234, i32 576)
  %optlen = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 5, i32 0, i32 1, i32 2
  %103 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %optlen, align 4
  %conv148 = zext i8 %104 to i32
  %sub = add i32 %102, -28
  %sub149 = sub i32 %sub, %conv148
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 6
  %105 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %len, align 4
  %107 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset, align 4
  %sub151 = sub i32 %106, %108
  %data_len = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 2
  %109 = call i32 @llvm.smin.i32(i32 %sub151, i32 %sub149)
  %110 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %data_len, align 4
  %head_len = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 4
  %111 = ptrtoint ptr %head_len to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 8, ptr %head_len, align 4
  %saddr158 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %112 = ptrtoint ptr %saddr158 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %saddr158, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool159.not = icmp eq i32 %113, 0
  br i1 %tobool159.not, label %if.then160, label %if.end138.if.end162_crit_edge

if.end138.if.end162_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end162

if.then160:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #14
  %114 = ptrtoint ptr %saddr158 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1073741816, ptr %saddr158, align 8
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %if.end138.if.end162_crit_edge
  call fastcc void @icmp_push_reply(ptr noundef nonnull %icmp_param, ptr noundef nonnull %fl4, ptr noundef nonnull %ipc, ptr noundef nonnull %rt)
  br label %ende

ende:                                             ; preds = %if.end162, %if.end135.ende_crit_edge
  %115 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rt, align 4
  call void @dst_release(ptr noundef %116) #12
  br label %out_unlock

out_unlock:                                       ; preds = %ende, %if.end112.out_unlock_crit_edge, %cond.end105.out_unlock_crit_edge
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %call65, i32 0, i32 4
  call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #12
  br label %out_bh_enable

out_bh_enable:                                    ; preds = %out_unlock, %if.end64.out_bh_enable_crit_edge, %icmpv4_global_allow.exit.out_bh_enable_crit_edge
  call fastcc void @local_bh_enable()
  br label %out

out:                                              ; preds = %out_bh_enable, %cleanup.thread, %if.end24.out_crit_edge, %if.end21.out_crit_edge, %if.end17.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end11.out_crit_edge, %if.else.out_crit_edge, %skb_rtable.exit.out_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ipc) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt) #12
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %icmp_param) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_rtable(ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !77

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  ret ptr %5
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skb_header_pointer(ptr noundef %skb, i32 noundef %offset, i32 noundef %len, ptr noundef %buffer) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i, align 8
  %4 = add i32 %3, %offset
  %sub.i4 = sub i32 %1, %4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4, i32 %len)
  %cmp.not.i = icmp slt i32 %sub.i4, %len
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i, !prof !77

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %offset
  br label %__skb_header_pointer.exit

if.end.i:                                         ; preds = %entry
  %tobool2.not.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i, label %if.end.i.__skb_header_pointer.exit_crit_edge, label %lor.lhs.false.i

if.end.i.__skb_header_pointer.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_header_pointer.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %offset, ptr noundef %buffer, i32 noundef %len) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp3.i, ptr null, ptr %buffer, !prof !77
  br label %__skb_header_pointer.exit

__skb_header_pointer.exit:                        ; preds = %lor.lhs.false.i, %if.end.i.__skb_header_pointer.exit_crit_edge, %if.then.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.i.__skb_header_pointer.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  ret ptr %retval.0.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @icmp_xmit_lock(ptr nocapture noundef readonly %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %3, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %icmp_sk.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 20
  %4 = ptrtoint ptr %icmp_sk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %icmp_sk.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %13, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %16 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i19.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i19.i to ptr
  %preempt_count.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i20.i, align 4
  %sub.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i20.i, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %15, i32 0, i32 4
  %call.i = tail call i32 @_raw_spin_trylock(ptr noundef %sk_lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %.call = select i1 %tobool.not, ptr null, ptr %15, !prof !77
  ret ptr %.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @inet_iif(ptr nocapture noundef readonly %skb) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !77

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i.i = and i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i.i)
  %tobool.not = icmp eq i32 %and25.i.i, 0
  br i1 %tobool.not, label %skb_rtable.exit.if.end_crit_edge, label %land.lhs.true

skb_rtable.exit.if.end_crit_edge:                 ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %skb_rtable.exit
  %5 = inttoptr i32 %and25.i.i to ptr
  %rt_iif = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rt_iif to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rt_iif, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool1.not = icmp eq i32 %7, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %skb_rtable.exit.if.end_crit_edge
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %8 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %skb_iif, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end ], [ %7, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_select_addr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !83
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_echo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @icmp_route_lookup(ptr noundef %net, ptr noundef %fl4, ptr noundef %skb_in, ptr nocapture noundef readonly %iph, i32 noundef %saddr, i8 noundef zeroext %tos, i32 noundef %mark, i32 noundef %type, i32 noundef %code, ptr nocapture noundef readonly %param) unnamed_addr #0 align 64 {
entry:
  %fl4_dec = alloca %struct.flowi4, align 8
  %fl4_2 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4_dec) #12
  %0 = call ptr @memset(ptr %fl4_dec, i32 255, i32 56)
  %1 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %srr = getelementptr inbounds %struct.icmp_bxm, ptr %param, i32 0, i32 5, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %opt1 = getelementptr inbounds %struct.icmp_bxm, ptr %param, i32 0, i32 5, i32 0, i32 1
  %saddr5 = getelementptr inbounds %struct.iphdr, ptr %iph, i32 0, i32 8
  %cond.in = select i1 %tobool.not, ptr %saddr5, ptr %opt1
  %4 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond = load i32, ptr %cond.in, align 4
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %5 = ptrtoint ptr %daddr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %daddr, align 4
  %saddr6 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %6 = ptrtoint ptr %saddr6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %saddr, ptr %saddr6, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %7 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mark, ptr %flowic_mark, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %user_ns.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %8 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns.i, align 4
  %call.i = tail call i32 @make_kuid(ptr noundef %9, i32 noundef 0) #12
  %10 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %flowic_uid, align 4
  %11 = and i8 %tos, 30
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %12 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %flowic_tos, align 4
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %13 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %flowic_proto, align 2
  %conv12 = trunc i32 %type to i8
  %uli = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 3
  %14 = ptrtoint ptr %uli to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv12, ptr %uli, align 8
  %conv14 = trunc i32 %code to i8
  %code16 = getelementptr inbounds %struct.anon.147, ptr %uli, i32 0, i32 1
  %15 = ptrtoint ptr %code16 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv14, ptr %code16, align 1
  %16 = getelementptr inbounds %struct.anon.84, ptr %skb_in, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %if.else.i, label %entry.icmp_get_route_lookup_dev.exit_crit_edge

entry.icmp_get_route_lookup_dev.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %icmp_get_route_lookup_dev.exit

if.else.i:                                        ; preds = %entry
  %19 = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 8
  %and.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.else.i.skb_dst.exit.i_crit_edge:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.else.i
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge

land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exitthread-pre-split.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, !prof !77

land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exitthread-pre-split.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exitthread-pre-split.i

skb_dst.exitthread-pre-split.i:                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exitthread-pre-split.i_crit_edge, %land.lhs.true.i.i.skb_dst.exitthread-pre-split.i_crit_edge
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr.i = load i32, ptr %19, align 8
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %skb_dst.exitthread-pre-split.i, %if.else.i.skb_dst.exit.i_crit_edge
  %23 = phi i32 [ %.pr.i, %skb_dst.exitthread-pre-split.i ], [ %21, %if.else.i.skb_dst.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %tobool1.not.i = icmp ult i32 %23, 2
  br i1 %tobool1.not.i, label %skb_dst.exit.i.icmp_get_route_lookup_dev.exit_crit_edge, label %if.then2.i

skb_dst.exit.i.icmp_get_route_lookup_dev.exit_crit_edge: ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %icmp_get_route_lookup_dev.exit

if.then2.i:                                       ; preds = %skb_dst.exit.i
  %and.i8.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i8.i)
  %tobool.not.i9.i = icmp eq i32 %and.i8.i, 0
  br i1 %tobool.not.i9.i, label %if.then2.i.skb_dst.exit18.i_crit_edge, label %land.lhs.true.i12.i

if.then2.i.skb_dst.exit18.i_crit_edge:            ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit18.i

land.lhs.true.i12.i:                              ; preds = %if.then2.i
  %call.i10.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool1.not.i11.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool1.not.i11.i, label %land.rhs.i15.i, label %land.lhs.true.i12.i.skb_dst.exit18.i_crit_edge

land.lhs.true.i12.i.skb_dst.exit18.i_crit_edge:   ; preds = %land.lhs.true.i12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit18.i

land.rhs.i15.i:                                   ; preds = %land.lhs.true.i12.i
  %call2.i13.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i13.i)
  %tobool3.not.i14.i = icmp eq i32 %call2.i13.i, 0
  br i1 %tobool3.not.i14.i, label %do.end.i16.i, label %land.rhs.i15.i.skb_dst.exit18.i_crit_edge, !prof !77

land.rhs.i15.i.skb_dst.exit18.i_crit_edge:        ; preds = %land.rhs.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit18.i

do.end.i16.i:                                     ; preds = %land.rhs.i15.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit18.i

skb_dst.exit18.i:                                 ; preds = %do.end.i16.i, %land.rhs.i15.i.skb_dst.exit18.i_crit_edge, %land.lhs.true.i12.i.skb_dst.exit18.i_crit_edge, %if.then2.i.skb_dst.exit18.i_crit_edge
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 8
  %and25.i17.i = and i32 %25, -2
  %26 = inttoptr i32 %and25.i17.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  br label %icmp_get_route_lookup_dev.exit

icmp_get_route_lookup_dev.exit:                   ; preds = %skb_dst.exit18.i, %skb_dst.exit.i.icmp_get_route_lookup_dev.exit_crit_edge, %entry.icmp_get_route_lookup_dev.exit_crit_edge
  %route_lookup_dev.0.i = phi ptr [ %28, %skb_dst.exit18.i ], [ null, %skb_dst.exit.i.icmp_get_route_lookup_dev.exit_crit_edge ], [ %18, %entry.icmp_get_route_lookup_dev.exit_crit_edge ]
  %call18 = tail call fastcc i32 @l3mdev_master_ifindex(ptr noundef %route_lookup_dev.0.i)
  %29 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call18, ptr %fl4, align 8
  tail call void @security_skb_classify_flow(ptr noundef %skb_in, ptr noundef %fl4) #12
  %call21 = tail call ptr @ip_route_output_key_hash(ptr noundef %net, ptr noundef %fl4, ptr noundef %skb_in) #12
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %icmp_get_route_lookup_dev.exit.cleanup97_crit_edge, label %if.end

icmp_get_route_lookup_dev.exit.cleanup97_crit_edge: ; preds = %icmp_get_route_lookup_dev.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.end:                                           ; preds = %icmp_get_route_lookup_dev.exit
  %call24 = tail call ptr @xfrm_lookup(ptr noundef %net, ptr noundef %call21, ptr noundef %fl4, ptr noundef null, i32 noundef 0) #12
  %cmp.i161 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.end
  %cmp.not = icmp eq ptr %call24, %call21
  br i1 %cmp.not, label %if.then26.if.end36_crit_edge, label %if.then26.cleanup97_crit_edge

if.then26.cleanup97_crit_edge:                    ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.then26.if.end36_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.else:                                          ; preds = %if.end
  %cmp31 = icmp eq ptr %call24, inttoptr (i32 -1 to ptr)
  br i1 %cmp31, label %if.else.if.end36_crit_edge, label %if.else.cleanup97_crit_edge

if.else.cleanup97_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end36

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.then26.if.end36_crit_edge
  %rt.0 = phi ptr [ %call21, %if.then26.if.end36_crit_edge ], [ null, %if.else.if.end36_crit_edge ]
  %call.i162 = call i32 @__xfrm_decode_session(ptr noundef %skb_in, ptr noundef nonnull %fl4_dec, i32 noundef 2, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool39.not = icmp eq i32 %call.i162, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.relookup_failed_crit_edge

if.end36.relookup_failed_crit_edge:               ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %relookup_failed

if.end41:                                         ; preds = %if.end36
  %saddr42 = getelementptr inbounds %struct.flowi4, ptr %fl4_dec, i32 0, i32 1
  %30 = ptrtoint ptr %saddr42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %saddr42, align 8
  %call43 = call i32 @inet_addr_type_dev_table(ptr noundef %net, ptr noundef %route_lookup_dev.0.i, i32 noundef %31) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 2
  br i1 %cmp44, label %if.then46, label %if.else52

if.then46:                                        ; preds = %if.end41
  %call.i163 = call ptr @ip_route_output_key_hash(ptr noundef %net, ptr noundef nonnull %fl4_dec, ptr noundef null) #12
  %cmp.i164 = icmp ugt ptr %call.i163, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then49, label %if.then46.if.end74_crit_edge

if.then46.if.end74_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.then49:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %call.i163 to i32
  br label %if.end71

if.else52:                                        ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4_2) #12
  %33 = call ptr @memset(ptr %fl4_2, i32 0, i32 56)
  %34 = ptrtoint ptr %saddr42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %saddr42, align 8
  %daddr54 = getelementptr inbounds %struct.flowi4, ptr %fl4_2, i32 0, i32 2
  %36 = ptrtoint ptr %daddr54 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %daddr54, align 4
  %call.i165 = call ptr @ip_route_output_flow(ptr noundef %net, ptr noundef nonnull %fl4_2, ptr noundef null) #12
  %cmp.i166 = icmp ugt ptr %call.i165, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i166, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  %37 = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 8
  store i32 0, ptr %37, align 8
  %daddr60 = getelementptr inbounds %struct.flowi4, ptr %fl4_dec, i32 0, i32 2
  %40 = ptrtoint ptr %daddr60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %daddr60, align 4
  %42 = ptrtoint ptr %saddr42 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saddr42, align 8
  %44 = ptrtoint ptr %call.i165 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i165, align 4
  %call66 = call fastcc i32 @ip_route_input(ptr noundef %skb_in, i32 noundef %41, i32 noundef %43, i8 noundef zeroext %11, ptr noundef %45)
  call void @dst_release(ptr noundef %call.i165) #12
  %call68 = call fastcc ptr @skb_rtable(ptr noundef %skb_in)
  %46 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %39, ptr %37, align 8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4_2) #12
  br label %if.end71

cleanup:                                          ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %call.i165 to i32
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4_2) #12
  br label %relookup_failed

if.end71:                                         ; preds = %cleanup.thread, %if.then49
  %rt2.1 = phi ptr [ %call.i163, %if.then49 ], [ %call68, %cleanup.thread ]
  %err.1 = phi i32 [ %32, %if.then49 ], [ %call66, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %tobool72.not = icmp eq i32 %err.1, 0
  br i1 %tobool72.not, label %if.end71.if.end74_crit_edge, label %if.end71.relookup_failed_crit_edge

if.end71.relookup_failed_crit_edge:               ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %relookup_failed

if.end71.if.end74_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end74

if.end74:                                         ; preds = %if.end71.if.end74_crit_edge, %if.then46.if.end74_crit_edge
  %rt2.1175 = phi ptr [ %rt2.1, %if.end71.if.end74_crit_edge ], [ %call.i163, %if.then46.if.end74_crit_edge ]
  %call77 = call ptr @xfrm_lookup(ptr noundef %net, ptr noundef %rt2.1175, ptr noundef nonnull %fl4_dec, ptr noundef null, i32 noundef 1) #12
  %cmp.i167 = icmp ugt ptr %call77, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.else81, label %if.then79

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  call void @dst_release(ptr noundef %rt.0) #12
  %48 = call ptr @memcpy(ptr %fl4, ptr %fl4_dec, i32 56)
  br label %cleanup97

if.else81:                                        ; preds = %if.end74
  %49 = ptrtoint ptr %call77 to i32
  %cmp83 = icmp eq ptr %call77, inttoptr (i32 -1 to ptr)
  br i1 %cmp83, label %if.then85, label %if.else81.relookup_failed_crit_edge

if.else81.relookup_failed_crit_edge:              ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #14
  br label %relookup_failed

if.then85:                                        ; preds = %if.else81
  %tobool86.not = icmp eq ptr %rt.0, null
  br i1 %tobool86.not, label %if.then85.cleanup97_crit_edge, label %if.then87

if.then85.cleanup97_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.then87:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #14
  call void @dst_release(ptr noundef nonnull %rt.0) #12
  br label %cleanup97

relookup_failed:                                  ; preds = %if.else81.relookup_failed_crit_edge, %if.end71.relookup_failed_crit_edge, %cleanup, %if.end36.relookup_failed_crit_edge
  %err.2 = phi i32 [ %call.i162, %if.end36.relookup_failed_crit_edge ], [ %err.1, %if.end71.relookup_failed_crit_edge ], [ %47, %cleanup ], [ %49, %if.else81.relookup_failed_crit_edge ]
  %tobool93.not = icmp eq ptr %rt.0, null
  br i1 %tobool93.not, label %if.end95, label %relookup_failed.cleanup97_crit_edge

relookup_failed.cleanup97_crit_edge:              ; preds = %relookup_failed
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup97

if.end95:                                         ; preds = %relookup_failed
  call void @__sanitizer_cov_trace_pc() #14
  %50 = inttoptr i32 %err.2 to ptr
  br label %cleanup97

cleanup97:                                        ; preds = %if.end95, %relookup_failed.cleanup97_crit_edge, %if.then87, %if.then85.cleanup97_crit_edge, %if.then79, %if.else.cleanup97_crit_edge, %if.then26.cleanup97_crit_edge, %icmp_get_route_lookup_dev.exit.cleanup97_crit_edge
  %retval.0 = phi ptr [ %50, %if.end95 ], [ %call77, %if.then79 ], [ %call21, %icmp_get_route_lookup_dev.exit.cleanup97_crit_edge ], [ %call24, %if.then26.cleanup97_crit_edge ], [ %call24, %if.else.cleanup97_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.then87 ], [ inttoptr (i32 -1 to ptr), %if.then85.cleanup97_crit_edge ], [ %rt.0, %relookup_failed.cleanup97_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4_dec) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmpv4_xrlim_allow(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %rt, ptr nocapture noundef readonly %fl4, i32 noundef %type, i32 noundef %code) unnamed_addr #0 align 64 {
entry:
  %daddr.i = alloca %struct.inetpeer_addr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %type)
  %cmp.i = icmp sgt i32 %type, 18
  br i1 %cmp.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp1.i = icmp eq i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %code)
  %cmp2.i = icmp eq i32 %code, 4
  %or.cond.i = and i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %if.end.i.out_crit_edge, label %icmpv4_mask_allow.exit

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

icmpv4_mask_allow.exit:                           ; preds = %if.end.i
  %shl.i = shl nuw nsw i32 1, %type
  %sysctl_icmp_ratemask.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 31
  %0 = ptrtoint ptr %sysctl_icmp_ratemask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysctl_icmp_ratemask.i, align 4
  %and.i = and i32 %1, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %icmpv4_mask_allow.exit.out_crit_edge, label %if.end

icmpv4_mask_allow.exit.out_crit_edge:             ; preds = %icmpv4_mask_allow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end:                                           ; preds = %icmpv4_mask_allow.exit
  %2 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rt, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 8
  %and = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %call7 = tail call fastcc i32 @l3mdev_master_ifindex(ptr noundef %3)
  %peers = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 22
  %6 = ptrtoint ptr %peers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %peers, align 4
  %daddr = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %8 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %daddr, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %daddr.i) #12
  %10 = getelementptr inbounds i8, ptr %daddr.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 255, i32 12)
  %12 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %daddr.i, align 4
  %vif1.i = getelementptr inbounds %struct.ipv4_addr_key, ptr %daddr.i, i32 0, i32 1
  %13 = ptrtoint ptr %vif1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call7, ptr %vif1.i, align 4
  %family.i = getelementptr inbounds %struct.inetpeer_addr, ptr %daddr.i, i32 0, i32 1
  %14 = ptrtoint ptr %family.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %family.i, align 4
  %call.i = call ptr @inet_getpeer(ptr noundef %7, ptr noundef nonnull %daddr.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %daddr.i) #12
  %sysctl_icmp_ratelimit = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 30
  %15 = ptrtoint ptr %sysctl_icmp_ratelimit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sysctl_icmp_ratelimit, align 64
  %call10 = call zeroext i1 @inet_peer_xrlim_allow(ptr noundef %call.i, i32 noundef %16) #12
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end5.out_crit_edge, label %if.then12

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void @inet_putpeer(ptr noundef nonnull %call.i) #12
  br label %out

out:                                              ; preds = %if.then12, %if.end5.out_crit_edge, %land.lhs.true.out_crit_edge, %icmpv4_mask_allow.exit.out_crit_edge, %if.end.i.out_crit_edge, %entry.out_crit_edge
  %rc.0.shrunk = phi i1 [ true, %icmpv4_mask_allow.exit.out_crit_edge ], [ true, %land.lhs.true.out_crit_edge ], [ %call10, %if.then12 ], [ %call10, %if.end5.out_crit_edge ], [ true, %entry.out_crit_edge ], [ true, %if.end.i.out_crit_edge ]
  ret i1 %rc.0.shrunk
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @icmp_push_reply(ptr noundef %icmp_param, ptr noundef %fl4, ptr noundef %ipc, ptr noundef %rt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rt, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %6 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %9, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %icmp_sk.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 35, i32 20
  %10 = ptrtoint ptr %icmp_sk.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %icmp_sk.i, align 4
  %12 = ptrtoint ptr %11 to i32
  %13 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i, align 4
  %add.i52 = add i32 %18, %12
  %19 = inttoptr i32 %add.i52 to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %22 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i19.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i19.i to ptr
  %preempt_count.i.i20.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i20.i, align 4
  %sub.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i20.i, align 4
  %data_len = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 2
  %26 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len, align 4
  %head_len = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 4
  %28 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %head_len, align 4
  %add = add i32 %29, %27
  %call3 = tail call i32 @ip_append_data(ptr noundef %21, ptr noundef %fl4, ptr noundef nonnull @icmp_glue_bits, ptr noundef %icmp_param, i32 noundef %add, i32 noundef %29, ptr noundef %ipc, ptr noundef %rt, i32 noundef 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %21, i32 0, i32 9
  %30 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %skc_net.i, align 4
  %icmp_statistics = getelementptr inbounds %struct.net, ptr %31, i32 0, i32 30, i32 11
  %32 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx = getelementptr [28 x i32], ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %arrayidx to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu, align 4
  %arrayidx13 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx13, align 4
  %add14 = add i32 %40, %34
  %41 = inttoptr i32 %add14 to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add15 = add i32 %43, 1
  store i32 %add15, ptr %41, align 4
  tail call void @ip_flush_pending_frames(ptr noundef %21) #12
  br label %if.end33

if.else:                                          ; preds = %entry
  %sk_write_queue = getelementptr inbounds %struct.sock, ptr %21, i32 0, i32 26
  %44 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sk_write_queue, align 4
  %cmp.i53 = icmp eq ptr %45, %sk_write_queue
  %cmp21.not55 = icmp eq ptr %45, null
  %cmp21.not = or i1 %cmp.i53, %cmp21.not55
  br i1 %cmp21.not, label %if.else.if.end33_crit_edge, label %if.then22

if.else.if.end33_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end33

if.then22:                                        ; preds = %if.else
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 18
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 15, i32 0, i32 19
  %48 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %49 to i32
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 %conv.i.i
  %data = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3
  %50 = ptrtoint ptr %head_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %head_len, align 4
  %call25 = tail call i32 @csum_partial_copy_nocheck(ptr noundef %data, ptr noundef %add.ptr.i.i, i32 noundef %51) #12
  %52 = ptrtoint ptr %sk_write_queue to i32
  call void @__asan_load4_noabort(i32 %52)
  %skb1.056 = load ptr, ptr %sk_write_queue, align 8
  %cmp28.not57 = icmp eq ptr %skb1.056, %sk_write_queue
  br i1 %cmp28.not57, label %if.then22.for.end_crit_edge, label %if.then22.for.body_crit_edge

if.then22.for.body_crit_edge:                     ; preds = %if.then22
  br label %for.body

if.then22.for.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then22.for.body_crit_edge
  %skb1.059 = phi ptr [ %skb1.0, %for.body.for.body_crit_edge ], [ %skb1.056, %if.then22.for.body_crit_edge ]
  %csum.058 = phi i32 [ %add1.i, %for.body.for.body_crit_edge ], [ %call25, %if.then22.for.body_crit_edge ]
  %53 = getelementptr inbounds %struct.sk_buff, ptr %skb1.059, i32 0, i32 15, i32 0, i32 5
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 8
  %add.i = add i32 %55, %csum.058
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %55)
  %cmp.i = icmp ult i32 %add.i, %55
  %conv.i = zext i1 %cmp.i to i32
  %add1.i = add i32 %add.i, %conv.i
  %56 = ptrtoint ptr %skb1.059 to i32
  call void @__asan_load4_noabort(i32 %56)
  %skb1.0 = load ptr, ptr %skb1.059, align 8
  %cmp28.not = icmp eq ptr %skb1.0, %sk_write_queue
  br i1 %cmp28.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then22.for.end_crit_edge
  %csum.0.lcssa = phi i32 [ %call25, %if.then22.for.end_crit_edge ], [ %add1.i, %for.body.for.end_crit_edge ]
  %57 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %csum.0.lcssa) #15, !srcloc !84
  %neg.i = xor i32 %57, -1
  %shr.i = lshr i32 %neg.i, 16
  %conv.i54 = trunc i32 %shr.i to i16
  %checksum = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %58 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i54, ptr %checksum, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 15
  %59 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %59)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %call32 = tail call i32 @ip_push_pending_frames(ptr noundef %21, ptr noundef %fl4) #12
  br label %if.end33

if.end33:                                         ; preds = %for.end, %if.else.if.end33_crit_edge, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @icmp_ndo_send(ptr noundef %skb_in, i32 noundef %type, i32 noundef %code, i32 noundef %info) #0 align 64 {
entry:
  %opts = alloca %struct.ip_options, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opts) #12
  %0 = call ptr @memset(ptr %opts, i32 0, i32 16)
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 5
  %1 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %2, -8
  %3 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %status = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__icmp_send(ptr noundef %skb_in, i32 noundef %type, i32 noundef %code, i32 noundef %info, ptr noundef nonnull %opts)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %users.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in, i32 0, i32 21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i, i32 noundef 4) #12
  %6 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %users.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 1
  br i1 %cmp.i.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call ptr @skb_clone(ptr noundef %skb_in, i32 noundef 2592) #12
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %skb_in.addr.0 = phi ptr [ %call5, %if.then4 ], [ %skb_in, %if.end.if.end6_crit_edge ]
  %cloned_skb.0 = phi ptr [ %call5, %if.then4 ], [ null, %if.end.if.end6_crit_edge ]
  %tobool7.not = icmp eq ptr %skb_in.addr.0, null
  br i1 %tobool7.not, label %if.end6.out_crit_edge, label %lor.lhs.false8, !prof !77

if.end6.out_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false8:                                   ; preds = %if.end6
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in.addr.0, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in.addr.0, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i, align 4
  %conv.i51 = zext i16 %11 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i51
  %cmp = icmp ult ptr %add.ptr.i, %9
  br i1 %cmp, label %lor.lhs.false8.out_crit_edge, label %lor.lhs.false10, !prof !77

lor.lhs.false8.out_crit_edge:                     ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 20
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in.addr.0, i32 0, i32 16
  %12 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tail.i, align 8
  %cmp13 = icmp ugt ptr %add.ptr, %13
  br i1 %cmp13, label %lor.lhs.false10.out_crit_edge, label %lor.rhs, !prof !77

lor.lhs.false10.out_crit_edge:                    ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

lor.rhs:                                          ; preds = %lor.lhs.false10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb_in.addr.0, i32 0, i32 19
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i = add i32 %sub.ptr.lhs.cast.i, 20
  %add = sub i32 %sub.ptr.sub.i, %sub.ptr.rhs.cast.i
  %call15 = tail call i32 @skb_ensure_writable(ptr noundef nonnull %skb_in.addr.0, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end20, label %lor.rhs.out_crit_edge, !prof !85

lor.rhs.out_crit_edge:                            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end20:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i, align 8
  %18 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %network_header.i, align 4
  %conv.i.i58 = zext i16 %19 to i32
  %add.ptr.i.i59 = getelementptr i8, ptr %17, i32 %conv.i.i58
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i59, i32 0, i32 8
  %20 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %saddr, align 4
  %tuple = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 4, i32 0, i32 1
  %22 = ptrtoint ptr %tuple to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tuple, align 8
  store i32 %23, ptr %saddr, align 4
  call void @__icmp_send(ptr noundef nonnull %skb_in.addr.0, i32 noundef %type, i32 noundef %code, i32 noundef %info, ptr noundef nonnull %opts)
  %24 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i, align 8
  %26 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %network_header.i, align 4
  %conv.i.i66 = zext i16 %27 to i32
  %add.ptr.i.i67 = getelementptr i8, ptr %25, i32 %conv.i.i66
  %saddr25 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i67, i32 0, i32 8
  %28 = ptrtoint ptr %saddr25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %21, ptr %saddr25, align 4
  br label %out

out:                                              ; preds = %if.end20, %lor.rhs.out_crit_edge, %lor.lhs.false10.out_crit_edge, %lor.lhs.false8.out_crit_edge, %if.end6.out_crit_edge
  call void @consume_skb(ptr noundef %cloned_skb.0) #12
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opts) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @icmp_build_probe(ptr noundef %skb, ptr nocapture noundef %icmphdr) #0 align 64 {
entry:
  %_ext_hdr = alloca %struct.icmp_ext_hdr, align 4
  %_iio = alloca %struct.icmp_ext_echo_iio, align 4
  %buff = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ext_hdr) #12
  %0 = ptrtoint ptr %_ext_hdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %_ext_hdr, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %_iio) #12
  %1 = getelementptr inbounds %struct.anon.84, ptr %skb, i32 0, i32 2
  %2 = call ptr @memset(ptr %_iio, i32 255, i32 24)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buff) #12
  %sysctl_icmp_echo_enable_probe = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 35, i32 26
  %7 = call ptr @memset(ptr %buff, i32 255, i32 16)
  %8 = ptrtoint ptr %sysctl_icmp_echo_enable_probe to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sysctl_icmp_echo_enable_probe, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %un = getelementptr inbounds %struct.icmphdr, ptr %icmphdr, i32 0, i32 3
  %sequence = getelementptr inbounds %struct.anon.197, ptr %un, i32 0, i32 1
  %10 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sequence, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool1.not = icmp eq i16 %12, 0
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and7 = and i16 %11, -256
  %13 = ptrtoint ptr %sequence to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %and7, ptr %sequence, align 2
  %14 = ptrtoint ptr %icmphdr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %icmphdr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %15)
  %cmp = icmp eq i8 %15, 42
  %. = select i1 %cmp, i8 43, i8 -95
  %16 = ptrtoint ptr %icmphdr to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %., ptr %icmphdr, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  %sub.i4.i = sub i32 %18, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !77

if.then.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i, align 4
  br label %skb_header_pointer.exit

if.end.i.i:                                       ; preds = %if.end3
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i, label %skb_header_pointer.exit.thread, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 0, ptr noundef nonnull %_ext_hdr, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  %spec.select.i.i = select i1 %cmp3.i.i, ptr null, ptr %_ext_hdr, !prof !77
  br label %skb_header_pointer.exit

skb_header_pointer.exit:                          ; preds = %lor.lhs.false.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %22, %if.then.i.i ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  %23 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i, align 4
  %25 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i, align 8
  %.neg249 = add i32 %24, -4
  %sub.i4.i203 = sub i32 %.neg249, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i203)
  %cmp.not.i.i204 = icmp slt i32 %sub.i4.i203, 4
  br i1 %cmp.not.i.i204, label %if.end.i.i208, label %skb_header_pointer.exit.if.then.i.i206_crit_edge, !prof !77

skb_header_pointer.exit.if.then.i.i206_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i206

skb_header_pointer.exit.thread:                   ; preds = %if.end.i.i
  %27 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len.i.i, align 4
  %29 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i.i, align 8
  %.neg251 = add i32 %28, -4
  %sub.i4.i203231 = sub i32 %.neg251, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i203231)
  %cmp.not.i.i204232 = icmp slt i32 %sub.i4.i203231, 4
  br i1 %cmp.not.i.i204232, label %skb_header_pointer.exit.thread.send_mal_query_crit_edge, label %skb_header_pointer.exit.thread.if.then.i.i206_crit_edge, !prof !77

skb_header_pointer.exit.thread.if.then.i.i206_crit_edge: ; preds = %skb_header_pointer.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i.i206

skb_header_pointer.exit.thread.send_mal_query_crit_edge: ; preds = %skb_header_pointer.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

if.then.i.i206:                                   ; preds = %skb_header_pointer.exit.thread.if.then.i.i206_crit_edge, %skb_header_pointer.exit.if.then.i.i206_crit_edge
  %retval.0.i.i234 = phi ptr [ null, %skb_header_pointer.exit.thread.if.then.i.i206_crit_edge ], [ %retval.0.i.i, %skb_header_pointer.exit.if.then.i.i206_crit_edge ]
  %data.i205 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %31 = ptrtoint ptr %data.i205 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i205, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 4
  br label %skb_header_pointer.exit214

if.end.i.i208:                                    ; preds = %skb_header_pointer.exit
  %tobool2.not.i.i207 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i207, label %if.end.i.i208.send_mal_query_crit_edge, label %lor.lhs.false.i.i212

if.end.i.i208.send_mal_query_crit_edge:           ; preds = %if.end.i.i208
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

lor.lhs.false.i.i212:                             ; preds = %if.end.i.i208
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i209 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 4, ptr noundef nonnull %_iio, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i209)
  %cmp3.i.i210 = icmp slt i32 %call.i.i209, 0
  %spec.select.i.i211 = select i1 %cmp3.i.i210, ptr null, ptr %_iio, !prof !77
  br label %skb_header_pointer.exit214

skb_header_pointer.exit214:                       ; preds = %lor.lhs.false.i.i212, %if.then.i.i206
  %retval.0.i.i233 = phi ptr [ %retval.0.i.i234, %if.then.i.i206 ], [ %retval.0.i.i, %lor.lhs.false.i.i212 ]
  %retval.0.i.i213 = phi ptr [ %add.ptr.i.i, %if.then.i.i206 ], [ %spec.select.i.i211, %lor.lhs.false.i.i212 ]
  %tobool17.not = icmp eq ptr %retval.0.i.i233, null
  %tobool18.not = icmp eq ptr %retval.0.i.i213, null
  %or.cond = select i1 %tobool17.not, i1 true, i1 %tobool18.not
  br i1 %or.cond, label %skb_header_pointer.exit214.send_mal_query_crit_edge, label %if.end20

skb_header_pointer.exit214.send_mal_query_crit_edge: ; preds = %skb_header_pointer.exit214
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

if.end20:                                         ; preds = %skb_header_pointer.exit214
  %33 = ptrtoint ptr %retval.0.i.i213 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %retval.0.i.i213, align 4
  %35 = add i16 %34, -25
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20, i16 %35)
  %36 = icmp ult i16 %35, -20
  br i1 %36, label %if.end20.send_mal_query_crit_edge, label %if.end31

if.end20.send_mal_query_crit_edge:                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

if.end31:                                         ; preds = %if.end20
  %sub = add nsw i16 %34, -4
  %conv36 = zext i16 %sub to i32
  %add = add nuw nsw i32 %conv36, 4
  %37 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i, align 4
  %39 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i, align 8
  %.neg253 = add i32 %38, -4
  %sub.i4.i217 = sub i32 %.neg253, %40
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i217, i32 %add)
  %cmp.not.i.i218 = icmp slt i32 %sub.i4.i217, %add
  br i1 %cmp.not.i.i218, label %if.end.i.i223, label %skb_header_pointer.exit229, !prof !77

if.end.i.i223:                                    ; preds = %if.end31
  %tobool2.not.i.i222 = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i222, label %if.end.i.i223.send_mal_query_crit_edge, label %lor.lhs.false.i.i227

if.end.i.i223.send_mal_query_crit_edge:           ; preds = %if.end.i.i223
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

lor.lhs.false.i.i227:                             ; preds = %if.end.i.i223
  %call.i.i224 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef 4, ptr noundef nonnull %_iio, i32 noundef %add) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i224)
  %cmp3.i.i225 = icmp slt i32 %call.i.i224, 0
  br i1 %cmp3.i.i225, label %lor.lhs.false.i.i227.send_mal_query_crit_edge, label %lor.lhs.false.i.i227.if.end40_crit_edge

lor.lhs.false.i.i227.if.end40_crit_edge:          ; preds = %lor.lhs.false.i.i227
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

lor.lhs.false.i.i227.send_mal_query_crit_edge:    ; preds = %lor.lhs.false.i.i227
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

skb_header_pointer.exit229:                       ; preds = %if.end31
  %data.i219 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %41 = ptrtoint ptr %data.i219 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data.i219, align 4
  %add.ptr.i.i220 = getelementptr i8, ptr %42, i32 4
  %tobool38.not = icmp eq ptr %add.ptr.i.i220, null
  br i1 %tobool38.not, label %skb_header_pointer.exit229.send_mal_query_crit_edge, label %skb_header_pointer.exit229.if.end40_crit_edge

skb_header_pointer.exit229.if.end40_crit_edge:    ; preds = %skb_header_pointer.exit229
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

skb_header_pointer.exit229.send_mal_query_crit_edge: ; preds = %skb_header_pointer.exit229
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

if.end40:                                         ; preds = %skb_header_pointer.exit229.if.end40_crit_edge, %lor.lhs.false.i.i227.if.end40_crit_edge
  %retval.0.i.i228248 = phi ptr [ %add.ptr.i.i220, %skb_header_pointer.exit229.if.end40_crit_edge ], [ %_iio, %lor.lhs.false.i.i227.if.end40_crit_edge ]
  %class_type = getelementptr inbounds %struct.icmp_extobj_hdr, ptr %retval.0.i.i228248, i32 0, i32 2
  %43 = ptrtoint ptr %class_type to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %class_type, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i8 %44, label %if.end40.send_mal_query_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb52
    i8 3, label %sw.bb60
  ]

if.end40.send_mal_query_crit_edge:                ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

sw.bb:                                            ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %sub)
  %cmp44 = icmp ugt i16 %sub, 15
  br i1 %cmp44, label %sw.bb.send_mal_query_crit_edge, label %if.end47

sw.bb.send_mal_query_crit_edge:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

if.end47:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %46 = call ptr @memset(ptr %buff, i32 0, i32 16)
  %ident = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %retval.0.i.i228248, i32 0, i32 1
  %47 = call ptr @memcpy(ptr %buff, ptr %ident, i32 %conv36)
  %call51 = call ptr @dev_get_by_name(ptr noundef %6, ptr noundef nonnull %buff) #12
  br label %sw.epilog100

sw.bb52:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %sub)
  %cmp54.not = icmp eq i16 %sub, 4
  br i1 %cmp54.not, label %if.end57, label %sw.bb52.send_mal_query_crit_edge

sw.bb52.send_mal_query_crit_edge:                 ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

if.end57:                                         ; preds = %sw.bb52
  call void @__sanitizer_cov_trace_pc() #14
  %ident58 = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %retval.0.i.i228248, i32 0, i32 1
  %48 = ptrtoint ptr %ident58 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ident58, align 4
  %call59 = call ptr @dev_get_by_index(ptr noundef %6, i32 noundef %49) #12
  br label %sw.epilog100

sw.bb60:                                          ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %sub)
  %cmp62 = icmp ult i16 %sub, 4
  br i1 %cmp62, label %sw.bb60.send_mal_query_crit_edge, label %lor.lhs.false64

sw.bb60.send_mal_query_crit_edge:                 ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

lor.lhs.false64:                                  ; preds = %sw.bb60
  %addrlen = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %retval.0.i.i228248, i32 0, i32 1, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %addrlen to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %addrlen, align 2
  %conv67 = zext i8 %51 to i32
  %add68 = add nuw nsw i32 %conv67, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add68, i32 %conv36)
  %cmp69.not = icmp eq i32 %add68, %conv36
  br i1 %cmp69.not, label %if.end72, label %lor.lhs.false64.send_mal_query_crit_edge

lor.lhs.false64.send_mal_query_crit_edge:         ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

if.end72:                                         ; preds = %lor.lhs.false64
  %ident66 = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %retval.0.i.i228248, i32 0, i32 1
  %52 = ptrtoint ptr %ident66 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ident66, align 4
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %53, label %if.end72.send_mal_query_crit_edge [
    i16 1, label %sw.bb76
    i16 2, label %sw.bb87
  ]

if.end72.send_mal_query_crit_edge:                ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

sw.bb76:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %51)
  %cmp81.not = icmp eq i8 %51, 4
  br i1 %cmp81.not, label %if.end84, label %sw.bb76.send_mal_query_crit_edge

sw.bb76.send_mal_query_crit_edge:                 ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

if.end84:                                         ; preds = %sw.bb76
  call void @__sanitizer_cov_trace_pc() #14
  %ip_addr = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %retval.0.i.i228248, i32 0, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %ip_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ip_addr, align 4
  %call.i = call ptr @__ip_dev_find(ptr noundef %6, i32 noundef %56, i1 noundef zeroext true) #12
  br label %sw.epilog100

sw.bb87:                                          ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %51)
  %cmp92.not = icmp eq i8 %51, 16
  br i1 %cmp92.not, label %if.end95, label %sw.bb87.send_mal_query_crit_edge

sw.bb87.send_mal_query_crit_edge:                 ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #14
  br label %send_mal_query

if.end95:                                         ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ipv6_stub to i32))
  %57 = load ptr, ptr @ipv6_stub, align 4
  %ipv6_dev_find = getelementptr inbounds %struct.ipv6_stub, ptr %57, i32 0, i32 22
  %58 = ptrtoint ptr %ipv6_dev_find to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ipv6_dev_find, align 4
  %ip_addr97 = getelementptr inbounds %struct.icmp_ext_echo_iio, ptr %retval.0.i.i228248, i32 0, i32 1, i32 0, i32 1
  %call98 = call ptr %59(ptr noundef %6, ptr noundef %ip_addr97, ptr noundef null) #12
  call fastcc void @dev_hold(ptr noundef %call98)
  br label %sw.epilog100

sw.epilog100:                                     ; preds = %if.end95, %if.end84, %if.end57, %if.end47
  %dev.0 = phi ptr [ %call98, %if.end95 ], [ %call.i, %if.end84 ], [ %call59, %if.end57 ], [ %call51, %if.end47 ]
  %tobool101.not = icmp eq ptr %dev.0, null
  br i1 %tobool101.not, label %if.then102, label %if.end103

if.then102:                                       ; preds = %sw.epilog100
  call void @__sanitizer_cov_trace_pc() #14
  %code = getelementptr inbounds %struct.icmphdr, ptr %icmphdr, i32 0, i32 1
  %60 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %code, align 1
  br label %cleanup

if.end103:                                        ; preds = %sw.epilog100
  %flags = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 14
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 8
  %63 = trunc i32 %62 to i8
  %64 = shl i8 %63, 2
  %65 = and i8 %64, 4
  %call110 = call fastcc ptr @__in_dev_get_rcu(ptr noundef nonnull %dev.0)
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %if.end103.if.end118_crit_edge, label %land.lhs.true

if.end103.if.end118_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

land.lhs.true:                                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #14
  %call112 = call fastcc ptr @__in_dev_get_rcu(ptr noundef nonnull %dev.0)
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %call112, i32 0, i32 4
  %66 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ifa_list, align 4
  %tobool113.not = icmp eq ptr %67, null
  %68 = or i8 %65, 2
  %spec.select199 = select i1 %tobool113.not, i8 %65, i8 %68
  br label %if.end118

if.end118:                                        ; preds = %land.lhs.true, %if.end103.if.end118_crit_edge
  %status.1 = phi i8 [ %65, %if.end103.if.end118_crit_edge ], [ %spec.select199, %land.lhs.true ]
  %ip6_ptr = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 80
  %69 = ptrtoint ptr %ip6_ptr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %ip6_ptr, align 8
  %call120 = call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %land.lhs.true122, label %if.end118.do.end130_crit_edge

if.end118.do.end130_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end130

land.lhs.true122:                                 ; preds = %if.end118
  %call123 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %land.lhs.true122.do.end130_crit_edge, label %land.lhs.true125

land.lhs.true122.do.end130_crit_edge:             ; preds = %land.lhs.true122
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end130

land.lhs.true125:                                 ; preds = %land.lhs.true122
  %.b197 = load i1, ptr @icmp_build_probe.__warned, align 1
  br i1 %.b197, label %land.lhs.true125.do.end130_crit_edge, label %if.then127

land.lhs.true125.do.end130_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end130

if.then127:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @icmp_build_probe.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1116, ptr noundef nonnull @.str.1) #12
  br label %do.end130

do.end130:                                        ; preds = %if.then127, %land.lhs.true125.do.end130_crit_edge, %land.lhs.true122.do.end130_crit_edge, %if.end118.do.end130_crit_edge
  %addr_list = getelementptr inbounds %struct.inet6_dev, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %addr_list to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile ptr, ptr %addr_list, align 4
  %cmp.i.not = icmp ne ptr %72, %addr_list
  %73 = zext i1 %cmp.i.not to i8
  %spec.select200 = or i8 %status.1, %73
  call fastcc void @dev_put(ptr noundef nonnull %dev.0)
  %conv140 = zext i8 %spec.select200 to i16
  %74 = ptrtoint ptr %sequence to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %sequence, align 2
  %or144 = or i16 %75, %conv140
  store i16 %or144, ptr %sequence, align 2
  br label %cleanup

send_mal_query:                                   ; preds = %sw.bb87.send_mal_query_crit_edge, %sw.bb76.send_mal_query_crit_edge, %if.end72.send_mal_query_crit_edge, %lor.lhs.false64.send_mal_query_crit_edge, %sw.bb60.send_mal_query_crit_edge, %sw.bb52.send_mal_query_crit_edge, %sw.bb.send_mal_query_crit_edge, %if.end40.send_mal_query_crit_edge, %skb_header_pointer.exit229.send_mal_query_crit_edge, %lor.lhs.false.i.i227.send_mal_query_crit_edge, %if.end.i.i223.send_mal_query_crit_edge, %if.end20.send_mal_query_crit_edge, %skb_header_pointer.exit214.send_mal_query_crit_edge, %if.end.i.i208.send_mal_query_crit_edge, %skb_header_pointer.exit.thread.send_mal_query_crit_edge
  %code146 = getelementptr inbounds %struct.icmphdr, ptr %icmphdr, i32 0, i32 1
  %76 = ptrtoint ptr %code146 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 1, ptr %code146, align 1
  br label %cleanup

cleanup:                                          ; preds = %send_mal_query, %do.end130, %if.then102, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %send_mal_query ], [ true, %do.end130 ], [ true, %if.then102 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buff) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %_iio) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ext_hdr) #12
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_hold(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !75
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, 1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !76
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !77

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !78
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__in_dev_get_rcu(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %ip_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %0 = ptrtoint ptr %ip_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ip_ptr, align 32
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.9, i32 noundef 232, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !75
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %3
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13 = add i32 %12, -1
  store i32 %add13, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !76
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !77

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #12, !srcloc !78
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @icmp_rcv(ptr noundef %skb) local_unnamed_addr #0 align 64 {
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
  %call.i.i207 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i207)
  %tobool1.not.i.i = icmp eq i32 %call.i.i207, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_rtable.exit_crit_edge

land.lhs.true.i.i.skb_rtable.exit_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !77

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
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
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %call.i.i208 = tail call fastcc i32 @__xfrm_policy_check2(ptr noundef %skb, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i208)
  %tobool.not = icmp eq i32 %call.i.i208, 0
  br i1 %tobool.not, label %if.then, label %skb_rtable.exit.if.end16_crit_edge

skb_rtable.exit.if.end16_crit_edge:               ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then:                                          ; preds = %skb_rtable.exit
  %active_extensions.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %10 = ptrtoint ptr %active_extensions.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_extensions.i.i.i, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.not.i.i, label %if.then.drop_crit_edge, label %skb_sec_path.exit

if.then.drop_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

skb_sec_path.exit:                                ; preds = %if.then
  %extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 22
  %13 = ptrtoint ptr %extensions.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %extensions.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.skb_ext, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %16 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 3
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %shl.i.i
  %tobool4.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool4.not, label %skb_sec_path.exit.drop_crit_edge, label %land.lhs.true

skb_sec_path.exit.drop_crit_edge:                 ; preds = %skb_sec_path.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

land.lhs.true:                                    ; preds = %skb_sec_path.exit
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %sub = add i32 %18, -1
  %arrayidx = getelementptr %struct.sec_path, ptr %add.ptr.i.i, i32 0, i32 2, i32 %sub
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %flags = getelementptr inbounds %struct.xfrm_state, ptr %20, i32 0, i32 14, i32 6
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags, align 1
  %23 = and i8 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool5.not = icmp eq i8 %23, 0
  br i1 %tobool5.not, label %land.lhs.true.drop_crit_edge, label %if.end

land.lhs.true.drop_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end:                                           ; preds = %land.lhs.true
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %25, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 28
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end9_crit_edge, !prof !77

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %25)
  %cmp3.i = icmp ult i32 %25, 28
  br i1 %cmp3.i, label %if.end.i.drop_crit_edge, label %pskb_may_pull.exit, !prof !77

if.end.i.drop_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 28, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.drop_crit_edge, label %pskb_may_pull.exit.if.end9_crit_edge

pskb_may_pull.exit.if.end9_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

pskb_may_pull.exit.drop_crit_edge:                ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end9:                                          ; preds = %pskb_may_pull.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %30 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %network_header.i.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %sub.ptr.rhs.cast.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i212 = trunc i32 %sub.ptr.sub.i.i to i16
  %conv1.i = add i16 %conv.i.i212, 8
  store i16 %conv1.i, ptr %network_header.i.i, align 4
  %call.i = tail call fastcc i32 @__xfrm_policy_check2(ptr noundef %skb, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end9.drop_crit_edge, label %cleanup

if.end9.drop_crit_edge:                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

cleanup:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  %conv.i.i209 = zext i16 %31 to i32
  %add.ptr.i.i210 = getelementptr i8, ptr %29, i32 %conv.i.i209
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i210 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %36 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i216 = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i.i217 = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i.i218 = sub i32 %sub.ptr.lhs.cast.i.i216, %sub.ptr.rhs.cast.i.i217
  %conv.i.i219 = trunc i32 %sub.ptr.sub.i.i218 to i16
  %38 = trunc i32 %sub.ptr.sub.i to i16
  %conv1.i221 = add i16 %conv.i.i219, %38
  %39 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv1.i221, ptr %network_header.i.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %cleanup, %skb_rtable.exit.if.end16_crit_edge
  %icmp_statistics = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 30, i32 11
  %40 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx23 = getelementptr [28 x i32], ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx23 to i32
  %43 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 3
  %45 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cpu, align 4
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %46
  %47 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx26, align 4
  %add = add i32 %48, %42
  %49 = inttoptr i32 %add to ptr
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %add27 = add i32 %51, 1
  store i32 %add27, ptr %49, align 4
  %csum_valid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %52 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load = load i16, ptr %csum_valid, align 8
  %bf.clear = and i16 %bf.load, -2
  store i16 %bf.clear, ptr %csum_valid, align 8
  %bf.lshr.i.i = lshr i16 %bf.load, 9
  %trunc = trunc i16 %bf.lshr.i.i to i2
  %53 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.19)
  switch i2 %trunc, label %if.end16.if.then33_crit_edge [
    i2 1, label %if.end16.if.then.i_crit_edge
    i2 -1, label %skb_csum_unnecessary.exit.i
  ]

if.end16.if.then.i_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.end16.if.then33_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

skb_csum_unnecessary.exit.i:                      ; preds = %if.end16
  %54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %54, align 8
  %conv.i.i.i = zext i16 %56 to i32
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %57 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %59 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %60 to i32
  %sub.ptr.sub.i.neg.i.i.i = sub i32 %conv.i.i.i, %sub.ptr.lhs.cast.i.i.i.i
  %sub.i.i.i = add i32 %sub.ptr.sub.i.neg.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %tobool.not.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %tobool.not.i, label %skb_csum_unnecessary.exit.i.if.then33_crit_edge, label %skb_csum_unnecessary.exit.i.if.then.i_crit_edge

skb_csum_unnecessary.exit.i.if.then.i_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

skb_csum_unnecessary.exit.i.if.then33_crit_edge:  ; preds = %skb_csum_unnecessary.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then33

if.then.i:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then.i_crit_edge, %if.end16.if.then.i_crit_edge
  %bf.set.i = or i16 %bf.load, 1
  %61 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %bf.set.i, ptr %csum_valid, align 8
  %62 = and i16 %bf.load, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %62)
  %cmp.i3.i = icmp eq i16 %62, 512
  br i1 %cmp.i3.i, label %if.then.i.i223, label %if.then.i.if.end40_crit_edge

if.then.i.if.end40_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then.i.i223:                                   ; preds = %if.then.i
  %csum_level.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %63 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 4)
  %bf.load2.i.i = load i32, ptr %csum_level.i.i, align 2
  %64 = and i32 %bf.load2.i.i, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp7.i.i = icmp eq i32 %64, 0
  br i1 %cmp7.i.i, label %if.then9.i.i, label %if.else.i.i

if.then9.i.i:                                     ; preds = %if.then.i.i223
  call void @__sanitizer_cov_trace_pc() #14
  %bf.clear12.i.i = and i16 %bf.set.i, -1537
  %65 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %bf.clear12.i.i, ptr %csum_valid, align 8
  br label %if.end40

if.else.i.i:                                      ; preds = %if.then.i.i223
  call void @__sanitizer_cov_trace_pc() #14
  %66 = add i32 %bf.load2.i.i, 805306368
  %bf.shl.i.i = and i32 %66, 805306368
  %bf.clear19.i.i = and i32 %bf.load2.i.i, -805306369
  %bf.set20.i.i = or i32 %bf.shl.i.i, %bf.clear19.i.i
  %67 = ptrtoint ptr %csum_level.i.i to i32
  call void @__asan_storeN_noabort(i32 %67, i32 4)
  store i32 %bf.set20.i.i, ptr %csum_level.i.i, align 2
  br label %if.end40

if.then33:                                        ; preds = %skb_csum_unnecessary.exit.i.if.then33_crit_edge, %if.end16.if.then33_crit_edge
  %68 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load.i = load i16, ptr %csum_valid, align 8
  %69 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %69)
  %cmp.i = icmp eq i16 %69, 1024
  br i1 %cmp.i, label %if.then.i225, label %if.then33.__skb_checksum_validate_complete.exit_crit_edge

if.then33.__skb_checksum_validate_complete.exit_crit_edge: ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_checksum_validate_complete.exit

if.then.i225:                                     ; preds = %if.then33
  %70 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %70, align 8
  %73 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %72) #15, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %73)
  %tobool.not.i224 = icmp ugt i32 %73, -65537
  br i1 %tobool.not.i224, label %__skb_checksum_validate_complete.exit.thread, label %if.then.i225.__skb_checksum_validate_complete.exit_crit_edge

if.then.i225.__skb_checksum_validate_complete.exit_crit_edge: ; preds = %if.then.i225
  call void @__sanitizer_cov_trace_pc() #14
  br label %__skb_checksum_validate_complete.exit

__skb_checksum_validate_complete.exit.thread:     ; preds = %if.then.i225
  call void @__sanitizer_cov_trace_pc() #14
  %bf.set.i226 = or i16 %bf.load.i, 1
  %74 = ptrtoint ptr %csum_valid to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %bf.set.i226, ptr %csum_valid, align 8
  br label %if.end40

__skb_checksum_validate_complete.exit:            ; preds = %if.then.i225.__skb_checksum_validate_complete.exit_crit_edge, %if.then33.__skb_checksum_validate_complete.exit_crit_edge
  %75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %75, align 8
  %call12.i = tail call zeroext i16 @__skb_checksum_complete(ptr noundef %skb) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call12.i)
  %tobool13.not.i = icmp eq i16 %call12.i, 0
  %77 = zext i1 %tobool13.not.i to i16
  %78 = ptrtoint ptr %csum_valid to i32
  call void @__asan_load2_noabort(i32 %78)
  %bf.load16.i = load i16, ptr %csum_valid, align 8
  %bf.clear17.i = and i16 %bf.load16.i, -2
  %bf.set18.i = or i16 %bf.clear17.i, %77
  store i16 %bf.set18.i, ptr %csum_valid, align 8
  br i1 %tobool13.not.i, label %__skb_checksum_validate_complete.exit.if.end40_crit_edge, label %csum_error

__skb_checksum_validate_complete.exit.if.end40_crit_edge: ; preds = %__skb_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end40:                                         ; preds = %__skb_checksum_validate_complete.exit.if.end40_crit_edge, %__skb_checksum_validate_complete.exit.thread, %if.else.i.i, %if.then9.i.i, %if.then.i.if.end40_crit_edge
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %79 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %80)
  %cmp.i228 = icmp ult i32 %80, 8
  br i1 %cmp.i228, label %if.end40.error_crit_edge, label %cond.false.i, !prof !77

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

cond.false.i:                                     ; preds = %if.end40
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %81 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i229 = sub i32 %80, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i.i.i229)
  %cmp.i.i230 = icmp ult i32 %sub.i.i.i229, 8
  br i1 %cmp.i.i230, label %land.lhs.true.i.i234, label %cond.false.i.pskb_pull.exit_crit_edge

cond.false.i.pskb_pull.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pskb_pull.exit

land.lhs.true.i.i234:                             ; preds = %cond.false.i
  %sub.i.i231 = sub nuw nsw i32 8, %sub.i.i.i229
  %call2.i.i232 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i231) #12
  %tobool.not.i.i233 = icmp eq ptr %call2.i.i232, null
  br i1 %tobool.not.i.i233, label %land.lhs.true.i.i234.error_crit_edge, label %land.lhs.true.i.i234.pskb_pull.exit_crit_edge

land.lhs.true.i.i234.pskb_pull.exit_crit_edge:    ; preds = %land.lhs.true.i.i234
  call void @__sanitizer_cov_trace_pc() #14
  br label %pskb_pull.exit

land.lhs.true.i.i234.error_crit_edge:             ; preds = %land.lhs.true.i.i234
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

pskb_pull.exit:                                   ; preds = %land.lhs.true.i.i234.pskb_pull.exit_crit_edge, %cond.false.i.pskb_pull.exit_crit_edge
  %83 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len1.i, align 4
  %sub4.i.i = add i32 %84, -8
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %data.i.i235 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %85 = ptrtoint ptr %data.i.i235 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i.i235, align 4
  %add.ptr.i.i236 = getelementptr i8, ptr %86, i32 8
  store ptr %add.ptr.i.i236, ptr %data.i.i235, align 4
  %tobool42.not = icmp eq ptr %add.ptr.i.i236, null
  br i1 %tobool42.not, label %pskb_pull.exit.error_crit_edge, label %if.end44

pskb_pull.exit.error_crit_edge:                   ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end44:                                         ; preds = %pskb_pull.exit
  %head.i.i237 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %87 = ptrtoint ptr %head.i.i237 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %head.i.i237, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %89 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i238 = zext i16 %90 to i32
  %add.ptr.i.i239 = getelementptr i8, ptr %88, i32 %conv.i.i238
  %icmpmsg_statistics = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 30, i32 12
  %91 = ptrtoint ptr %icmpmsg_statistics to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %icmpmsg_statistics, align 4
  %93 = ptrtoint ptr %add.ptr.i.i239 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %add.ptr.i.i239, align 4
  %idxprom = zext i8 %94 to i32
  %arrayidx48 = getelementptr [512 x %struct.atomic_t], ptr %92, i32 0, i32 %idxprom
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx48, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %arrayidx48, i32 1, i32 3, i32 1) #12
  %95 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx48, ptr %arrayidx48, i32 1, ptr elementtype(i32) %arrayidx48) #12, !srcloc !74
  %96 = ptrtoint ptr %add.ptr.i.i239 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %add.ptr.i.i239, align 4
  %98 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %97, label %if.end62 [
    i8 42, label %if.then52
    i8 43, label %if.then59
  ]

if.then52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #14
  %call53 = tail call zeroext i1 @icmp_echo(ptr noundef %skb)
  br label %if.then113

if.then59:                                        ; preds = %if.end44
  %call60 = tail call zeroext i1 @ping_rcv(ptr noundef %skb) #12
  br i1 %call60, label %if.then59.if.then113_crit_edge, label %if.then59.drop_crit_edge

if.then59.drop_crit_edge:                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.then59.if.then113_crit_edge:                   ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then113

if.end62:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %97)
  %cmp65 = icmp ugt i8 %97, 18
  br i1 %cmp65, label %if.end62.error_crit_edge, label %if.end68

if.end62.error_crit_edge:                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end68:                                         ; preds = %if.end62
  %rt_flags = getelementptr inbounds %struct.rtable, ptr %5, i32 0, i32 2
  %99 = ptrtoint ptr %rt_flags to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %rt_flags, align 4
  %and69 = and i32 %100, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.success_check_crit_edge, label %if.then71

if.end68.success_check_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %success_check

if.then71:                                        ; preds = %if.end68
  %101 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %97, label %if.then71.error_crit_edge [
    i8 8, label %if.then71.land.lhs.true80_crit_edge
    i8 13, label %if.then71.land.lhs.true80_crit_edge253
    i8 17, label %if.then71.success_check_crit_edge
    i8 18, label %if.then71.success_check_crit_edge254
  ]

if.then71.success_check_crit_edge254:             ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %success_check

if.then71.success_check_crit_edge:                ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %success_check

if.then71.land.lhs.true80_crit_edge253:           ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true80

if.then71.land.lhs.true80_crit_edge:              ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true80

if.then71.error_crit_edge:                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

land.lhs.true80:                                  ; preds = %if.then71.land.lhs.true80_crit_edge, %if.then71.land.lhs.true80_crit_edge253
  %sysctl_icmp_echo_ignore_broadcasts = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 35, i32 27
  %102 = ptrtoint ptr %sysctl_icmp_echo_ignore_broadcasts to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %sysctl_icmp_echo_ignore_broadcasts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool82.not = icmp eq i8 %103, 0
  br i1 %tobool82.not, label %if.end84, label %land.lhs.true80.error_crit_edge

land.lhs.true80.error_crit_edge:                  ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

if.end84:                                         ; preds = %land.lhs.true80
  %104 = zext i8 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %97, label %if.end84.error_crit_edge [
    i8 8, label %if.end84.success_check_crit_edge
    i8 13, label %if.end84.success_check_crit_edge255
  ]

if.end84.success_check_crit_edge255:              ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %success_check

if.end84.success_check_crit_edge:                 ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %success_check

if.end84.error_crit_edge:                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #14
  br label %error

success_check:                                    ; preds = %if.end84.success_check_crit_edge, %if.end84.success_check_crit_edge255, %if.then71.success_check_crit_edge, %if.then71.success_check_crit_edge254, %if.end68.success_check_crit_edge
  %idxprom108 = zext i8 %97 to i32
  %arrayidx109 = getelementptr [19 x %struct.icmp_control], ptr @icmp_pointers, i32 0, i32 %idxprom108
  %105 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx109, align 4
  %call110 = tail call zeroext i1 %106(ptr noundef %skb) #12
  br i1 %call110, label %success_check.if.then113_crit_edge, label %success_check.drop_crit_edge

success_check.drop_crit_edge:                     ; preds = %success_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

success_check.if.then113_crit_edge:               ; preds = %success_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then113

if.then113:                                       ; preds = %success_check.if.then113_crit_edge, %if.then59.if.then113_crit_edge, %if.then52
  tail call void @consume_skb(ptr noundef %skb) #12
  br label %cleanup167

drop:                                             ; preds = %error, %success_check.drop_crit_edge, %if.then59.drop_crit_edge, %if.end9.drop_crit_edge, %pskb_may_pull.exit.drop_crit_edge, %if.end.i.drop_crit_edge, %land.lhs.true.drop_crit_edge, %skb_sec_path.exit.drop_crit_edge, %if.then.drop_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #12
  br label %cleanup167

csum_error:                                       ; preds = %__skb_checksum_validate_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx130 = getelementptr [28 x i32], ptr %108, i32 0, i32 27
  %109 = ptrtoint ptr %arrayidx130 to i32
  %110 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cpu, align 4
  %arrayidx134 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %111
  %112 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx134, align 4
  %add135 = add i32 %113, %109
  %114 = inttoptr i32 %add135 to ptr
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  %add136 = add i32 %116, 1
  store i32 %add136, ptr %114, align 4
  br label %error

error:                                            ; preds = %csum_error, %if.end84.error_crit_edge, %land.lhs.true80.error_crit_edge, %if.then71.error_crit_edge, %if.end62.error_crit_edge, %pskb_pull.exit.error_crit_edge, %land.lhs.true.i.i234.error_crit_edge, %if.end40.error_crit_edge
  %117 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx156 = getelementptr [28 x i32], ptr %118, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx156 to i32
  %120 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu, align 4
  %arrayidx160 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx160 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx160, align 4
  %add161 = add i32 %123, %119
  %124 = inttoptr i32 %add161 to ptr
  %125 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %124, align 4
  %add162 = add i32 %126, 1
  store i32 %add162, ptr %124, align 4
  br label %drop

cleanup167:                                       ; preds = %drop, %if.then113
  %retval.0 = phi i32 [ 1, %drop ], [ 0, %if.then113 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @icmp_echo(ptr noundef %skb) #0 align 64 {
entry:
  %icmp_param = alloca %struct.icmp_bxm, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %icmp_param) #12
  %0 = getelementptr inbounds i8, ptr %icmp_param, i32 20
  %1 = call ptr @memset(ptr %0, i32 255, i32 80)
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %and.i = and i32 %4, 1
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !77

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %entry.skb_dst.exit_crit_edge
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 8
  %and25.i = and i32 %6, -2
  %7 = inttoptr i32 %and25.i to ptr
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i, align 4
  %sysctl_icmp_echo_ignore_all = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 35, i32 25
  %12 = ptrtoint ptr %sysctl_icmp_echo_ignore_all to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sysctl_icmp_echo_ignore_all, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end, label %skb_dst.exit.cleanup_crit_edge

skb_dst.exit.cleanup_crit_edge:                   ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %skb_dst.exit
  %data = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %add.ptr.i.i, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %data, align 4
  %21 = ptrtoint ptr %icmp_param to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %skb, ptr %icmp_param, align 4
  %offset = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 1
  %22 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %offset, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 2
  %25 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %data_len, align 4
  %head_len = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 4
  %26 = ptrtoint ptr %head_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8, ptr %head_len, align 4
  %.mask = and i64 %19, -72057594037927936
  call void @__sanitizer_cov_trace_const_cmp8(i64 576460752303423488, i64 %.mask)
  %cmp = icmp eq i64 %.mask, 576460752303423488
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %data, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  %call13 = call zeroext i1 @icmp_build_probe(ptr noundef %skb, ptr noundef %data)
  br i1 %call13, label %if.else.if.end16_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.end16:                                         ; preds = %if.else.if.end16_crit_edge, %if.then7
  call fastcc void @icmp_reply(ptr noundef nonnull %icmp_param, ptr noundef %skb)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.else.cleanup_crit_edge, %skb_dst.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %icmp_param) #12
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ping_rcv(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ip_icmp_error_rfc4884(ptr noundef %skb, ptr nocapture noundef %out, i32 noundef %thlen, i32 noundef %off) #0 align 64 {
entry:
  %_objh.i = alloca %struct.icmp_extobj_hdr, align 4
  %_exth.i = alloca %struct.icmp_ext_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %6 = add i32 %sub.ptr.sub.i, %thlen
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %off)
  %cmp = icmp slt i32 %off, 128
  %sub1 = sub i32 0, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1, i32 %off)
  %cmp2 = icmp sgt i32 %sub1, %off
  %or.cond = select i1 %cmp, i1 true, i1 %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub3 = add i32 %6, %off
  %add = add i32 %sub3, 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp4 = icmp ugt i32 %add, %8
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %conv = trunc i32 %sub3 to i16
  %9 = ptrtoint ptr %out to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %out, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_objh.i) #12
  %10 = ptrtoint ptr %_objh.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %_objh.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_exth.i) #12
  %11 = ptrtoint ptr %_exth.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %_exth.i, align 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i.i, align 8
  %16 = add i32 %sub3, %15
  %sub.i4.i.i = sub i32 %13, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 4
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !77

if.end.i.i.i:                                     ; preds = %if.end6
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_icmp_error_rfc4884_validate.exit.thread

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub3, ptr noundef nonnull %_exth.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.i.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_icmp_error_rfc4884_validate.exit.thread

skb_header_pointer.exit.i:                        ; preds = %if.end6
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %18, i32 %sub3
  %tobool.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

skb_header_pointer.exit.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_icmp_error_rfc4884_validate.exit.thread

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i71.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_exth.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %19 = ptrtoint ptr %retval.0.i.i71.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i = load i8, ptr %retval.0.i.i71.i, align 2
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %bf.lshr.mask.i)
  %cmp.not.i = icmp eq i8 %bf.lshr.mask.i, 32
  br i1 %cmp.not.i, label %if.end3.i, label %ip_icmp_error_rfc4884_validate.exit.thread23

ip_icmp_error_rfc4884_validate.exit.thread23:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_exth.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_objh.i) #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %checksum.i = getelementptr inbounds %struct.icmp_ext_hdr, ptr %retval.0.i.i71.i, i32 0, i32 2
  %20 = ptrtoint ptr %checksum.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %checksum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool5.not.i = icmp eq i16 %21, 0
  br i1 %tobool5.not.i, label %if.end3.i.if.end11.i_crit_edge, label %land.lhs.true.i

if.end3.i.if.end11.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end3.i
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %sub.i = sub i32 %23, %sub3
  %call6.i = call i32 @skb_checksum(ptr noundef %skb, i32 noundef %sub3, i32 noundef %sub.i, i32 noundef 0) #12
  %24 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call6.i) #15, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65537, i32 %24)
  %tobool9.not.i = icmp ugt i32 %24, -65537
  br i1 %tobool9.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %land.lhs.true.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge

land.lhs.true.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_icmp_error_rfc4884_validate.exit.thread

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11.i

if.end11.i:                                       ; preds = %land.lhs.true.i.if.end11.i_crit_edge, %if.end3.i.if.end11.i_crit_edge
  %tobool2.not.i.i58.i = icmp eq ptr %skb, null
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end23.i.while.cond.i_crit_edge, %if.end11.i
  %off.addr.0.i = phi i32 [ %add, %if.end11.i ], [ %add25.i, %if.end23.i.while.cond.i_crit_edge ]
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %off.addr.0.i, i32 %26)
  %cmp13.i = icmp ult i32 %off.addr.0.i, %26
  br i1 %cmp13.i, label %while.body.i, label %ip_icmp_error_rfc4884_validate.exit

while.body.i:                                     ; preds = %while.cond.i
  %27 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %data_len.i.i.i, align 8
  %29 = add i32 %off.addr.0.i, %28
  %sub.i4.i53.i = sub i32 %26, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i53.i)
  %cmp.not.i.i54.i = icmp slt i32 %sub.i4.i53.i, 4
  br i1 %cmp.not.i.i54.i, label %if.end.i.i59.i, label %skb_header_pointer.exit65.i, !prof !77

if.end.i.i59.i:                                   ; preds = %while.body.i
  br i1 %tobool2.not.i.i58.i, label %if.end.i.i59.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge, label %lor.lhs.false.i.i63.i

if.end.i.i59.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge: ; preds = %if.end.i.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_icmp_error_rfc4884_validate.exit.thread26

lor.lhs.false.i.i63.i:                            ; preds = %if.end.i.i59.i
  %call.i.i60.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %off.addr.0.i, ptr noundef nonnull %_objh.i, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60.i)
  %cmp3.i.i61.i = icmp slt i32 %call.i.i60.i, 0
  br i1 %cmp3.i.i61.i, label %lor.lhs.false.i.i63.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge, label %lor.lhs.false.i.i63.i.if.end18.i_crit_edge

lor.lhs.false.i.i63.i.if.end18.i_crit_edge:       ; preds = %lor.lhs.false.i.i63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

lor.lhs.false.i.i63.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge: ; preds = %lor.lhs.false.i.i63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_icmp_error_rfc4884_validate.exit.thread26

skb_header_pointer.exit65.i:                      ; preds = %while.body.i
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i56.i = getelementptr i8, ptr %31, i32 %off.addr.0.i
  %tobool16.not.i = icmp eq ptr %add.ptr.i.i56.i, null
  br i1 %tobool16.not.i, label %skb_header_pointer.exit65.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge, label %skb_header_pointer.exit65.i.if.end18.i_crit_edge

skb_header_pointer.exit65.i.if.end18.i_crit_edge: ; preds = %skb_header_pointer.exit65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

skb_header_pointer.exit65.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge: ; preds = %skb_header_pointer.exit65.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_icmp_error_rfc4884_validate.exit.thread26

if.end18.i:                                       ; preds = %skb_header_pointer.exit65.i.if.end18.i_crit_edge, %lor.lhs.false.i.i63.i.if.end18.i_crit_edge
  %retval.0.i.i6478.i = phi ptr [ %add.ptr.i.i56.i, %skb_header_pointer.exit65.i.if.end18.i_crit_edge ], [ %_objh.i, %lor.lhs.false.i.i63.i.if.end18.i_crit_edge ]
  %32 = ptrtoint ptr %retval.0.i.i6478.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %retval.0.i.i6478.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %33)
  %cmp20.i = icmp ult i16 %33, 4
  br i1 %cmp20.i, label %if.end18.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge, label %if.end23.i

if.end18.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_icmp_error_rfc4884_validate.exit.thread26

if.end23.i:                                       ; preds = %if.end18.i
  %conv19.i = zext i16 %33 to i32
  %add25.i = add i32 %off.addr.0.i, %conv19.i
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  %cmp27.i = icmp ugt i32 %add25.i, %35
  br i1 %cmp27.i, label %if.end23.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge, label %if.end23.i.while.cond.i_crit_edge

if.end23.i.while.cond.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond.i

if.end23.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %ip_icmp_error_rfc4884_validate.exit.thread26

ip_icmp_error_rfc4884_validate.exit.thread:       ; preds = %land.lhs.true.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge, %skb_header_pointer.exit.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge, %lor.lhs.false.i.i.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge, %if.end.i.i.i.ip_icmp_error_rfc4884_validate.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_exth.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_objh.i) #12
  br label %if.then9

ip_icmp_error_rfc4884_validate.exit.thread26:     ; preds = %if.end23.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge, %if.end18.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge, %skb_header_pointer.exit65.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge, %lor.lhs.false.i.i63.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge, %if.end.i.i59.i.ip_icmp_error_rfc4884_validate.exit.thread26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_exth.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_objh.i) #12
  br label %if.then9

ip_icmp_error_rfc4884_validate.exit:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_exth.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_objh.i) #12
  br label %cleanup

if.then9:                                         ; preds = %ip_icmp_error_rfc4884_validate.exit.thread26, %ip_icmp_error_rfc4884_validate.exit.thread
  %flags = getelementptr inbounds %struct.sock_ee_data_rfc4884, ptr %out, i32 0, i32 1
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %flags, align 2
  %38 = or i8 %37, 1
  store i8 %38, ptr %flags, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %ip_icmp_error_rfc4884_validate.exit, %ip_icmp_error_rfc4884_validate.exit.thread23, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @icmp_err(ptr noundef %skb, i32 noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  %bf.clear = shl i8 %bf.load, 2
  %3 = and i8 %bf.clear, 60
  %shl = zext i8 %3 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %6 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i, align 4
  %10 = getelementptr inbounds %struct.anon.84, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.not = icmp eq i8 %16, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ping_err(ptr noundef %skb, i32 noundef %shl, i32 noundef %info) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %code5 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %code5 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %code5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %9)
  %cmp11 = icmp eq i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %18)
  %cmp13 = icmp eq i8 %18, 4
  %or.cond = select i1 %cmp11, i1 %cmp13, i1 false
  br i1 %or.cond, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ipv4_update_pmtu(ptr noundef %skb, ptr noundef %14, i32 noundef %info, i32 noundef 0, i8 noundef zeroext 1) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %9)
  %cmp16 = icmp eq i8 %9, 5
  br i1 %cmp16, label %if.then18, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @ipv4_redirect(ptr noundef %skb, ptr noundef %14, i32 noundef 0, i8 noundef zeroext 1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.else.cleanup_crit_edge, %if.then15, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ping_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_update_pmtu(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipv4_redirect(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @icmp_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @icmp_sk_ops) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_trylock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @l3mdev_master_ifindex(ptr noundef %dev) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef %dev) #12
  %call.i1 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i1, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i4

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i4:                                 ; preds = %rcu_read_lock.exit
  %call1.i2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i2)
  %tobool.not.i3 = icmp eq i32 %call1.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i6

land.lhs.true.i4.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i6:                                ; preds = %land.lhs.true.i4
  %.b4.i5 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i5, label %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, label %if.then.i7

land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i7:                                       ; preds = %land.lhs.true2.i6
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i7, %land.lhs.true2.i6.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i4.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !83
  %4 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i8 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i8 to ptr
  %preempt_count.i.i.i.i9 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i9, align 4
  %sub.i.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i9, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_skb_classify_flow(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_key_hash(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_lookup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_addr_type_dev_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ip_route_input(ptr noundef %skb, i32 noundef %dst, i32 noundef %src, i8 noundef zeroext %tos, ptr noundef %devin) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @ip_route_input_noref(ptr noundef %skb, i32 noundef %dst, i32 noundef %src, i8 noundef zeroext %tos, ptr noundef %devin) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %rcu_read_lock.exit.if.end5_crit_edge

rcu_read_lock.exit.if.end5_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5

if.then:                                          ; preds = %rcu_read_lock.exit
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.skb_dst_force.exit_crit_edge, label %land.lhs.true.i.i.i

if.then.skb_dst_force.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_force.exit

land.lhs.true.i.i.i:                              ; preds = %if.then
  %call.i.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge

land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_is_noref.exit.i

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %call2.i.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %do.end.i.i.i, label %land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge, !prof !77

land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_is_noref.exit.i

do.end.i.i.i:                                     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst_is_noref.exit.i

skb_dst_is_noref.exit.i:                          ; preds = %do.end.i.i.i, %land.rhs.i.i.i.skb_dst_is_noref.exit.i_crit_edge, %land.lhs.true.i.i.i.skb_dst_is_noref.exit.i_crit_edge
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %tobool1.i.i = icmp ugt i32 %8, 1
  br i1 %tobool1.i.i, label %if.then.i9, label %skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge

skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge: ; preds = %skb_dst_is_noref.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst_force.exit

if.then.i9:                                       ; preds = %skb_dst_is_noref.exit.i
  %and.i2.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2.i)
  %tobool.not.i3.i = icmp eq i32 %and.i2.i, 0
  br i1 %tobool.not.i3.i, label %if.then.i9.skb_dst.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i9.skb_dst.exit.i_crit_edge:              ; preds = %if.then.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i9
  %call.i.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.skb_dst.exit.i_crit_edge

land.lhs.true.i.i.skb_dst.exit.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %call2.i.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_dst.exit.i_crit_edge, !prof !77

land.rhs.i.i.skb_dst.exit.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit.i

skb_dst.exit.i:                                   ; preds = %do.end.i.i, %land.rhs.i.i.skb_dst.exit.i_crit_edge, %land.lhs.true.i.i.skb_dst.exit.i_crit_edge, %if.then.i9.skb_dst.exit.i_crit_edge
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 8
  %and25.i.i = and i32 %10, -2
  %11 = inttoptr i32 %and25.i.i to ptr
  %call2.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i10 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i10, label %do.end.i, label %skb_dst.exit.i.if.end.i_crit_edge, !prof !77

skb_dst.exit.i.if.end.i_crit_edge:                ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %skb_dst.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 316, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %skb_dst.exit.i.if.end.i_crit_edge
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %11, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !86
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #12
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #12, !srcloc !87
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.end.i.dst_hold_safe.exit.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.end.i.dst_hold_safe.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dst_hold_safe.exit.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !88
  br label %dst_hold_safe.exit.i

dst_hold_safe.exit.i:                             ; preds = %do.end11.i.i.i.i.i.i, %if.end.i.dst_hold_safe.exit.i_crit_edge
  %spec.select.i = phi ptr [ null, %if.end.i.dst_hold_safe.exit.i_crit_edge ], [ %11, %do.end11.i.i.i.i.i.i ]
  %13 = ptrtoint ptr %spec.select.i to i32
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %4, align 8
  %tobool27.not.i = icmp eq ptr %spec.select.i, null
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %15 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool27.not.i, i32 %bf.load.mask.i, i32 4096
  %bf.clear34.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear34.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  br label %skb_dst_force.exit

skb_dst_force.exit:                               ; preds = %dst_hold_safe.exit.i, %skb_dst_is_noref.exit.i.skb_dst_force.exit_crit_edge, %if.then.skb_dst_force.exit_crit_edge
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %4, align 8
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i11 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i11, label %skb_dst_force.exit.skb_dst.exit_crit_edge, label %land.lhs.true.i13

skb_dst_force.exit.skb_dst.exit_crit_edge:        ; preds = %skb_dst_force.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i13:                                ; preds = %skb_dst_force.exit
  %call.i12 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %tobool1.not.i = icmp eq i32 %call.i12, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i13.skb_dst.exit_crit_edge

land.lhs.true.i13.skb_dst.exit_crit_edge:         ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i13
  %call2.i14 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i14)
  %tobool3.not.i = icmp eq i32 %call2.i14, 0
  br i1 %tobool3.not.i, label %do.end.i15, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !77

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i15:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i15, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i13.skb_dst.exit_crit_edge, %skb_dst_force.exit.skb_dst.exit_crit_edge
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %tobool3.not = icmp ult i32 %19, 2
  %spec.select = select i1 %tobool3.not, i32 -22, i32 0
  br label %if.end5

if.end5:                                          ; preds = %skb_dst.exit, %rcu_read_lock.exit.if.end5_crit_edge
  %err.0 = phi i32 [ %call, %rcu_read_lock.exit.if.end5_crit_edge ], [ %spec.select, %skb_dst.exit ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i17, label %if.end5.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end5.rcu_read_unlock.exit_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end5
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end5.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !83
  %20 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i24 = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_decode_session(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_route_input_noref(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @inet_peer_xrlim_allow(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_putpeer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @inet_getpeer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_append_data(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmp_glue_bits(ptr nocapture noundef readonly %from, ptr noundef %to, i32 noundef %offset, i32 noundef %len, i32 noundef %odd, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %from, align 4
  %offset2 = getelementptr inbounds %struct.icmp_bxm, ptr %from, i32 0, i32 1
  %2 = ptrtoint ptr %offset2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %offset2, align 4
  %add = add i32 %3, %offset
  %call = tail call i32 @skb_copy_and_csum_bits(ptr noundef %1, i32 noundef %add, ptr noundef %to, i32 noundef %len) #12
  %4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %and.i.i = and i32 %odd, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %call, i32 %call, i32 24) #12
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %call, i32 %or.i.i.i
  %add.i.i = add i32 %retval.0.i.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %retval.0.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %retval.0.i.i
  %conv.i.i = zext i1 %cmp.i.i to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add1.i.i, ptr %4, align 8
  %data = getelementptr inbounds %struct.icmp_bxm, ptr %from, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data, align 4
  %idxprom = zext i8 %9 to i32
  %10 = lshr i32 516353, %idxprom
  %11 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.not = icmp eq i32 %11, 0
  br i1 %tobool.not.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %from, align 4
  tail call void @nf_ct_attach(ptr noundef %skb, ptr noundef %13) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_flush_pending_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial_copy_nocheck(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_push_pending_frames(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_and_csum_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_attach(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ip_dev_find(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__xfrm_policy_check2(ptr noundef %skb, i32 noundef %reverse) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = getelementptr inbounds %struct.anon.84, ptr %skb, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reverse)
  %tobool.not = icmp eq i32 %reverse, 0
  %cond = select i1 %tobool.not, i32 0, i32 4
  %policy_default.i = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 23
  %5 = ptrtoint ptr %policy_default.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %policy_default.i, align 16
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.i = icmp eq i8 %7, 0
  br i1 %tobool1.i, label %if.then5, label %if.else

if.then5:                                         ; preds = %entry
  %policy_count = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 46, i32 13
  %8 = ptrtoint ptr %policy_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %policy_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %land.lhs.true8, label %if.then5.lor.lhs.false_crit_edge

if.then5.lor.lhs.false_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true8:                                   ; preds = %if.then5
  %active_extensions.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 13
  %10 = ptrtoint ptr %active_extensions.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_extensions.i.i, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.lor.lhs.false_crit_edge

land.lhs.true8.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true8.lor.lhs.false_crit_edge, %if.then5.lor.lhs.false_crit_edge
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.skb_dst.exit_crit_edge, label %land.lhs.true.i

lor.lhs.false.skb_dst.exit_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge

land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exitthread-pre-split

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, !prof !77

land.rhs.i.skb_dst.exitthread-pre-split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exitthread-pre-split

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exitthread-pre-split

skb_dst.exitthread-pre-split:                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exitthread-pre-split_crit_edge, %land.lhs.true.i.skb_dst.exitthread-pre-split_crit_edge
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %13, align 8
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %skb_dst.exitthread-pre-split, %lor.lhs.false.skb_dst.exit_crit_edge
  %17 = phi i32 [ %.pr, %skb_dst.exitthread-pre-split ], [ %15, %lor.lhs.false.skb_dst.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool12.not = icmp ult i32 %17, 2
  br i1 %tobool12.not, label %skb_dst.exit.cleanup.sink.split_crit_edge, label %land.lhs.true13

skb_dst.exit.cleanup.sink.split_crit_edge:        ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true13:                                  ; preds = %skb_dst.exit
  %and.i2 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i2)
  %tobool.not.i3 = icmp eq i32 %and.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true13.skb_dst.exit12_crit_edge, label %land.lhs.true.i6

land.lhs.true13.skb_dst.exit12_crit_edge:         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit12

land.lhs.true.i6:                                 ; preds = %land.lhs.true13
  %call.i4 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool1.not.i5 = icmp eq i32 %call.i4, 0
  br i1 %tobool1.not.i5, label %land.rhs.i9, label %land.lhs.true.i6.skb_dst.exit12_crit_edge

land.lhs.true.i6.skb_dst.exit12_crit_edge:        ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit12

land.rhs.i9:                                      ; preds = %land.lhs.true.i6
  %call2.i7 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i7)
  %tobool3.not.i8 = icmp eq i32 %call2.i7, 0
  br i1 %tobool3.not.i8, label %do.end.i10, label %land.rhs.i9.skb_dst.exit12_crit_edge, !prof !77

land.rhs.i9.skb_dst.exit12_crit_edge:             ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit12

do.end.i10:                                       ; preds = %land.rhs.i9
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit12

skb_dst.exit12:                                   ; preds = %do.end.i10, %land.rhs.i9.skb_dst.exit12_crit_edge, %land.lhs.true.i6.skb_dst.exit12_crit_edge, %land.lhs.true13.skb_dst.exit12_crit_edge
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %13, align 8
  %and25.i11 = and i32 %19, -2
  %20 = inttoptr i32 %and25.i11 to ptr
  %flags = getelementptr inbounds %struct.dst_entry, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags, align 4
  %23 = and i16 %22, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool16.not = icmp eq i16 %23, 0
  br i1 %tobool16.not, label %skb_dst.exit12.cleanup.sink.split_crit_edge, label %skb_dst.exit12.cleanup_crit_edge

skb_dst.exit12.cleanup_crit_edge:                 ; preds = %skb_dst.exit12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

skb_dst.exit12.cleanup.sink.split_crit_edge:      ; preds = %skb_dst.exit12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.else:                                          ; preds = %entry
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  %and.i13 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %if.else.skb_dst.exit23_crit_edge, label %land.lhs.true.i17

if.else.skb_dst.exit23_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit23

land.lhs.true.i17:                                ; preds = %if.else
  %call.i15 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool1.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool1.not.i16, label %land.rhs.i20, label %land.lhs.true.i17.skb_dst.exit23thread-pre-split_crit_edge

land.lhs.true.i17.skb_dst.exit23thread-pre-split_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit23thread-pre-split

land.rhs.i20:                                     ; preds = %land.lhs.true.i17
  %call2.i18 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i18)
  %tobool3.not.i19 = icmp eq i32 %call2.i18, 0
  br i1 %tobool3.not.i19, label %do.end.i21, label %land.rhs.i20.skb_dst.exit23thread-pre-split_crit_edge, !prof !77

land.rhs.i20.skb_dst.exit23thread-pre-split_crit_edge: ; preds = %land.rhs.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit23thread-pre-split

do.end.i21:                                       ; preds = %land.rhs.i20
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit23thread-pre-split

skb_dst.exit23thread-pre-split:                   ; preds = %do.end.i21, %land.rhs.i20.skb_dst.exit23thread-pre-split_crit_edge, %land.lhs.true.i17.skb_dst.exit23thread-pre-split_crit_edge
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr35 = load i32, ptr %24, align 8
  br label %skb_dst.exit23

skb_dst.exit23:                                   ; preds = %skb_dst.exit23thread-pre-split, %if.else.skb_dst.exit23_crit_edge
  %28 = phi i32 [ %.pr35, %skb_dst.exit23thread-pre-split ], [ %26, %if.else.skb_dst.exit23_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %tobool21.not = icmp ult i32 %28, 2
  br i1 %tobool21.not, label %skb_dst.exit23.cleanup.sink.split_crit_edge, label %land.lhs.true22

skb_dst.exit23.cleanup.sink.split_crit_edge:      ; preds = %skb_dst.exit23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

land.lhs.true22:                                  ; preds = %skb_dst.exit23
  %and.i24 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  br i1 %tobool.not.i25, label %land.lhs.true22.skb_dst.exit34_crit_edge, label %land.lhs.true.i28

land.lhs.true22.skb_dst.exit34_crit_edge:         ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit34

land.lhs.true.i28:                                ; preds = %land.lhs.true22
  %call.i26 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool1.not.i27 = icmp eq i32 %call.i26, 0
  br i1 %tobool1.not.i27, label %land.rhs.i31, label %land.lhs.true.i28.skb_dst.exit34_crit_edge

land.lhs.true.i28.skb_dst.exit34_crit_edge:       ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit34

land.rhs.i31:                                     ; preds = %land.lhs.true.i28
  %call2.i29 = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i29)
  %tobool3.not.i30 = icmp eq i32 %call2.i29, 0
  br i1 %tobool3.not.i30, label %do.end.i32, label %land.rhs.i31.skb_dst.exit34_crit_edge, !prof !77

land.rhs.i31.skb_dst.exit34_crit_edge:            ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit34

do.end.i32:                                       ; preds = %land.rhs.i31
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit34

skb_dst.exit34:                                   ; preds = %do.end.i32, %land.rhs.i31.skb_dst.exit34_crit_edge, %land.lhs.true.i28.skb_dst.exit34_crit_edge, %land.lhs.true22.skb_dst.exit34_crit_edge
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %24, align 8
  %and25.i33 = and i32 %30, -2
  %31 = inttoptr i32 %and25.i33 to ptr
  %flags24 = getelementptr inbounds %struct.dst_entry, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %flags24 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %flags24, align 4
  %34 = and i16 %33, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool27.not = icmp eq i16 %34, 0
  br i1 %tobool27.not, label %skb_dst.exit34.cleanup.sink.split_crit_edge, label %skb_dst.exit34.cleanup_crit_edge

skb_dst.exit34.cleanup_crit_edge:                 ; preds = %skb_dst.exit34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

skb_dst.exit34.cleanup.sink.split_crit_edge:      ; preds = %skb_dst.exit34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %skb_dst.exit34.cleanup.sink.split_crit_edge, %skb_dst.exit23.cleanup.sink.split_crit_edge, %skb_dst.exit12.cleanup.sink.split_crit_edge, %skb_dst.exit.cleanup.sink.split_crit_edge
  %call30 = tail call i32 @__xfrm_policy_check(ptr noundef null, i32 noundef %cond, ptr noundef %skb, i16 noundef zeroext 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31 = icmp ne i32 %call30, 0
  %phi.cast = zext i1 %tobool31 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %skb_dst.exit34.cleanup_crit_edge, %skb_dst.exit12.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge
  %retval.0.shrunk = phi i32 [ 1, %skb_dst.exit12.cleanup_crit_edge ], [ 1, %land.lhs.true8.cleanup_crit_edge ], [ 1, %skb_dst.exit34.cleanup_crit_edge ], [ %phi.cast, %cleanup.sink.split ]
  ret i32 %retval.0.shrunk
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__xfrm_policy_check(ptr noundef, i32 noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @__skb_checksum_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @icmp_reply(ptr noundef %icmp_param, ptr noundef %skb) unnamed_addr #0 align 64 {
entry:
  %ipc = alloca %struct.ipcm_cookie, align 8
  %rt = alloca ptr, align 4
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %ipc) #12
  %0 = call ptr @memset(ptr %ipc, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt) #12
  %1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 1
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
  br i1 %tobool3.not.i.i, label %do.end.i.i, label %land.rhs.i.i.skb_rtable.exit_crit_edge, !prof !77

land.rhs.i.i.skb_rtable.exit_crit_edge:           ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_rtable.exit

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_rtable.exit

skb_rtable.exit:                                  ; preds = %do.end.i.i, %land.rhs.i.i.skb_rtable.exit_crit_edge, %land.lhs.true.i.i.skb_rtable.exit_crit_edge, %entry.skb_rtable.exit_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %and25.i.i = and i32 %5, -2
  %6 = inttoptr i32 %and25.i.i to ptr
  %7 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rt, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %6, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 127
  %10 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #12
  %12 = call ptr @memset(ptr %fl4, i32 255, i32 56)
  %sysctl_fwmark_reflect = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 35, i32 49
  %13 = ptrtoint ptr %sysctl_fwmark_reflect to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sysctl_fwmark_reflect, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %skb_rtable.exit.cond.end_crit_edge, label %cond.true

skb_rtable.exit.cond.end_crit_edge:               ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %skb_rtable.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %skb_rtable.exit.cond.end_crit_edge
  %cond = phi i32 [ %17, %cond.true ], [ 0, %skb_rtable.exit.cond.end_crit_edge ]
  %data = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %data, align 4
  %conv3 = zext i8 %19 to i32
  %code6 = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3, i32 0, i32 1
  %20 = ptrtoint ptr %code6 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %code6, align 1
  %conv7 = zext i8 %21 to i32
  %replyopts = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 5
  %opt8 = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 5, i32 0, i32 1
  %opt.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %call.i = tail call i32 @__ip_options_echo(ptr noundef %11, ptr noundef %opt8, ptr noundef %skb, ptr noundef %opt.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %cond.end
  tail call fastcc void @local_bh_disable()
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %19)
  %cmp.i.i = icmp ugt i8 %19, 18
  br i1 %cmp.i.i, label %if.end.if.end13_crit_edge, label %if.end.i.i

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %19)
  %cmp1.i.i = icmp eq i8 %19, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %21)
  %cmp2.i.i = icmp eq i8 %21, 4
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %if.end.i.i.if.end13_crit_edge, label %icmpv4_mask_allow.exit.i

if.end.i.i.if.end13_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

icmpv4_mask_allow.exit.i:                         ; preds = %if.end.i.i
  %shl.i.i = shl nuw nsw i32 1, %conv3
  %sysctl_icmp_ratemask.i.i = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 35, i32 31
  %22 = ptrtoint ptr %sysctl_icmp_ratemask.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sysctl_icmp_ratemask.i.i, align 4
  %and.i.i100 = and i32 %23, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i100)
  %tobool.not.i.i101 = icmp eq i32 %and.i.i100, 0
  br i1 %tobool.not.i.i101, label %icmpv4_mask_allow.exit.i.if.end13_crit_edge, label %icmpv4_global_allow.exit

icmpv4_mask_allow.exit.i.if.end13_crit_edge:      ; preds = %icmpv4_mask_allow.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

icmpv4_global_allow.exit:                         ; preds = %icmpv4_mask_allow.exit.i
  %call1.i = tail call zeroext i1 @icmp_global_allow() #12
  br i1 %call1.i, label %icmpv4_global_allow.exit.if.end13_crit_edge, label %icmpv4_global_allow.exit.out_bh_enable_crit_edge

icmpv4_global_allow.exit.out_bh_enable_crit_edge: ; preds = %icmpv4_global_allow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh_enable

icmpv4_global_allow.exit.if.end13_crit_edge:      ; preds = %icmpv4_global_allow.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end13:                                         ; preds = %icmpv4_global_allow.exit.if.end13_crit_edge, %icmpv4_mask_allow.exit.i.if.end13_crit_edge, %if.end.i.i.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %24 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !81
  %icmp_sk.i.i = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 35, i32 20
  %28 = ptrtoint ptr %icmp_sk.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %icmp_sk.i.i, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %36, %30
  %37 = inttoptr i32 %add.i.i to ptr
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %37, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !82
  %40 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i19.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i19.i.i to ptr
  %preempt_count.i.i20.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i20.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i20.i.i, align 4
  %sub.i.i.i = add i32 %43, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i20.i.i, align 4
  %sk_lock.i = getelementptr inbounds %struct.sock, ptr %39, i32 0, i32 4
  %call.i.i102 = tail call i32 @_raw_spin_trylock(ptr noundef %sk_lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool.not.i = icmp eq i32 %call.i.i102, 0
  %tobool15.not115 = icmp eq ptr %39, null
  %tobool15.not = select i1 %tobool.not.i, i1 true, i1 %tobool15.not115
  br i1 %tobool15.not, label %if.end13.out_bh_enable_crit_edge, label %if.end17

if.end13.out_bh_enable_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_bh_enable

if.end17:                                         ; preds = %if.end13
  %checksum = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3, i32 0, i32 2
  %44 = ptrtoint ptr %checksum to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %checksum, align 2
  %45 = call ptr @memset(ptr %ipc, i32 0, i32 30)
  %.compoundliteral.sroa.2.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc, i32 30
  %46 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 -1, ptr %.compoundliteral.sroa.2.0..sroa_idx.i, align 2
  %.compoundliteral.sroa.3.0..sroa_idx.i = getelementptr inbounds i8, ptr %ipc, i32 32
  %47 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx.i to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 0, ptr %.compoundliteral.sroa.3.0..sroa_idx.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %48 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %50 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %51 to i32
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %conv.i.i
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %tos, align 1
  %tos22 = getelementptr inbounds %struct.inet_sock, ptr %39, i32 0, i32 8
  %54 = ptrtoint ptr %tos22 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %tos22, align 4
  %mark23 = getelementptr inbounds %struct.sockcm_cookie, ptr %ipc, i32 0, i32 1
  %55 = ptrtoint ptr %mark23 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond, ptr %mark23, align 8
  %56 = load ptr, ptr %head.i.i, align 8
  %57 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i105 = zext i16 %57 to i32
  %add.ptr.i.i106 = getelementptr i8, ptr %56, i32 %conv.i.i105
  %saddr25 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i106, i32 0, i32 8
  %58 = ptrtoint ptr %saddr25 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %saddr25, align 4
  %addr = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 1
  %60 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %addr, align 8
  %call26 = tail call i32 @fib_compute_spec_dst(ptr noundef %skb) #12
  %optlen = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 5, i32 0, i32 1, i32 2
  %61 = ptrtoint ptr %optlen to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %optlen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool30.not = icmp eq i8 %62, 0
  br i1 %tobool30.not, label %if.end17.if.end43_crit_edge, label %if.then31

if.end17.if.end43_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then31:                                        ; preds = %if.end17
  %opt34 = getelementptr inbounds %struct.ipcm_cookie, ptr %ipc, i32 0, i32 3
  %63 = ptrtoint ptr %opt34 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %replyopts, ptr %opt34, align 8
  %srr = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 5, i32 0, i32 1, i32 3
  %64 = ptrtoint ptr %srr to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %srr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool37.not = icmp eq i8 %65, 0
  br i1 %tobool37.not, label %if.then31.if.end43_crit_edge, label %if.then38

if.then31.if.end43_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then38:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #14
  %66 = ptrtoint ptr %opt8 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %opt8, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.then31.if.end43_crit_edge, %if.end17.if.end43_crit_edge
  %daddr.0 = phi i32 [ %67, %if.then38 ], [ %59, %if.then31.if.end43_crit_edge ], [ %59, %if.end17.if.end43_crit_edge ]
  %68 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %daddr44 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %69 = ptrtoint ptr %daddr44 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %daddr.0, ptr %daddr44, align 4
  %saddr45 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %70 = ptrtoint ptr %saddr45 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call26, ptr %saddr45, align 8
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %71 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond, ptr %flowic_mark, align 8
  %flowic_uid = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 8
  %user_ns.i = getelementptr inbounds %struct.net, ptr %11, i32 0, i32 11
  %72 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %user_ns.i, align 4
  %call.i107 = tail call i32 @make_kuid(ptr noundef %73, i32 noundef 0) #12
  %74 = ptrtoint ptr %flowic_uid to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i107, ptr %flowic_uid, align 4
  %75 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i, align 8
  %77 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i110 = zext i16 %78 to i32
  %add.ptr.i.i111 = getelementptr i8, ptr %76, i32 %conv.i.i110
  %tos49 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i111, i32 0, i32 1
  %79 = ptrtoint ptr %tos49 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %tos49, align 1
  %81 = and i8 %80, 30
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %82 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %flowic_tos, align 4
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 5
  %83 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 1, ptr %flowic_proto, align 2
  %84 = getelementptr inbounds %struct.anon.84, ptr %skb, i32 0, i32 2
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 8
  %call54 = tail call fastcc i32 @l3mdev_master_ifindex(ptr noundef %86)
  %87 = ptrtoint ptr %fl4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call54, ptr %fl4, align 8
  call void @security_skb_classify_flow(ptr noundef %skb, ptr noundef nonnull %fl4) #12
  %call.i112 = call ptr @ip_route_output_flow(ptr noundef %11, ptr noundef nonnull %fl4, ptr noundef null) #12
  %88 = ptrtoint ptr %rt to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i112, ptr %rt, align 4
  %cmp.i = icmp ugt ptr %call.i112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end43.out_unlock_crit_edge, label %if.end60

if.end43.out_unlock_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_unlock

if.end60:                                         ; preds = %if.end43
  %call61 = call fastcc zeroext i1 @icmpv4_xrlim_allow(ptr noundef %11, ptr noundef %call.i112, ptr noundef nonnull %fl4, i32 noundef %conv3, i32 noundef %conv7)
  br i1 %call61, label %if.then62, label %if.end60.if.end63_crit_edge

if.end60.if.end63_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @icmp_push_reply(ptr noundef %icmp_param, ptr noundef nonnull %fl4, ptr noundef nonnull %ipc, ptr noundef nonnull %rt)
  br label %if.end63

if.end63:                                         ; preds = %if.then62, %if.end60.if.end63_crit_edge
  %89 = ptrtoint ptr %rt to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rt, align 4
  call void @dst_release(ptr noundef %90) #12
  br label %out_unlock

out_unlock:                                       ; preds = %if.end63, %if.end43.out_unlock_crit_edge
  call void @_raw_spin_unlock(ptr noundef %sk_lock.i) #12
  br label %out_bh_enable

out_bh_enable:                                    ; preds = %out_unlock, %if.end13.out_bh_enable_crit_edge, %icmpv4_global_allow.exit.out_bh_enable_crit_edge
  call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %out_bh_enable, %cond.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt) #12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %ipc) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_compute_spec_dst(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @icmp_discard(ptr nocapture noundef readnone %skb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @icmp_unreach(ptr noundef %skb) #0 align 64 {
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !77

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
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
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 127
  %8 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nd_net.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %skb_dst.exit.if.end_crit_edge, !prof !77

skb_dst.exit.if.end_crit_edge:                    ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %skb_dst.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp3.i = icmp ult i32 %11, 20
  br i1 %cmp3.i, label %if.end.i.out_err_crit_edge, label %pskb_may_pull.exit, !prof !77

if.end.i.out_err_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.out_err_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pskb_may_pull.exit.out_err_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %skb_dst.exit.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %19, align 4
  %bf.clear = and i8 %bf.load, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %bf.clear)
  %cmp = icmp ult i8 %bf.clear, 5
  br i1 %cmp, label %if.end.out_err_crit_edge, label %if.end6

if.end.out_err_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_err

if.end6:                                          ; preds = %if.end
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i, align 4
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %22, label %if.end6.sw.epilog83_crit_edge [
    i8 3, label %sw.bb
    i8 12, label %sw.bb56
    i8 11, label %sw.bb58
  ]

if.end6.sw.epilog83_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog83

sw.bb:                                            ; preds = %if.end6
  %code = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %code, align 1
  %26 = and i8 %25, 15
  %and = zext i8 %26 to i32
  %27 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %and, label %sw.bb.sw.epilog49_crit_edge [
    i32 5, label %do.body28
    i32 4, label %sw.bb10
  ]

sw.bb.sw.epilog49_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog49

sw.bb10:                                          ; preds = %sw.bb
  %sysctl_ip_no_pmtu_disc = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 35, i32 38
  %28 = ptrtoint ptr %sysctl_ip_no_pmtu_disc to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sysctl_ip_no_pmtu_disc, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %29, label %do.body [
    i8 2, label %sw.bb10.cleanup_crit_edge
    i8 3, label %sw.bb20
    i8 0, label %sw.bb10.sw.bb25_crit_edge
  ]

sw.bb10.sw.bb25_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icmp_unreach.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icmp_unreach, %land.lhs.true)) #12
          to label %sw.epilog49 [label %land.lhs.true], !srcloc !89

land.lhs.true:                                    ; preds = %do.body
  %call15 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.sw.epilog49_crit_edge, label %if.then17

land.lhs.true.sw.epilog49_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog49

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %daddr = getelementptr inbounds %struct.iphdr, ptr %19, i32 0, i32 9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @icmp_unreach.descriptor, ptr noundef nonnull @.str.13, ptr noundef %daddr) #12
  br label %sw.epilog49

sw.bb20:                                          ; preds = %sw.bb10
  %protocol = getelementptr inbounds %struct.iphdr, ptr %19, i32 0, i32 6
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %protocol, align 1
  %conv21 = zext i8 %32 to i32
  %call22 = tail call fastcc zeroext i1 @icmp_tag_validation(i32 noundef %conv21)
  br i1 %call22, label %sw.bb20.sw.bb25_crit_edge, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb20.sw.bb25_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb25

sw.bb25:                                          ; preds = %sw.bb20.sw.bb25_crit_edge, %sw.bb10.sw.bb25_crit_edge
  %un = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %mtu = getelementptr inbounds %struct.anon.198, ptr %un, i32 0, i32 1
  %33 = ptrtoint ptr %mtu to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mtu, align 2
  %conv26 = zext i16 %34 to i32
  br label %sw.epilog49

do.body28:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @icmp_unreach.descriptor.14, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@icmp_unreach, %land.lhs.true40)) #12
          to label %sw.epilog49 [label %land.lhs.true40], !srcloc !89

land.lhs.true40:                                  ; preds = %do.body28
  %call41 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %land.lhs.true40.sw.epilog49_crit_edge, label %if.then43

land.lhs.true40.sw.epilog49_crit_edge:            ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog49

if.then43:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #14
  %daddr44 = getelementptr inbounds %struct.iphdr, ptr %19, i32 0, i32 9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @icmp_unreach.descriptor.14, ptr noundef nonnull @.str.16, ptr noundef %daddr44) #12
  br label %sw.epilog49

sw.epilog49:                                      ; preds = %if.then43, %land.lhs.true40.sw.epilog49_crit_edge, %do.body28, %sw.bb25, %if.then17, %land.lhs.true.sw.epilog49_crit_edge, %do.body, %sw.bb.sw.epilog49_crit_edge
  %info.0 = phi i32 [ 0, %sw.bb.sw.epilog49_crit_edge ], [ 0, %if.then17 ], [ 0, %land.lhs.true.sw.epilog49_crit_edge ], [ %conv26, %sw.bb25 ], [ 0, %if.then43 ], [ 0, %land.lhs.true40.sw.epilog49_crit_edge ], [ 0, %do.body ], [ 0, %do.body28 ]
  %35 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %code, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %36)
  %cmp52 = icmp ugt i8 %36, 15
  br i1 %cmp52, label %sw.epilog49.cleanup_crit_edge, label %sw.epilog49.sw.epilog83_crit_edge

sw.epilog49.sw.epilog83_crit_edge:                ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog83

sw.epilog49.cleanup_crit_edge:                    ; preds = %sw.epilog49
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb56:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %un57 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %37 = ptrtoint ptr %un57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %un57, align 4
  %shr = lshr i32 %38, 24
  br label %sw.epilog83

sw.bb58:                                          ; preds = %if.end6
  %icmp_statistics = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 30, i32 11
  %39 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx = getelementptr [28 x i32], ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %arrayidx to i32
  %42 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i167 = and i32 %42, -16384
  %43 = inttoptr i32 %and.i167 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu, align 4
  %arrayidx71 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx71, align 4
  %add = add i32 %47, %41
  %48 = inttoptr i32 %add to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add72 = add i32 %50, 1
  store i32 %add72, ptr %48, align 4
  %code77 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %51 = ptrtoint ptr %code77 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %code77, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp79 = icmp eq i8 %52, 1
  br i1 %cmp79, label %sw.bb58.cleanup_crit_edge, label %sw.bb58.sw.epilog83_crit_edge

sw.bb58.sw.epilog83_crit_edge:                    ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog83

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog83:                                      ; preds = %sw.bb58.sw.epilog83_crit_edge, %sw.bb56, %sw.epilog49.sw.epilog83_crit_edge, %if.end6.sw.epilog83_crit_edge
  %info.1 = phi i32 [ 0, %if.end6.sw.epilog83_crit_edge ], [ 0, %sw.bb58.sw.epilog83_crit_edge ], [ %shr, %sw.bb56 ], [ %info.0, %sw.epilog49.sw.epilog83_crit_edge ]
  %sysctl_icmp_ignore_bogus_error_responses = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 35, i32 28
  %53 = ptrtoint ptr %sysctl_icmp_ignore_bogus_error_responses to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %sysctl_icmp_ignore_bogus_error_responses, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool85.not = icmp eq i8 %54, 0
  br i1 %tobool85.not, label %land.lhs.true86, label %sw.epilog83.if.end110_crit_edge

sw.epilog83.if.end110_crit_edge:                  ; preds = %sw.epilog83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

land.lhs.true86:                                  ; preds = %sw.epilog83
  %55 = getelementptr inbounds %struct.anon.84, ptr %skb, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 8
  %daddr87 = getelementptr inbounds %struct.iphdr, ptr %19, i32 0, i32 9
  %58 = ptrtoint ptr %daddr87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %daddr87, align 4
  %call88 = tail call i32 @inet_addr_type_dev_table(ptr noundef %9, ptr noundef %57, i32 noundef %59) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call88)
  %cmp89 = icmp eq i32 %call88, 3
  br i1 %cmp89, label %do.body92, label %land.lhs.true86.if.end110_crit_edge

land.lhs.true86.if.end110_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

do.body92:                                        ; preds = %land.lhs.true86
  %call93 = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body92.cleanup_crit_edge, label %do.end98

do.body92.cleanup_crit_edge:                      ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #14
  %60 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %62 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i169 = zext i16 %63 to i32
  %add.ptr.i.i170 = getelementptr i8, ptr %61, i32 %conv.i.i169
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i170, i32 0, i32 8
  %64 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %add.ptr.i.i, align 4
  %conv102 = zext i8 %65 to i32
  %code103 = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %code103 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %code103, align 1
  %conv104 = zext i8 %67 to i32
  %68 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %55, align 8
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %saddr, i32 noundef %conv102, i32 noundef %conv104, ptr noundef %daddr87, ptr noundef %69) #16
  br label %cleanup

if.end110:                                        ; preds = %land.lhs.true86.if.end110_crit_edge, %sw.epilog83.if.end110_crit_edge
  tail call fastcc void @icmp_socket_deliver(ptr noundef %skb, i32 noundef %info.1)
  br label %cleanup

out_err:                                          ; preds = %if.end.out_err_crit_edge, %pskb_may_pull.exit.out_err_crit_edge, %if.end.i.out_err_crit_edge
  %icmp_statistics124 = getelementptr inbounds %struct.net, ptr %9, i32 0, i32 30, i32 11
  %70 = ptrtoint ptr %icmp_statistics124 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %icmp_statistics124, align 4
  %arrayidx126 = getelementptr [28 x i32], ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %arrayidx126 to i32
  %73 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i171 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i171 to ptr
  %cpu129 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %cpu129 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cpu129, align 4
  %arrayidx130 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx130, align 4
  %add131 = add i32 %78, %72
  %79 = inttoptr i32 %add131 to ptr
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %add132 = add i32 %81, 1
  store i32 %add132, ptr %79, align 4
  br label %cleanup

cleanup:                                          ; preds = %out_err, %if.end110, %do.end98, %do.body92.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %sw.epilog49.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %out_err ], [ true, %do.body92.cleanup_crit_edge ], [ true, %do.end98 ], [ true, %sw.bb58.cleanup_crit_edge ], [ true, %sw.epilog49.cleanup_crit_edge ], [ true, %sw.bb20.cleanup_crit_edge ], [ true, %sw.bb10.cleanup_crit_edge ], [ true, %if.end110 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @icmp_redirect(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %1)
  %cmp = icmp ult i32 %1, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = getelementptr inbounds %struct.anon.84, ptr %skb, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %icmp_statistics = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 30, i32 11
  %7 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx = getelementptr [28 x i32], ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %arrayidx to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  %add = add i32 %15, %9
  %16 = inttoptr i32 %add to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add9 = add i32 %18, 1
  store i32 %add9, ptr %16, align 4
  br label %return

if.end:                                           ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %pskb_may_pull.exit, label %if.end.if.end14_crit_edge, !prof !77

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

pskb_may_pull.exit:                               ; preds = %if.end
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.return_crit_edge, label %pskb_may_pull.exit.if.end14_crit_edge

pskb_may_pull.exit.if.end14_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

pskb_may_pull.exit.return_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end14:                                         ; preds = %pskb_may_pull.exit.if.end14_crit_edge, %if.end.if.end14_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %21 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %23 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %24 to i32
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %conv.i.i
  %un = getelementptr inbounds %struct.icmphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %un to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %un, align 4
  tail call fastcc void @icmp_socket_deliver(ptr noundef %skb, i32 noundef %26)
  br label %return

return:                                           ; preds = %if.end14, %pskb_may_pull.exit.return_crit_edge, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ true, %if.end14 ], [ false, %pskb_may_pull.exit.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @icmp_timestamp(ptr noundef %skb) #0 align 64 {
entry:
  %icmp_param = alloca %struct.icmp_bxm, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %icmp_param) #12
  %0 = call ptr @memset(ptr %icmp_param, i32 255, i32 100)
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %1 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp ult i32 %2, 4
  br i1 %cmp, label %out_err, label %if.end

if.end:                                           ; preds = %entry
  %call = tail call i32 @inet_current_timestamp() #12
  %times = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3, i32 1
  %arrayidx = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3, i32 1, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call, ptr %arrayidx6, align 4
  %call10 = call i32 @skb_copy_bits(ptr noundef %skb, i32 noundef 0, ptr noundef %times, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.end20, label %do.body14, !prof !85

do.body14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/icmp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1149, 0\0A.popsection", ""() #12, !srcloc !90
  unreachable

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %5 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %7 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %8 to i32
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %conv.i.i
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %10 = load i64, ptr %add.ptr.i.i, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 %10, ptr %data, align 4
  store i8 14, ptr %data, align 4
  %code = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 3, i32 0, i32 1
  %12 = ptrtoint ptr %code to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %code, align 1
  %13 = ptrtoint ptr %icmp_param to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %skb, ptr %icmp_param, align 4
  %offset = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %offset, align 4
  %data_len = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 2
  %15 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %data_len, align 4
  %head_len = getelementptr inbounds %struct.icmp_bxm, ptr %icmp_param, i32 0, i32 4
  %16 = ptrtoint ptr %head_len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 20, ptr %head_len, align 4
  call fastcc void @icmp_reply(ptr noundef nonnull %icmp_param, ptr noundef %skb)
  br label %cleanup

out_err:                                          ; preds = %entry
  %17 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %and.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %out_err.skb_dst.exit_crit_edge, label %land.lhs.true.i

out_err.skb_dst.exit_crit_edge:                   ; preds = %out_err
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %out_err
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
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !77

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1013, i32 noundef 9, ptr noundef null) #12
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %out_err.skb_dst.exit_crit_edge
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 8
  %and25.i = and i32 %21, -2
  %22 = inttoptr i32 %and25.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %24, i32 0, i32 127
  %25 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nd_net.i, align 4
  %icmp_statistics = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 30, i32 11
  %27 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx39 = getelementptr [28 x i32], ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx39 to i32
  %30 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i53 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i53 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu, align 4
  %arrayidx42 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx42, align 4
  %add = add i32 %35, %29
  %36 = inttoptr i32 %add to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %add43 = add i32 %38, 1
  store i32 %add43, ptr %36, align 4
  br label %cleanup

cleanup:                                          ; preds = %skb_dst.exit, %do.end20
  %39 = xor i1 %cmp, true
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %icmp_param) #12
  ret i1 %39
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @icmp_tag_validation(i32 noundef %proto) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !80
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %proto
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @icmp_tag_validation.__warned, align 1
  br i1 %.b11, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @icmp_tag_validation.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 841, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %icmp_strict_tag_validation = getelementptr inbounds %struct.net_protocol, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %icmp_strict_tag_validation to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %icmp_strict_tag_validation, align 4
  %call.i12 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i12, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i15

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i15:                                ; preds = %do.end7
  %call1.i13 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i13)
  %tobool.not.i14 = icmp eq i32 %call1.i13, 0
  br i1 %tobool.not.i14, label %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i17

land.lhs.true.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i17:                               ; preds = %land.lhs.true.i15
  %.b4.i16 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i16, label %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, label %if.then.i18

land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i18:                                      ; preds = %land.lhs.true2.i17
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i18, %land.lhs.true2.i17.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i15.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9 = icmp ne i8 %7, 0
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !83
  %8 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i.i.i.i.i19 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i19 to ptr
  %preempt_count.i.i.i.i20 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i20, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i20, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret i1 %tobool9
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @icmp_socket_deliver(ptr noundef %skb, i32 noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %protocol1 = getelementptr inbounds %struct.iphdr, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %protocol1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %protocol1, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %1, align 4
  %bf.clear = shl i8 %bf.load, 2
  %5 = and i8 %bf.clear, 60
  %narrow = add nuw nsw i8 %5, 8
  %add = zext i8 %narrow to i32
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %add)
  %cmp.not.i = icmp ult i32 %sub.i.i, %add
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add)
  %cmp3.i = icmp ult i32 %7, %add
  br i1 %cmp3.i, label %if.end.i.if.then_crit_edge, label %pskb_may_pull.exit, !prof !77

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.if.then_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

pskb_may_pull.exit.if.then_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %pskb_may_pull.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %10 = getelementptr inbounds %struct.anon.84, ptr %skb, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %12, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i, align 4
  %icmp_statistics = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 30, i32 11
  %15 = ptrtoint ptr %icmp_statistics to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %icmp_statistics, align 4
  %arrayidx = getelementptr [28 x i32], ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !64) #12
  %and.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx12 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx12, align 4
  %add13 = add i32 %23, %17
  %24 = inttoptr i32 %add13 to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add14 = add i32 %26, 1
  store i32 %add14, ptr %24, align 4
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %conv = zext i8 %3 to i32
  tail call void @raw_icmp_error(ptr noundef %skb, i32 noundef %conv, i32 noundef %info) #12
  %arrayidx23 = getelementptr [256 x ptr], ptr @inet_protos, i32 0, i32 %conv
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %arrayidx23, align 4
  %call25 = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool.not = icmp eq i32 %call25, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end33_crit_edge

if.end.do.end33_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

land.lhs.true:                                    ; preds = %if.end
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true.do.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true
  %.b54 = load i1, ptr @icmp_socket_deliver.__warned, align 1
  br i1 %.b54, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @icmp_socket_deliver.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 831, ptr noundef nonnull @.str.1) #12
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true.do.end33_crit_edge, %if.end.do.end33_crit_edge
  %tobool35.not = icmp eq ptr %28, null
  br i1 %tobool35.not, label %do.end33.cleanup_crit_edge, label %land.lhs.true36

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true36:                                  ; preds = %do.end33
  %err_handler = getelementptr inbounds %struct.net_protocol, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %err_handler to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %err_handler, align 4
  %tobool37.not = icmp eq ptr %30, null
  br i1 %tobool37.not, label %land.lhs.true36.cleanup_crit_edge, label %if.then38

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #14
  %call40 = tail call i32 %30(ptr noundef %skb, i32 noundef %info) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %land.lhs.true36.cleanup_crit_edge, %do.end33.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @raw_icmp_error(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_current_timestamp() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @icmp_sk_init(ptr noundef %net) #0 align 64 {
entry:
  %sk = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #17
  %icmp_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 20
  %0 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %icmp_sk, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup19_crit_edge, label %for.cond.preheader

entry.cleanup19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup19

for.cond.preheader:                               ; preds = %entry
  %call338 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call338, i32 %1)
  %cmp39 = icmp ult i32 %call338, %1
  br i1 %cmp39, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call340 = phi i32 [ %call3, %cleanup.for.body_crit_edge ], [ %call338, %for.cond.preheader.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sk) #12
  %2 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sk, align 4, !annotation !79
  %call4 = call i32 @inet_ctl_sock_create(ptr noundef nonnull %sk, i16 noundef zeroext 2, i16 noundef zeroext 3, i8 noundef zeroext 1, ptr noundef %net) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %fail, label %cleanup

cleanup:                                          ; preds = %for.body
  %3 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sk, align 4
  %5 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %icmp_sk, align 4
  %7 = ptrtoint ptr %6 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call340
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add = add i32 %9, %7
  %10 = inttoptr i32 %add to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %4, ptr %10, align 4
  %12 = load ptr, ptr %sk, align 4
  %sk_sndbuf = getelementptr inbounds %struct.sock, ptr %12, i32 0, i32 21
  %13 = ptrtoint ptr %sk_sndbuf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 132096, ptr %sk_sndbuf, align 4
  %14 = getelementptr inbounds %struct.sock_common, ptr %12, i32 0, i32 13
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %or.i.i = or i32 %16, 512
  store i32 %or.i.i, ptr %14, align 4
  %pmtudisc = getelementptr inbounds %struct.inet_sock, ptr %12, i32 0, i32 11
  %17 = ptrtoint ptr %pmtudisc to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %pmtudisc, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sk) #12
  %call3 = call i32 @cpumask_next(i32 noundef %call340, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call3, %18
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sysctl_icmp_echo_ignore_all = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 25
  %19 = ptrtoint ptr %sysctl_icmp_echo_ignore_all to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %sysctl_icmp_echo_ignore_all, align 8
  %sysctl_icmp_echo_enable_probe = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 26
  %20 = ptrtoint ptr %sysctl_icmp_echo_enable_probe to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %sysctl_icmp_echo_enable_probe, align 1
  %sysctl_icmp_echo_ignore_broadcasts = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 27
  %21 = ptrtoint ptr %sysctl_icmp_echo_ignore_broadcasts to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %sysctl_icmp_echo_ignore_broadcasts, align 2
  %sysctl_icmp_ignore_bogus_error_responses = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 28
  %22 = ptrtoint ptr %sysctl_icmp_ignore_bogus_error_responses to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %sysctl_icmp_ignore_bogus_error_responses, align 1
  %sysctl_icmp_ratelimit = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 30
  %23 = ptrtoint ptr %sysctl_icmp_ratelimit to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 100, ptr %sysctl_icmp_ratelimit, align 64
  %sysctl_icmp_ratemask = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 31
  %24 = ptrtoint ptr %sysctl_icmp_ratemask to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6168, ptr %sysctl_icmp_ratemask, align 4
  %sysctl_icmp_errors_use_inbound_ifaddr = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 29
  %25 = ptrtoint ptr %sysctl_icmp_errors_use_inbound_ifaddr to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %sysctl_icmp_errors_use_inbound_ifaddr, align 4
  br label %cleanup19

fail:                                             ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sk) #12
  %call10.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %26)
  %cmp11.i = icmp ult i32 %call10.i, %26
  br i1 %cmp11.i, label %fail.do.body.i_crit_edge, label %fail.icmp_sk_exit.exit_crit_edge

fail.icmp_sk_exit.exit_crit_edge:                 ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #14
  br label %icmp_sk_exit.exit

fail.do.body.i_crit_edge:                         ; preds = %fail
  br label %do.body.i

do.body.i:                                        ; preds = %inet_ctl_sock_destroy.exit.i.do.body.i_crit_edge, %fail.do.body.i_crit_edge
  %call12.i = phi i32 [ %call.i, %inet_ctl_sock_destroy.exit.i.do.body.i_crit_edge ], [ %call10.i, %fail.do.body.i_crit_edge ]
  %27 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %icmp_sk, align 4
  %29 = ptrtoint ptr %28 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call12.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %31, %29
  %32 = inttoptr i32 %add.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %do.body.i.inet_ctl_sock_destroy.exit.i_crit_edge, label %if.then.i.i

do.body.i.inet_ctl_sock_destroy.exit.i_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %inet_ctl_sock_destroy.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %34, i32 0, i32 71
  %35 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sk_socket.i.i, align 8
  call void @sock_release(ptr noundef %36) #12
  br label %inet_ctl_sock_destroy.exit.i

inet_ctl_sock_destroy.exit.i:                     ; preds = %if.then.i.i, %do.body.i.inet_ctl_sock_destroy.exit.i_crit_edge
  %call.i = call i32 @cpumask_next(i32 noundef %call12.i, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %37
  br i1 %cmp.i, label %inet_ctl_sock_destroy.exit.i.do.body.i_crit_edge, label %inet_ctl_sock_destroy.exit.i.icmp_sk_exit.exit_crit_edge

inet_ctl_sock_destroy.exit.i.icmp_sk_exit.exit_crit_edge: ; preds = %inet_ctl_sock_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %icmp_sk_exit.exit

inet_ctl_sock_destroy.exit.i.do.body.i_crit_edge: ; preds = %inet_ctl_sock_destroy.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

icmp_sk_exit.exit:                                ; preds = %inet_ctl_sock_destroy.exit.i.icmp_sk_exit.exit_crit_edge, %fail.icmp_sk_exit.exit_crit_edge
  %38 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %icmp_sk, align 4
  call void @free_percpu(ptr noundef %39) #12
  %40 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %icmp_sk, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %icmp_sk_exit.exit, %for.end, %entry.cleanup19_crit_edge
  %retval.0 = phi i32 [ %call4, %icmp_sk_exit.exit ], [ 0, %for.end ], [ -12, %entry.cleanup19_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icmp_sk_exit(ptr nocapture noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call10 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10, i32 %0)
  %cmp11 = icmp ult i32 %call10, %0
  br i1 %cmp11, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %icmp_sk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 20
  br label %do.body

do.body:                                          ; preds = %inet_ctl_sock_destroy.exit.do.body_crit_edge, %do.body.lr.ph
  %call12 = phi i32 [ %call10, %do.body.lr.ph ], [ %call, %inet_ctl_sock_destroy.exit.do.body_crit_edge ]
  %1 = ptrtoint ptr %icmp_sk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %icmp_sk, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call12
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %do.body.inet_ctl_sock_destroy.exit_crit_edge, label %if.then.i

do.body.inet_ctl_sock_destroy.exit_crit_edge:     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %inet_ctl_sock_destroy.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %sk_socket.i = getelementptr inbounds %struct.sock, ptr %8, i32 0, i32 71
  %9 = ptrtoint ptr %sk_socket.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sk_socket.i, align 8
  tail call void @sock_release(ptr noundef %10) #12
  br label %inet_ctl_sock_destroy.exit

inet_ctl_sock_destroy.exit:                       ; preds = %if.then.i, %do.body.inet_ctl_sock_destroy.exit_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call12, ptr noundef nonnull @__cpu_possible_mask) #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %inet_ctl_sock_destroy.exit.do.body_crit_edge, label %inet_ctl_sock_destroy.exit.for.end_crit_edge

inet_ctl_sock_destroy.exit.for.end_crit_edge:     ; preds = %inet_ctl_sock_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

inet_ctl_sock_destroy.exit.do.body_crit_edge:     ; preds = %inet_ctl_sock_destroy.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

for.end:                                          ; preds = %inet_ctl_sock_destroy.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %icmp_sk3 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 20
  %12 = ptrtoint ptr %icmp_sk3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %icmp_sk3, align 4
  tail call void @free_percpu(ptr noundef %13) #12
  %14 = ptrtoint ptr %icmp_sk3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %icmp_sk3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_ctl_sock_create(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #11

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !36, !37, !39, !41, !42, !44, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @icmp_err_convert, !1, !"icmp_err_convert", i1 false, i1 false}
!1 = !{!"../net/ipv4/icmp.c", i32 116, i32 23}
!2 = !{ptr @__ksymtab_icmp_err_convert, !3, !"__ksymtab_icmp_err_convert", i1 false, i1 false}
!3 = !{!"../net/ipv4/icmp.c", i32 182, i32 1}
!4 = !{ptr @sysctl_icmp_msgs_per_sec, !5, !"sysctl_icmp_msgs_per_sec", i1 false, i1 false}
!5 = !{!"../net/ipv4/icmp.c", i32 228, i32 5}
!6 = !{ptr @sysctl_icmp_msgs_burst, !7, !"sysctl_icmp_msgs_burst", i1 false, i1 false}
!7 = !{!"../net/ipv4/icmp.c", i32 229, i32 5}
!8 = !{ptr @__ksymtab_icmp_global_allow, !9, !"__ksymtab_icmp_global_allow", i1 false, i1 false}
!9 = !{!"../net/ipv4/icmp.c", i32 280, i32 1}
!10 = !{ptr @__ksymtab___icmp_send, !11, !"__ksymtab___icmp_send", i1 false, i1 false}
!11 = !{!"../net/ipv4/icmp.c", i32 778, i32 1}
!12 = !{ptr @__ksymtab_icmp_ndo_send, !13, !"__ksymtab_icmp_ndo_send", i1 false, i1 false}
!13 = !{!"../net/ipv4/icmp.c", i32 812, i32 1}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/ipv4/icmp.c", i32 1116, i32 19}
!16 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @__ksymtab_icmp_build_probe, !19, !"__ksymtab_icmp_build_probe", i1 false, i1 false}
!19 = !{!"../net/ipv4/icmp.c", i32 1125, i32 1}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/ipv4/icmp.c", i32 1202, i32 2}
!22 = !{ptr @__ksymtab_ip_icmp_error_rfc4884, !23, !"__ksymtab_ip_icmp_error_rfc4884", i1 false, i1 false}
!23 = !{!"../net/ipv4/icmp.c", i32 1335, i32 1}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/ipv4/icmp.c", i32 236, i32 11}
!26 = !{ptr @icmp_global, !27, !"icmp_global", i1 false, i1 false}
!27 = !{!"../net/ipv4/icmp.c", i32 235, i32 3}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/net/dst.h", i32 316, i32 3}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @icmp_pointers, !43, !"icmp_pointers", i1 false, i1 false}
!43 = !{!"../net/ipv4/icmp.c", i32 1366, i32 34}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv4/icmp.c", i32 890, i32 5}
!46 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @icmp_unreach.descriptor, !45, !"descriptor", i1 false, i1 false}
!49 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/ipv4/icmp.c", i32 904, i32 4}
!52 = !{ptr @icmp_unreach.descriptor.14, !51, !"descriptor", i1 false, i1 false}
!53 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/ipv4/icmp.c", i32 943, i32 3}
!56 = !{ptr @icmp_unreach._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @icmp_unreach._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/ipv4/icmp.c", i32 841, i32 7}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/ipv4/icmp.c", i32 831, i32 11}
!62 = !{ptr @icmp_sk_ops, !63, !"icmp_sk_ops", i1 false, i1 false}
!63 = !{!"../net/ipv4/icmp.c", i32 1508, i32 48}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148375978, i64 2148376004, i64 2148376033, i64 2148376067, i64 2148376098, i64 2148376121}
!75 = !{i64 779678, i64 779739}
!76 = !{i64 782410}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 782695}
!79 = !{!"auto-init"}
!80 = !{i64 2149392137}
!81 = !{i64 2159113449}
!82 = !{i64 2159130512}
!83 = !{i64 2149392403}
!84 = !{i64 6863168}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 2148375397}
!87 = !{i64 861017, i64 861042, i64 861064, i64 861080, i64 861092, i64 861112, i64 861136, i64 861152, i64 861164}
!88 = !{i64 2148375585}
!89 = !{i64 2148989355, i64 2148989360, i64 2148989373, i64 2148989417, i64 2148989451, i64 2148989472}
!90 = !{i64 2159584794, i64 2159585275, i64 2159584831, i64 2159584887, i64 2159584921, i64 2159584945, i64 2159584986, i64 2159585007, i64 2159585035, i64 2159585069}
