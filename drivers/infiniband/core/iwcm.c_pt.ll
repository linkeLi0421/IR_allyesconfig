; ModuleID = '/llk/IR_all_yes/drivers/infiniband/core/iwcm.c_pt.bc'
source_filename = "../drivers/infiniband/core/iwcm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iwcm_reject_msg\22, \22a\22\09"
module asm "\09.weak\09__crc_iwcm_reject_msg\09\09\09\09"
module asm "\09.long\09__crc_iwcm_reject_msg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iwcm_reject_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22iwcm_reject_msg\22\09\09\09\09\09"
module asm "__kstrtabns_iwcm_reject_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_create_cm_id\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_create_cm_id\09\09\09\09"
module asm "\09.long\09__crc_iw_create_cm_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_create_cm_id:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_create_cm_id\22\09\09\09\09\09"
module asm "__kstrtabns_iw_create_cm_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_cm_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_cm_disconnect\09\09\09\09"
module asm "\09.long\09__crc_iw_cm_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_cm_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_cm_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_iw_cm_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_destroy_cm_id\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_destroy_cm_id\09\09\09\09"
module asm "\09.long\09__crc_iw_destroy_cm_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_destroy_cm_id:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_destroy_cm_id\22\09\09\09\09\09"
module asm "__kstrtabns_iw_destroy_cm_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_cm_listen\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_cm_listen\09\09\09\09"
module asm "\09.long\09__crc_iw_cm_listen\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_cm_listen:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_cm_listen\22\09\09\09\09\09"
module asm "__kstrtabns_iw_cm_listen:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_cm_reject\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_cm_reject\09\09\09\09"
module asm "\09.long\09__crc_iw_cm_reject\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_cm_reject:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_cm_reject\22\09\09\09\09\09"
module asm "__kstrtabns_iw_cm_reject:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_cm_accept\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_cm_accept\09\09\09\09"
module asm "\09.long\09__crc_iw_cm_accept\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_cm_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_cm_accept\22\09\09\09\09\09"
module asm "__kstrtabns_iw_cm_accept:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_cm_connect\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_cm_connect\09\09\09\09"
module asm "\09.long\09__crc_iw_cm_connect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_cm_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_cm_connect\22\09\09\09\09\09"
module asm "__kstrtabns_iw_cm_connect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iw_cm_init_qp_attr\22, \22a\22\09"
module asm "\09.weak\09__crc_iw_cm_init_qp_attr\09\09\09\09"
module asm "\09.long\09__crc_iw_cm_init_qp_attr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iw_cm_init_qp_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22iw_cm_init_qp_attr\22\09\09\09\09\09"
module asm "__kstrtabns_iw_cm_init_qp_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.93, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.93 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.80, i32, %struct.spinlock }
%union.anon.80 = type { %struct.anon.81 }
%struct.anon.81 = type { ptr, ptr }
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
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rdma_nl_cbs = type { ptr, ptr, i8 }
%struct.iwcm_id_private = type { %struct.iw_cm_id, i32, i32, ptr, %struct.completion, %struct.wait_queue_head, %struct.list_head, %struct.spinlock, %struct.refcount_struct, %struct.list_head }
%struct.iw_cm_id = type { ptr, ptr, ptr, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, ptr, ptr, ptr, i8, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon }
%union.anon = type { ptr, [124 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.160 }
%struct.anon.160 = type { i64, i64 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.164 }
%struct.anon.164 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.iwcm_work = type { %struct.work_struct, ptr, %struct.list_head, %struct.iw_cm_event, %struct.list_head }
%struct.iw_cm_event = type { i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, ptr, ptr, i8, i8, i8 }
%struct.iwpm_dev_data = type { [32 x i8], [16 x i8] }
%struct.iwpm_sa_data = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32 }
%struct.iw_cm_conn_param = type { ptr, i16, i32, i32, i32 }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.73 }
%union.anon.73 = type { [4 x i32] }

@__UNIQUE_ID_author500 = internal constant [24 x i8] c"iw_cm.author=Tom Tucker\00", section ".modinfo", align 1
@__UNIQUE_ID_description501 = internal constant [27 x i8] c"iw_cm.description=iWARP CM\00", section ".modinfo", align 1
@__UNIQUE_ID_file502 = internal constant [41 x i8] c"iw_cm.file=drivers/infiniband/core/iw_cm\00", section ".modinfo", align 1
@__UNIQUE_ID_license503 = internal constant [27 x i8] c"iw_cm.license=Dual BSD/GPL\00", section ".modinfo", align 1
@iwcm_rej_reason_strs = internal constant { [112 x ptr], [96 x i8] } { [112 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.6, ptr @.str.7], [96 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unrecognized reason\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_iwcm_reject_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_iwcm_reject_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_iwcm_reject_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iwcm_reject_msg to i32), ptr @__kstrtab_iwcm_reject_msg, ptr @__kstrtabns_iwcm_reject_msg }, section "___ksymtab+iwcm_reject_msg", align 4
@iw_create_cm_id.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&cm_id_priv->lock\00", [46 x i8] zeroinitializer }, align 32
@iw_create_cm_id.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&cm_id_priv->connect_wait\00", [38 x i8] zeroinitializer }, align 32
@__kstrtab_iw_create_cm_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_create_cm_id = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_create_cm_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_create_cm_id to i32), ptr @__kstrtab_iw_create_cm_id, ptr @__kstrtabns_iw_create_cm_id }, section "___ksymtab+iw_create_cm_id", align 4
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/infiniband/core/iwcm.c\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_iw_cm_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_cm_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_cm_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_cm_disconnect to i32), ptr @__kstrtab_iw_cm_disconnect, ptr @__kstrtabns_iw_cm_disconnect }, section "___ksymtab+iw_cm_disconnect", align 4
@__kstrtab_iw_destroy_cm_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_destroy_cm_id = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_destroy_cm_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_destroy_cm_id to i32), ptr @__kstrtab_iw_destroy_cm_id, ptr @__kstrtabns_iw_destroy_cm_id }, section "___ksymtab+iw_destroy_cm_id", align 4
@default_backlog = internal global { i32, [28 x i8] } { i32 256, [28 x i8] zeroinitializer }, align 32
@__kstrtab_iw_cm_listen = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_cm_listen = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_cm_listen = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_cm_listen to i32), ptr @__kstrtab_iw_cm_listen, ptr @__kstrtabns_iw_cm_listen }, section "___ksymtab+iw_cm_listen", align 4
@__kstrtab_iw_cm_reject = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_cm_reject = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_cm_reject = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_cm_reject to i32), ptr @__kstrtab_iw_cm_reject, ptr @__kstrtabns_iw_cm_reject }, section "___ksymtab+iw_cm_reject", align 4
@__kstrtab_iw_cm_accept = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_cm_accept = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_cm_accept = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_cm_accept to i32), ptr @__kstrtab_iw_cm_accept, ptr @__kstrtabns_iw_cm_accept }, section "___ksymtab+iw_cm_accept", align 4
@__kstrtab_iw_cm_connect = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_cm_connect = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_cm_connect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_cm_connect to i32), ptr @__kstrtab_iw_cm_connect, ptr @__kstrtabns_iw_cm_connect }, section "___ksymtab+iw_cm_connect", align 4
@__kstrtab_iw_cm_init_qp_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_iw_cm_init_qp_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_iw_cm_init_qp_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iw_cm_init_qp_attr to i32), ptr @__kstrtab_iw_cm_init_qp_attr, ptr @__kstrtabns_iw_cm_init_qp_attr }, section "___ksymtab+iw_cm_init_qp_attr", align 4
@iwcm_ctl_table_hdr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@iwcm_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__UNIQUE_ID_alias506 = internal constant [34 x i8] c"iw_cm.alias=rdma-netlink-subsys-2\00", section ".modinfo", align 1
@__initcall__kmod_iw_cm__507_1222_iw_cm_init6 = internal global ptr @iw_cm_init, section ".initcall6.init", align 4
@__exitcall_iw_cm_cleanup = internal global ptr @iw_cm_cleanup, section ".exitcall.exit", align 4
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"reset by remote host\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup timeout\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"refused by remote application\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cm_event_handler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&work->work)\00", [33 x i8] zeroinitializer }, align 32
@cm_work_handler.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 1, i8 4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iw_cm\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cm_work_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dropping event %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iw_cm_wq\00", [23 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"net/iw_cm\00", [22 x i8] zeroinitializer }, align 32
@iwcm_ctl_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.17, ptr @default_backlog, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@iw_cm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013iw_cm: couldn't register sysctl paths\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iw_cm_init\00", [21 x i8] zeroinitializer }, align 32
@iw_cm_init._entry_ptr = internal global ptr @iw_cm_init._entry, section ".printk_index", align 4
@iwcm_nl_cb_table = internal global { [9 x %struct.rdma_nl_cbs], [52 x i8] } { [9 x %struct.rdma_nl_cbs] [%struct.rdma_nl_cbs { ptr null, ptr @iwpm_register_pid_cb, i8 0 }, %struct.rdma_nl_cbs { ptr null, ptr @iwpm_add_mapping_cb, i8 0 }, %struct.rdma_nl_cbs { ptr null, ptr @iwpm_add_and_query_mapping_cb, i8 0 }, %struct.rdma_nl_cbs zeroinitializer, %struct.rdma_nl_cbs { ptr null, ptr @iwpm_remote_info_cb, i8 0 }, %struct.rdma_nl_cbs { ptr null, ptr @iwpm_mapping_error_cb, i8 0 }, %struct.rdma_nl_cbs { ptr null, ptr @iwpm_mapping_info_cb, i8 0 }, %struct.rdma_nl_cbs { ptr null, ptr @iwpm_ack_mapping_info_cb, i8 0 }, %struct.rdma_nl_cbs { ptr null, ptr @iwpm_hello_cb, i8 0 }], [52 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"default_backlog\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 5, i64 6]
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"iwcm_rej_reason_strs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 62, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 79, i32 10 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 258, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 260, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 315, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"default_backlog\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 103, i32 21 }
@___asan_gen_.48 = private unnamed_addr constant [19 x i8] c"iwcm_ctl_table_hdr\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 105, i32 33 }
@___asan_gen_.51 = private unnamed_addr constant [8 x i8] c"iwcm_wq\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 94, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 63, i32 19 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 65, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 64, i32 21 }
@___asan_gen_.67 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 87, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1082, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1040, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1191, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1195, i32 54 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"iwcm_ctl_table\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 106, i32 25 }
@___asan_gen_.93 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 1198, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"iwcm_nl_cb_table\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 83, i32 27 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.106 = private constant [34 x i8] c"../drivers/infiniband/core/iwcm.c\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.106, i32 108, i32 15 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_alias506, ptr @__UNIQUE_ID_author500, ptr @__UNIQUE_ID_description501, ptr @__UNIQUE_ID_file502, ptr @__UNIQUE_ID_license503, ptr @__exitcall_iw_cm_cleanup, ptr @__initcall__kmod_iw_cm__507_1222_iw_cm_init6, ptr @__ksymtab_iw_cm_accept, ptr @__ksymtab_iw_cm_connect, ptr @__ksymtab_iw_cm_disconnect, ptr @__ksymtab_iw_cm_init_qp_attr, ptr @__ksymtab_iw_cm_listen, ptr @__ksymtab_iw_cm_reject, ptr @__ksymtab_iw_create_cm_id, ptr @__ksymtab_iw_destroy_cm_id, ptr @__ksymtab_iwcm_reject_msg, ptr @iw_cm_cleanup, ptr @iw_cm_init._entry, ptr @iw_cm_init._entry_ptr, ptr @iwcm_rej_reason_strs, ptr @.str, ptr @iw_create_cm_id.__key, ptr @.str.1, ptr @iw_create_cm_id.__key.2, ptr @.str.3, ptr @.str.4, ptr @default_backlog, ptr @iwcm_ctl_table_hdr, ptr @iwcm_wq, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @init_completion.__key, ptr @.str.8, ptr @cm_event_handler.__key, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @iwcm_ctl_table, ptr @.str.15, ptr @.str.16, ptr @iwcm_nl_cb_table, ptr @.str.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwcm_rej_reason_strs to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iw_create_cm_id.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iw_create_cm_id.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_backlog to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwcm_ctl_table_hdr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwcm_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cm_event_handler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwcm_ctl_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iw_cm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iwcm_nl_cb_table to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @iwcm_reject_msg(i32 noundef %reason) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 0, %reason
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %sub)
  %cmp = icmp ult i32 %sub, 112
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr [112 x ptr], ptr @iwcm_rej_reason_strs, i32 0, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ @.str, %if.else ], [ %1, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iw_create_cm_id(ptr noundef %device, ptr noundef %cm_handler, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 728) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 8
  %device2 = getelementptr inbounds %struct.iw_cm_id, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %device2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %device, ptr %device2, align 8
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cm_handler, ptr %call7.i.i, align 8
  %context6 = getelementptr inbounds %struct.iw_cm_id, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %context6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %context, ptr %context6, align 4
  %event_handler = getelementptr inbounds %struct.iw_cm_id, ptr %call7.i.i, i32 0, i32 8
  %5 = ptrtoint ptr %event_handler to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cm_event_handler, ptr %event_handler, align 8
  %add_ref = getelementptr inbounds %struct.iw_cm_id, ptr %call7.i.i, i32 0, i32 9
  %6 = ptrtoint ptr %add_ref to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @add_ref, ptr %add_ref, align 4
  %rem_ref = getelementptr inbounds %struct.iw_cm_id, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %rem_ref to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rem_ref, ptr %rem_ref, align 8
  %lock = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @iw_create_cm_id.__key, i16 noundef signext 3) #10
  %refcount = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  %8 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 1, ptr %refcount, align 4
  %connect_wait = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 5
  tail call void @__init_waitqueue_head(ptr noundef %connect_wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @iw_create_cm_id.__key.2) #10
  %destroy_comp = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %destroy_comp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %destroy_comp, align 4
  %wait.i = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #10
  %work_list = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %work_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %work_list, ptr %work_list, align 8
  %prev.i = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %work_list, ptr %prev.i, align 4
  %work_free_list = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %work_free_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %work_free_list, ptr %work_free_list, align 8
  %prev.i29 = getelementptr inbounds %struct.iwcm_id_private, ptr %call7.i.i, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %work_free_list, ptr %prev.i29, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %if.end ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cm_event_handler(ptr noundef %cm_id, ptr nocapture noundef readonly %iw_event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %work_free_list.i = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 9
  %0 = ptrtoint ptr %work_free_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %work_free_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %work_free_list.i
  br i1 %cmp.i.not.i, label %entry.out_crit_edge, label %if.end.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -332
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.get_work.exit_crit_edge

if.end.i.get_work.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_work.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %get_work.exit

get_work.exit:                                    ; preds = %if.end.i.i.i, %if.end.i.get_work.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i.i = getelementptr %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %get_work.exit.out_crit_edge, label %do.body7

get_work.exit.out_crit_edge:                      ; preds = %get_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body7:                                         ; preds = %get_work.exit
  tail call void @__init_work(ptr noundef nonnull %add.ptr.i, i32 noundef 0) #10
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %add.ptr.i, align 4
  %lockdep_map = getelementptr i8, ptr %1, i32 -316
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @cm_event_handler.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry12 = getelementptr i8, ptr %1, i32 -328
  %11 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr i8, ptr %1, i32 -324
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr i8, ptr %1, i32 -320
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @cm_work_handler, ptr %func, align 4
  %cm_id16 = getelementptr i8, ptr %1, i32 -288
  %14 = ptrtoint ptr %cm_id16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cm_id, ptr %cm_id16, align 4
  %event = getelementptr i8, ptr %1, i32 -276
  %15 = call ptr @memcpy(ptr %event, ptr %iw_event, i32 276)
  %16 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event, align 4
  %.off = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true, label %do.body7.if.end34_crit_edge

do.body7.if.end34_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true:                                    ; preds = %do.body7
  %private_data_len = getelementptr i8, ptr %1, i32 -4
  %18 = ptrtoint ptr %private_data_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %private_data_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool27.not, label %land.lhs.true.if.end34_crit_edge, label %if.then28

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then28:                                        ; preds = %land.lhs.true
  %private_data.i = getelementptr i8, ptr %1, i32 -12
  %20 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private_data.i, align 4
  %22 = ptrtoint ptr %private_data_len to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %private_data_len, align 4
  %conv.i = zext i8 %23 to i32
  %call.i = tail call ptr @kmemdup(ptr noundef %21, i32 noundef %conv.i, i32 noundef 2592) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then32, label %copy_private_data.exit.thread

copy_private_data.exit.thread:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %private_data.i, align 4
  br label %if.end34

if.then32:                                        ; preds = %if.then28
  %25 = ptrtoint ptr %cm_id16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cm_id16, align 4
  %work_free_list.i70 = getelementptr inbounds %struct.iwcm_id_private, ptr %26, i32 0, i32 9
  %27 = ptrtoint ptr %work_free_list.i70 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %work_free_list.i70, align 4
  %call.i.i.i71 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %work_free_list.i70, ptr noundef %28) #10
  br i1 %call.i.i.i71, label %if.end.i.i.i72, label %if.then32.out_crit_edge

if.then32.out_crit_edge:                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i.i.i72:                                   ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %1, align 4
  %31 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %work_free_list.i70, ptr %prev.i3.i.i, align 4
  %32 = ptrtoint ptr %work_free_list.i70 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %1, ptr %work_free_list.i70, align 4
  br label %out

if.end34:                                         ; preds = %copy_private_data.exit.thread, %land.lhs.true.if.end34_crit_edge, %do.body7.if.end34_crit_edge
  %refcount = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !90
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end34.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !91

if.end34.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end34
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !92

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end34.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end34.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %work_list = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 6
  %35 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not = icmp eq ptr %36, %work_list
  %list = getelementptr i8, ptr %1, i32 -284
  %prev.i74 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i74, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %38, ptr noundef %work_list) #10
  br i1 %cmp.i.not, label %if.then37, label %if.else

if.then37:                                        ; preds = %refcount_inc.exit
  br i1 %call.i.i, label %if.end.i.i, label %if.then37.list_add_tail.exit_crit_edge

if.then37.list_add_tail.exit_crit_edge:           ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list, ptr %prev.i74, align 4
  %40 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %work_list, ptr %list, align 4
  %prev3.i.i = getelementptr i8, ptr %1, i32 -280
  %41 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %list, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then37.list_add_tail.exit_crit_edge
  %43 = load ptr, ptr @iwcm_wq, align 4
  %call.i75 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %43, ptr noundef nonnull %add.ptr.i) #10
  br label %out

if.else:                                          ; preds = %refcount_inc.exit
  br i1 %call.i.i, label %if.end.i.i79, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i.i79:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %prev.i74 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %list, ptr %prev.i74, align 4
  %45 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %work_list, ptr %list, align 4
  %prev3.i.i78 = getelementptr i8, ptr %1, i32 -280
  %46 = ptrtoint ptr %prev3.i.i78 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %38, ptr %prev3.i.i78, align 4
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %list, ptr %38, align 4
  br label %out

out:                                              ; preds = %if.end.i.i79, %if.else.out_crit_edge, %list_add_tail.exit, %if.end.i.i.i72, %if.then32.out_crit_edge, %get_work.exit.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ 0, %list_add_tail.exit ], [ -12, %get_work.exit.out_crit_edge ], [ -12, %if.then32.out_crit_edge ], [ -12, %if.end.i.i.i72 ], [ 0, %if.else.out_crit_edge ], [ 0, %if.end.i.i79 ], [ -12, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @add_ref(ptr noundef %cm_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !90
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !91

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !92

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #10
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rem_ref(ptr noundef %cm_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @iwcm_deref_id(ptr noundef %cm_id)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iw_cm_disconnect(ptr noundef %cm_id, i32 noundef %abrupt) #2 align 64 {
entry:
  %qp_attr.i68 = alloca %struct.ib_qp_attr, align 8
  %qp_attr.i = alloca %struct.ib_qp_attr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 316) #10
  %flags5 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 2
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags5, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.body17_crit_edge, label %if.end

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body17

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %connect_wait = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 5
  %call675 = call i32 @prepare_to_wait_event(ptr noundef %connect_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags5, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not76 = icmp eq i32 %6, 0
  br i1 %tobool9.not76, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #10
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %connect_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags5, align 4
  %9 = and i32 %8, 4
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %connect_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.body17

do.body17:                                        ; preds = %for.end, %entry.do.body17_crit_edge
  %lock = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 7
  %call20 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %state = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 1
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.body34 [
    i32 4, label %sw.epilog
    i32 1, label %sw.bb31
    i32 5, label %do.body17.sw.epilog.thread_crit_edge
    i32 0, label %do.body17.sw.epilog.thread_crit_edge77
    i32 2, label %do.body17.sw.epilog.thread_crit_edge78
  ]

do.body17.sw.epilog.thread_crit_edge78:           ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

do.body17.sw.epilog.thread_crit_edge77:           ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

do.body17.sw.epilog.thread_crit_edge:             ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

sw.bb31:                                          ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.thread

do.body34:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 346, 0\0A.popsection", ""() #10, !srcloc !93
  unreachable

sw.epilog.thread:                                 ; preds = %sw.bb31, %do.body17.sw.epilog.thread_crit_edge, %do.body17.sw.epilog.thread_crit_edge77, %do.body17.sw.epilog.thread_crit_edge78
  %ret.0.ph = phi i32 [ -22, %sw.bb31 ], [ 0, %do.body17.sw.epilog.thread_crit_edge ], [ 0, %do.body17.sw.epilog.thread_crit_edge77 ], [ 0, %do.body17.sw.epilog.thread_crit_edge78 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #10
  br label %if.end49

sw.epilog:                                        ; preds = %do.body17
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %state, align 4
  %qp26 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 3
  %14 = ptrtoint ptr %qp26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qp26, align 4
  %tobool27.not = icmp eq ptr %15, null
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #10
  br i1 %tobool27.not, label %sw.epilog.if.end49_crit_edge, label %if.then42

sw.epilog.if.end49_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then42:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %abrupt)
  %tobool43.not = icmp eq i32 %abrupt, 0
  br i1 %tobool43.not, label %iwcm_modify_qp_sqd.exit, label %iwcm_modify_qp_err.exit

iwcm_modify_qp_err.exit:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i) #10
  %16 = call ptr @memset(ptr %qp_attr.i, i32 255, i32 216)
  %17 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %qp_attr.i, align 8
  %call.i = call i32 @ib_modify_qp(ptr noundef nonnull %15, ptr noundef nonnull %qp_attr.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #10
  br label %if.end49

iwcm_modify_qp_sqd.exit:                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i68) #10
  %18 = call ptr @memset(ptr %qp_attr.i68, i32 255, i32 216)
  %19 = ptrtoint ptr %qp_attr.i68 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %qp_attr.i68, align 8
  %call.i69 = call i32 @ib_modify_qp(ptr noundef nonnull %15, ptr noundef nonnull %qp_attr.i68, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i68) #10
  br label %if.end49

if.end49:                                         ; preds = %iwcm_modify_qp_sqd.exit, %iwcm_modify_qp_err.exit, %sw.epilog.if.end49_crit_edge, %sw.epilog.thread
  %ret.1 = phi i32 [ -22, %sw.epilog.if.end49_crit_edge ], [ 0, %iwcm_modify_qp_sqd.exit ], [ 0, %iwcm_modify_qp_err.exit ], [ %ret.0.ph, %sw.epilog.thread ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iw_destroy_cm_id(ptr noundef %cm_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @destroy_cm_id(ptr noundef %cm_id)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @destroy_cm_id(ptr noundef %cm_id) unnamed_addr #2 align 64 {
entry:
  %qp_attr.i = alloca %struct.ib_qp_attr, align 8
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 385) #10
  %flags5 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 2
  %0 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags5, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end15_crit_edge, label %if.end

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %connect_wait = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 5
  %call6142 = call i32 @prepare_to_wait_event(ptr noundef %connect_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %4 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags5, align 4
  %6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not143 = icmp eq i32 %6, 0
  br i1 %tobool9.not143, label %if.end.for.end_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #10
  %call6 = call i32 @prepare_to_wait_event(ptr noundef %connect_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #10
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags5, align 4
  %9 = and i32 %8, 4
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %connect_wait, ptr noundef nonnull %__wq_entry) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %do.end15

do.end15:                                         ; preds = %for.end, %entry.do.end15_crit_edge
  call void @_set_bit(i32 noundef 1, ptr noundef %flags5) #10
  %lock = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 7
  %call21 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %qp26 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 3
  %10 = ptrtoint ptr %qp26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qp26, align 4
  store ptr null, ptr %qp26, align 4
  %state = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 1
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %13, label %do.body86 [
    i32 1, label %sw.bb
    i32 4, label %sw.bb45
    i32 0, label %do.end15.sw.bb63_crit_edge
    i32 5, label %do.end15.sw.bb63_crit_edge144
    i32 2, label %sw.bb65
  ]

do.end15.sw.bb63_crit_edge144:                    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

do.end15.sw.bb63_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb63

sw.bb:                                            ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %state, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #10
  %device = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 2
  %16 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device, align 4
  %iw_destroy_listen = getelementptr inbounds %struct.ib_device, ptr %17, i32 0, i32 1, i32 112
  %18 = ptrtoint ptr %iw_destroy_listen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iw_destroy_listen, align 4
  %call30 = call i32 %19(ptr noundef %cm_id) #10
  %call40 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %sw.epilog

sw.bb45:                                          ; preds = %do.end15
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %state, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #10
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i) #10
  %21 = call ptr @memset(ptr %qp_attr.i, i32 255, i32 216)
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %sw.bb45.iwcm_modify_qp_err.exit_crit_edge, label %if.end.i

sw.bb45.iwcm_modify_qp_err.exit_crit_edge:        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwcm_modify_qp_err.exit

if.end.i:                                         ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 6, ptr %qp_attr.i, align 8
  %call.i = call i32 @ib_modify_qp(ptr noundef nonnull %11, ptr noundef nonnull %qp_attr.i, i32 noundef 1) #10
  br label %iwcm_modify_qp_err.exit

iwcm_modify_qp_err.exit:                          ; preds = %if.end.i, %sw.bb45.iwcm_modify_qp_err.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #10
  %call58 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %sw.epilog

sw.bb63:                                          ; preds = %do.end15.sw.bb63_crit_edge, %do.end15.sw.bb63_crit_edge144
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %state, align 4
  br label %sw.epilog

sw.bb65:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 6, ptr %state, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #10
  %device68 = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 2
  %25 = ptrtoint ptr %device68 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device68, align 4
  %iw_reject = getelementptr inbounds %struct.ib_device, ptr %26, i32 0, i32 1, i32 110
  %27 = ptrtoint ptr %iw_reject to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iw_reject, align 4
  %call70 = call i32 %28(ptr noundef %cm_id, ptr noundef null, i8 noundef zeroext 0) #10
  %call80 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %sw.epilog

do.body86:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 431, 0\0A.popsection", ""() #10, !srcloc !94
  unreachable

sw.epilog:                                        ; preds = %sw.bb65, %sw.bb63, %iwcm_modify_qp_err.exit, %sw.bb
  %flags.0 = phi i32 [ %call80, %sw.bb65 ], [ %call21, %sw.bb63 ], [ %call58, %iwcm_modify_qp_err.exit ], [ %call40, %sw.bb ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #10
  %tobool93.not = icmp eq ptr %11, null
  br i1 %tobool93.not, label %sw.epilog.if.end97_crit_edge, label %if.then94

sw.epilog.if.end97_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end97

if.then94:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %device95 = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 2
  %29 = ptrtoint ptr %device95 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device95, align 4
  %iw_rem_ref = getelementptr inbounds %struct.ib_device, ptr %30, i32 0, i32 1, i32 106
  %31 = ptrtoint ptr %iw_rem_ref to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iw_rem_ref, align 4
  call void %32(ptr noundef nonnull %11) #10
  br label %if.end97

if.end97:                                         ; preds = %if.then94, %sw.epilog.if.end97_crit_edge
  %mapped = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 12
  %33 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %mapped, align 1
  %34 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %bf.cast.not = icmp eq i8 %34, 0
  br i1 %bf.cast.not, label %if.end97.if.end102_crit_edge, label %if.then98

if.end97.if.end102_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

if.then98:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #12
  %local_addr = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 3
  %m_local_addr = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 5
  %call99 = call i32 @iwpm_remove_mapinfo(ptr noundef %local_addr, ptr noundef %m_local_addr) #10
  %call101 = call i32 @iwpm_remove_mapping(ptr noundef %local_addr, i8 noundef zeroext 2) #10
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %if.end97.if.end102_crit_edge
  %call103 = call fastcc i32 @iwcm_deref_id(ptr noundef %cm_id)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iw_cm_listen(ptr noundef %cm_id, i32 noundef %backlog) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %backlog)
  %tobool.not = icmp eq i32 %backlog, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @default_backlog, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %backlog.addr.0 = phi i32 [ %backlog, %entry.if.end_crit_edge ], [ %0, %if.then ]
  %call = tail call fastcc i32 @alloc_work_entries(ptr noundef %cm_id, i32 noundef %backlog.addr.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %do.body4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 7
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %state = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 1
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cond = icmp eq i32 %2, 0
  br i1 %cond, label %sw.bb, label %do.body4.sw.epilog_crit_edge

do.body4.sw.epilog_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  %call12 = tail call fastcc i32 @iw_cm_map(ptr noundef %cm_id, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %sw.bb.if.then18_crit_edge

sw.bb.if.then18_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.end16:                                         ; preds = %sw.bb
  %device = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 2
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %iw_create_listen = getelementptr inbounds %struct.ib_device, ptr %5, i32 0, i32 1, i32 111
  %6 = ptrtoint ptr %iw_create_listen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iw_create_listen, align 4
  %call15 = tail call i32 %7(ptr noundef %cm_id, i32 noundef %backlog.addr.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool17.not = icmp eq i32 %call15, 0
  br i1 %tobool17.not, label %if.end16.do.body22_crit_edge, label %if.end16.if.then18_crit_edge

if.end16.if.then18_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then18

if.end16.do.body22_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body22

if.then18:                                        ; preds = %if.end16.if.then18_crit_edge, %sw.bb.if.then18_crit_edge
  %ret.057 = phi i32 [ %call15, %if.end16.if.then18_crit_edge ], [ %call12, %sw.bb.if.then18_crit_edge ]
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %state, align 4
  br label %do.body22

do.body22:                                        ; preds = %if.then18, %if.end16.do.body22_crit_edge
  %ret.058 = phi i32 [ %ret.057, %if.then18 ], [ 0, %if.end16.do.body22_crit_edge ]
  %call30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body22, %do.body4.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %ret.058, %do.body22 ], [ -22, %do.body4.sw.epilog_crit_edge ]
  %flags.0 = phi i32 [ %call30, %do.body22 ], [ %call7, %do.body4.sw.epilog_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %sw.epilog ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @alloc_work_entries(ptr noundef %cm_id_priv, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %work_free_list = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id_priv, i32 0, i32 9
  %0 = ptrtoint ptr %work_free_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %work_free_list, align 4
  %cmp.i.not = icmp eq ptr %1, %work_free_list
  br i1 %cmp.i.not, label %while.cond.preheader, label %do.body4, !prof !92

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool10.not25 = icmp eq i32 %count, 0
  br i1 %tobool10.not25, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 172, 0\0A.popsection", ""() #10, !srcloc !95
  unreachable

while.body:                                       ; preds = %put_work.exit.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec26.in = phi i32 [ %dec26, %put_work.exit.while.body_crit_edge ], [ %count, %while.cond.preheader.while.body_crit_edge ]
  %dec26 = add i32 %dec26.in, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 340) #13
  %tobool12.not = icmp eq ptr %call7.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %while.body
  %3 = ptrtoint ptr %work_free_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %work_free_list, align 4
  %cmp.i.not11.i = icmp eq ptr %4, %work_free_list
  br i1 %cmp.i.not11.i, label %if.then13.cleanup_crit_edge, label %if.then13.for.body.i_crit_edge

if.then13.for.body.i_crit_edge:                   ; preds = %if.then13
  br label %for.body.i

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then13.for.body.i_crit_edge
  %e.012.i = phi ptr [ %tmp.014.i, %list_del.exit.i.for.body.i_crit_edge ], [ %4, %if.then13.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %e.012.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.014.i = load ptr, ptr %e.012.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.012.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.012.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %e.012.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %e.012.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %e.012.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %e.012.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %e.012.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %e.012.i, i32 -332
  tail call void @kfree(ptr noundef %add.ptr.i) #10
  %cmp.i.not.i = icmp eq ptr %tmp.014.i, %work_free_list
  br i1 %cmp.i.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %cm_id = getelementptr inbounds %struct.iwcm_work, ptr %call7.i, i32 0, i32 1
  %14 = ptrtoint ptr %cm_id to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cm_id_priv, ptr %cm_id, align 4
  %list = getelementptr inbounds %struct.iwcm_work, ptr %call7.i, i32 0, i32 2
  %15 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.iwcm_work, ptr %call7.i, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev.i, align 4
  %free_list.i = getelementptr inbounds %struct.iwcm_work, ptr %call7.i, i32 0, i32 4
  %17 = ptrtoint ptr %work_free_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %work_free_list, align 4
  %call.i.i.i21 = tail call zeroext i1 @__list_add_valid(ptr noundef %free_list.i, ptr noundef %work_free_list, ptr noundef %18) #10
  br i1 %call.i.i.i21, label %if.end.i.i.i22, label %if.end14.put_work.exit_crit_edge

if.end14.put_work.exit_crit_edge:                 ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_work.exit

if.end.i.i.i22:                                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %free_list.i, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %free_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.iwcm_work, ptr %call7.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %work_free_list, ptr %prev3.i.i.i, align 8
  %22 = ptrtoint ptr %work_free_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %free_list.i, ptr %work_free_list, align 4
  br label %put_work.exit

put_work.exit:                                    ; preds = %if.end.i.i.i22, %if.end14.put_work.exit_crit_edge
  %tobool10.not = icmp eq i32 %dec26, 0
  br i1 %tobool10.not, label %put_work.exit.cleanup_crit_edge, label %put_work.exit.while.body_crit_edge

put_work.exit.while.body_crit_edge:               ; preds = %put_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

put_work.exit.cleanup_crit_edge:                  ; preds = %put_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %put_work.exit.cleanup_crit_edge, %list_del.exit.i.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then13.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ -12, %list_del.exit.i.cleanup_crit_edge ], [ 0, %put_work.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iw_cm_map(ptr noundef %cm_id, i1 noundef zeroext %active) unnamed_addr #2 align 64 {
entry:
  %pm_reg_msg = alloca %struct.iwpm_dev_data, align 1
  %pm_msg = alloca %struct.iwpm_sa_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13, i32 0, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %iw_ifname = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 36
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %pm_reg_msg) #10
  %7 = call ptr @memset(ptr %pm_reg_msg, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 516, ptr nonnull %pm_msg) #10
  %8 = getelementptr inbounds i8, ptr %pm_msg, i32 128
  %9 = call ptr @memset(ptr %8, i32 255, i32 384)
  %call2 = tail call i32 @strlen(ptr noundef %retval.0.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %call2)
  %cmp = icmp ugt i32 %call2, 31
  br i1 %cmp, label %dev_name.exit.cleanup_crit_edge, label %lor.lhs.false

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %dev_name.exit
  %call3 = tail call i32 @strlen(ptr noundef %iw_ifname) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call3)
  %cmp4 = icmp ugt i32 %call3, 15
  br i1 %cmp4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %m_local_addr = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 5
  %local_addr = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %m_local_addr, ptr %local_addr, i32 128)
  %m_remote_addr = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 6
  %remote_addr = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 4
  %11 = call ptr @memcpy(ptr %m_remote_addr, ptr %remote_addr, i32 128)
  %call6 = call ptr @strcpy(ptr noundef nonnull %pm_reg_msg, ptr noundef %retval.0.i) #14
  %if_name = getelementptr inbounds %struct.iwpm_dev_data, ptr %pm_reg_msg, i32 0, i32 1
  %call8 = call ptr @strcpy(ptr noundef %if_name, ptr noundef %iw_ifname) #14
  %call9 = call i32 @iwpm_register_pid(ptr noundef nonnull %pm_reg_msg, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %lor.lhs.false10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false10:                                  ; preds = %if.end
  %call11 = call i32 @iwpm_valid_pid() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false10.cleanup_crit_edge, label %if.end14

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false10
  %mapped = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 12
  %12 = ptrtoint ptr %mapped to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %mapped, align 1
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mapped, align 1
  %13 = call ptr @memcpy(ptr %pm_msg, ptr %local_addr, i32 128)
  %rem_addr = getelementptr inbounds %struct.iwpm_sa_data, ptr %pm_msg, i32 0, i32 2
  %14 = call ptr @memcpy(ptr %rem_addr, ptr %remote_addr, i32 128)
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %iw_driver_flags = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 37
  %17 = ptrtoint ptr %iw_driver_flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %iw_driver_flags, align 4
  %and = and i32 %18, 1
  %flags = getelementptr inbounds %struct.iwpm_sa_data, ptr %pm_msg, i32 0, i32 4
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %flags, align 4
  br i1 %active, label %if.end23, label %if.end23.thread

if.end23:                                         ; preds = %if.end14
  %call21 = call i32 @iwpm_add_and_query_mapping(ptr noundef nonnull %pm_msg, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool24.not = icmp eq i32 %call21, 0
  br i1 %tobool24.not, label %if.then28, label %if.end23.if.end34_crit_edge

if.end23.if.end34_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.end23.thread:                                  ; preds = %if.end14
  %call22 = call i32 @iwpm_add_mapping(ptr noundef nonnull %pm_msg, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool24.not62 = icmp eq i32 %call22, 0
  br i1 %tobool24.not62, label %if.then25.thread, label %if.end23.thread.if.end34_crit_edge

if.end23.thread.if.end34_crit_edge:               ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then25.thread:                                 ; preds = %if.end23.thread
  call void @__sanitizer_cov_trace_pc() #12
  %mapped_loc_addr63 = getelementptr inbounds %struct.iwpm_sa_data, ptr %pm_msg, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %m_local_addr, ptr %mapped_loc_addr63, i32 128)
  br label %if.end34

if.then28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %mapped_loc_addr = getelementptr inbounds %struct.iwpm_sa_data, ptr %pm_msg, i32 0, i32 1
  %21 = call ptr @memcpy(ptr %m_local_addr, ptr %mapped_loc_addr, i32 128)
  %mapped_rem_addr = getelementptr inbounds %struct.iwpm_sa_data, ptr %pm_msg, i32 0, i32 3
  %22 = call ptr @memcpy(ptr %m_remote_addr, ptr %mapped_rem_addr, i32 128)
  call fastcc void @iw_cm_check_wildcard(ptr noundef %mapped_rem_addr, ptr noundef %remote_addr, ptr noundef %m_remote_addr)
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.then25.thread, %if.end23.thread.if.end34_crit_edge, %if.end23.if.end34_crit_edge
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %call38 = call i32 @iwpm_create_mapinfo(ptr noundef %local_addr, ptr noundef %m_local_addr, i8 noundef zeroext 2, i32 noundef %24) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %lor.lhs.false10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %if.end34 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %dev_name.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false10.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 516, ptr nonnull %pm_msg) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %pm_reg_msg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iw_cm_reject(ptr noundef %cm_id, ptr noundef %private_data, i8 noundef zeroext %private_data_len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags1) #10
  %lock = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %state = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp7.not = icmp eq i32 %1, 2
  br i1 %cmp7.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %device = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 2
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %iw_reject = getelementptr inbounds %struct.ib_device, ptr %4, i32 0, i32 1, i32 110
  %5 = ptrtoint ptr %iw_reject to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iw_reject, align 4
  %call13 = tail call i32 %6(ptr noundef %cm_id, ptr noundef %private_data, i8 noundef zeroext %private_data_len) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call13, %if.end ]
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags1) #10
  %connect_wait15 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %connect_wait15, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iw_cm_accept(ptr noundef %cm_id, ptr noundef %iw_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags1) #10
  %lock = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %state = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp7.not = icmp eq i32 %1, 2
  br i1 %cmp7.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %device = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %iw_get_qp = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 107
  %4 = ptrtoint ptr %iw_get_qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iw_get_qp, align 4
  %qpn = getelementptr inbounds %struct.iw_cm_conn_param, ptr %iw_param, i32 0, i32 4
  %6 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qpn, align 4
  %call12 = tail call ptr %5(ptr noundef %3, i32 noundef %7) #10
  %tobool.not = icmp eq ptr %call12, null
  br i1 %tobool.not, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %iw_add_ref = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 1, i32 105
  %10 = ptrtoint ptr %iw_add_ref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iw_add_ref, align 4
  tail call void %11(ptr noundef nonnull %call12) #10
  %qp20 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 3
  %12 = ptrtoint ptr %qp20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call12, ptr %qp20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #10
  %13 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device, align 4
  %iw_accept = getelementptr inbounds %struct.ib_device, ptr %14, i32 0, i32 1, i32 109
  %15 = ptrtoint ptr %iw_accept to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iw_accept, align 4
  %call24 = tail call i32 %16(ptr noundef %cm_id, ptr noundef %iw_param) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end17.cleanup_crit_edge, label %do.body27

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body27:                                        ; preds = %if.end17
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp29.not = icmp eq i32 %18, 2
  br i1 %cmp29.not, label %do.end42, label %do.body34, !prof !92

do.body34:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 674, 0\0A.popsection", ""() #10, !srcloc !96
  unreachable

do.end42:                                         ; preds = %do.body27
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %state, align 4
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %20 = ptrtoint ptr %qp20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qp20, align 4
  store ptr null, ptr %qp20, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call53) #10
  %tobool61.not = icmp eq ptr %21, null
  br i1 %tobool61.not, label %do.end42.cleanup.sink.split_crit_edge, label %if.then62

do.end42.cleanup.sink.split_crit_edge:            ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then62:                                        ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device, align 4
  %iw_rem_ref = getelementptr inbounds %struct.ib_device, ptr %23, i32 0, i32 1, i32 106
  %24 = ptrtoint ptr %iw_rem_ref to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iw_rem_ref, align 4
  tail call void %25(ptr noundef nonnull %21) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then62, %do.end42.cleanup.sink.split_crit_edge, %if.then13, %if.then
  %retval.0.ph = phi i32 [ -22, %if.then13 ], [ -22, %if.then ], [ %call24, %if.then62 ], [ %call24, %do.end42.cleanup.sink.split_crit_edge ]
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags1) #10
  %connect_wait67 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %connect_wait67, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end17.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end17.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iw_cm_connect(ptr noundef %cm_id, ptr noundef %iw_param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @alloc_work_entries(ptr noundef %cm_id, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags1 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 2
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags1) #10
  %lock = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %state = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8.not = icmp eq i32 %1, 0
  br i1 %cmp8.not, label %if.end11, label %if.end.err.thread_crit_edge

if.end.err.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.thread

if.end11:                                         ; preds = %if.end
  %device = getelementptr inbounds %struct.iw_cm_id, ptr %cm_id, i32 0, i32 2
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %iw_get_qp = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 107
  %4 = ptrtoint ptr %iw_get_qp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iw_get_qp, align 4
  %qpn = getelementptr inbounds %struct.iw_cm_conn_param, ptr %iw_param, i32 0, i32 4
  %6 = ptrtoint ptr %qpn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qpn, align 4
  %call13 = tail call ptr %5(ptr noundef %3, i32 noundef %7) #10
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end11.err.thread_crit_edge, label %if.end16

if.end11.err.thread_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %err.thread

if.end16:                                         ; preds = %if.end11
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  %iw_add_ref = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 1, i32 105
  %10 = ptrtoint ptr %iw_add_ref to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iw_add_ref, align 4
  tail call void %11(ptr noundef nonnull %call13) #10
  %qp19 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 3
  %12 = ptrtoint ptr %qp19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call13, ptr %qp19, align 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  %call22 = tail call fastcc i32 @iw_cm_map(ptr noundef %cm_id, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end28, label %if.end16.err_crit_edge

if.end16.err_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end28:                                         ; preds = %if.end16
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %iw_connect = getelementptr inbounds %struct.ib_device, ptr %15, i32 0, i32 1, i32 108
  %16 = ptrtoint ptr %iw_connect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iw_connect, align 4
  %call27 = tail call i32 %17(ptr noundef %cm_id, ptr noundef %iw_param) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.end28.err_crit_edge

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err.thread:                                       ; preds = %if.end11.err.thread_crit_edge, %if.end.err.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  br label %if.end54

err:                                              ; preds = %if.end28.err_crit_edge, %if.end16.err_crit_edge
  %ret.091 = phi i32 [ %call27, %if.end28.err_crit_edge ], [ %call22, %if.end16.err_crit_edge ]
  %call41 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %18 = ptrtoint ptr %qp19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qp19, align 4
  store ptr null, ptr %qp19, align 4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call41) #10
  %tobool50.not = icmp eq ptr %19, null
  br i1 %tobool50.not, label %err.if.end54_crit_edge, label %if.then51

err.if.end54_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then51:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %device, align 4
  %iw_rem_ref = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 1, i32 106
  %23 = ptrtoint ptr %iw_rem_ref to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iw_rem_ref, align 4
  tail call void %24(ptr noundef nonnull %19) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %err.if.end54_crit_edge, %err.thread
  %ret.196 = phi i32 [ -22, %err.thread ], [ %ret.091, %if.then51 ], [ %ret.091, %err.if.end54_crit_edge ]
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %flags1) #10
  %connect_wait = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 5
  tail call void @__wake_up(ptr noundef %connect_wait, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end28.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.196, %if.end54 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iw_cm_init_qp_attr(ptr noundef %cm_id, ptr nocapture noundef %qp_attr, ptr nocapture noundef writeonly %qp_attr_mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp_attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %qp_attr, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge12
    i32 3, label %sw.bb1
  ]

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge12
  %lock.i = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 7
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %state.i = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 1
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %4, label %sw.bb.iwcm_init_qp_init_attr.exit_crit_edge [
    i32 0, label %sw.bb.sw.bb.i_crit_edge
    i32 3, label %sw.bb.sw.bb.i_crit_edge13
    i32 2, label %sw.bb.sw.bb.i_crit_edge14
    i32 4, label %sw.bb.sw.bb.i_crit_edge15
  ]

sw.bb.sw.bb.i_crit_edge15:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge14:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge13:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.sw.bb.i_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.iwcm_init_qp_init_attr.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwcm_init_qp_init_attr.exit

sw.bb.i:                                          ; preds = %sw.bb.sw.bb.i_crit_edge, %sw.bb.sw.bb.i_crit_edge13, %sw.bb.sw.bb.i_crit_edge14, %sw.bb.sw.bb.i_crit_edge15
  %6 = ptrtoint ptr %qp_attr_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9, ptr %qp_attr_mask, align 4
  %qp_access_flags.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 8
  %7 = ptrtoint ptr %qp_access_flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %qp_access_flags.i, align 8
  br label %iwcm_init_qp_init_attr.exit

iwcm_init_qp_init_attr.exit:                      ; preds = %sw.bb.i, %sw.bb.iwcm_init_qp_init_attr.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %sw.bb.i ], [ -22, %sw.bb.iwcm_init_qp_init_attr.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %lock.i7 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 7
  %call2.i8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i7) #10
  %state.i9 = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id, i32 0, i32 1
  %8 = ptrtoint ptr %state.i9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i9, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %9, label %sw.bb1.iwcm_init_qp_rts_attr.exit_crit_edge [
    i32 0, label %sw.bb1.sw.bb.i10_crit_edge
    i32 3, label %sw.bb1.sw.bb.i10_crit_edge16
    i32 2, label %sw.bb1.sw.bb.i10_crit_edge17
    i32 4, label %sw.bb1.sw.bb.i10_crit_edge18
  ]

sw.bb1.sw.bb.i10_crit_edge18:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge17:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge16:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i10

sw.bb1.iwcm_init_qp_rts_attr.exit_crit_edge:      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %iwcm_init_qp_rts_attr.exit

sw.bb.i10:                                        ; preds = %sw.bb1.sw.bb.i10_crit_edge, %sw.bb1.sw.bb.i10_crit_edge16, %sw.bb1.sw.bb.i10_crit_edge17, %sw.bb1.sw.bb.i10_crit_edge18
  %11 = ptrtoint ptr %qp_attr_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %qp_attr_mask, align 4
  br label %iwcm_init_qp_rts_attr.exit

iwcm_init_qp_rts_attr.exit:                       ; preds = %sw.bb.i10, %sw.bb1.iwcm_init_qp_rts_attr.exit_crit_edge
  %ret.0.i11 = phi i32 [ 0, %sw.bb.i10 ], [ -22, %sw.bb1.iwcm_init_qp_rts_attr.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i7, i32 noundef %call2.i8) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %iwcm_init_qp_rts_attr.exit, %iwcm_init_qp_init_attr.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %ret.0.i11, %iwcm_init_qp_rts_attr.exit ], [ %ret.0.i, %iwcm_init_qp_init_attr.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iw_cm_cleanup() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rdma_nl_unregister(i32 noundef 2) #10
  %0 = load ptr, ptr @iwcm_ctl_table_hdr, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #10
  %1 = load ptr, ptr @iwcm_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %1) #10
  %call = tail call i32 @iwpm_exit(i8 noundef zeroext 2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_nl_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_exit(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iw_cm_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @iwpm_init(i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.13, i32 noundef 655362, i32 noundef 1) #10
  store ptr %call1, ptr @iwcm_wq, align 4
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.err_alloc_crit_edge, label %if.end4

if.end.err_alloc_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.14, ptr noundef nonnull @iwcm_ctl_table) #10
  store ptr %call5, ptr @iwcm_ctl_table_hdr, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #15
  %0 = load ptr, ptr @iwcm_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #10
  br label %err_alloc

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rdma_nl_register(i32 noundef 2, ptr noundef nonnull @iwcm_nl_cb_table) #10
  br label %cleanup

err_alloc:                                        ; preds = %do.end, %if.end.err_alloc_crit_edge
  %call10 = tail call i32 @iwpm_exit(i8 noundef zeroext 2) #10
  br label %cleanup

cleanup:                                          ; preds = %err_alloc, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -12, %err_alloc ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iwcm_deref_id(ptr noundef %cm_id_priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id_priv, i32 0, i32 8
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #10, !srcloc !98
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %do.body, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.return_crit_edge, label %if.then10.i.i.i, !prof !92

if.end5.i.i.i.return_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #10
  br label %return

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !99
  %work_list = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id_priv, i32 0, i32 6
  %1 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not = icmp eq ptr %2, %work_list
  br i1 %cmp.i.not, label %do.end9, label %do.body6, !prof !92

do.body6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 215, 0\0A.popsection", ""() #10, !srcloc !100
  unreachable

do.end9:                                          ; preds = %do.body
  %work_free_list.i.i = getelementptr inbounds %struct.iwcm_id_private, ptr %cm_id_priv, i32 0, i32 9
  %3 = ptrtoint ptr %work_free_list.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %work_free_list.i.i, align 4
  %cmp.i.not11.i.i = icmp eq ptr %4, %work_free_list.i.i
  br i1 %cmp.i.not11.i.i, label %do.end9.free_cm_id.exit_crit_edge, label %do.end9.for.body.i.i_crit_edge

do.end9.for.body.i.i_crit_edge:                   ; preds = %do.end9
  br label %for.body.i.i

do.end9.free_cm_id.exit_crit_edge:                ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cm_id.exit

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %do.end9.for.body.i.i_crit_edge
  %e.012.i.i = phi ptr [ %tmp.014.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ], [ %4, %do.end9.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %e.012.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp.014.i.i = load ptr, ptr %e.012.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %e.012.i.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.012.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i.i, align 4
  %8 = ptrtoint ptr %e.012.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %e.012.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %12 = ptrtoint ptr %e.012.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %e.012.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %e.012.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %e.012.i.i, i32 -332
  tail call void @kfree(ptr noundef %add.ptr.i.i) #10
  %cmp.i.not.i.i = icmp eq ptr %tmp.014.i.i, %work_free_list.i.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.free_cm_id.exit_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

list_del.exit.i.i.free_cm_id.exit_crit_edge:      ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_cm_id.exit

free_cm_id.exit:                                  ; preds = %list_del.exit.i.i.free_cm_id.exit_crit_edge, %do.end9.free_cm_id.exit_crit_edge
  tail call void @kfree(ptr noundef %cm_id_priv) #10
  br label %return

return:                                           ; preds = %free_cm_id.exit, %if.then10.i.i.i, %if.end5.i.i.i.return_crit_edge
  %retval.0 = phi i32 [ 1, %free_cm_id.exit ], [ 0, %if.end5.i.i.i.return_crit_edge ], [ 0, %if.then10.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_remove_mapinfo(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_remove_mapping(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_register_pid(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_valid_pid() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_add_and_query_mapping(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_add_mapping(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iw_cm_check_wildcard(ptr noundef %pm_addr, ptr nocapture noundef readonly %cm_addr, ptr nocapture noundef writeonly %cm_outaddr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pm_addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pm_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %1)
  %cmp = icmp eq i16 %1, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sin_addr = getelementptr inbounds %struct.sockaddr_in, ptr %pm_addr, i32 0, i32 2
  %2 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sin_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then4, label %if.then.if.end13_crit_edge

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr5 = getelementptr inbounds %struct.sockaddr_in, ptr %cm_outaddr, i32 0, i32 2
  %sin_addr6 = getelementptr inbounds %struct.sockaddr_in, ptr %cm_addr, i32 0, i32 2
  %4 = ptrtoint ptr %sin_addr6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sin_addr6, align 4
  %6 = ptrtoint ptr %sin_addr5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %sin_addr5, align 4
  br label %if.end13

if.else:                                          ; preds = %entry
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %pm_addr, i32 0, i32 3
  %call.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr) #10
  %and.i = and i32 %call.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp7 = icmp eq i32 %and.i, 0
  br i1 %cmp7, label %if.then9, label %if.else.if.end13_crit_edge

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr10 = getelementptr inbounds %struct.sockaddr_in6, ptr %cm_outaddr, i32 0, i32 3
  %sin6_addr11 = getelementptr inbounds %struct.sockaddr_in6, ptr %cm_addr, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %sin6_addr10, ptr %sin6_addr11, i32 16)
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.else.if.end13_crit_edge, %if.then4, %if.then.if.end13_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_create_mapinfo(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cm_work_handler(ptr nocapture noundef readonly %_work) #2 align 64 {
entry:
  %levent = alloca %struct.iw_cm_event, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 276, ptr nonnull %levent) #10
  %0 = call ptr @memset(ptr %levent, i32 255, i32 276)
  %cm_id = getelementptr inbounds %struct.iwcm_work, ptr %_work, i32 0, i32 1
  %1 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cm_id, align 4
  %lock = getelementptr inbounds %struct.iwcm_id_private, ptr %2, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %work_list = getelementptr inbounds %struct.iwcm_id_private, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %work_list, align 4
  %cmp.i.not = icmp eq ptr %4, %work_list
  br i1 %cmp.i.not, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %flags14 = getelementptr inbounds %struct.iwcm_id_private, ptr %2, i32 0, i32 2
  %qp5.i.i = getelementptr inbounds %struct.iwcm_id_private, ptr %2, i32 0, i32 3
  %state.i43.i = getelementptr inbounds %struct.iwcm_id_private, ptr %2, i32 0, i32 1
  %device.i45.i = getelementptr inbounds %struct.iw_cm_id, ptr %2, i32 0, i32 2
  %connect_wait.i36.i = getelementptr inbounds %struct.iwcm_id_private, ptr %2, i32 0, i32 5
  %status.i21.i = getelementptr inbounds %struct.iw_cm_event, ptr %levent, i32 0, i32 1
  %m_local_addr.i22.i = getelementptr inbounds %struct.iw_cm_id, ptr %2, i32 0, i32 5
  %local_addr.i23.i = getelementptr inbounds %struct.iw_cm_event, ptr %levent, i32 0, i32 2
  %m_remote_addr.i24.i = getelementptr inbounds %struct.iw_cm_id, ptr %2, i32 0, i32 6
  %remote_addr.i25.i = getelementptr inbounds %struct.iw_cm_event, ptr %levent, i32 0, i32 3
  %local_addr24.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %2, i32 0, i32 3
  %remote_addr27.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %2, i32 0, i32 4
  %private_data_len.i28.i = getelementptr inbounds %struct.iw_cm_event, ptr %levent, i32 0, i32 6
  %private_data.i29.i = getelementptr inbounds %struct.iw_cm_event, ptr %levent, i32 0, i32 4
  %context.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %2, i32 0, i32 1
  %provider_data.i.i = getelementptr inbounds %struct.iw_cm_event, ptr %levent, i32 0, i32 5
  %sin6_addr.i.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %2, i32 0, i32 5, i32 0, i32 1, i32 4
  %sin6_addr11.i.i.i = getelementptr inbounds %struct.iw_cm_event, ptr %levent, i32 0, i32 2, i32 0, i32 1, i32 4
  %sin_addr.i.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %2, i32 0, i32 5, i32 0, i32 1
  %sin_addr6.i.i.i = getelementptr inbounds %struct.iw_cm_event, ptr %levent, i32 0, i32 2, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %do.body41, %while.body.lr.ph
  %flags.089 = phi i32 [ %call3, %while.body.lr.ph ], [ %call49, %do.body41 ]
  %5 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %work_list, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del_init.exit_crit_edge

while.body.list_del_init.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %while.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %6, ptr %6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %6, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %work_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %work_list, align 4
  %cmp.i75 = icmp ne ptr %16, %work_list
  %event = getelementptr i8, ptr %6, i32 8
  %17 = call ptr @memcpy(ptr %levent, ptr %event, i32 276)
  %free_list.i = getelementptr i8, ptr %6, i32 284
  %cm_id.i = getelementptr i8, ptr %6, i32 -4
  %18 = ptrtoint ptr %cm_id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cm_id.i, align 4
  %work_free_list.i = getelementptr inbounds %struct.iwcm_id_private, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %work_free_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %work_free_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %free_list.i, ptr noundef %work_free_list.i, ptr noundef %21) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_del_init.exit.put_work.exit_crit_edge

list_del_init.exit.put_work.exit_crit_edge:       ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %put_work.exit

if.end.i.i.i:                                     ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i77 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i77 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %free_list.i, ptr %prev1.i.i.i77, align 4
  %23 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %free_list.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %6, i32 288
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %work_free_list.i, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %work_free_list.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %free_list.i, ptr %work_free_list.i, align 4
  br label %put_work.exit

put_work.exit:                                    ; preds = %if.end.i.i.i, %list_del_init.exit.put_work.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.089) #10
  %26 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %flags14, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not = icmp eq i32 %28, 0
  br i1 %tobool16.not, label %if.then, label %do.body20

if.then:                                          ; preds = %put_work.exit
  %29 = ptrtoint ptr %levent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %levent, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %30, label %do.body.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb2.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb5.i
  ]

sw.bb.i:                                          ; preds = %if.then
  %32 = ptrtoint ptr %status.i21.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i, label %do.end8.i.i, label %do.body3.i.i, !prof !92

do.body3.i.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 776, 0\0A.popsection", ""() #10, !srcloc !101
  unreachable

do.end8.i.i:                                      ; preds = %sw.bb.i
  %34 = ptrtoint ptr %device.i45.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device.i45.i, align 4
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %2, align 4
  %38 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %context.i.i, align 4
  %call.i.i78 = call ptr @iw_create_cm_id(ptr noundef %35, ptr noundef %37, ptr noundef %39) #10
  %cmp.i.i.i = icmp ugt ptr %call.i.i78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %do.end8.i.i.out.i.i_crit_edge, label %if.end13.i.i

do.end8.i.i.out.i.i_crit_edge:                    ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

if.end13.i.i:                                     ; preds = %do.end8.i.i
  %40 = ptrtoint ptr %provider_data.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %provider_data.i.i, align 4
  %provider_data14.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %call.i.i78, i32 0, i32 7
  %42 = ptrtoint ptr %provider_data14.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %provider_data14.i.i, align 4
  %m_local_addr.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %call.i.i78, i32 0, i32 5
  %43 = call ptr @memcpy(ptr %m_local_addr.i.i, ptr %local_addr.i23.i, i32 128)
  %m_remote_addr.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %call.i.i78, i32 0, i32 6
  %44 = call ptr @memcpy(ptr %m_remote_addr.i.i, ptr %remote_addr.i25.i, i32 128)
  %local_addr15.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %call.i.i78, i32 0, i32 3
  %45 = call ptr @memcpy(ptr %local_addr15.i.i, ptr %local_addr24.i.i, i32 128)
  %remote_addr21.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %call.i.i78, i32 0, i32 4
  %call22.i.i = call i32 @iwpm_get_remote_info(ptr noundef %m_local_addr.i22.i, ptr noundef %remote_addr.i25.i, ptr noundef %remote_addr21.i.i, i8 noundef zeroext 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.else.i.i, label %if.then24.i.i

if.then24.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = call ptr @memcpy(ptr %remote_addr21.i.i, ptr %remote_addr.i25.i, i32 128)
  br label %if.end35.i.i

if.else.i.i:                                      ; preds = %if.end13.i.i
  %47 = ptrtoint ptr %m_local_addr.i22.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %m_local_addr.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %48)
  %cmp.i109.i.i = icmp eq i16 %48, 2
  br i1 %cmp.i109.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  %49 = ptrtoint ptr %sin_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sin_addr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp2.i.i.i = icmp eq i32 %50, 0
  br i1 %cmp2.i.i.i, label %if.then4.i.i.i, label %if.then.i.i.i.iw_cm_check_wildcard.exit.i.i_crit_edge

if.then.i.i.i.iw_cm_check_wildcard.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iw_cm_check_wildcard.exit.i.i

if.then4.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr5.i.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %call.i.i78, i32 0, i32 3, i32 0, i32 1
  %51 = ptrtoint ptr %sin_addr6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sin_addr6.i.i.i, align 4
  %53 = ptrtoint ptr %sin_addr5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %sin_addr5.i.i.i, align 4
  br label %iw_cm_check_wildcard.exit.i.i

if.else.i.i.i:                                    ; preds = %if.else.i.i
  %call.i.i.i.i = call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i.i.i) #10
  %and.i.i.i.i = and i32 %call.i.i.i.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp7.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp7.i.i.i, label %if.then9.i.i.i, label %if.else.i.i.i.iw_cm_check_wildcard.exit.i.i_crit_edge

if.else.i.i.i.iw_cm_check_wildcard.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %iw_cm_check_wildcard.exit.i.i

if.then9.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr10.i.i.i = getelementptr inbounds %struct.iw_cm_id, ptr %call.i.i78, i32 0, i32 3, i32 0, i32 1, i32 4
  %54 = call ptr @memcpy(ptr %sin6_addr10.i.i.i, ptr %sin6_addr11.i.i.i, i32 16)
  br label %iw_cm_check_wildcard.exit.i.i

iw_cm_check_wildcard.exit.i.i:                    ; preds = %if.then9.i.i.i, %if.else.i.i.i.iw_cm_check_wildcard.exit.i.i_crit_edge, %if.then4.i.i.i, %if.then.i.i.i.iw_cm_check_wildcard.exit.i.i_crit_edge
  %55 = call ptr @memcpy(ptr %local_addr.i23.i, ptr %local_addr15.i.i, i32 128)
  %56 = call ptr @memcpy(ptr %remote_addr.i25.i, ptr %remote_addr21.i.i, i32 128)
  br label %if.end35.i.i

if.end35.i.i:                                     ; preds = %iw_cm_check_wildcard.exit.i.i, %if.then24.i.i
  %state.i.i = getelementptr inbounds %struct.iwcm_id_private, ptr %call.i.i78, i32 0, i32 1
  %57 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %state.i.i, align 4
  %call40.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %58 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %state.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %59)
  %cmp46.not.i.i = icmp eq i32 %59, 1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call40.i.i) #10
  br i1 %cmp46.not.i.i, label %if.end51.i.i, label %if.end35.i.i.out.sink.split.i.i_crit_edge

if.end35.i.i.out.sink.split.i.i_crit_edge:        ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i.i

if.end51.i.i:                                     ; preds = %if.end35.i.i
  %call53.i.i = call fastcc i32 @alloc_work_entries(ptr noundef %call.i.i78, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %if.end57.i.i, label %if.end51.i.i.out.sink.split.i.i_crit_edge

if.end51.i.i.out.sink.split.i.i_crit_edge:        ; preds = %if.end51.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i.i

if.end57.i.i:                                     ; preds = %if.end51.i.i
  %60 = ptrtoint ptr %call.i.i78 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %call.i.i78, align 4
  %call59.i.i = call i32 %61(ptr noundef %call.i.i78, ptr noundef nonnull %levent) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i.i)
  %tobool60.not.i.i = icmp eq i32 %call59.i.i, 0
  br i1 %tobool60.not.i.i, label %if.end57.i.i.out.i.i_crit_edge, label %if.end57.i.i.out.sink.split.i.i_crit_edge

if.end57.i.i.out.sink.split.i.i_crit_edge:        ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.sink.split.i.i

if.end57.i.i.out.i.i_crit_edge:                   ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i

out.sink.split.i.i:                               ; preds = %if.end57.i.i.out.sink.split.i.i_crit_edge, %if.end51.i.i.out.sink.split.i.i_crit_edge, %if.end35.i.i.out.sink.split.i.i_crit_edge
  %call62.i.i = call i32 @iw_cm_reject(ptr noundef %call.i.i78, ptr noundef null, i8 noundef zeroext 0) #10
  call fastcc void @destroy_cm_id(ptr noundef %call.i.i78) #10
  br label %out.i.i

out.i.i:                                          ; preds = %out.sink.split.i.i, %if.end57.i.i.out.i.i_crit_edge, %do.end8.i.i.out.i.i_crit_edge
  %62 = ptrtoint ptr %private_data_len.i28.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %private_data_len.i28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool64.not.i.i = icmp eq i8 %63, 0
  br i1 %tobool64.not.i.i, label %out.i.i.if.end32_crit_edge, label %if.then65.i.i

out.i.i.if.end32_crit_edge:                       ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then65.i.i:                                    ; preds = %out.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %private_data.i29.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %private_data.i29.i, align 4
  call void @kfree(ptr noundef %65) #10
  br label %if.end32

sw.bb1.i:                                         ; preds = %if.then
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags14) #10
  %66 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %state.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %67)
  %cmp7.not.i.i = icmp eq i32 %67, 3
  br i1 %cmp7.not.i.i, label %do.end17.i.i, label %do.body10.i.i, !prof !92

do.body10.i.i:                                    ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 894, 0\0A.popsection", ""() #10, !srcloc !102
  unreachable

do.end17.i.i:                                     ; preds = %sw.bb1.i
  %68 = ptrtoint ptr %status.i21.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %status.i21.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp18.i.i = icmp eq i32 %69, 0
  br i1 %cmp18.i.i, label %if.end32.thread.i.i, label %if.end32.i.i

if.end32.thread.i.i:                              ; preds = %do.end17.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = call ptr @memcpy(ptr %m_local_addr.i22.i, ptr %local_addr.i23.i, i32 128)
  %71 = call ptr @memcpy(ptr %m_remote_addr.i24.i, ptr %remote_addr.i25.i, i32 128)
  %72 = call ptr @memcpy(ptr %local_addr.i23.i, ptr %local_addr24.i.i, i32 128)
  %73 = call ptr @memcpy(ptr %remote_addr.i25.i, ptr %remote_addr27.i.i, i32 128)
  %74 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 4, ptr %state.i43.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i.i) #10
  br label %if.end37.i.i

if.end32.i.i:                                     ; preds = %do.end17.i.i
  %75 = ptrtoint ptr %qp5.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %qp5.i.i, align 4
  store ptr null, ptr %qp5.i.i, align 4
  %77 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %state.i43.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i.i) #10
  %tobool34.not.i.i = icmp eq ptr %76, null
  br i1 %tobool34.not.i.i, label %if.end32.i.i.if.end37.i.i_crit_edge, label %if.then35.i.i

if.end32.i.i.if.end37.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %78 = ptrtoint ptr %device.i45.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %device.i45.i, align 4
  %iw_rem_ref.i.i = getelementptr inbounds %struct.ib_device, ptr %79, i32 0, i32 1, i32 106
  %80 = ptrtoint ptr %iw_rem_ref.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %iw_rem_ref.i.i, align 4
  call void %81(ptr noundef nonnull %76) #10
  br label %if.end37.i.i

if.end37.i.i:                                     ; preds = %if.then35.i.i, %if.end32.i.i.if.end37.i.i_crit_edge, %if.end32.thread.i.i
  %82 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %2, align 4
  %call40.i27.i = call i32 %83(ptr noundef %2, ptr noundef nonnull %levent) #10
  %84 = ptrtoint ptr %private_data_len.i28.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %private_data_len.i28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool41.not.i.i = icmp eq i8 %85, 0
  br i1 %tobool41.not.i.i, label %if.end37.i.i.cm_conn_rep_handler.exit.i_crit_edge, label %if.then42.i.i

if.end37.i.i.cm_conn_rep_handler.exit.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cm_conn_rep_handler.exit.i

if.then42.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %private_data.i29.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %private_data.i29.i, align 4
  call void @kfree(ptr noundef %87) #10
  br label %cm_conn_rep_handler.exit.i

cm_conn_rep_handler.exit.i:                       ; preds = %if.then42.i.i, %if.end37.i.i.cm_conn_rep_handler.exit.i_crit_edge
  call void @__wake_up(ptr noundef %connect_wait.i36.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %process_event.exit

sw.bb2.i:                                         ; preds = %if.then
  %call2.i31.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  call void @_clear_bit(i32 noundef 2, ptr noundef %flags14) #10
  %88 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %state.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %89)
  %cmp7.not.i34.i = icmp eq i32 %89, 2
  br i1 %cmp7.not.i34.i, label %cm_conn_est_handler.exit.i, label %do.body10.i35.i, !prof !92

do.body10.i35.i:                                  ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 865, 0\0A.popsection", ""() #10, !srcloc !103
  unreachable

cm_conn_est_handler.exit.i:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %state.i43.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i31.i) #10
  %91 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %2, align 4
  %call21.i.i = call i32 %92(ptr noundef %2, ptr noundef nonnull %levent) #10
  call void @__wake_up(ptr noundef %connect_wait.i36.i, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %process_event.exit

sw.bb4.i:                                         ; preds = %if.then
  %call2.i39.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %93 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state.i43.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %94)
  %cmp5.i.i = icmp eq i32 %94, 4
  br i1 %cmp5.i.i, label %if.then.i.i, label %sw.bb4.i.cm_disconnect_handler.exit.i_crit_edge

sw.bb4.i.cm_disconnect_handler.exit.i_crit_edge:  ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cm_disconnect_handler.exit.i

if.then.i.i:                                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 5, ptr %state.i43.i, align 4
  br label %cm_disconnect_handler.exit.i

cm_disconnect_handler.exit.i:                     ; preds = %if.then.i.i, %sw.bb4.i.cm_disconnect_handler.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i39.i) #10
  br label %if.end32

sw.bb5.i:                                         ; preds = %if.then
  %call2.i42.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %96 = ptrtoint ptr %qp5.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %qp5.i.i, align 4
  store ptr null, ptr %qp5.i.i, align 4
  %98 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state.i43.i, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %99, label %do.body8.i.i [
    i32 4, label %sw.bb5.i.sw.bb.i.i_crit_edge
    i32 5, label %sw.bb5.i.sw.bb.i.i_crit_edge90
    i32 6, label %sw.bb5.i.sw.epilog.i.i_crit_edge
  ]

sw.bb5.i.sw.epilog.i.i_crit_edge:                 ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb5.i.sw.bb.i.i_crit_edge90:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

sw.bb5.i.sw.bb.i.i_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %sw.bb5.i.sw.bb.i.i_crit_edge, %sw.bb5.i.sw.bb.i.i_crit_edge90
  %101 = ptrtoint ptr %state.i43.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %state.i43.i, align 4
  br label %sw.epilog.i.i

do.body8.i.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 967, 0\0A.popsection", ""() #10, !srcloc !104
  unreachable

sw.epilog.i.i:                                    ; preds = %sw.bb.i.i, %sw.bb5.i.sw.epilog.i.i_crit_edge
  %tobool15.not.i.i = phi i1 [ true, %sw.bb5.i.sw.epilog.i.i_crit_edge ], [ false, %sw.bb.i.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i42.i) #10
  %tobool.not.i44.i = icmp eq ptr %97, null
  br i1 %tobool.not.i44.i, label %sw.epilog.i.i.if.end.i.i79_crit_edge, label %if.then.i47.i

sw.epilog.i.i.if.end.i.i79_crit_edge:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i79

if.then.i47.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %device.i45.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %device.i45.i, align 4
  %iw_rem_ref.i46.i = getelementptr inbounds %struct.ib_device, ptr %103, i32 0, i32 1, i32 106
  %104 = ptrtoint ptr %iw_rem_ref.i46.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iw_rem_ref.i46.i, align 4
  call void %105(ptr noundef nonnull %97) #10
  br label %if.end.i.i79

if.end.i.i79:                                     ; preds = %if.then.i47.i, %sw.epilog.i.i.if.end.i.i79_crit_edge
  br i1 %tobool15.not.i.i, label %if.end.i.i79.if.end32_crit_edge, label %if.then16.i.i

if.end.i.i79.if.end32_crit_edge:                  ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then16.i.i:                                    ; preds = %if.end.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  %106 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %2, align 4
  %call19.i.i = call i32 %107(ptr noundef %2, ptr noundef nonnull %levent) #10
  br label %process_event.exit

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/core/iwcm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1000, 0\0A.popsection", ""() #10, !srcloc !105
  unreachable

process_event.exit:                               ; preds = %if.then16.i.i, %cm_conn_est_handler.exit.i, %cm_conn_rep_handler.exit.i
  %ret.0.i = phi i32 [ %call21.i.i, %cm_conn_est_handler.exit.i ], [ %call40.i27.i, %cm_conn_rep_handler.exit.i ], [ %call19.i.i, %if.then16.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool18.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool18.not, label %process_event.exit.if.end32_crit_edge, label %if.then19

process_event.exit.if.end32_crit_edge:            ; preds = %process_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then19:                                        ; preds = %process_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @destroy_cm_id(ptr noundef %2)
  br label %if.end32

do.body20:                                        ; preds = %put_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cm_work_handler.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cm_work_handler, %if.then27)) #10
          to label %if.end32 [label %if.then27], !srcloc !106

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %108 = ptrtoint ptr %levent to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %levent, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cm_work_handler.__UNIQUE_ID_ddebug504, ptr noundef nonnull @.str.12, i32 noundef %109) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %do.body20, %if.then19, %process_event.exit.if.end32_crit_edge, %if.end.i.i79.if.end32_crit_edge, %cm_disconnect_handler.exit.i, %if.then65.i.i, %out.i.i.if.end32_crit_edge
  %call33 = call fastcc i32 @iwcm_deref_id(ptr noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  %or.cond = select i1 %tobool34.not, i1 %cmp.i75, i1 false
  br i1 %or.cond, label %do.body41, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  br label %while.body

while.end:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end32.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 276, ptr nonnull %levent) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_get_remote_info(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_init(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_nl_register(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_register_pid_cb(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_add_mapping_cb(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_add_and_query_mapping_cb(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_remote_info_cb(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_mapping_error_cb(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_mapping_info_cb(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_ack_mapping_info_cb(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iwpm_hello_cb(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !61, !63, !64, !65, !66, !68, !70, !72, !73, !74, !75, !77, !79}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__UNIQUE_ID_author500, !1, !"__UNIQUE_ID_author500", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/core/iwcm.c", i32 58, i32 1}
!2 = !{ptr @__UNIQUE_ID_description501, !3, !"__UNIQUE_ID_description501", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/core/iwcm.c", i32 59, i32 1}
!4 = !{ptr @__UNIQUE_ID_file502, !5, !"__UNIQUE_ID_file502", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/core/iwcm.c", i32 60, i32 1}
!6 = !{ptr @__UNIQUE_ID_license503, !5, !"__UNIQUE_ID_license503", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/core/iwcm.c", i32 79, i32 10}
!9 = !{ptr @__ksymtab_iwcm_reject_msg, !10, !"__ksymtab_iwcm_reject_msg", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/core/iwcm.c", i32 81, i32 1}
!11 = !{ptr @iw_create_cm_id.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/infiniband/core/iwcm.c", i32 258, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @iw_create_cm_id.__key.2, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/core/iwcm.c", i32 260, i32 2}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @__ksymtab_iw_create_cm_id, !18, !"__ksymtab_iw_create_cm_id", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/core/iwcm.c", i32 267, i32 1}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/infiniband/core/iwcm.c", i32 315, i32 2}
!21 = !{ptr @__ksymtab_iw_cm_disconnect, !22, !"__ksymtab_iw_cm_disconnect", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/core/iwcm.c", i32 365, i32 1}
!23 = !{ptr @__ksymtab_iw_destroy_cm_id, !24, !"__ksymtab_iw_destroy_cm_id", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/core/iwcm.c", i32 456, i32 1}
!25 = !{ptr @__ksymtab_iw_cm_listen, !26, !"__ksymtab_iw_cm_listen", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/core/iwcm.c", i32 596, i32 1}
!27 = !{ptr @__ksymtab_iw_cm_reject, !28, !"__ksymtab_iw_cm_reject", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/core/iwcm.c", i32 632, i32 1}
!29 = !{ptr @__ksymtab_iw_cm_accept, !30, !"__ksymtab_iw_cm_accept", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/core/iwcm.c", i32 688, i32 1}
!31 = !{ptr @__ksymtab_iw_cm_connect, !32, !"__ksymtab_iw_cm_connect", i1 false, i1 false}
!32 = !{!"../drivers/infiniband/core/iwcm.c", i32 747, i32 1}
!33 = !{ptr @__ksymtab_iw_cm_init_qp_attr, !34, !"__ksymtab_iw_cm_init_qp_attr", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/core/iwcm.c", i32 1181, i32 1}
!35 = !{ptr @__UNIQUE_ID_alias506, !36, !"__UNIQUE_ID_alias506", i1 false, i1 false}
!36 = !{!"../drivers/infiniband/core/iwcm.c", i32 1220, i32 1}
!37 = !{ptr @__initcall__kmod_iw_cm__507_1222_iw_cm_init6, !38, !"__initcall__kmod_iw_cm__507_1222_iw_cm_init6", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/core/iwcm.c", i32 1222, i32 1}
!39 = !{ptr @__exitcall_iw_cm_cleanup, !40, !"__exitcall_iw_cm_cleanup", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/core/iwcm.c", i32 1223, i32 1}
!41 = !{ptr @iwcm_wq, !42, !"iwcm_wq", i1 false, i1 false}
!42 = !{!"../drivers/infiniband/core/iwcm.c", i32 94, i32 33}
!43 = !{ptr @iwcm_ctl_table_hdr, !44, !"iwcm_ctl_table_hdr", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/core/iwcm.c", i32 105, i32 33}
!45 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/core/iwcm.c", i32 63, i32 19}
!47 = !{ptr @.str.6, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/core/iwcm.c", i32 65, i32 18}
!49 = !{ptr @.str.7, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/core/iwcm.c", i32 64, i32 21}
!51 = !{ptr @iwcm_rej_reason_strs, !52, !"iwcm_rej_reason_strs", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/core/iwcm.c", i32 62, i32 27}
!53 = !{ptr @init_completion.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/completion.h", i32 87, i32 2}
!55 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @default_backlog, !57, !"default_backlog", i1 false, i1 false}
!57 = !{!"../drivers/infiniband/core/iwcm.c", i32 103, i32 21}
!58 = !{ptr @cm_event_handler.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/infiniband/core/iwcm.c", i32 1082, i32 2}
!60 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/core/iwcm.c", i32 1040, i32 4}
!63 = !{ptr @.str.11, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @cm_work_handler.__UNIQUE_ID_ddebug504, !62, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!66 = !{ptr @.str.13, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/infiniband/core/iwcm.c", i32 1191, i32 12}
!68 = !{ptr @.str.14, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/core/iwcm.c", i32 1195, i32 54}
!70 = !{ptr @.str.15, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/infiniband/core/iwcm.c", i32 1198, i32 3}
!72 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @iw_cm_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @iw_cm_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/infiniband/core/iwcm.c", i32 108, i32 15}
!77 = !{ptr @iwcm_ctl_table, !78, !"iwcm_ctl_table", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/core/iwcm.c", i32 106, i32 25}
!79 = !{ptr @iwcm_nl_cb_table, !80, !"iwcm_nl_cb_table", i1 false, i1 false}
!80 = !{!"../drivers/infiniband/core/iwcm.c", i32 83, i32 27}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{i64 2148542192, i64 2148542224, i64 2148542253, i64 2148542287, i64 2148542318, i64 2148542341}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{!"branch_weights", i32 2000, i32 1}
!93 = !{i64 2158044793, i64 2158045288, i64 2158044830, i64 2158044886, i64 2158044920, i64 2158044944, i64 2158044985, i64 2158045006, i64 2158045034, i64 2158045068}
!94 = !{i64 2158051979, i64 2158052474, i64 2158052016, i64 2158052072, i64 2158052106, i64 2158052130, i64 2158052171, i64 2158052192, i64 2158052220, i64 2158052254}
!95 = !{i64 2158028149, i64 2158028644, i64 2158028186, i64 2158028242, i64 2158028276, i64 2158028300, i64 2158028341, i64 2158028362, i64 2158028390, i64 2158028424}
!96 = !{i64 2158064286, i64 2158064781, i64 2158064323, i64 2158064379, i64 2158064413, i64 2158064437, i64 2158064478, i64 2158064499, i64 2158064527, i64 2158064561}
!97 = !{i64 2148630193}
!98 = !{i64 2148544657, i64 2148544689, i64 2148544718, i64 2148544752, i64 2148544783, i64 2148544806}
!99 = !{i64 2149652246}
!100 = !{i64 2158030161, i64 2158030656, i64 2158030198, i64 2158030254, i64 2158030288, i64 2158030312, i64 2158030353, i64 2158030374, i64 2158030402, i64 2158030436}
!101 = !{i64 2158071533, i64 2158072028, i64 2158071570, i64 2158071626, i64 2158071660, i64 2158071684, i64 2158071725, i64 2158071746, i64 2158071774, i64 2158071808}
!102 = !{i64 2158081638, i64 2158082133, i64 2158081675, i64 2158081731, i64 2158081765, i64 2158081789, i64 2158081830, i64 2158081851, i64 2158081879, i64 2158081913}
!103 = !{i64 2158075287, i64 2158075782, i64 2158075324, i64 2158075380, i64 2158075414, i64 2158075438, i64 2158075479, i64 2158075500, i64 2158075528, i64 2158075562}
!104 = !{i64 2158084036, i64 2158084531, i64 2158084073, i64 2158084129, i64 2158084163, i64 2158084187, i64 2158084228, i64 2158084249, i64 2158084277, i64 2158084311}
!105 = !{i64 2158085549, i64 2158086045, i64 2158085586, i64 2158085642, i64 2158085676, i64 2158085700, i64 2158085741, i64 2158085762, i64 2158085790, i64 2158085824}
!106 = !{i64 2148354055, i64 2148354060, i64 2148354073, i64 2148354117, i64 2148354151, i64 2148354172}
