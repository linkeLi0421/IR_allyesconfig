; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/rtrs/rtrs-srv.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/rtrs/rtrs-srv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rtrs_srv_resp_rdma\22, \22a\22\09"
module asm "\09.weak\09__crc_rtrs_srv_resp_rdma\09\09\09\09"
module asm "\09.long\09__crc_rtrs_srv_resp_rdma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtrs_srv_resp_rdma:\09\09\09\09\09"
module asm "\09.asciz \09\22rtrs_srv_resp_rdma\22\09\09\09\09\09"
module asm "__kstrtabns_rtrs_srv_resp_rdma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtrs_srv_set_sess_priv\22, \22a\22\09"
module asm "\09.weak\09__crc_rtrs_srv_set_sess_priv\09\09\09\09"
module asm "\09.long\09__crc_rtrs_srv_set_sess_priv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtrs_srv_set_sess_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22rtrs_srv_set_sess_priv\22\09\09\09\09\09"
module asm "__kstrtabns_rtrs_srv_set_sess_priv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtrs_srv_get_path_name\22, \22a\22\09"
module asm "\09.weak\09__crc_rtrs_srv_get_path_name\09\09\09\09"
module asm "\09.long\09__crc_rtrs_srv_get_path_name\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtrs_srv_get_path_name:\09\09\09\09\09"
module asm "\09.asciz \09\22rtrs_srv_get_path_name\22\09\09\09\09\09"
module asm "__kstrtabns_rtrs_srv_get_path_name:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtrs_srv_get_queue_depth\22, \22a\22\09"
module asm "\09.weak\09__crc_rtrs_srv_get_queue_depth\09\09\09\09"
module asm "\09.long\09__crc_rtrs_srv_get_queue_depth\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtrs_srv_get_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22rtrs_srv_get_queue_depth\22\09\09\09\09\09"
module asm "__kstrtabns_rtrs_srv_get_queue_depth:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtrs_srv_open\22, \22a\22\09"
module asm "\09.weak\09__crc_rtrs_srv_open\09\09\09\09"
module asm "\09.long\09__crc_rtrs_srv_open\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtrs_srv_open:\09\09\09\09\09"
module asm "\09.asciz \09\22rtrs_srv_open\22\09\09\09\09\09"
module asm "__kstrtabns_rtrs_srv_open:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rtrs_srv_close\22, \22a\22\09"
module asm "\09.weak\09__crc_rtrs_srv_close\09\09\09\09"
module asm "\09.long\09__crc_rtrs_srv_close\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rtrs_srv_close:\09\09\09\09\09"
module asm "\09.asciz \09\22rtrs_srv_close\22\09\09\09\09\09"
module asm "__kstrtabns_rtrs_srv_close:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rtrs_srv_ib_ctx = type { ptr, i16, %struct.mutex, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.rtrs_rdma_dev_pd = type { %struct.mutex, %struct.list_head, i32, ptr }
%struct.ib_cqe = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.cpumask = type { [1 x i32] }
%struct.rtrs_srv_path = type { %struct.rtrs_path, ptr, %struct.work_struct, i32, %struct.spinlock, i32, ptr, %struct.percpu_ref, %struct.completion, ptr, i32, ptr, i8, i32, %struct.kobject, ptr }
%struct.rtrs_path = type { %struct.list_head, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, [255 x i8], %struct.uuid_t, ptr, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, %struct.delayed_work, i32, i32, i32, i64, i64 }
%struct.__kernel_sockaddr_storage = type { %union.anon.149 }
%union.anon.149 = type { ptr, [124 x i8] }
%struct.uuid_t = type { [16 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.ib_send_wr = type { ptr, %union.anon.151, ptr, i32, i32, i32, %union.anon.161 }
%union.anon.151 = type { i64 }
%union.anon.161 = type { i32 }
%struct.ib_rdma_wr = type { %struct.ib_send_wr, i64, i32 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_sge = type { i64, i32, i32 }
%struct.rtrs_srv_op = type { ptr, i32, i8, ptr, %struct.ib_rdma_wr, %struct.ib_sge, %struct.list_head, i32 }
%struct.rtrs_srv_mr = type { ptr, %struct.sg_table, %struct.ib_cqe, i32, i32, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.ib_mr = type { ptr, ptr, i32, i32, i64, i64, i32, i32, i8, %union.anon.153, ptr, ptr, %struct.rdma_restrack_entry }
%union.anon.153 = type { %struct.list_head }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.rtrs_con = type { ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t }
%struct.rtrs_srv_con = type { %struct.rtrs_con, %struct.list_head, %struct.spinlock }
%struct.rtrs_msg_rdma_read = type { i16, i16, i16, i16, [0 x %struct.rtrs_sg_desc] }
%struct.rtrs_sg_desc = type { i64, i32, i32 }
%struct.rtrs_ib_dev = type { ptr, ptr, %struct.kref, %struct.list_head, ptr }
%struct.rtrs_iu = type { %struct.ib_cqe, i32, ptr, i32, i32 }
%struct.rtrs_msg_rkey_rsp = type { i16, i16, i32 }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }
%struct.rtrs_srv_sess = type { %struct.list_head, i32, %struct.mutex, i32, %struct.mutex, %struct.uuid_t, %struct.refcount_struct, ptr, %struct.list_head, ptr, i32, ptr, %struct.device, i32, ptr }
%struct.rtrs_srv_ctx = type { %struct.rtrs_srv_ops, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.rtrs_srv_ops = type { ptr, ptr }
%struct.ib_wc = type { %union.anon.158, i32, i32, i32, i32, ptr, %union.anon.159, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.158 = type { i64 }
%union.anon.159 = type { i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rtrs_srv_stats = type { %struct.kobject, %struct.rtrs_srv_stats_rdma_stats, ptr }
%struct.rtrs_srv_stats_rdma_stats = type { [2 x %struct.anon.176] }
%struct.anon.176 = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.rtrs_msg_rdma_write = type { i16, i16 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.sockaddr_ib = type { i16, i16, i32, %struct.ib_addr, i64, i64, i64 }
%struct.ib_addr = type { %union.anon.177 }
%union.anon.177 = type { [2 x i64] }
%struct.rtrs_msg_conn_rsp = type { i16, i16, i16, i16, i32, i32, i32, [36 x i8] }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.rtrs_addr = type { ptr, ptr }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.rdma_cm_event = type { i32, i32, %union.anon.173, %struct.rdma_ucm_ece }
%union.anon.173 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.165 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.163 }
%struct.anon.163 = type { i64, i64 }
%union.anon.165 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.rtrs_msg_conn_req = type { i8, i8, i16, i16, i16, i16, i16, %struct.uuid_t, %struct.uuid_t, i8, [11 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.rtrs_msg_info_req = type { i16, [255 x i8], [15 x i8] }
%struct.rtrs_msg_info_rsp = type { i16, i16, [4 x i8], [0 x %struct.rtrs_sg_desc] }

@__UNIQUE_ID_description502 = internal constant [46 x i8] c"rtrs_server.description=RDMA Transport Server\00", section ".modinfo", align 1
@__UNIQUE_ID_file503 = internal constant [57 x i8] c"rtrs_server.file=drivers/infiniband/ulp/rtrs/rtrs-server\00", section ".modinfo", align 1
@__UNIQUE_ID_license504 = internal constant [24 x i8] c"rtrs_server.license=GPL\00", section ".modinfo", align 1
@__param_str_always_invalidate = internal constant [30 x i8] c"rtrs_server.always_invalidate\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@always_invalidate = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_always_invalidate = internal constant %struct.kernel_param { ptr @__param_str_always_invalidate, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @always_invalidate } }, section "__param", align 4
@__UNIQUE_ID_always_invalidatetype505 = internal constant [44 x i8] c"rtrs_server.parmtype=always_invalidate:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_always_invalidate506 = internal constant [114 x i8] c"rtrs_server.parm=always_invalidate:Invalidate memory registration for contiguous memory regions before accessing.\00", section ".modinfo", align 1
@__param_str_max_chunk_size = internal constant [27 x i8] c"rtrs_server.max_chunk_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@max_chunk_size = internal global i32 131072, section ".data..read_mostly", align 4
@__param_max_chunk_size = internal constant %struct.kernel_param { ptr @__param_str_max_chunk_size, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @max_chunk_size } }, section "__param", align 4
@__UNIQUE_ID_max_chunk_sizetype507 = internal constant [40 x i8] c"rtrs_server.parmtype=max_chunk_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_max_chunk_size508 = internal constant [119 x i8] c"rtrs_server.parm=max_chunk_size:Max size for each IO request, when change the unit is in byte (default: (128 << 10)KB)\00", section ".modinfo", align 1
@__param_str_sess_queue_depth = internal constant [29 x i8] c"rtrs_server.sess_queue_depth\00", align 1
@sess_queue_depth = internal global i32 512, section ".data..read_mostly", align 4
@__param_sess_queue_depth = internal constant %struct.kernel_param { ptr @__param_str_sess_queue_depth, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @sess_queue_depth } }, section "__param", align 4
@__UNIQUE_ID_sess_queue_depthtype509 = internal constant [42 x i8] c"rtrs_server.parmtype=sess_queue_depth:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sess_queue_depth510 = internal constant [147 x i8] c"rtrs_server.parm=sess_queue_depth:Number of buffers for pending I/O requests to allocate per session. Maximum: MAX_SESS_QUEUE_DEPTH (default: 512)\00", section ".modinfo", align 1
@rtrs_wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/infiniband/ulp/rtrs/rtrs-srv.c\00", [57 x i8] zeroinitializer }, align 32
@rtrs_srv_resp_rdma._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rtrs_srv_resp_rdma = private unnamed_addr constant [19 x i8] c"rtrs_srv_resp_rdma\00", align 1
@rtrs_srv_resp_rdma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.rtrs_srv_resp_rdma, ptr @.str, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013rtrs_server L504: <%s>: Sending I/O response failed,  server path %s is disconnected, path state %s\0A\00", [57 x i8] zeroinitializer }, align 32
@rtrs_srv_resp_rdma._entry_ptr = internal global ptr @rtrs_srv_resp_rdma._entry, section ".printk_index", align 4
@rtrs_srv_resp_rdma._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.rtrs_srv_resp_rdma, ptr @.str, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013rtrs_server L515: <%s>: IB send queue full: srv_path=%s cid=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@rtrs_srv_resp_rdma._entry_ptr.5 = internal global ptr @rtrs_srv_resp_rdma._entry.3, section ".printk_index", align 4
@rtrs_srv_resp_rdma._rs.6 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rtrs_srv_resp_rdma._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.rtrs_srv_resp_rdma, ptr @.str, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rtrs_server L530: <%s>: IO response failed: %d: srv_path=%s\0A\00", [33 x i8] zeroinitializer }, align 32
@rtrs_srv_resp_rdma._entry_ptr.9 = internal global ptr @rtrs_srv_resp_rdma._entry.7, section ".printk_index", align 4
@__kstrtab_rtrs_srv_resp_rdma = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtrs_srv_resp_rdma = external dso_local constant [0 x i8], align 1
@__ksymtab_rtrs_srv_resp_rdma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtrs_srv_resp_rdma to i32), ptr @__kstrtab_rtrs_srv_resp_rdma, ptr @__kstrtabns_rtrs_srv_resp_rdma }, section "___ksymtab+rtrs_srv_resp_rdma", align 4
@__kstrtab_rtrs_srv_set_sess_priv = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtrs_srv_set_sess_priv = external dso_local constant [0 x i8], align 1
@__ksymtab_rtrs_srv_set_sess_priv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtrs_srv_set_sess_priv to i32), ptr @__kstrtab_rtrs_srv_set_sess_priv, ptr @__kstrtabns_rtrs_srv_set_sess_priv }, section "___ksymtab+rtrs_srv_set_sess_priv", align 4
@__kstrtab_rtrs_srv_get_path_name = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtrs_srv_get_path_name = external dso_local constant [0 x i8], align 1
@__ksymtab_rtrs_srv_get_path_name = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtrs_srv_get_path_name to i32), ptr @__kstrtab_rtrs_srv_get_path_name, ptr @__kstrtabns_rtrs_srv_get_path_name }, section "___ksymtab+rtrs_srv_get_path_name", align 4
@__kstrtab_rtrs_srv_get_queue_depth = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtrs_srv_get_queue_depth = external dso_local constant [0 x i8], align 1
@__ksymtab_rtrs_srv_get_queue_depth = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtrs_srv_get_queue_depth to i32), ptr @__kstrtab_rtrs_srv_get_queue_depth, ptr @__kstrtabns_rtrs_srv_get_queue_depth }, section "___ksymtab+rtrs_srv_get_queue_depth", align 4
@rtrs_srv_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ib_ctx = internal global { %struct.rtrs_srv_ib_ctx, [56 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ib_ctx.ib_dev_mutex\00", [43 x i8] zeroinitializer }, align 32
@rtrs_srv_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.71, ptr @rtrs_srv_add_one, ptr @rtrs_srv_remove_one, ptr null, ptr null, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_rtrs_srv_open = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtrs_srv_open = external dso_local constant [0 x i8], align 1
@__ksymtab_rtrs_srv_open = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtrs_srv_open to i32), ptr @__kstrtab_rtrs_srv_open, ptr @__kstrtabns_rtrs_srv_open }, section "___ksymtab+rtrs_srv_open", align 4
@__kstrtab_rtrs_srv_close = external dso_local constant [0 x i8], align 1
@__kstrtabns_rtrs_srv_close = external dso_local constant [0 x i8], align 1
@__ksymtab_rtrs_srv_close = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rtrs_srv_close to i32), ptr @__kstrtab_rtrs_srv_close, ptr @__kstrtabns_rtrs_srv_close }, section "___ksymtab+rtrs_srv_close", align 4
@rtrs_dev_class = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@chunk_pool = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dev_pd = internal global { %struct.rtrs_rdma_dev_pd, [52 x i8] } zeroinitializer, align 32
@__initcall__kmod_rtrs_server__523_2302_rtrs_server_init6 = internal global ptr @rtrs_server_init, section ".initcall6.init", align 4
@__exitcall_rtrs_server_exit = internal global ptr @rtrs_server_exit, section ".exitcall.exit", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RTRS_SRV_CONNECTING\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"RTRS_SRV_CONNECTED\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RTRS_SRV_CLOSING\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RTRS_SRV_CLOSED\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@io_comp_cqe = internal global { %struct.ib_cqe, [28 x i8] } { %struct.ib_cqe { ptr @rtrs_srv_rdma_done }, [28 x i8] zeroinitializer }, align 32
@send_io_resp_imm.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@local_reg_cqe = internal global { %struct.ib_cqe, [28 x i8] } { %struct.ib_cqe { ptr @rtrs_srv_reg_mr_done }, [28 x i8] zeroinitializer }, align 32
@send_io_resp_imm._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.send_io_resp_imm = private unnamed_addr constant [17 x i8] c"send_io_resp_imm\00", align 1
@send_io_resp_imm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @__func__.send_io_resp_imm, ptr @.str, i32 445, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013rtrs_server L445: <%s>: Posting RDMA-Reply to QP failed, err: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@send_io_resp_imm._entry_ptr = internal global ptr @send_io_resp_imm._entry, section ".printk_index", align 4
@rtrs_srv_rdma_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str, i32 1214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013rtrs_server L1214: <%s>: %s (wr_cqe: %p, type: %d, vendor_err: 0x%x, len: %u)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rtrs_srv_rdma_done\00", [45 x i8] zeroinitializer }, align 32
@rtrs_srv_rdma_done._entry_ptr = internal global ptr @rtrs_srv_rdma_done._entry, section ".printk_index", align 4
@rtrs_srv_rdma_done._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str, i32 1230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtrs_server L1230: <%s>: rtrs_post_recv(), err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rtrs_srv_rdma_done._entry_ptr.21 = internal global ptr @rtrs_srv_rdma_done._entry.19, section ".printk_index", align 4
@rtrs_srv_rdma_done._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str, i32 1244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013rtrs_server L1244: <%s>: Wrong msg_id %u, off %u\0A\00", [44 x i8] zeroinitializer }, align 32
@rtrs_srv_rdma_done._entry_ptr.24 = internal global ptr @rtrs_srv_rdma_done._entry.22, section ".printk_index", align 4
@rtrs_srv_rdma_done._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtrs_server L1256: <%s>: rtrs_post_recv(), err: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rtrs_srv_rdma_done._entry_ptr.27 = internal global ptr @rtrs_srv_rdma_done._entry.25, section ".printk_index", align 4
@rtrs_srv_rdma_done._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.18, ptr @.str, i32 1271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014rtrs_server L1271: <%s>: Unknown IMM type %u\0A\00", [48 x i8] zeroinitializer }, align 32
@rtrs_srv_rdma_done._entry_ptr.30 = internal global ptr @rtrs_srv_rdma_done._entry.28, section ".printk_index", align 4
@rtrs_srv_rdma_done._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str, i32 1287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014rtrs_server L1287: <%s>: Unexpected WC type: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@rtrs_srv_rdma_done._entry_ptr.33 = internal global ptr @rtrs_srv_rdma_done._entry.31, section ".printk_index", align 4
@rtrs_srv_inv_rkey_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str, i32 1154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rtrs_server L1154: <%s>: Failed IB_WR_LOCAL_INV: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtrs_srv_inv_rkey_done\00", [41 x i8] zeroinitializer }, align 32
@rtrs_srv_inv_rkey_done._entry_ptr = internal global ptr @rtrs_srv_inv_rkey_done._entry, section ".printk_index", align 4
@process_io_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str, i32 1131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013rtrs_server L1131: <%s>: Processing I/O request failed, unknown message type received: 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"process_io_req\00", [17 x i8] zeroinitializer }, align 32
@process_io_req._entry_ptr = internal global ptr @process_io_req._entry, section ".printk_index", align 4
@process_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.process_write = private unnamed_addr constant [14 x i8] c"process_write\00", align 1
@process_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @__func__.process_write, ptr @.str, i32 1072, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013rtrs_server L1072: <%s>: Processing write request failed,  session is disconnected, sess state %s\0A\00", [59 x i8] zeroinitializer }, align 32
@process_write._entry_ptr = internal global ptr @process_write._entry, section ".printk_index", align 4
@process_write._rs.39 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_write._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @__func__.process_write, ptr @.str, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\013rtrs_server L1090: <%s>: Processing write request failed, user module callback reports err: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@process_write._entry_ptr.42 = internal global ptr @process_write._entry.40, section ".printk_index", align 4
@process_write._rs.43 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_write._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @__func__.process_write, ptr @.str, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\013rtrs_server L1101: <%s>: Processing write request failed, sending I/O response failed, msg_id %d, err: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@process_write._entry_ptr.46 = internal global ptr @process_write._entry.44, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@process_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.process_read = private unnamed_addr constant [13 x i8] c"process_read\00", align 1
@process_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.process_read, ptr @.str, i32 1014, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013rtrs_server L1014: <%s>: Processing read request failed,  session is disconnected, sess state %s\0A\00", [60 x i8] zeroinitializer }, align 32
@process_read._entry_ptr = internal global ptr @process_read._entry, section ".printk_index", align 4
@process_read._rs.51 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_read._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @__func__.process_read, ptr @.str, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013rtrs_server L1019: <%s>: Processing read request failed, invalid message\0A\00", [52 x i8] zeroinitializer }, align 32
@process_read._entry_ptr.54 = internal global ptr @process_read._entry.52, section ".printk_index", align 4
@process_read._rs.55 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_read._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @__func__.process_read, ptr @.str, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"\013rtrs_server L1038: <%s>: Processing read request failed, user module cb reported for msg_id %d, err: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@process_read._entry_ptr.58 = internal global ptr @process_read._entry.56, section ".printk_index", align 4
@process_read._rs.59 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@process_read._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @__func__.process_read, ptr @.str, i32 1049, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013rtrs_server L1049: <%s>: Sending err msg for failed RDMA-Write-Req failed, msg_id %d, err: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@process_read._entry_ptr.62 = internal global ptr @process_read._entry.60, section ".printk_index", align 4
@rtrs_srv_reg_mr_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtrs_server L191: <%s>: REG MR failed: %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rtrs_srv_reg_mr_done\00", [43 x i8] zeroinitializer }, align 32
@rtrs_srv_reg_mr_done._entry_ptr = internal global ptr @rtrs_srv_reg_mr_done._entry, section ".printk_index", align 4
@rdma_write_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013rtrs_server L235: <%s>: Invalid RDMA-Write sg list length 0\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rdma_write_sg\00", [18 x i8] zeroinitializer }, align 32
@rdma_write_sg._entry_ptr = internal global ptr @rdma_write_sg._entry, section ".printk_index", align 4
@rdma_write_sg._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013rtrs_server L330: <%s>: Posting RDMA-Write-Request to QP failed, err: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@rdma_write_sg._entry_ptr.69 = internal global ptr @rdma_write_sg._entry.67, section ".printk_index", align 4
@alloc_srv_ctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ctx->srv_mutex\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtrs_server\00", [20 x i8] zeroinitializer }, align 32
@rtrs_srv_add_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str, i32 2114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013rtrs_server L2114: Failed to initialize RDMA connection\00", [38 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtrs_srv_add_one\00", [47 x i8] zeroinitializer }, align 32
@rtrs_srv_add_one._entry_ptr = internal global ptr @rtrs_srv_add_one._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@rtrs_srv_cm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str, i32 2004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013rtrs_server L2004: Creating id for RDMA connection failed, err: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtrs_srv_cm_init\00", [47 x i8] zeroinitializer }, align 32
@rtrs_srv_cm_init._entry_ptr = internal global ptr @rtrs_srv_cm_init._entry, section ".printk_index", align 4
@rtrs_srv_cm_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str, i32 2009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013rtrs_server L2009: Binding RDMA address failed, err: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rtrs_srv_cm_init._entry_ptr.78 = internal global ptr @rtrs_srv_cm_init._entry.76, section ".printk_index", align 4
@rtrs_srv_cm_init._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.75, ptr @.str, i32 2015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013rtrs_server L2015: Listening on RDMA connection failed, err: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rtrs_srv_cm_init._entry_ptr.81 = internal global ptr @rtrs_srv_cm_init._entry.79, section ".printk_index", align 4
@rtrs_srv_rdma_cm_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str, i32 1975, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013rtrs_server L1975: <%s>: CM error (CM event: %s, err: %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rtrs_srv_rdma_cm_handler\00", [39 x i8] zeroinitializer }, align 32
@rtrs_srv_rdma_cm_handler._entry_ptr = internal global ptr @rtrs_srv_rdma_cm_handler._entry, section ".printk_index", align 4
@rtrs_srv_rdma_cm_handler._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str, i32 1985, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rtrs_server L1985: Ignoring unexpected CM event %s, err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@rtrs_srv_rdma_cm_handler._entry_ptr.86 = internal global ptr @rtrs_srv_rdma_cm_handler._entry.84, section ".printk_index", align 4
@rtrs_rdma_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str, i32 1837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtrs_server L1837: Invalid RTRS connection request\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rtrs_rdma_connect\00", [46 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr = internal global ptr @rtrs_rdma_connect._entry, section ".printk_index", align 4
@rtrs_rdma_connect._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str, i32 1841, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013rtrs_server L1841: Invalid RTRS magic\0A\00", [55 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.91 = internal global ptr @rtrs_rdma_connect._entry.89, section ".printk_index", align 4
@rtrs_rdma_connect._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str, i32 1847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013rtrs_server L1847: Unsupported major RTRS version: %d, expected %d\0A\00", [58 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.94 = internal global ptr @rtrs_rdma_connect._entry.92, section ".printk_index", align 4
@rtrs_rdma_connect._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.88, ptr @.str, i32 1853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013rtrs_server L1853: Too many connections requested: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.97 = internal global ptr @rtrs_rdma_connect._entry.95, section ".printk_index", align 4
@rtrs_rdma_connect._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.88, ptr @.str, i32 1859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013rtrs_server L1859: Incorrect cid: %d >= %d\0A\00", [50 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.100 = internal global ptr @rtrs_rdma_connect._entry.98, section ".printk_index", align 4
@rtrs_rdma_connect._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.88, ptr @.str, i32 1866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013rtrs_server L1866: get_or_create_srv(), error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.103 = internal global ptr @rtrs_rdma_connect._entry.101, section ".printk_index", align 4
@rtrs_rdma_connect._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.88, ptr @.str, i32 1879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013rtrs_server L1879: <%s>: Session in wrong state: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.106 = internal global ptr @rtrs_rdma_connect._entry.104, section ".printk_index", align 4
@rtrs_rdma_connect._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.88, ptr @.str, i32 1888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtrs_server L1888: <%s>: Incorrect request: %d, %d\0A\00", [42 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.109 = internal global ptr @rtrs_rdma_connect._entry.107, section ".printk_index", align 4
@rtrs_rdma_connect._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.88, ptr @.str, i32 1894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013rtrs_server L1894: <%s>: Connection already exists: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.112 = internal global ptr @rtrs_rdma_connect._entry.110, section ".printk_index", align 4
@rtrs_rdma_connect._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.88, ptr @.str, i32 1905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013rtrs_server L1905: RTRS server session allocation failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.115 = internal global ptr @rtrs_rdma_connect._entry.113, section ".printk_index", align 4
@rtrs_rdma_connect._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.88, ptr @.str, i32 1911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013rtrs_server L1911: <%s>: create_con(), error %d\0A\00", [45 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.118 = internal global ptr @rtrs_rdma_connect._entry.116, section ".printk_index", align 4
@rtrs_rdma_connect._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.88, ptr @.str, i32 1922, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013rtrs_server L1922: <%s>: rtrs_rdma_do_accept(), error %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rtrs_rdma_connect._entry_ptr.121 = internal global ptr @rtrs_rdma_connect._entry.119, section ".printk_index", align 4
@get_or_create_srv._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.get_or_create_srv = private unnamed_addr constant [18 x i8] c"get_or_create_srv\00", align 1
@get_or_create_srv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @__func__.get_or_create_srv, ptr @.str, i32 1390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013rtrs_server L1390: Error: Not the first connection request for this session\0A\00", [49 x i8] zeroinitializer }, align 32
@get_or_create_srv._entry_ptr = internal global ptr @get_or_create_srv._entry, section ".printk_index", align 4
@get_or_create_srv.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.123 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&srv->paths_mutex\00", [46 x i8] zeroinitializer }, align 32
@get_or_create_srv.__key.124 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.125 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&srv->paths_ev_mutex\00", [43 x i8] zeroinitializer }, align 32
@__alloc_path._entry = internal constant %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str, i32 1747, ptr null, ptr null }, align 1
@.str.126 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013rtrs_server L1747: Path with same addr exists\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"__alloc_path\00", [19 x i8] zeroinitializer }, align 32
@__alloc_path._entry_ptr = internal global ptr @__alloc_path._entry, section ".printk_index", align 4
@__alloc_path.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&srv_path->state_lock\00", [42 x i8] zeroinitializer }, align 32
@__alloc_path.__key.129 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.130 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&srv_path->close_work)\00", [55 x i8] zeroinitializer }, align 32
@map_cont_bufs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013rtrs_server L644: <%s>: rtrs_iu_alloc(), err: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"map_cont_bufs\00", [18 x i8] zeroinitializer }, align 32
@map_cont_bufs._entry_ptr = internal global ptr @map_cont_bufs._entry, section ".printk_index", align 4
@rtrs_srv_alloc_ops_ids._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013rtrs_server L161: Percpu reference init failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtrs_srv_alloc_ops_ids\00", [41 x i8] zeroinitializer }, align 32
@rtrs_srv_alloc_ops_ids._entry_ptr = internal global ptr @rtrs_srv_alloc_ops_ids._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@create_con.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.136 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&con->rsp_wr_wait_lock\00", [41 x i8] zeroinitializer }, align 32
@create_con._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str, i32 1702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013rtrs_server L1702: <%s>: rtrs_cq_qp_create(), err: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"create_con\00", [21 x i8] zeroinitializer }, align 32
@create_con._entry_ptr = internal global ptr @create_con._entry, section ".printk_index", align 4
@cq_affinity_mask = internal global { %struct.cpumask, [28 x i8] } { %struct.cpumask { [1 x i32] [i32 15] }, [28 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@post_recv_info_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013rtrs_server L953: <%s>: rtrs_iu_post_recv(), err: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"post_recv_info_req\00", [45 x i8] zeroinitializer }, align 32
@post_recv_info_req._entry_ptr = internal global ptr @post_recv_info_req._entry, section ".printk_index", align 4
@rtrs_srv_info_req_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013rtrs_server L908: <%s>: Sess info request receive failed: %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtrs_srv_info_req_done\00", [41 x i8] zeroinitializer }, align 32
@rtrs_srv_info_req_done._entry_ptr = internal global ptr @rtrs_srv_info_req_done._entry, section ".printk_index", align 4
@rtrs_srv_info_req_done._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.142, ptr @.str, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013rtrs_server L915: <%s>: Sess info request is malformed: size %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rtrs_srv_info_req_done._entry_ptr.145 = internal global ptr @rtrs_srv_info_req_done._entry.143, section ".printk_index", align 4
@rtrs_srv_info_req_done._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.142, ptr @.str, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013rtrs_server L923: <%s>: Sess info request is malformed: type %d\0A\00", [61 x i8] zeroinitializer }, align 32
@rtrs_srv_info_req_done._entry_ptr.148 = internal global ptr @rtrs_srv_info_req_done._entry.146, section ".printk_index", align 4
@process_info_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013rtrs_server L805: <%s>: post_recv_path(), err: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"process_info_req\00", [47 x i8] zeroinitializer }, align 32
@process_info_req._entry_ptr = internal global ptr @process_info_req._entry, section ".printk_index", align 4
@process_info_req._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str, i32 810, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013rtrs_server L810: <%s>: pathname cannot contain / and .\0A\00", [37 x i8] zeroinitializer }, align 32
@process_info_req._entry_ptr.153 = internal global ptr @process_info_req._entry.151, section ".printk_index", align 4
@process_info_req._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.150, ptr @.str, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013rtrs_server L816: <%s>: pathname is duplicated: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@process_info_req._entry_ptr.156 = internal global ptr @process_info_req._entry.154, section ".printk_index", align 4
@process_info_req._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.150, ptr @.str, i32 884, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013rtrs_server L884: <%s>: rtrs_iu_post_send(), err: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@process_info_req._entry_ptr.159 = internal global ptr @process_info_req._entry.157, section ".printk_index", align 4
@post_recv_path._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str, i32 989, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013rtrs_server L989: <%s>: post_recv_io(), err: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"post_recv_path\00", [17 x i8] zeroinitializer }, align 32
@post_recv_path._entry_ptr = internal global ptr @post_recv_path._entry, section ".printk_index", align 4
@rtrs_srv_info_rsp_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.162, ptr @.str.163, ptr @.str, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013rtrs_server L717: <%s>: Sess info response send failed: %s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rtrs_srv_info_rsp_done\00", [41 x i8] zeroinitializer }, align 32
@rtrs_srv_info_rsp_done._entry_ptr = internal global ptr @rtrs_srv_info_rsp_done._entry, section ".printk_index", align 4
@rtrs_rdma_do_reject._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.165, ptr @.str, i32 1620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtrs_server L1620: rdma_reject(), err: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtrs_rdma_do_reject\00", [44 x i8] zeroinitializer }, align 32
@rtrs_rdma_do_reject._entry_ptr = internal global ptr @rtrs_rdma_do_reject._entry, section ".printk_index", align 4
@rtrs_rdma_do_accept._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str, i32 1602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013rtrs_server L1602: rdma_accept(), err: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rtrs_rdma_do_accept\00", [44 x i8] zeroinitializer }, align 32
@rtrs_rdma_do_accept._entry_ptr = internal global ptr @rtrs_rdma_do_accept._entry, section ".printk_index", align 4
@rtrs_server_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str, i32 2259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"\016rtrs_server L2259: Loading module %s, proto %s: (max_chunk_size: %d (pure IO %ld, headers %ld) , sess_queue_depth: %d, always_invalidate: %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rtrs_server_init\00", [47 x i8] zeroinitializer }, align 32
@rtrs_server_init._entry_ptr = internal global ptr @rtrs_server_init._entry, section ".printk_index", align 4
@.str.170 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@rtrs_server_init._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.169, ptr @.str, i32 2266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013rtrs_server L2266: Failed to load module, invalid module parameters, err: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@rtrs_server_init._entry_ptr.173 = internal global ptr @rtrs_server_init._entry.171, section ".printk_index", align 4
@rtrs_server_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rtrs-server\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rtrs_server_wq\00", [17 x i8] zeroinitializer }, align 32
@check_module_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str, i32 2229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013rtrs_server L2229: Invalid sess_queue_depth value %d, has to be >= %d, <= %d.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"check_module_params\00", [44 x i8] zeroinitializer }, align 32
@check_module_params._entry_ptr = internal global ptr @check_module_params._entry, section ".printk_index", align 4
@check_module_params._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.177, ptr @.str, i32 2234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013rtrs_server L2234: Invalid max_chunk_size value %d, has to be >= %d and should be power of two.\0A\00", [61 x i8] zeroinitializer }, align 32
@check_module_params._entry_ptr.180 = internal global ptr @check_module_params._entry.178, section ".printk_index", align 4
@check_module_params._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.177, ptr @.str, i32 2245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"\013rtrs_server L2245: RDMA immediate size (%db) not enough to encode %d buffers of size %dB. Reduce 'sess_queue_depth' or 'max_chunk_size' parameters.\0A\00", [41 x i8] zeroinitializer }, align 32
@check_module_params._entry_ptr.183 = internal global ptr @check_module_params._entry.181, section ".printk_index", align 4
@switch.table.rtrs_srv_resp_rdma = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@switch.table.process_io_req = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@switch.table.process_io_req.184 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@switch.table.rtrs_srv_rdma_cm_handler = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 129]
@__sancov_gen_cov_switch_values.186 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 8, i64 9]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.188 = internal global [10 x i64] [i64 8, i64 32, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 10, i64 27]
@__sancov_gen_cov_switch_values.190 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 10, i64 27]
@___asan_gen_.191 = private unnamed_addr constant [18 x i8] c"always_invalidate\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 40, i32 13 }
@___asan_gen_.194 = private unnamed_addr constant [8 x i8] c"rtrs_wq\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 58, i32 33 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 454, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 501, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 513, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 529, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"ib_ctx\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 35, i32 31 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2175, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [16 x i8] c"rtrs_srv_client\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2151, i32 25 }
@___asan_gen_.239 = private unnamed_addr constant [15 x i8] c"rtrs_dev_class\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 34, i32 15 }
@___asan_gen_.242 = private unnamed_addr constant [11 x i8] c"chunk_pool\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 33, i32 19 }
@___asan_gen_.245 = private unnamed_addr constant [7 x i8] c"dev_pd\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 32, i32 32 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 461, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 463, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 465, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 467, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 469, i32 10 }
@___asan_gen_.263 = private unnamed_addr constant [12 x i8] c"io_comp_cqe\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 124, i32 22 }
@___asan_gen_.266 = private unnamed_addr constant [14 x i8] c"local_reg_cqe\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 197, i32 22 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 444, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1211, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1230, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1243, i32 5 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1255, i32 6 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1271, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1287, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1153, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1129, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1070, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1088, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1099, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 695, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 723, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1012, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1018, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1036, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1047, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 190, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 235, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 328, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2080, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2152, i32 10 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2114, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2003, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2009, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2014, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1974, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1984, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1837, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1841, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1846, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1853, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1859, i32 3 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1866, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1878, i32 4 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1887, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1893, i32 4 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1905, i32 4 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1911, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1922, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1390, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1400, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1401, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1747, i32 3 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1787, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1788, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 644, i32 5 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 161, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.615, i32 87, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1656, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1702, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant [17 x i8] c"cq_affinity_mask\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 56, i32 18 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 953, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 907, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 914, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 922, i32 3 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 805, i32 3 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 810, i32 3 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 816, i32 3 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 884, i32 3 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 989, i32 4 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 716, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1620, i32 3 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 1602, i32 3 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2256, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2265, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2273, i32 19 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2278, i32 28 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2228, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2233, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.773 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.774 = private constant [42 x i8] c"../drivers/infiniband/ulp/rtrs/rtrs-srv.c\00", align 1
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.774, i32 2244, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant [32 x i8] c"switch.table.rtrs_srv_resp_rdma\00", align 1
@___asan_gen_.777 = private unnamed_addr constant [28 x i8] c"switch.table.process_io_req\00", align 1
@___asan_gen_.778 = private unnamed_addr constant [32 x i8] c"switch.table.process_io_req.184\00", align 1
@___asan_gen_.779 = private unnamed_addr constant [38 x i8] c"switch.table.rtrs_srv_rdma_cm_handler\00", align 1
@llvm.compiler.used = appending global [283 x ptr] [ptr @__UNIQUE_ID_always_invalidate506, ptr @__UNIQUE_ID_always_invalidatetype505, ptr @__UNIQUE_ID_description502, ptr @__UNIQUE_ID_file503, ptr @__UNIQUE_ID_license504, ptr @__UNIQUE_ID_max_chunk_size508, ptr @__UNIQUE_ID_max_chunk_sizetype507, ptr @__UNIQUE_ID_sess_queue_depth510, ptr @__UNIQUE_ID_sess_queue_depthtype509, ptr @__alloc_path._entry, ptr @__alloc_path._entry_ptr, ptr @__exitcall_rtrs_server_exit, ptr @__initcall__kmod_rtrs_server__523_2302_rtrs_server_init6, ptr @__ksymtab_rtrs_srv_close, ptr @__ksymtab_rtrs_srv_get_path_name, ptr @__ksymtab_rtrs_srv_get_queue_depth, ptr @__ksymtab_rtrs_srv_open, ptr @__ksymtab_rtrs_srv_resp_rdma, ptr @__ksymtab_rtrs_srv_set_sess_priv, ptr @__param_always_invalidate, ptr @__param_max_chunk_size, ptr @__param_sess_queue_depth, ptr @check_module_params._entry, ptr @check_module_params._entry.178, ptr @check_module_params._entry.181, ptr @check_module_params._entry_ptr, ptr @check_module_params._entry_ptr.180, ptr @check_module_params._entry_ptr.183, ptr @create_con._entry, ptr @create_con._entry_ptr, ptr @get_or_create_srv._entry, ptr @get_or_create_srv._entry_ptr, ptr @map_cont_bufs._entry, ptr @map_cont_bufs._entry_ptr, ptr @post_recv_info_req._entry, ptr @post_recv_info_req._entry_ptr, ptr @post_recv_path._entry, ptr @post_recv_path._entry_ptr, ptr @process_info_req._entry, ptr @process_info_req._entry.151, ptr @process_info_req._entry.154, ptr @process_info_req._entry.157, ptr @process_info_req._entry_ptr, ptr @process_info_req._entry_ptr.153, ptr @process_info_req._entry_ptr.156, ptr @process_info_req._entry_ptr.159, ptr @process_io_req._entry, ptr @process_io_req._entry_ptr, ptr @process_read._entry, ptr @process_read._entry.52, ptr @process_read._entry.56, ptr @process_read._entry.60, ptr @process_read._entry_ptr, ptr @process_read._entry_ptr.54, ptr @process_read._entry_ptr.58, ptr @process_read._entry_ptr.62, ptr @process_write._entry, ptr @process_write._entry.40, ptr @process_write._entry.44, ptr @process_write._entry_ptr, ptr @process_write._entry_ptr.42, ptr @process_write._entry_ptr.46, ptr @rdma_write_sg._entry, ptr @rdma_write_sg._entry.67, ptr @rdma_write_sg._entry_ptr, ptr @rdma_write_sg._entry_ptr.69, ptr @rtrs_rdma_connect._entry, ptr @rtrs_rdma_connect._entry.101, ptr @rtrs_rdma_connect._entry.104, ptr @rtrs_rdma_connect._entry.107, ptr @rtrs_rdma_connect._entry.110, ptr @rtrs_rdma_connect._entry.113, ptr @rtrs_rdma_connect._entry.116, ptr @rtrs_rdma_connect._entry.119, ptr @rtrs_rdma_connect._entry.89, ptr @rtrs_rdma_connect._entry.92, ptr @rtrs_rdma_connect._entry.95, ptr @rtrs_rdma_connect._entry.98, ptr @rtrs_rdma_connect._entry_ptr, ptr @rtrs_rdma_connect._entry_ptr.100, ptr @rtrs_rdma_connect._entry_ptr.103, ptr @rtrs_rdma_connect._entry_ptr.106, ptr @rtrs_rdma_connect._entry_ptr.109, ptr @rtrs_rdma_connect._entry_ptr.112, ptr @rtrs_rdma_connect._entry_ptr.115, ptr @rtrs_rdma_connect._entry_ptr.118, ptr @rtrs_rdma_connect._entry_ptr.121, ptr @rtrs_rdma_connect._entry_ptr.91, ptr @rtrs_rdma_connect._entry_ptr.94, ptr @rtrs_rdma_connect._entry_ptr.97, ptr @rtrs_rdma_do_accept._entry, ptr @rtrs_rdma_do_accept._entry_ptr, ptr @rtrs_rdma_do_reject._entry, ptr @rtrs_rdma_do_reject._entry_ptr, ptr @rtrs_server_exit, ptr @rtrs_server_init._entry, ptr @rtrs_server_init._entry.171, ptr @rtrs_server_init._entry_ptr, ptr @rtrs_server_init._entry_ptr.173, ptr @rtrs_srv_add_one._entry, ptr @rtrs_srv_add_one._entry_ptr, ptr @rtrs_srv_alloc_ops_ids._entry, ptr @rtrs_srv_alloc_ops_ids._entry_ptr, ptr @rtrs_srv_cm_init._entry, ptr @rtrs_srv_cm_init._entry.76, ptr @rtrs_srv_cm_init._entry.79, ptr @rtrs_srv_cm_init._entry_ptr, ptr @rtrs_srv_cm_init._entry_ptr.78, ptr @rtrs_srv_cm_init._entry_ptr.81, ptr @rtrs_srv_info_req_done._entry, ptr @rtrs_srv_info_req_done._entry.143, ptr @rtrs_srv_info_req_done._entry.146, ptr @rtrs_srv_info_req_done._entry_ptr, ptr @rtrs_srv_info_req_done._entry_ptr.145, ptr @rtrs_srv_info_req_done._entry_ptr.148, ptr @rtrs_srv_info_rsp_done._entry, ptr @rtrs_srv_info_rsp_done._entry_ptr, ptr @rtrs_srv_inv_rkey_done._entry, ptr @rtrs_srv_inv_rkey_done._entry_ptr, ptr @rtrs_srv_rdma_cm_handler._entry, ptr @rtrs_srv_rdma_cm_handler._entry.84, ptr @rtrs_srv_rdma_cm_handler._entry_ptr, ptr @rtrs_srv_rdma_cm_handler._entry_ptr.86, ptr @rtrs_srv_rdma_done._entry, ptr @rtrs_srv_rdma_done._entry.19, ptr @rtrs_srv_rdma_done._entry.22, ptr @rtrs_srv_rdma_done._entry.25, ptr @rtrs_srv_rdma_done._entry.28, ptr @rtrs_srv_rdma_done._entry.31, ptr @rtrs_srv_rdma_done._entry_ptr, ptr @rtrs_srv_rdma_done._entry_ptr.21, ptr @rtrs_srv_rdma_done._entry_ptr.24, ptr @rtrs_srv_rdma_done._entry_ptr.27, ptr @rtrs_srv_rdma_done._entry_ptr.30, ptr @rtrs_srv_rdma_done._entry_ptr.33, ptr @rtrs_srv_reg_mr_done._entry, ptr @rtrs_srv_reg_mr_done._entry_ptr, ptr @rtrs_srv_resp_rdma._entry, ptr @rtrs_srv_resp_rdma._entry.3, ptr @rtrs_srv_resp_rdma._entry.7, ptr @rtrs_srv_resp_rdma._entry_ptr, ptr @rtrs_srv_resp_rdma._entry_ptr.5, ptr @rtrs_srv_resp_rdma._entry_ptr.9, ptr @send_io_resp_imm._entry, ptr @send_io_resp_imm._entry_ptr, ptr @always_invalidate, ptr @rtrs_wq, ptr @.str, ptr @rtrs_srv_resp_rdma._rs, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @rtrs_srv_resp_rdma._rs.6, ptr @.str.8, ptr @rtrs_srv_open.__key, ptr @ib_ctx, ptr @.str.10, ptr @rtrs_srv_client, ptr @rtrs_dev_class, ptr @chunk_pool, ptr @dev_pd, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @io_comp_cqe, ptr @local_reg_cqe, ptr @send_io_resp_imm._rs, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @process_write._rs, ptr @.str.38, ptr @process_write._rs.39, ptr @.str.41, ptr @process_write._rs.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @process_read._rs, ptr @.str.50, ptr @process_read._rs.51, ptr @.str.53, ptr @process_read._rs.55, ptr @.str.57, ptr @process_read._rs.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @alloc_srv_ctx.__key, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.120, ptr @get_or_create_srv._rs, ptr @.str.122, ptr @get_or_create_srv.__key, ptr @.str.123, ptr @get_or_create_srv.__key.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @init_completion.__key, ptr @.str.135, ptr @create_con.__key, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @cq_affinity_mask, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.144, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.152, ptr @.str.155, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @rtrs_server_init.__key, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.179, ptr @.str.182, ptr @switch.table.rtrs_srv_resp_rdma, ptr @switch.table.process_io_req, ptr @switch.table.process_io_req.184, ptr @switch.table.rtrs_srv_rdma_cm_handler], section "llvm.metadata"
@0 = internal global [199 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @always_invalidate to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_resp_rdma._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_resp_rdma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_resp_rdma._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_resp_rdma._rs.6 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_resp_rdma._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ib_ctx to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_dev_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chunk_pool to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_pd to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @io_comp_cqe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_reg_cqe to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_io_resp_imm._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_io_resp_imm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_rdma_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_rdma_done._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_rdma_done._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_rdma_done._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_rdma_done._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_rdma_done._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_inv_rkey_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_io_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_write._rs.39 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_write._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_write._rs.43 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_write._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_read._rs.51 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_read._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_read._rs.55 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_read._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_read._rs.59 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_read._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_reg_mr_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_write_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdma_write_sg._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_srv_ctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_add_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_cm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_cm_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_cm_init._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_rdma_cm_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_rdma_cm_handler._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_connect._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_or_create_srv._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_or_create_srv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_or_create_srv.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_or_create_srv.__key.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @map_cont_bufs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_alloc_ops_ids._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_con.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_con._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cq_affinity_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_recv_info_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_info_req_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_info_req_done._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_info_req_done._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_info_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_info_req._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_info_req._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @process_info_req._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @post_recv_path._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_srv_info_rsp_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_do_reject._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_rdma_do_accept._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_server_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_server_init._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtrs_server_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_module_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_module_params._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_module_params._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtrs_srv_resp_rdma to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.process_io_req to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.process_io_req.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rtrs_srv_rdma_cm_handler to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @close_path(ptr noundef %srv_path) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i) #17
  %state.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch.i = icmp ult i32 %1, 2
  br i1 %switch.i, label %if.then, label %rtrs_srv_change_state.exit

rtrs_srv_change_state.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i) #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %state.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i) #17
  %3 = load ptr, ptr @rtrs_wq, align 4
  %close_work = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %close_work) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %rtrs_srv_change_state.exit
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %if.end.if.end15_crit_edge, label %do.end, !prof !415

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @rtrs_srv_resp_rdma(ptr noundef %id, i32 noundef %status) #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %inv_wr.i = alloca %struct.ib_send_wr, align 8
  %imm_wr.i = alloca %struct.ib_rdma_wr, align 8
  %rwr.i = alloca %struct.ib_reg_wr, align 8
  %list.i = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %id, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !416

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 491, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %status25 = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 7
  %4 = ptrtoint ptr %status25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %status, ptr %status25, align 8
  %state = getelementptr inbounds %struct.rtrs_srv_path, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.not = icmp eq i32 %6, 1
  br i1 %cmp.not, label %if.end39, label %if.then26

if.then26:                                        ; preds = %if.end23
  %call27 = tail call i32 @___ratelimit(ptr noundef nonnull @rtrs_srv_resp_rdma._rs, ptr noundef nonnull @__func__.rtrs_srv_resp_rdma) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then26.out_crit_edge, label %do.end32

if.then26.out_crit_edge:                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.end32:                                         ; preds = %if.then26
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %3, i32 0, i32 3
  %kobj = getelementptr inbounds %struct.rtrs_srv_path, ptr %3, i32 0, i32 14
  %7 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj, align 4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %switch.lookup, label %do.end32.rtrs_srv_state_str.exit_crit_edge

do.end32.rtrs_srv_state_str.exit_crit_edge:       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_state_str.exit

switch.lookup:                                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.rtrs_srv_resp_rdma, i32 0, i32 %10
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %rtrs_srv_state_str.exit

rtrs_srv_state_str.exit:                          ; preds = %switch.lookup, %do.end32.rtrs_srv_state_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.15, %do.end32.rtrs_srv_state_str.exit_crit_edge ]
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %sessname, ptr noundef %8, ptr noundef nonnull %retval.0.i) #20
  br label %out

if.end39:                                         ; preds = %if.end23
  %13 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool40.not = icmp eq i8 %13, 0
  br i1 %tobool40.not, label %if.end39.if.end45_crit_edge, label %if.then41

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #19
  %mrs = getelementptr inbounds %struct.rtrs_srv_path, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %mrs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mrs, align 8
  %msg_id = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 1
  %16 = ptrtoint ptr %msg_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %msg_id, align 4
  %arrayidx = getelementptr %struct.rtrs_srv_mr, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rkey, align 4
  %and1.i = and i32 %21, -256
  %conv = add i32 %21, 1
  %lkey.i = getelementptr inbounds %struct.ib_mr, ptr %19, i32 0, i32 2
  %22 = ptrtoint ptr %lkey.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %lkey.i, align 8
  %and.i125 = and i32 %23, -256
  %conv.i = and i32 %conv, 255
  %or.i126 = or i32 %and.i125, %conv.i
  store i32 %or.i126, ptr %lkey.i, align 8
  %or4.i = or i32 %conv.i, %and1.i
  store i32 %or4.i, ptr %rkey, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then41, %if.end39.if.end45_crit_edge
  %sq_wr_avail = getelementptr inbounds %struct.rtrs_con, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !418
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #17
  %24 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 1, ptr elementtype(i32) %sq_wr_avail) #17, !srcloc !419
  %asmresult.i.i.i = extractvalue { i32, i32 } %24, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp48 = icmp slt i32 %asmresult.i.i.i, 0
  br i1 %cmp48, label %do.end53, label %if.end64

do.end53:                                         ; preds = %if.end45
  %sessname55 = getelementptr inbounds %struct.rtrs_path, ptr %3, i32 0, i32 3
  %kobj57 = getelementptr inbounds %struct.rtrs_srv_path, ptr %3, i32 0, i32 14
  %25 = ptrtoint ptr %kobj57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kobj57, align 4
  %cid = getelementptr inbounds %struct.rtrs_con, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cid, align 4
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %sessname55, ptr noundef %26, i32 noundef %28) #20
  %call.i.i124 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #17
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 1, ptr elementtype(i32) %sq_wr_avail) #17, !srcloc !421
  %rsp_wr_wait_lock = getelementptr inbounds %struct.rtrs_srv_con, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rsp_wr_wait_lock) #17
  %wait_list = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 6
  %rsp_wr_wait_list = getelementptr inbounds %struct.rtrs_srv_con, ptr %1, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.rtrs_srv_con, ptr %1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i127 = tail call zeroext i1 @__list_add_valid(ptr noundef %wait_list, ptr noundef %31, ptr noundef %rsp_wr_wait_list) #17
  br i1 %call.i.i127, label %if.end.i.i, label %do.end53.list_add_tail.exit_crit_edge

do.end53.list_add_tail.exit_crit_edge:            ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #19
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %wait_list, ptr %prev.i, align 4
  %33 = ptrtoint ptr %wait_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rsp_wr_wait_list, ptr %wait_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %wait_list, ptr %31, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end53.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rsp_wr_wait_lock) #17
  br label %cleanup

if.end64:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status)
  %tobool65.not = icmp eq i32 %status, 0
  br i1 %tobool65.not, label %lor.lhs.false, label %if.end64.if.then71_crit_edge

if.end64.if.then71_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then71

lor.lhs.false:                                    ; preds = %if.end64
  %dir = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 2
  %36 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dir, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %37)
  %cmp67 = icmp eq i8 %37, 1
  br i1 %cmp67, label %lor.lhs.false.if.then71_crit_edge, label %lor.lhs.false69

lor.lhs.false.if.then71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then71

lor.lhs.false69:                                  ; preds = %lor.lhs.false
  %rd_msg = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 3
  %38 = ptrtoint ptr %rd_msg to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rd_msg, align 4
  %sg_cnt = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %sg_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool70.not = icmp eq i16 %41, 0
  br i1 %tobool70.not, label %lor.lhs.false69.if.then71_crit_edge, label %if.else

lor.lhs.false69.if.then71_crit_edge:              ; preds = %lor.lhs.false69
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then71

if.then71:                                        ; preds = %lor.lhs.false69.if.then71_crit_edge, %lor.lhs.false.if.then71_crit_edge, %if.end64.if.then71_crit_edge
  %call72 = tail call fastcc i32 @send_io_resp_imm(ptr noundef %1, ptr noundef nonnull %id, i32 noundef %status)
  br label %if.end74

if.else:                                          ; preds = %lor.lhs.false69
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %id, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %dma_addr1.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %45, i32 0, i32 11
  %46 = ptrtoint ptr %dma_addr1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_addr1.i, align 8
  %msg_id.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 1
  %48 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %msg_id.i, align 4
  %arrayidx.i = getelementptr i32, ptr %47, i32 %49
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %inv_wr.i) #17
  %52 = call ptr @memset(ptr %inv_wr.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %imm_wr.i) #17
  %53 = call ptr @memset(ptr %imm_wr.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rwr.i) #17
  %54 = call ptr @memset(ptr %rwr.i, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list.i) #17
  %55 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 1
  %56 = getelementptr inbounds %struct.ib_sge, ptr %list.i, i32 0, i32 2
  %57 = call ptr @memset(ptr %list.i, i32 255, i32 16)
  %58 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %sg_cnt, align 2
  %flags4.i = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %39, i32 0, i32 2
  %60 = ptrtoint ptr %flags4.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %flags4.i, align 4
  %62 = and i16 %61, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %tobool.not.i = icmp eq i16 %62, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %59)
  %cmp.not.i = icmp eq i16 %59, 256
  br i1 %cmp.not.i, label %if.end.i, label %if.else.rdma_write_sg.exit_crit_edge

if.else.rdma_write_sg.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %rdma_write_sg.exit

if.end.i:                                         ; preds = %if.else
  %tx_wr.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 4
  %tx_sg.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 5
  %conv7.i = zext i32 %51 to i64
  %63 = ptrtoint ptr %tx_sg.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %conv7.i, ptr %tx_sg.i, align 8
  %len.i = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %39, i32 2, i32 2
  %64 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %len.i, align 4
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #17
  %length.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 5, i32 1
  %67 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp11.i = icmp eq i32 %65, 0
  br i1 %cmp11.i, label %do.end.i, label %if.end15.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname.i = getelementptr inbounds %struct.rtrs_path, ptr %45, i32 0, i32 3
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %sessname.i) #20
  br label %rdma_write_sg.exit

if.end15.i:                                       ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.rtrs_path, ptr %45, i32 0, i32 10
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  %ib_pd.i = getelementptr inbounds %struct.rtrs_ib_dev, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %ib_pd.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ib_pd.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %71, align 4
  %lkey.i128 = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 5, i32 2
  %74 = ptrtoint ptr %lkey.i128 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %lkey.i128, align 4
  %sg_list.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 4, i32 0, i32 2
  %75 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %tx_sg.i, ptr %sg_list.i, align 8
  %num_sge.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 4, i32 0, i32 3
  %76 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %num_sge.i, align 4
  %desc22.i = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %39, i32 0, i32 4
  %77 = ptrtoint ptr %desc22.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %desc22.i, align 8
  %79 = tail call i64 @llvm.bswap.i64(i64 %78) #17
  %remote_addr.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 4, i32 1
  %80 = ptrtoint ptr %remote_addr.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %79, ptr %remote_addr.i, align 8
  %key.i = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %39, i32 2
  %81 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %key.i, align 8
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #17
  %rkey28.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 4, i32 2
  %84 = ptrtoint ptr %rkey28.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %rkey28.i, align 8
  %opcode.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 4, i32 0, i32 4
  %85 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %opcode.i, align 8
  %86 = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 4, i32 0, i32 1
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @io_comp_cqe, ptr %86, align 8
  %ex.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 4, i32 0, i32 6
  %88 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %ex.i, align 8
  %send_flags.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 4, i32 0, i32 5
  %89 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %send_flags.i, align 4
  %.pr.i = load i8, ptr @always_invalidate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool96.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool.not.i, label %if.else95.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end15.i
  br i1 %tobool96.not.i, label %if.then106.i, label %if.then88.i

if.then88.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %90 = ptrtoint ptr %tx_wr.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %rwr.i, ptr %tx_wr.i, align 8
  %91 = ptrtoint ptr %rwr.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %inv_wr.i, ptr %rwr.i, align 8
  %92 = ptrtoint ptr %inv_wr.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %imm_wr.i, ptr %inv_wr.i, align 8
  br label %if.end117.i

if.else95.i:                                      ; preds = %if.end15.i
  br i1 %tobool96.not.i, label %if.else111.i, label %if.then97.i

if.then97.i:                                      ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #19
  %93 = ptrtoint ptr %tx_wr.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %rwr.i, ptr %tx_wr.i, align 8
  %94 = ptrtoint ptr %rwr.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %imm_wr.i, ptr %rwr.i, align 8
  br label %if.end117.i

if.then106.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %95 = ptrtoint ptr %tx_wr.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %inv_wr.i, ptr %tx_wr.i, align 8
  %96 = ptrtoint ptr %inv_wr.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %imm_wr.i, ptr %inv_wr.i, align 8
  br label %if.end117.i

if.else111.i:                                     ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #19
  %97 = ptrtoint ptr %tx_wr.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %imm_wr.i, ptr %tx_wr.i, align 8
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.else111.i, %if.then106.i, %if.then97.i, %if.then88.i
  %wr_cnt.i = getelementptr inbounds %struct.rtrs_con, ptr %43, i32 0, i32 6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_cnt.i, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !422
  call void @llvm.prefetch.p0(ptr %wr_cnt.i, i32 1, i32 3, i32 1) #17
  %98 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_cnt.i, ptr %wr_cnt.i, i32 1, ptr elementtype(i32) %wr_cnt.i) #17, !srcloc !423
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %98, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !424
  %signal_interval.i = getelementptr inbounds %struct.rtrs_path, ptr %45, i32 0, i32 9
  %99 = ptrtoint ptr %signal_interval.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %signal_interval.i, align 8
  %rem.i = urem i32 %asmresult.i.i.i.i.i, %100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool121.not.i = icmp eq i32 %rem.i, 0
  %cond.i = select i1 %tobool121.not.i, i32 2, i32 0
  br i1 %tobool.not.i, label %if.end117.i.if.end129.i_crit_edge, label %if.then123.i

if.end117.i.if.end129.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end129.i

if.then123.i:                                     ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #19
  %sg_list124.i = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr.i, i32 0, i32 2
  %101 = ptrtoint ptr %sg_list124.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %sg_list124.i, align 8
  %num_sge125.i = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr.i, i32 0, i32 3
  %102 = ptrtoint ptr %num_sge125.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %num_sge125.i, align 4
  %opcode126.i = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr.i, i32 0, i32 4
  %103 = ptrtoint ptr %opcode126.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 9, ptr %opcode126.i, align 8
  %104 = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr.i, i32 0, i32 1
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @io_comp_cqe, ptr %104, align 8
  %send_flags127.i = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr.i, i32 0, i32 5
  %106 = ptrtoint ptr %send_flags127.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %send_flags127.i, align 4
  %ex128.i = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr.i, i32 0, i32 6
  %107 = ptrtoint ptr %ex128.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %83, ptr %ex128.i, align 8
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then123.i, %if.end117.i.if.end129.i_crit_edge
  %108 = ptrtoint ptr %imm_wr.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr null, ptr %imm_wr.i, align 8
  %109 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool132.not.i = icmp eq i8 %109, 0
  br i1 %tobool132.not.i, label %if.else174.i, label %if.then133.i

if.then133.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #19
  %mrs.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %45, i32 0, i32 9
  %110 = ptrtoint ptr %mrs.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mrs.i, align 8
  %112 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %msg_id.i, align 4
  %arrayidx135.i = getelementptr %struct.rtrs_srv_mr, ptr %111, i32 %113
  %opcode137.i = getelementptr inbounds %struct.ib_send_wr, ptr %rwr.i, i32 0, i32 4
  %114 = ptrtoint ptr %opcode137.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 32, ptr %opcode137.i, align 8
  %115 = getelementptr inbounds %struct.ib_send_wr, ptr %rwr.i, i32 0, i32 1
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @local_reg_cqe, ptr %115, align 8
  %num_sge140.i = getelementptr inbounds %struct.ib_send_wr, ptr %rwr.i, i32 0, i32 3
  %117 = ptrtoint ptr %num_sge140.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %num_sge140.i, align 4
  %118 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx135.i, align 4
  %mr141.i = getelementptr inbounds %struct.ib_reg_wr, ptr %rwr.i, i32 0, i32 1
  %120 = ptrtoint ptr %mr141.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %mr141.i, align 8
  %send_flags143.i = getelementptr inbounds %struct.ib_send_wr, ptr %rwr.i, i32 0, i32 5
  %121 = ptrtoint ptr %send_flags143.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 0, ptr %send_flags143.i, align 4
  %122 = load ptr, ptr %arrayidx135.i, align 4
  %rkey145.i = getelementptr inbounds %struct.ib_mr, ptr %122, i32 0, i32 3
  %123 = ptrtoint ptr %rkey145.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rkey145.i, align 4
  %key146.i = getelementptr inbounds %struct.ib_reg_wr, ptr %rwr.i, i32 0, i32 2
  %125 = ptrtoint ptr %key146.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %key146.i, align 4
  %access.i = getelementptr inbounds %struct.ib_reg_wr, ptr %rwr.i, i32 0, i32 3
  %126 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 3, ptr %access.i, align 8
  %iu.i = getelementptr %struct.rtrs_srv_mr, ptr %111, i32 %113, i32 5
  %127 = ptrtoint ptr %iu.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %iu.i, align 4
  %buf.i = getelementptr inbounds %struct.rtrs_iu, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %buf.i, align 4
  %conv148.i = trunc i32 %113 to i16
  %131 = call i16 @llvm.bswap.i16(i16 %conv148.i) #17
  %buf_id.i = getelementptr inbounds %struct.rtrs_msg_rkey_rsp, ptr %130, i32 0, i32 1
  %132 = ptrtoint ptr %buf_id.i to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 %131, ptr %buf_id.i, align 2
  %133 = ptrtoint ptr %130 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 1024, ptr %130, align 4
  %134 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx135.i, align 4
  %rkey150.i = getelementptr inbounds %struct.ib_mr, ptr %135, i32 0, i32 3
  %136 = ptrtoint ptr %rkey150.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %rkey150.i, align 4
  %138 = call i32 @llvm.bswap.i32(i32 %137) #17
  %rkey151.i = getelementptr inbounds %struct.rtrs_msg_rkey_rsp, ptr %130, i32 0, i32 2
  %139 = ptrtoint ptr %rkey151.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %rkey151.i, align 4
  %140 = ptrtoint ptr %iu.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %iu.i, align 4
  %dma_addr153.i = getelementptr inbounds %struct.rtrs_iu, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %dma_addr153.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dma_addr153.i, align 4
  %conv154.i = zext i32 %143 to i64
  %144 = ptrtoint ptr %list.i to i32
  call void @__asan_store8_noabort(i32 %144)
  store i64 %conv154.i, ptr %list.i, align 8
  %145 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 8, ptr %55, align 8
  %146 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev.i, align 4
  %ib_pd159.i = getelementptr inbounds %struct.rtrs_ib_dev, ptr %147, i32 0, i32 1
  %148 = ptrtoint ptr %ib_pd159.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ib_pd159.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %149, align 4
  %152 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %151, ptr %56, align 4
  %sg_list163.i = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr.i, i32 0, i32 2
  %153 = ptrtoint ptr %sg_list163.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %list.i, ptr %sg_list163.i, align 8
  %num_sge165.i = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr.i, i32 0, i32 3
  %154 = ptrtoint ptr %num_sge165.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %num_sge165.i, align 4
  %opcode167.i = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr.i, i32 0, i32 4
  %155 = ptrtoint ptr %opcode167.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 3, ptr %opcode167.i, align 8
  %156 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %147, align 4
  %158 = load ptr, ptr %iu.i, align 4
  %dma_addr171.i = getelementptr inbounds %struct.rtrs_iu, ptr %158, i32 0, i32 1
  %159 = ptrtoint ptr %dma_addr171.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %dma_addr171.i, align 4
  %size.i = getelementptr inbounds %struct.rtrs_iu, ptr %158, i32 0, i32 3
  %161 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %size.i, align 4
  %163 = ptrtoint ptr %157 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %157, align 8
  call void @dma_sync_single_for_device(ptr noundef %164, i32 noundef %160, i32 noundef %162, i32 noundef 1) #17
  br label %if.end181.i

if.else174.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #19
  %sg_list176.i = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr.i, i32 0, i32 2
  %165 = ptrtoint ptr %sg_list176.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr null, ptr %sg_list176.i, align 8
  %num_sge178.i = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr.i, i32 0, i32 3
  %166 = ptrtoint ptr %num_sge178.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %num_sge178.i, align 4
  %opcode180.i = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr.i, i32 0, i32 4
  %167 = ptrtoint ptr %opcode180.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 1, ptr %opcode180.i, align 8
  br label %if.end181.i

if.end181.i:                                      ; preds = %if.else174.i, %if.then133.i
  %send_flags183.i = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr.i, i32 0, i32 5
  %168 = ptrtoint ptr %send_flags183.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %cond.i, ptr %send_flags183.i, align 4
  %169 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %msg_id.i, align 4
  %and1.i.i = and i32 %170, 524287
  %cond2.i.i = select i1 %tobool.not.i, i32 268435456, i32 536870912
  %or.i.i = or i32 %and1.i.i, %cond2.i.i
  %ex188.i = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr.i, i32 0, i32 6
  %171 = ptrtoint ptr %ex188.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %or.i.i, ptr %ex188.i, align 8
  %172 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr.i, i32 0, i32 1
  %173 = ptrtoint ptr %172 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @io_comp_cqe, ptr %172, align 8
  %174 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %dev.i, align 4
  %176 = ptrtoint ptr %175 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %175, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %177, align 8
  call void @dma_sync_single_for_device(ptr noundef %179, i32 noundef %51, i32 noundef %66, i32 noundef 0) #17
  %180 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %id, align 8
  %qp.i = getelementptr inbounds %struct.rtrs_con, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #17
  %184 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !425
  %185 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %183, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %186, i32 0, i32 1, i32 6
  %187 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i129 = call i32 %188(ptr noundef %183, ptr noundef %tx_wr.i, ptr noundef nonnull %dummy.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i129)
  %tobool199.not.i = icmp eq i32 %call.i.i129, 0
  br i1 %tobool199.not.i, label %if.end181.i.rdma_write_sg.exit_crit_edge, label %do.end203.i

if.end181.i.rdma_write_sg.exit_crit_edge:         ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rdma_write_sg.exit

do.end203.i:                                      ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname205.i = getelementptr inbounds %struct.rtrs_path, ptr %45, i32 0, i32 3
  %call207.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %sessname205.i, i32 noundef %call.i.i129) #20
  br label %rdma_write_sg.exit

rdma_write_sg.exit:                               ; preds = %do.end203.i, %if.end181.i.rdma_write_sg.exit_crit_edge, %do.end.i, %if.else.rdma_write_sg.exit_crit_edge
  %retval.0.i130 = phi i32 [ -22, %do.end.i ], [ -22, %if.else.rdma_write_sg.exit_crit_edge ], [ %call.i.i129, %do.end203.i ], [ 0, %if.end181.i.rdma_write_sg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list.i) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rwr.i) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %imm_wr.i) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %inv_wr.i) #17
  br label %if.end74

if.end74:                                         ; preds = %rdma_write_sg.exit, %if.then71
  %err.0 = phi i32 [ %call72, %if.then71 ], [ %retval.0.i130, %rdma_write_sg.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool75.not = icmp eq i32 %err.0, 0
  br i1 %tobool75.not, label %if.end74.out_crit_edge, label %if.then76

if.end74.out_crit_edge:                           ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then76:                                        ; preds = %if.end74
  %call77 = call i32 @___ratelimit(ptr noundef nonnull @rtrs_srv_resp_rdma._rs.6, ptr noundef nonnull @__func__.rtrs_srv_resp_rdma) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.then76.if.end89_crit_edge, label %do.end82

if.then76.if.end89_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end89

do.end82:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #19
  %sessname84 = getelementptr inbounds %struct.rtrs_path, ptr %3, i32 0, i32 3
  %kobj86 = getelementptr inbounds %struct.rtrs_srv_path, ptr %3, i32 0, i32 14
  %189 = ptrtoint ptr %kobj86 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %kobj86, align 4
  %call88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %sessname84, i32 noundef %err.0, ptr noundef %190) #20
  br label %if.end89

if.end89:                                         ; preds = %do.end82, %if.then76.if.end89_crit_edge
  %state_lock.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %3, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i) #17
  %191 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %192)
  %switch.i.i = icmp ult i32 %192, 2
  br i1 %switch.i.i, label %if.then.i, label %rtrs_srv_change_state.exit.i

rtrs_srv_change_state.exit.i:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  br label %if.end.i133

if.then.i:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  %193 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 2, ptr %state, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  %194 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %3, i32 0, i32 2
  %call.i.i131 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %194, ptr noundef %close_work.i) #17
  br label %if.end.i133

if.end.i133:                                      ; preds = %if.then.i, %rtrs_srv_change_state.exit.i
  %195 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %196)
  %cmp.not.i132 = icmp eq i32 %196, 2
  br i1 %cmp.not.i132, label %if.end.i133.out_crit_edge, label %do.end.i134, !prof !415

if.end.i133.out_crit_edge:                        ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.end.i134:                                      ; preds = %if.end.i133
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %out

out:                                              ; preds = %do.end.i134, %if.end.i133.out_crit_edge, %if.end74.out_crit_edge, %rtrs_srv_state_str.exit, %if.then26.out_crit_edge
  call fastcc void @rtrs_srv_put_ops_ids(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %out, %list_add_tail.exit, %do.end
  %retval.0 = phi i1 [ true, %do.end ], [ true, %out ], [ false, %list_add_tail.exit ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_io_resp_imm(ptr noundef %con, ptr nocapture noundef readonly %id, i32 noundef %errno) unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %inv_wr = alloca %struct.ib_send_wr, align 8
  %imm_wr = alloca %struct.ib_rdma_wr, align 8
  %rwr = alloca %struct.ib_reg_wr, align 8
  %list = alloca %struct.ib_sge, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %inv_wr) #17
  %2 = call ptr @memset(ptr %inv_wr, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %imm_wr) #17
  %3 = call ptr @memset(ptr %imm_wr, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %rwr) #17
  %4 = call ptr @memset(ptr %rwr, i32 255, i32 56)
  %dir = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 2
  %5 = ptrtoint ptr %dir to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dir, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.then, label %entry.if.else58_crit_edge

entry.if.else58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else58

if.then:                                          ; preds = %entry
  %rd_msg2 = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 3
  %7 = ptrtoint ptr %rd_msg2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rd_msg2, align 4
  %flags3 = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags3, align 4
  %11 = and i16 %10, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.then.if.else58_crit_edge, label %if.then8

if.then.if.else58_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else58

if.then8:                                         ; preds = %if.then
  %sg_cnt5 = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %8, i32 0, i32 3
  %12 = ptrtoint ptr %sg_cnt5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sg_cnt5, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool9.not = icmp eq i16 %13, 0
  br i1 %tobool9.not, label %land.end, label %land.lhs.true

land.end:                                         ; preds = %if.then8
  %.b174 = load i1, ptr @send_io_resp_imm.__already_done, align 1
  br i1 %.b174, label %land.end.if.else58_crit_edge, label %if.then17, !prof !415

land.end.if.else58_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else58

if.then17:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @send_io_resp_imm.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 377, i32 noundef 9, ptr noundef null) #17
  br label %if.else58

land.lhs.true:                                    ; preds = %if.then8
  %14 = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @io_comp_cqe, ptr %14, align 8
  %sg_list = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr, i32 0, i32 2
  %16 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr, i32 0, i32 3
  %17 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %num_sge, align 4
  %opcode = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr, i32 0, i32 4
  %18 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 9, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr, i32 0, i32 5
  %19 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %send_flags, align 4
  %key = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %8, i32 2
  %20 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %key, align 8
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %ex = getelementptr inbounds %struct.ib_send_wr, ptr %inv_wr, i32 0, i32 6
  %23 = ptrtoint ptr %ex to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %ex, align 8
  %24 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool51.not = icmp eq i8 %24, 0
  br i1 %tobool51.not, label %if.then67, label %if.then53

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %inv_wr to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %rwr, ptr %inv_wr, align 8
  %26 = ptrtoint ptr %rwr to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %imm_wr, ptr %rwr, align 8
  br label %if.end74

if.else58:                                        ; preds = %if.then17, %land.end.if.else58_crit_edge, %if.then.if.else58_crit_edge, %entry.if.else58_crit_edge
  %.pr = load i8, ptr @always_invalidate, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool59.not = icmp eq i8 %.pr, 0
  br i1 %tobool59.not, label %if.else58.if.end74_crit_edge, label %if.then60

if.else58.if.end74_crit_edge:                     ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end74

if.then60:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #19
  %27 = ptrtoint ptr %rwr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %imm_wr, ptr %rwr, align 8
  br label %if.end74

if.then67:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %inv_wr to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %imm_wr, ptr %inv_wr, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.then67, %if.then60, %if.else58.if.end74_crit_edge, %if.then53
  %need_inval.1.off0177 = phi i32 [ 536870912, %if.then53 ], [ 268435456, %if.then60 ], [ 536870912, %if.then67 ], [ 268435456, %if.else58.if.end74_crit_edge ]
  %wr.0 = phi ptr [ %inv_wr, %if.then53 ], [ %rwr, %if.then60 ], [ %inv_wr, %if.then67 ], [ %imm_wr, %if.else58.if.end74_crit_edge ]
  %wr_cnt = getelementptr inbounds %struct.rtrs_con, ptr %con, i32 0, i32 6
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_cnt, i32 noundef 4) #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !422
  call void @llvm.prefetch.p0(ptr %wr_cnt, i32 1, i32 3, i32 1) #17
  %29 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wr_cnt, ptr %wr_cnt, i32 1, ptr elementtype(i32) %wr_cnt) #17, !srcloc !423
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %29, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !424
  %signal_interval = getelementptr inbounds %struct.rtrs_path, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %signal_interval to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %signal_interval, align 8
  %rem = urem i32 %asmresult.i.i.i.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool77.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool77.not, i32 2, i32 0
  %msg_id = getelementptr inbounds %struct.rtrs_srv_op, ptr %id, i32 0, i32 1
  %32 = ptrtoint ptr %msg_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %msg_id, align 4
  %34 = call i32 @llvm.abs.i32(i32 %errno, i1 false) #17
  %and.i = shl i32 %34, 19
  %shl.i = and i32 %and.i, 267911168
  %and1.i = and i32 %33, 524287
  %or.i = or i32 %need_inval.1.off0177, %shl.i
  %or.i.i = or i32 %or.i, %and1.i
  %35 = ptrtoint ptr %imm_wr to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %imm_wr, align 8
  %36 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool82.not = icmp eq i8 %36, 0
  br i1 %tobool82.not, label %if.else119, label %if.then83

if.then83:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %list) #17
  %37 = getelementptr inbounds %struct.ib_sge, ptr %list, i32 0, i32 1
  %38 = getelementptr inbounds %struct.ib_sge, ptr %list, i32 0, i32 2
  %mrs = getelementptr inbounds %struct.rtrs_srv_path, ptr %1, i32 0, i32 9
  %39 = ptrtoint ptr %mrs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mrs, align 8
  %arrayidx85 = getelementptr %struct.rtrs_srv_mr, ptr %40, i32 %33
  %41 = ptrtoint ptr %rwr to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %imm_wr, ptr %rwr, align 8
  %opcode90 = getelementptr inbounds %struct.ib_send_wr, ptr %rwr, i32 0, i32 4
  %42 = ptrtoint ptr %opcode90 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 32, ptr %opcode90, align 8
  %43 = getelementptr inbounds %struct.ib_send_wr, ptr %rwr, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @local_reg_cqe, ptr %43, align 8
  %num_sge93 = getelementptr inbounds %struct.ib_send_wr, ptr %rwr, i32 0, i32 3
  %45 = ptrtoint ptr %num_sge93 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %num_sge93, align 4
  %send_flags95 = getelementptr inbounds %struct.ib_send_wr, ptr %rwr, i32 0, i32 5
  %46 = ptrtoint ptr %send_flags95 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %send_flags95, align 4
  %47 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx85, align 4
  %mr96 = getelementptr inbounds %struct.ib_reg_wr, ptr %rwr, i32 0, i32 1
  %49 = ptrtoint ptr %mr96 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %mr96, align 8
  %50 = load ptr, ptr %arrayidx85, align 4
  %rkey = getelementptr inbounds %struct.ib_mr, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %rkey to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rkey, align 4
  %key98 = getelementptr inbounds %struct.ib_reg_wr, ptr %rwr, i32 0, i32 2
  %53 = ptrtoint ptr %key98 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %key98, align 4
  %access = getelementptr inbounds %struct.ib_reg_wr, ptr %rwr, i32 0, i32 3
  %54 = ptrtoint ptr %access to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3, ptr %access, align 8
  %iu = getelementptr %struct.rtrs_srv_mr, ptr %40, i32 %33, i32 5
  %55 = ptrtoint ptr %iu to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %iu, align 4
  %buf = getelementptr inbounds %struct.rtrs_iu, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %buf, align 4
  %conv100 = trunc i32 %33 to i16
  %59 = call i16 @llvm.bswap.i16(i16 %conv100)
  %buf_id = getelementptr inbounds %struct.rtrs_msg_rkey_rsp, ptr %58, i32 0, i32 1
  %60 = ptrtoint ptr %buf_id to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %59, ptr %buf_id, align 2
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 1024, ptr %58, align 4
  %62 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx85, align 4
  %rkey102 = getelementptr inbounds %struct.ib_mr, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %rkey102 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rkey102, align 4
  %66 = call i32 @llvm.bswap.i32(i32 %65)
  %rkey103 = getelementptr inbounds %struct.rtrs_msg_rkey_rsp, ptr %58, i32 0, i32 2
  %67 = ptrtoint ptr %rkey103 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %rkey103, align 4
  %68 = ptrtoint ptr %iu to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iu, align 4
  %dma_addr = getelementptr inbounds %struct.rtrs_iu, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_addr, align 4
  %conv105 = zext i32 %71 to i64
  %72 = ptrtoint ptr %list to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv105, ptr %list, align 8
  %73 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 8, ptr %37, align 8
  %dev = getelementptr inbounds %struct.rtrs_path, ptr %1, i32 0, i32 10
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 4
  %ib_pd = getelementptr inbounds %struct.rtrs_ib_dev, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %ib_pd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ib_pd, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %77, align 4
  %80 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %38, align 4
  %sg_list108 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr, i32 0, i32 2
  %81 = ptrtoint ptr %sg_list108 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %list, ptr %sg_list108, align 8
  %num_sge110 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr, i32 0, i32 3
  %82 = ptrtoint ptr %num_sge110 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %num_sge110, align 4
  %opcode112 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr, i32 0, i32 4
  %83 = ptrtoint ptr %opcode112 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 3, ptr %opcode112, align 8
  %84 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %75, align 4
  %86 = load ptr, ptr %iu, align 4
  %dma_addr116 = getelementptr inbounds %struct.rtrs_iu, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %dma_addr116 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dma_addr116, align 4
  %size = getelementptr inbounds %struct.rtrs_iu, ptr %86, i32 0, i32 3
  %89 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size, align 4
  %91 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %85, align 8
  call void @dma_sync_single_for_device(ptr noundef %92, i32 noundef %88, i32 noundef %90, i32 noundef 1) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %list) #17
  br label %if.end126

if.else119:                                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #19
  %sg_list121 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr, i32 0, i32 2
  %93 = ptrtoint ptr %sg_list121 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %sg_list121, align 8
  %num_sge123 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr, i32 0, i32 3
  %94 = ptrtoint ptr %num_sge123 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %num_sge123, align 4
  %opcode125 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr, i32 0, i32 4
  %95 = ptrtoint ptr %opcode125 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %opcode125, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.else119, %if.then83
  %send_flags128 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr, i32 0, i32 5
  %96 = ptrtoint ptr %send_flags128 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %cond, ptr %send_flags128, align 4
  %97 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @io_comp_cqe, ptr %97, align 8
  %ex131 = getelementptr inbounds %struct.ib_send_wr, ptr %imm_wr, i32 0, i32 6
  %99 = ptrtoint ptr %ex131 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %or.i.i, ptr %ex131, align 8
  %100 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %id, align 8
  %qp = getelementptr inbounds %struct.rtrs_con, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #17
  %104 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !425
  %105 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %103, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %106, i32 0, i32 1, i32 6
  %107 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %108(ptr noundef %103, ptr noundef nonnull %wr.0, ptr noundef nonnull %dummy.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool135.not = icmp eq i32 %call.i, 0
  br i1 %tobool135.not, label %if.end126.if.end146_crit_edge, label %if.then136

if.end126.if.end146_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end146

if.then136:                                       ; preds = %if.end126
  %call137 = call i32 @___ratelimit(ptr noundef nonnull @send_io_resp_imm._rs, ptr noundef nonnull @__func__.send_io_resp_imm) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.then136.if.end146_crit_edge, label %do.end142

if.then136.if.end146_crit_edge:                   ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end146

do.end142:                                        ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #19
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %1, i32 0, i32 3
  %call144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %sessname, i32 noundef %call.i) #20
  br label %if.end146

if.end146:                                        ; preds = %do.end142, %if.then136.if.end146_crit_edge, %if.end126.if.end146_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %rwr) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %imm_wr) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %inv_wr) #17
  ret i32 %call.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtrs_srv_put_ops_ids(ptr noundef %srv_path) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ids_inflight_ref = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 7
  %0 = tail call i32 @llvm.read_register.i32(metadata !405) #17
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !426
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 696, ptr noundef nonnull @.str.48) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %ids_inflight_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ids_inflight_ref, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !415

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !427
  %7 = tail call i32 @llvm.read_register.i32(metadata !405) #17
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, -1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !428
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !416

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #17, !srcloc !429
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !418
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #17
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #17, !srcloc !419
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !416

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i.i, align 4
  tail call void %23(ptr noundef %ids_inflight_ref) #17
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.49) #17
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !430
  %24 = tail call i32 @llvm.read_register.i32(metadata !405) #17
  %and.i.i.i.i.i10.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rtrs_srv_set_sess_priv(ptr nocapture noundef writeonly %srv, ptr noundef %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 9
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %priv, ptr %priv1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rtrs_srv_get_path_name(ptr noundef %srv, ptr noundef %pathname, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %paths_mutex = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %paths_mutex, i32 noundef 0) #17
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %srv_path.0.in = phi ptr [ %srv, %entry ], [ %srv_path.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %srv_path.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %srv_path.0 = load ptr, ptr %srv_path.0.in, align 8
  %cmp.not = icmp eq ptr %srv_path.0, %srv
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.cond
  %state = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.0, i32 0, i32 3
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 8
  %cmp3.not = icmp eq i32 %2, 1
  br i1 %cmp3.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0, i32 0, i32 3
  %3 = tail call i32 @llvm.umin.i32(i32 %len, i32 255)
  %call = tail call i32 @strscpy(ptr noundef %pathname, ptr noundef %sessname, i32 noundef %3) #17
  br label %for.end

for.end:                                          ; preds = %if.end, %for.cond.for.end_crit_edge
  %err.0 = phi i32 [ 0, %if.end ], [ -107, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %paths_mutex) #17
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @rtrs_srv_get_queue_depth(ptr nocapture noundef readonly %srv) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %queue_depth = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 10
  %0 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %queue_depth, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rtrs_srv_open(ptr nocapture noundef readonly %ops, i16 noundef zeroext %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 116) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %entry
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %ops, align 4
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %call7.i.i.i, align 8
  %srv_mutex.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %call7.i.i.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %srv_mutex.i, ptr noundef nonnull @.str.70, ptr noundef nonnull @alloc_srv_ctx.__key) #17
  %srv_list.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %call7.i.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %srv_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %srv_list.i, ptr %srv_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %call7.i.i.i, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %srv_list.i, ptr %prev.i.i, align 8
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 2), ptr noundef nonnull @.str.10, ptr noundef nonnull @rtrs_srv_open.__key) #17
  store ptr %call7.i.i.i, ptr @ib_ctx, align 4
  store i16 %port, ptr getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 1), align 4
  %call2 = tail call i32 @ib_register_client(ptr noundef nonnull @rtrs_srv_client) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then4:                                         ; preds = %do.body
  %6 = ptrtoint ptr %srv_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %srv_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %srv_list.i
  br i1 %cmp.i.not.i, label %if.then4.free_srv_ctx.exit_crit_edge, label %do.end.i, !prof !415

if.then4.free_srv_ctx.exit_crit_edge:             ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_srv_ctx.exit

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2088, i32 noundef 9, ptr noundef null) #17
  br label %free_srv_ctx.exit

free_srv_ctx.exit:                                ; preds = %do.end.i, %if.then4.free_srv_ctx.exit_crit_edge
  tail call void @mutex_destroy(ptr noundef %srv_mutex.i) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #17
  %8 = inttoptr i32 %call2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %free_srv_ctx.exit, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %8, %free_srv_ctx.exit ], [ %call7.i.i.i, %do.body.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rtrs_srv_close(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ib_unregister_client(ptr noundef nonnull @rtrs_srv_client) #17
  tail call void @mutex_destroy(ptr noundef getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 2)) #17
  %srv_mutex.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %ctx, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex.i, i32 noundef 0) #17
  %srv_list.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %ctx, i32 0, i32 4
  %0 = ptrtoint ptr %srv_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn13.i = load ptr, ptr %srv_list.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %srv_list.i
  br i1 %cmp.not14.i, label %entry.close_ctx.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.close_ctx.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %close_ctx.exit

for.body.i:                                       ; preds = %close_paths.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn15.i = phi ptr [ %.pn.i, %close_paths.exit.i.for.body.i_crit_edge ], [ %.pn13.i, %entry.for.body.i_crit_edge ]
  %srv.0.i = getelementptr i8, ptr %.pn15.i, i32 -224
  %paths_mutex.i.i = getelementptr i8, ptr %.pn15.i, i32 -116
  tail call void @mutex_lock_nested(ptr noundef %paths_mutex.i.i, i32 noundef 0) #17
  %1 = ptrtoint ptr %srv.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %srv_path.015.i.i = load ptr, ptr %srv.0.i, align 8
  %cmp.not16.i.i = icmp eq ptr %srv_path.015.i.i, %srv.0.i
  br i1 %cmp.not16.i.i, label %for.body.i.close_paths.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.close_paths.exit.i_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %close_paths.exit.i

for.body.i.i:                                     ; preds = %close_path.exit.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %srv_path.017.i.i = phi ptr [ %srv_path.0.i.i, %close_path.exit.i.i.for.body.i.i_crit_edge ], [ %srv_path.015.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %state_lock.i.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.017.i.i, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i.i.i) #17
  %state.i.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.017.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i.i.i.i = icmp ult i32 %3, 2
  br i1 %switch.i.i.i.i, label %if.then.i.i.i, label %rtrs_srv_change_state.exit.i.i.i

rtrs_srv_change_state.exit.i.i.i:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i.i.i) #17
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state.i.i.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i.i.i) #17
  %5 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.017.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %close_work.i.i.i) #17
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %rtrs_srv_change_state.exit.i.i.i
  %6 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i.i.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i.close_path.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !415

if.end.i.i.i.close_path.exit.i.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %close_path.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %close_path.exit.i.i

close_path.exit.i.i:                              ; preds = %do.end.i.i.i, %if.end.i.i.i.close_path.exit.i.i_crit_edge
  %8 = ptrtoint ptr %srv_path.017.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %srv_path.0.i.i = load ptr, ptr %srv_path.017.i.i, align 8
  %cmp.not.i.i = icmp eq ptr %srv_path.0.i.i, %srv.0.i
  br i1 %cmp.not.i.i, label %close_path.exit.i.i.close_paths.exit.i_crit_edge, label %close_path.exit.i.i.for.body.i.i_crit_edge

close_path.exit.i.i.for.body.i.i_crit_edge:       ; preds = %close_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

close_path.exit.i.i.close_paths.exit.i_crit_edge: ; preds = %close_path.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %close_paths.exit.i

close_paths.exit.i:                               ; preds = %close_path.exit.i.i.close_paths.exit.i_crit_edge, %for.body.i.close_paths.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %paths_mutex.i.i) #17
  %9 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %srv_list.i
  br i1 %cmp.not.i, label %close_paths.exit.i.close_ctx.exit_crit_edge, label %close_paths.exit.i.for.body.i_crit_edge

close_paths.exit.i.for.body.i_crit_edge:          ; preds = %close_paths.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

close_paths.exit.i.close_ctx.exit_crit_edge:      ; preds = %close_paths.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %close_ctx.exit

close_ctx.exit:                                   ; preds = %close_paths.exit.i.close_ctx.exit_crit_edge, %entry.close_ctx.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %srv_mutex.i) #17
  %10 = load ptr, ptr @rtrs_wq, align 4
  tail call void @flush_workqueue(ptr noundef %10) #17
  %11 = ptrtoint ptr %srv_list.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %srv_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %srv_list.i
  br i1 %cmp.i.not.i, label %close_ctx.exit.free_srv_ctx.exit_crit_edge, label %do.end.i, !prof !415

close_ctx.exit.free_srv_ctx.exit_crit_edge:       ; preds = %close_ctx.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_srv_ctx.exit

do.end.i:                                         ; preds = %close_ctx.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2088, i32 noundef 9, ptr noundef null) #17
  br label %free_srv_ctx.exit

free_srv_ctx.exit:                                ; preds = %do.end.i, %close_ctx.exit.free_srv_ctx.exit_crit_edge
  tail call void @mutex_destroy(ptr noundef %srv_mutex.i) #17
  tail call void @kfree(ptr noundef %ctx) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_server_exit() #7 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %0 = load ptr, ptr @rtrs_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #17
  %1 = load ptr, ptr @rtrs_dev_class, align 4
  tail call void @class_destroy(ptr noundef %1) #17
  %2 = load ptr, ptr @chunk_pool, align 4
  tail call void @mempool_destroy(ptr noundef %2) #17
  tail call void @rtrs_rdma_dev_pd_deinit(ptr noundef nonnull @dev_pd) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_rdma_dev_pd_deinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_server_init() #7 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @max_chunk_size, align 4
  %sub = add i32 %0, -4096
  %1 = load i32, ptr @sess_queue_depth, align 4
  %2 = load i8, ptr @always_invalidate, align 1, !range !417
  %3 = zext i8 %2 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.170, i32 noundef %0, i32 noundef %sub, i32 noundef 4096, i32 noundef %1, i32 noundef %3) #20
  tail call void @rtrs_rdma_dev_pd_init(i32 noundef 0, ptr noundef nonnull @dev_pd) #17
  %4 = load i32, ptr @sess_queue_depth, align 4
  %5 = add i32 %4, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %5)
  %6 = icmp ult i32 %5, -65535
  br i1 %6, label %do.end.i, label %if.end.i26

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, i32 noundef %4, i32 noundef 1, i32 noundef 65535) #20
  br label %do.end5

if.end.i26:                                       ; preds = %entry
  %7 = load i32, ptr @max_chunk_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %7)
  %cmp2.i = icmp sgt i32 %7, 8191
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #17, !range !431
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp1.i.i = icmp ult i32 %8, 2
  %or.cond55.i = and i1 %cmp2.i, %cmp1.i.i
  br i1 %or.cond55.i, label %cond.end19.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #19
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.179, i32 noundef %7, i32 noundef 8192) #20
  br label %do.end5

cond.end19.i:                                     ; preds = %if.end.i26
  %sub.i27 = add nsw i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i27)
  %tobool.not.i.i.i = icmp eq i32 %sub.i27, 0
  %9 = tail call i32 @llvm.ctlz.i32(i32 %sub.i27, i1 true) #17, !range !431
  %sub.i.op.i.i28 = xor i32 %9, 31
  %sub.i.i29 = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i28
  %sub21.i = add nsw i32 %7, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub21.i, i1 true) #17, !range !431
  %cond38.i = xor i32 %10, 31
  %add39.i = add nsw i32 %sub.i.i29, %cond38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %add39.i)
  %cmp41.i = icmp sgt i32 %add39.i, 26
  br i1 %cmp41.i, label %do.end45.i, label %if.end

do.end45.i:                                       ; preds = %cond.end19.i
  call void @__sanitizer_cov_trace_pc() #19
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.182, i32 noundef 28, i32 noundef %4, i32 noundef %7) #20
  br label %do.end5

do.end5:                                          ; preds = %do.end45.i, %do.end7.i, %do.end.i
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef -22) #20
  br label %cleanup

if.end:                                           ; preds = %cond.end19.i
  %11 = load i32, ptr @sess_queue_depth, align 4
  %mul = mul i32 %11, 10
  %12 = load i32, ptr @max_chunk_size, align 4
  %dec.i = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %dec.i)
  %tobool.not.i.i = icmp ult i32 %dec.i, 4096
  %shr.i = lshr i32 %dec.i, 12
  %13 = tail call i32 @llvm.ctlz.i32(i32 %shr.i, i1 true) #17, !range !431
  %sub.i.i = sub nuw nsw i32 32, %13
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %14 = inttoptr i32 %cond.i.i to ptr
  %call.i31 = tail call ptr @mempool_create(i32 noundef %mul, ptr noundef nonnull @mempool_alloc_pages, ptr noundef nonnull @mempool_free_pages, ptr noundef %14) #17
  store ptr %call.i31, ptr @chunk_pool, align 4
  %tobool10.not = icmp eq ptr %call.i31, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call14 = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.174, ptr noundef nonnull @rtrs_server_init.__key) #17
  store ptr %call14, ptr @rtrs_dev_class, align 4
  %cmp.i32 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i32, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #19
  %15 = ptrtoint ptr %call14 to i32
  br label %out_chunk_pool

if.end18:                                         ; preds = %if.end12
  %call19 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.175, i32 noundef 0, i32 noundef 0) #17
  store ptr %call19, ptr @rtrs_wq, align 4
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.then21, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %16 = load ptr, ptr @rtrs_dev_class, align 4
  tail call void @class_destroy(ptr noundef %16) #17
  br label %out_chunk_pool

out_chunk_pool:                                   ; preds = %if.then21, %if.then16
  %err.0 = phi i32 [ %15, %if.then16 ], [ -12, %if.then21 ]
  %17 = load ptr, ptr @chunk_pool, align 4
  tail call void @mempool_destroy(ptr noundef %17) #17
  br label %cleanup

cleanup:                                          ; preds = %out_chunk_pool, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end5
  %retval.0 = phi i32 [ -22, %do.end5 ], [ %err.0, %out_chunk_pool ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_rdma_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  %dummy.i.i = alloca ptr, align 4
  %wr.i = alloca %struct.ib_send_wr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %srv2 = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %srv2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %srv2, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 0, label %if.end9
    i32 5, label %entry.cleanup185_crit_edge
  ]

entry.cleanup185_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup185

do.end:                                           ; preds = %entry
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call7 = tail call ptr @ib_wc_status_msg(i32 noundef %9) #22
  %11 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wc, align 8
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %13 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %opcode, align 4
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %15 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vendor_err, align 8
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %17 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %byte_len, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %sessname, ptr noundef %call7, ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %18) #20
  %state_lock.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i) #17
  %state.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %switch.i.i = icmp ult i32 %20, 2
  br i1 %switch.i.i, label %if.then.i, label %rtrs_srv_change_state.exit.i

rtrs_srv_change_state.exit.i:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %21 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %state.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  %22 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 2
  %call.i.i249 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %close_work.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rtrs_srv_change_state.exit.i
  %23 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp.not.i = icmp eq i32 %24, 2
  br i1 %cmp.not.i, label %if.end.i.cleanup185_crit_edge, label %do.end.i, !prof !415

if.end.i.cleanup185_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup185

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %cleanup185

if.end9:                                          ; preds = %entry
  %opcode10 = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %25 = ptrtoint ptr %opcode10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %opcode10, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %26, label %do.end179 [
    i32 129, label %sw.bb
    i32 1, label %if.end9.sw.bb171_crit_edge
    i32 0, label %if.end9.sw.bb171_crit_edge260
  ]

if.end9.sw.bb171_crit_edge260:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb171

if.end9.sw.bb171_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb171

sw.bb:                                            ; preds = %if.end9
  %28 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wc, align 8
  %cmp11.not = icmp eq ptr %29, @io_comp_cqe
  br i1 %cmp11.not, label %if.end38, label %do.end22, !prof !415

do.end22:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1226, i32 noundef 9, ptr noundef null) #17
  br label %cleanup185

if.end38:                                         ; preds = %sw.bb
  %call40 = tail call i32 @rtrs_post_recv_empty(ptr noundef %3, ptr noundef nonnull @io_comp_cqe) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end50, label %do.end45

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  %sessname47 = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %sessname47, i32 noundef %call40) #20
  tail call void @close_path(ptr noundef %5)
  br label %cleanup185

if.end50:                                         ; preds = %if.end38
  %ex = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 6
  %30 = ptrtoint ptr %ex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ex, align 4
  %shr.i = lshr i32 %31, 28
  %32 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %shr.i, label %do.end163 [
    i32 0, label %if.then52
    i32 8, label %if.then89
    i32 9, label %if.then125
  ]

if.then52:                                        ; preds = %if.end50
  %and.i = and i32 %31, 268435455
  %mem_bits = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 13
  %33 = ptrtoint ptr %mem_bits to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mem_bits, align 8
  %shr = lshr i32 %and.i, %34
  %notmask = shl nsw i32 -1, %34
  %sub = xor i32 %notmask, -1
  %and = and i32 %and.i, %sub
  %queue_depth = getelementptr inbounds %struct.rtrs_srv_sess, ptr %7, i32 0, i32 10
  %35 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %queue_depth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %36)
  %cmp54.not = icmp ult i32 %shr, %36
  br i1 %cmp54.not, label %lor.lhs.false, label %if.then52.do.end59_crit_edge

if.then52.do.end59_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end59

lor.lhs.false:                                    ; preds = %if.then52
  %37 = load i32, ptr @max_chunk_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %37)
  %cmp55.not = icmp ult i32 %and, %37
  br i1 %cmp55.not, label %if.end64, label %lor.lhs.false.do.end59_crit_edge

lor.lhs.false.do.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end59

do.end59:                                         ; preds = %lor.lhs.false.do.end59_crit_edge, %if.then52.do.end59_crit_edge
  %sessname61 = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %sessname61, i32 noundef %shr, i32 noundef %and) #20
  tail call void @close_path(ptr noundef %5)
  br label %cleanup185

if.end64:                                         ; preds = %lor.lhs.false
  %38 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool65.not = icmp eq i8 %38, 0
  br i1 %tobool65.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.end64
  %mrs = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 9
  %39 = ptrtoint ptr %mrs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mrs, align 8
  %arrayidx = getelementptr %struct.rtrs_srv_mr, ptr %40, i32 %shr
  %msg_off = getelementptr %struct.rtrs_srv_mr, ptr %40, i32 %shr, i32 4
  %41 = ptrtoint ptr %msg_off to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %and, ptr %msg_off, align 4
  %msg_id67 = getelementptr %struct.rtrs_srv_mr, ptr %40, i32 %shr, i32 3
  %42 = ptrtoint ptr %msg_id67 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr, ptr %msg_id67, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %wr.i) #17
  %43 = call ptr @memset(ptr %wr.i, i32 255, i32 40)
  %44 = ptrtoint ptr %wr.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %wr.i, align 8
  %45 = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 1
  %inv_cqe.i = getelementptr %struct.rtrs_srv_mr, ptr %40, i32 %shr, i32 2
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %inv_cqe.i, ptr %45, align 8
  %sg_list.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 2
  %47 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %sg_list.i, align 8
  %num_sge.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 3
  %48 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %num_sge.i, align 4
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 4
  %49 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 7, ptr %opcode.i, align 8
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 5
  %50 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %send_flags.i, align 4
  %ex.i = getelementptr inbounds %struct.ib_send_wr, ptr %wr.i, i32 0, i32 6
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rkey.i, align 4
  %55 = ptrtoint ptr %ex.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %ex.i, align 8
  %56 = ptrtoint ptr %inv_cqe.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @rtrs_srv_inv_rkey_done, ptr %inv_cqe.i, align 4
  %qp.i = getelementptr inbounds %struct.rtrs_con, ptr %3, i32 0, i32 1
  %57 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %qp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i.i) #17
  %59 = ptrtoint ptr %dummy.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i.i, align 4, !annotation !425
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %58, align 4
  %post_send.i.i = getelementptr inbounds %struct.ib_device, ptr %61, i32 0, i32 1, i32 6
  %62 = ptrtoint ptr %post_send.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %post_send.i.i, align 4
  %call.i.i250 = call i32 %63(ptr noundef %58, ptr noundef nonnull %wr.i, ptr noundef nonnull %dummy.i.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i.i) #17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %wr.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i250)
  %tobool69.not = icmp eq i32 %call.i.i250, 0
  br i1 %tobool69.not, label %if.then66.cleanup185_crit_edge, label %do.end73

if.then66.cleanup185_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup185

do.end73:                                         ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #19
  %sessname75 = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %sessname75, i32 noundef %call.i.i250) #20
  call void @close_path(ptr noundef %5)
  br label %cleanup185

if.else:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #19
  %chunks = getelementptr inbounds %struct.rtrs_srv_sess, ptr %7, i32 0, i32 11
  %64 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chunks, align 8
  %arrayidx79 = getelementptr ptr, ptr %65, i32 %shr
  %66 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx79, align 4
  %call80 = tail call ptr @page_address(ptr noundef %67) #17
  %add.ptr = getelementptr i8, ptr %call80, i32 %and
  tail call fastcc void @process_io_req(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %shr, i32 noundef %and)
  br label %cleanup185

if.then89:                                        ; preds = %if.end50
  %cid = getelementptr inbounds %struct.rtrs_con, ptr %3, i32 0, i32 4
  %68 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool92.not = icmp eq i32 %69, 0
  br i1 %tobool92.not, label %if.then89.if.end114_crit_edge, label %do.end108, !prof !415

if.then89.if.end114_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end114

do.end108:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1265, i32 noundef 9, ptr noundef null) #17
  br label %if.end114

if.end114:                                        ; preds = %do.end108, %if.then89.if.end114_crit_edge
  tail call void @rtrs_send_hb_ack(ptr noundef %5) #17
  br label %cleanup185

if.then125:                                       ; preds = %if.end50
  %cid128 = getelementptr inbounds %struct.rtrs_con, ptr %3, i32 0, i32 4
  %70 = ptrtoint ptr %cid128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cid128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool129.not = icmp eq i32 %71, 0
  br i1 %tobool129.not, label %if.then125.if.end151_crit_edge, label %do.end145, !prof !415

if.then125.if.end151_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end151

do.end145:                                        ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1268, i32 noundef 9, ptr noundef null) #17
  br label %if.end151

if.end151:                                        ; preds = %do.end145, %if.then125.if.end151_crit_edge
  %hb_missed_cnt = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 17
  %72 = ptrtoint ptr %hb_missed_cnt to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %hb_missed_cnt, align 8
  br label %cleanup185

do.end163:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #19
  %sessname165 = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %sessname165, i32 noundef %shr.i) #20
  br label %cleanup185

sw.bb171:                                         ; preds = %if.end9.sw.bb171_crit_edge, %if.end9.sw.bb171_crit_edge260
  %signal_interval = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 9
  %73 = ptrtoint ptr %signal_interval to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %signal_interval, align 8
  %sq_wr_avail = getelementptr inbounds %struct.rtrs_con, ptr %3, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %sq_wr_avail, i32 1, i32 3, i32 1) #17
  %75 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sq_wr_avail, ptr %sq_wr_avail, i32 %74, ptr elementtype(i32) %sq_wr_avail) #17, !srcloc !421
  %rsp_wr_wait_list = getelementptr inbounds %struct.rtrs_srv_con, ptr %3, i32 0, i32 1
  %76 = ptrtoint ptr %rsp_wr_wait_list to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %rsp_wr_wait_list, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !432
  %cmp.i.not.i = icmp eq ptr %77, %rsp_wr_wait_list
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %sw.bb171.if.then175_crit_edge

sw.bb171.if.then175_crit_edge:                    ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then175

list_empty_careful.exit:                          ; preds = %sw.bb171
  %prev.i = getelementptr inbounds %struct.rtrs_srv_con, ptr %3, i32 0, i32 1, i32 1
  %78 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %79, %rsp_wr_wait_list
  br i1 %cmp.i.not, label %list_empty_careful.exit.cleanup185_crit_edge, label %list_empty_careful.exit.if.then175_crit_edge

list_empty_careful.exit.if.then175_crit_edge:     ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then175

list_empty_careful.exit.cleanup185_crit_edge:     ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup185

if.then175:                                       ; preds = %list_empty_careful.exit.if.then175_crit_edge, %sw.bb171.if.then175_crit_edge
  %rsp_wr_wait_lock.i = getelementptr inbounds %struct.rtrs_srv_con, ptr %3, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %rsp_wr_wait_lock.i) #17
  br label %while.cond.i

while.cond.i:                                     ; preds = %list_del.exit.i.while.cond.i_crit_edge, %if.then175
  %80 = ptrtoint ptr %rsp_wr_wait_list to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile ptr, ptr %rsp_wr_wait_list, align 4
  %cmp.i.not.i251 = icmp eq ptr %81, %rsp_wr_wait_list
  br i1 %cmp.i.not.i251, label %while.cond.i.rtrs_rdma_process_wr_wait_list.exit_crit_edge, label %while.body.i

while.cond.i.rtrs_rdma_process_wr_wait_list.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_rdma_process_wr_wait_list.exit

while.body.i:                                     ; preds = %while.cond.i
  %add.ptr.i = getelementptr i8, ptr %81, i32 -88
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %81) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %prev.i.i.i, align 4
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %81, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %83, ptr %prev1.i.i.i.i, align 4
  %87 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %85, ptr %83, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %88 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 256 to ptr), ptr %81, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %89 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %rsp_wr_wait_lock.i) #17
  %status.i = getelementptr i8, ptr %81, i32 8
  %90 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %status.i, align 8
  %call3.i = tail call zeroext i1 @rtrs_srv_resp_rdma(ptr noundef %add.ptr.i, i32 noundef %91) #17
  tail call void @_raw_spin_lock(ptr noundef %rsp_wr_wait_lock.i) #17
  br i1 %call3.i, label %list_del.exit.i.while.cond.i_crit_edge, label %if.then.i252

list_del.exit.i.while.cond.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i

if.then.i252:                                     ; preds = %list_del.exit.i
  %92 = ptrtoint ptr %rsp_wr_wait_list to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rsp_wr_wait_list, align 4
  %call.i.i19.i = tail call zeroext i1 @__list_add_valid(ptr noundef %81, ptr noundef %rsp_wr_wait_list, ptr noundef %93) #17
  br i1 %call.i.i19.i, label %if.end.i.i20.i, label %if.then.i252.rtrs_rdma_process_wr_wait_list.exit_crit_edge

if.then.i252.rtrs_rdma_process_wr_wait_list.exit_crit_edge: ; preds = %if.then.i252
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_rdma_process_wr_wait_list.exit

if.end.i.i20.i:                                   ; preds = %if.then.i252
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.le = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %81, ptr %prev1.i.i.i, align 4
  %95 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %93, ptr %81, align 4
  %96 = ptrtoint ptr %prev.i.i.le to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %rsp_wr_wait_list, ptr %prev.i.i.le, align 4
  %97 = ptrtoint ptr %rsp_wr_wait_list to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %81, ptr %rsp_wr_wait_list, align 4
  br label %rtrs_rdma_process_wr_wait_list.exit

rtrs_rdma_process_wr_wait_list.exit:              ; preds = %if.end.i.i20.i, %if.then.i252.rtrs_rdma_process_wr_wait_list.exit_crit_edge, %while.cond.i.rtrs_rdma_process_wr_wait_list.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %rsp_wr_wait_lock.i) #17
  br label %cleanup185

do.end179:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %sessname181 = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call184 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %sessname181, i32 noundef %26) #20
  br label %cleanup185

cleanup185:                                       ; preds = %do.end179, %rtrs_rdma_process_wr_wait_list.exit, %list_empty_careful.exit.cleanup185_crit_edge, %do.end163, %if.end151, %if.end114, %if.else, %do.end73, %if.then66.cleanup185_crit_edge, %do.end59, %do.end45, %do.end22, %do.end.i, %if.end.i.cleanup185_crit_edge, %entry.cleanup185_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_post_recv_empty(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @process_io_req(ptr noundef %con, ptr noundef %msg, i32 noundef %id, i32 noundef %off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %con, align 4
  %dev = getelementptr inbounds %struct.rtrs_path, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dma_addr = getelementptr inbounds %struct.rtrs_srv_path, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_addr, align 8
  %arrayidx = getelementptr i32, ptr %7, i32 %id
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = load i32, ptr @max_chunk_size, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %12, i32 noundef %9, i32 noundef %10, i32 noundef 0) #17
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %msg, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %16 = zext i16 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.187)
  switch i16 %15, label %do.end [
    i16 2, label %sw.bb
    i16 3, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  %17 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %con, align 4
  %state.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 1
  br i1 %cmp.not.i, label %if.end8.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  %call3.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_write._rs, ptr noundef nonnull @__func__.process_write) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then.i.cleanup_crit_edge, label %do.end.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i:                                         ; preds = %if.then.i
  %sessname.i = getelementptr inbounds %struct.rtrs_path, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %22)
  %23 = icmp ult i32 %22, 4
  br i1 %23, label %switch.lookup, label %do.end.i.rtrs_srv_state_str.exit.i_crit_edge

do.end.i.rtrs_srv_state_str.exit.i_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_state_str.exit.i

switch.lookup:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.process_io_req, i32 0, i32 %22
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %rtrs_srv_state_str.exit.i

rtrs_srv_state_str.exit.i:                        ; preds = %switch.lookup, %do.end.i.rtrs_srv_state_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.15, %do.end.i.rtrs_srv_state_str.exit.i_crit_edge ]
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %sessname.i, ptr noundef nonnull %retval.0.i.i) #20
  br label %cleanup

if.end8.i:                                        ; preds = %sw.bb
  %srv1.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %18, i32 0, i32 1
  %25 = ptrtoint ptr %srv1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %srv1.i, align 8
  %ctx2.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctx2.i, align 4
  tail call fastcc void @rtrs_srv_get_ops_ids(ptr noundef %18) #17
  %stats.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %18, i32 0, i32 15
  %29 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stats.i, align 4
  %arrayidx.i.i = getelementptr %struct.rtrs_srv_stats, ptr %30, i32 0, i32 1, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %arrayidx.i.i) #17
  %conv.i.i = zext i32 %off to i64
  %size_total.i.i = getelementptr %struct.rtrs_srv_stats, ptr %30, i32 0, i32 1, i32 0, i32 1, i32 1
  %call.i.i6.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %size_total.i.i, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %conv.i.i, ptr noundef %size_total.i.i) #17
  %ops_ids.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %18, i32 0, i32 6
  %31 = ptrtoint ptr %ops_ids.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ops_ids.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %32, i32 %id
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %con, ptr %34, align 8
  %dir.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %34, i32 0, i32 2
  %36 = ptrtoint ptr %dir.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %dir.i, align 8
  %msg_id.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %34, i32 0, i32 1
  %37 = ptrtoint ptr %msg_id.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %id, ptr %msg_id.i, align 4
  %usr_len10.i = getelementptr inbounds %struct.rtrs_msg_rdma_write, ptr %msg, i32 0, i32 1
  %38 = ptrtoint ptr %usr_len10.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %usr_len10.i, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #17
  %conv.i = zext i16 %40 to i32
  %sub.i = sub i32 %off, %conv.i
  %chunks.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %26, i32 0, i32 11
  %41 = ptrtoint ptr %chunks.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chunks.i, align 8
  %arrayidx11.i = getelementptr ptr, ptr %42, i32 %id
  %43 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx11.i, align 4
  %call12.i = tail call ptr @page_address(ptr noundef %44) #17
  %45 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %28, align 4
  %priv.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %26, i32 0, i32 9
  %47 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %priv.i, align 8
  %add.ptr.i = getelementptr i8, ptr %call12.i, i32 %sub.i
  %call13.i = tail call i32 %46(ptr noundef %48, ptr noundef %34, i32 noundef 1, ptr noundef %call12.i, i32 noundef %sub.i, ptr noundef %add.ptr.i, i32 noundef %conv.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end8.i.cleanup_crit_edge, label %if.then15.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then15.i:                                      ; preds = %if.end8.i
  %call16.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_write._rs.39, ptr noundef nonnull @__func__.process_write) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.then15.i.send_err_msg.i_crit_edge, label %do.end21.i

if.then15.i.send_err_msg.i_crit_edge:             ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_err_msg.i

do.end21.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname23.i = getelementptr inbounds %struct.rtrs_path, ptr %18, i32 0, i32 3
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %sessname23.i, i32 noundef %call13.i) #20
  br label %send_err_msg.i

send_err_msg.i:                                   ; preds = %do.end21.i, %if.then15.i.send_err_msg.i_crit_edge
  %call28.i = tail call fastcc i32 @send_io_resp_imm(ptr noundef %con, ptr noundef %34, i32 noundef %call13.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then31.i, label %send_err_msg.i.if.end43.i_crit_edge

send_err_msg.i.if.end43.i_crit_edge:              ; preds = %send_err_msg.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43.i

if.then31.i:                                      ; preds = %send_err_msg.i
  %call32.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_write._rs.43, ptr noundef nonnull @__func__.process_write) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.then31.i.if.end42.i_crit_edge, label %do.end37.i

if.then31.i.if.end42.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42.i

do.end37.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname39.i = getelementptr inbounds %struct.rtrs_path, ptr %18, i32 0, i32 3
  %call41.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %sessname39.i, i32 noundef %id, i32 noundef %call28.i) #20
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end37.i, %if.then31.i.if.end42.i_crit_edge
  %state_lock.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %18, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i.i) #17
  %49 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %switch.i.i.i = icmp ult i32 %50, 2
  br i1 %switch.i.i.i, label %if.then.i.i, label %rtrs_srv_change_state.exit.i.i

rtrs_srv_change_state.exit.i.i:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i.i) #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #19
  %51 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %state.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i.i) #17
  %52 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %18, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %close_work.i.i) #17
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %rtrs_srv_change_state.exit.i.i
  %53 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp.not.i.i = icmp eq i32 %54, 2
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end43.i_crit_edge, label %do.end.i.i, !prof !415

if.end.i.i.if.end43.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end.i.i, %if.end.i.i.if.end43.i_crit_edge, %send_err_msg.i.if.end43.i_crit_edge
  tail call fastcc void @rtrs_srv_put_ops_ids(ptr noundef %18) #17
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %55 = ptrtoint ptr %con to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %con, align 4
  %srv1.i20 = getelementptr inbounds %struct.rtrs_srv_path, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %srv1.i20 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %srv1.i20, align 8
  %ctx2.i21 = getelementptr inbounds %struct.rtrs_srv_sess, ptr %58, i32 0, i32 7
  %59 = ptrtoint ptr %ctx2.i21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctx2.i21, align 4
  %state.i22 = getelementptr inbounds %struct.rtrs_srv_path, ptr %56, i32 0, i32 3
  %61 = ptrtoint ptr %state.i22 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp.not.i23 = icmp eq i32 %62, 1
  br i1 %cmp.not.i23, label %if.end8.i36, label %if.then.i26

if.then.i26:                                      ; preds = %sw.bb4
  %call3.i24 = tail call i32 @___ratelimit(ptr noundef nonnull @process_read._rs, ptr noundef nonnull @__func__.process_read) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i24)
  %tobool.not.i25 = icmp eq i32 %call3.i24, 0
  br i1 %tobool.not.i25, label %if.then.i26.cleanup_crit_edge, label %do.end.i28

if.then.i26.cleanup_crit_edge:                    ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i28:                                       ; preds = %if.then.i26
  %sessname.i27 = getelementptr inbounds %struct.rtrs_path, ptr %56, i32 0, i32 3
  %63 = ptrtoint ptr %state.i22 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %64)
  %65 = icmp ult i32 %64, 4
  br i1 %65, label %switch.lookup70, label %do.end.i28.rtrs_srv_state_str.exit.i35_crit_edge

do.end.i28.rtrs_srv_state_str.exit.i35_crit_edge: ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_state_str.exit.i35

switch.lookup70:                                  ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep71 = getelementptr inbounds [4 x ptr], ptr @switch.table.process_io_req.184, i32 0, i32 %64
  %66 = ptrtoint ptr %switch.gep71 to i32
  call void @__asan_load4_noabort(i32 %66)
  %switch.load72 = load ptr, ptr %switch.gep71, align 4
  br label %rtrs_srv_state_str.exit.i35

rtrs_srv_state_str.exit.i35:                      ; preds = %switch.lookup70, %do.end.i28.rtrs_srv_state_str.exit.i35_crit_edge
  %retval.0.i.i33 = phi ptr [ %switch.load72, %switch.lookup70 ], [ @.str.15, %do.end.i28.rtrs_srv_state_str.exit.i35_crit_edge ]
  %call7.i34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %sessname.i27, ptr noundef nonnull %retval.0.i.i33) #20
  br label %cleanup

if.end8.i36:                                      ; preds = %sw.bb4
  %sg_cnt.i = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %msg, i32 0, i32 3
  %67 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %sg_cnt.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %68)
  %switch.i = icmp ult i16 %68, 2
  br i1 %switch.i, label %if.end27.i, label %if.then15.i39

if.then15.i39:                                    ; preds = %if.end8.i36
  %call16.i37 = tail call i32 @___ratelimit(ptr noundef nonnull @process_read._rs.51, ptr noundef nonnull @__func__.process_read) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i37)
  %tobool17.not.i38 = icmp eq i32 %call16.i37, 0
  br i1 %tobool17.not.i38, label %if.then15.i39.cleanup_crit_edge, label %do.end21.i42

if.then15.i39.cleanup_crit_edge:                  ; preds = %if.then15.i39
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end21.i42:                                     ; preds = %if.then15.i39
  call void @__sanitizer_cov_trace_pc() #19
  %sessname23.i40 = getelementptr inbounds %struct.rtrs_path, ptr %56, i32 0, i32 3
  %call25.i41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %sessname23.i40) #20
  br label %cleanup

if.end27.i:                                       ; preds = %if.end8.i36
  tail call fastcc void @rtrs_srv_get_ops_ids(ptr noundef %56) #17
  %stats.i43 = getelementptr inbounds %struct.rtrs_srv_path, ptr %56, i32 0, i32 15
  %69 = ptrtoint ptr %stats.i43 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %stats.i43, align 4
  %rdma_stats.i.i = getelementptr inbounds %struct.rtrs_srv_stats, ptr %70, i32 0, i32 1
  %call.i.i.i.i44 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rdma_stats.i.i, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %rdma_stats.i.i) #17
  %conv.i.i45 = zext i32 %off to i64
  %size_total.i.i46 = getelementptr %struct.rtrs_srv_stats, ptr %70, i32 0, i32 1, i32 0, i32 0, i32 1
  %call.i.i6.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %size_total.i.i46, i32 noundef 8) #17
  tail call void @generic_atomic64_add(i64 noundef %conv.i.i45, ptr noundef %size_total.i.i46) #17
  %ops_ids.i48 = getelementptr inbounds %struct.rtrs_srv_path, ptr %56, i32 0, i32 6
  %71 = ptrtoint ptr %ops_ids.i48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops_ids.i48, align 4
  %arrayidx.i49 = getelementptr ptr, ptr %72, i32 %id
  %73 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i49, align 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %con, ptr %74, align 8
  %dir.i50 = getelementptr inbounds %struct.rtrs_srv_op, ptr %74, i32 0, i32 2
  %76 = ptrtoint ptr %dir.i50 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %dir.i50, align 8
  %msg_id.i51 = getelementptr inbounds %struct.rtrs_srv_op, ptr %74, i32 0, i32 1
  %77 = ptrtoint ptr %msg_id.i51 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %id, ptr %msg_id.i51, align 4
  %rd_msg.i = getelementptr inbounds %struct.rtrs_srv_op, ptr %74, i32 0, i32 3
  %78 = ptrtoint ptr %rd_msg.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %msg, ptr %rd_msg.i, align 4
  %usr_len29.i = getelementptr inbounds %struct.rtrs_msg_rdma_read, ptr %msg, i32 0, i32 1
  %79 = ptrtoint ptr %usr_len29.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %usr_len29.i, align 2
  %81 = tail call i16 @llvm.bswap.i16(i16 %80) #17
  %conv30.i = zext i16 %81 to i32
  %sub.i52 = sub i32 %off, %conv30.i
  %chunks.i53 = getelementptr inbounds %struct.rtrs_srv_sess, ptr %58, i32 0, i32 11
  %82 = ptrtoint ptr %chunks.i53 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %chunks.i53, align 8
  %arrayidx31.i = getelementptr ptr, ptr %83, i32 %id
  %84 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx31.i, align 4
  %call32.i54 = tail call ptr @page_address(ptr noundef %85) #17
  %86 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %60, align 4
  %priv.i55 = getelementptr inbounds %struct.rtrs_srv_sess, ptr %58, i32 0, i32 9
  %88 = ptrtoint ptr %priv.i55 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %priv.i55, align 8
  %add.ptr.i56 = getelementptr i8, ptr %call32.i54, i32 %sub.i52
  %call33.i = tail call i32 %87(ptr noundef %89, ptr noundef %74, i32 noundef 0, ptr noundef %call32.i54, i32 noundef %sub.i52, ptr noundef %add.ptr.i56, i32 noundef %conv30.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end27.i.cleanup_crit_edge, label %if.then35.i

if.end27.i.cleanup_crit_edge:                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then35.i:                                      ; preds = %if.end27.i
  %call36.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_read._rs.55, ptr noundef nonnull @__func__.process_read) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then35.i.send_err_msg.i57_crit_edge, label %do.end41.i

if.then35.i.send_err_msg.i57_crit_edge:           ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %send_err_msg.i57

do.end41.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname43.i = getelementptr inbounds %struct.rtrs_path, ptr %56, i32 0, i32 3
  %call45.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %sessname43.i, i32 noundef %id, i32 noundef %call33.i) #20
  br label %send_err_msg.i57

send_err_msg.i57:                                 ; preds = %do.end41.i, %if.then35.i.send_err_msg.i57_crit_edge
  %call48.i = tail call fastcc i32 @send_io_resp_imm(ptr noundef %con, ptr noundef %74, i32 noundef %call33.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.then51.i, label %send_err_msg.i57.if.end63.i_crit_edge

send_err_msg.i57.if.end63.i_crit_edge:            ; preds = %send_err_msg.i57
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63.i

if.then51.i:                                      ; preds = %send_err_msg.i57
  %call52.i = tail call i32 @___ratelimit(ptr noundef nonnull @process_read._rs.59, ptr noundef nonnull @__func__.process_read) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.then51.i.if.end62.i_crit_edge, label %do.end57.i

if.then51.i.if.end62.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62.i

do.end57.i:                                       ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname59.i = getelementptr inbounds %struct.rtrs_path, ptr %56, i32 0, i32 3
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %sessname59.i, i32 noundef %id, i32 noundef %call48.i) #20
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end57.i, %if.then51.i.if.end62.i_crit_edge
  %state_lock.i.i.i58 = getelementptr inbounds %struct.rtrs_srv_path, ptr %56, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i.i58) #17
  %90 = ptrtoint ptr %state.i22 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %state.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %switch.i.i.i59 = icmp ult i32 %91, 2
  br i1 %switch.i.i.i59, label %if.then.i.i63, label %rtrs_srv_change_state.exit.i.i60

rtrs_srv_change_state.exit.i.i60:                 ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i.i58) #17
  br label %if.end.i.i65

if.then.i.i63:                                    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #19
  %92 = ptrtoint ptr %state.i22 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %state.i22, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i.i58) #17
  %93 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i.i61 = getelementptr inbounds %struct.rtrs_srv_path, ptr %56, i32 0, i32 2
  %call.i.i.i62 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %93, ptr noundef %close_work.i.i61) #17
  br label %if.end.i.i65

if.end.i.i65:                                     ; preds = %if.then.i.i63, %rtrs_srv_change_state.exit.i.i60
  %94 = ptrtoint ptr %state.i22 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %state.i22, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp.not.i.i64 = icmp eq i32 %95, 2
  br i1 %cmp.not.i.i64, label %if.end.i.i65.if.end63.i_crit_edge, label %do.end.i.i66, !prof !415

if.end.i.i65.if.end63.i_crit_edge:                ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63.i

do.end.i.i66:                                     ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end.i.i66, %if.end.i.i65.if.end63.i_crit_edge, %send_err_msg.i57.if.end63.i_crit_edge
  tail call fastcc void @rtrs_srv_put_ops_ids(ptr noundef %56) #17
  br label %cleanup

do.end:                                           ; preds = %entry
  %conv3 = zext i16 %15 to i32
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %1, i32 0, i32 3
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %sessname, i32 noundef %conv3) #20
  %state_lock.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i) #17
  %state.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %1, i32 0, i32 3
  %96 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %switch.i.i = icmp ult i32 %97, 2
  br i1 %switch.i.i, label %if.then.i67, label %rtrs_srv_change_state.exit.i

rtrs_srv_change_state.exit.i:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  br label %if.end.i

if.then.i67:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %98 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %state.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  %99 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %99, ptr noundef %close_work.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i67, %rtrs_srv_change_state.exit.i
  %100 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %101)
  %cmp.not.i68 = icmp eq i32 %101, 2
  br i1 %cmp.not.i68, label %if.end.i.cleanup_crit_edge, label %do.end.i69, !prof !415

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i69:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end.i69, %if.end.i.cleanup_crit_edge, %if.end63.i, %if.end27.i.cleanup_crit_edge, %do.end21.i42, %if.then15.i39.cleanup_crit_edge, %rtrs_srv_state_str.exit.i35, %if.then.i26.cleanup_crit_edge, %if.end43.i, %if.end8.i.cleanup_crit_edge, %rtrs_srv_state_str.exit.i, %if.then.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_send_hb_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_inv_rkey_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wc, align 8
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_context, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %srv2 = getelementptr inbounds %struct.rtrs_srv_path, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %srv2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %srv2, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %7, i32 0, i32 3
  %call5 = tail call ptr @ib_wc_status_msg(i32 noundef %11) #22
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %sessname, ptr noundef %call5) #20
  %state_lock.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %7, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i) #17
  %state.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %7, i32 0, i32 3
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch.i.i = icmp ult i32 %13, 2
  br i1 %switch.i.i, label %if.then.i, label %rtrs_srv_change_state.exit.i

rtrs_srv_change_state.exit.i:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %state.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  %15 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %7, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %15, ptr noundef %close_work.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rtrs_srv_change_state.exit.i
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 2
  br i1 %cmp.not.i, label %if.end.i.if.end_crit_edge, label %do.end.i, !prof !415

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %msg_id7 = getelementptr i8, ptr %1, i32 4
  %18 = ptrtoint ptr %msg_id7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %msg_id7, align 4
  %msg_off = getelementptr i8, ptr %1, i32 8
  %20 = ptrtoint ptr %msg_off to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msg_off, align 4
  %chunks = getelementptr inbounds %struct.rtrs_srv_sess, ptr %9, i32 0, i32 11
  %22 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chunks, align 8
  %arrayidx = getelementptr ptr, ptr %23, i32 %19
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call ptr @page_address(ptr noundef %25) #17
  %add.ptr9 = getelementptr i8, ptr %call8, i32 %21
  tail call fastcc void @process_io_req(ptr noundef %5, ptr noundef %add.ptr9, i32 noundef %19, i32 noundef %21)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rtrs_srv_get_ops_ids(ptr noundef %srv_path) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ids_inflight_ref = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 7
  %0 = tail call i32 @llvm.read_register.i32(metadata !405) #17
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !426
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 696, ptr noundef nonnull @.str.48) #17
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %ids_inflight_ref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %ids_inflight_ref, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !415

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !427
  %7 = tail call i32 @llvm.read_register.i32(metadata !405) #17
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, 1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !428
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !416

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #17, !srcloc !429
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %data.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #17
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #17, !srcloc !421
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else.i.i, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i3.i.i, label %if.end38.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end38.i.i.percpu_ref_get.exit_crit_edge:       ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_get.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end38.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_get.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %percpu_ref_get.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.47, i32 noundef 724, ptr noundef nonnull @.str.49) #17
  br label %percpu_ref_get.exit

percpu_ref_get.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_get.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_get.exit_crit_edge, %if.end38.i.i.percpu_ref_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !430
  %20 = tail call i32 @llvm.read_register.i32(metadata !405) #17
  %and.i.i.i.i.i10.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_reg_mr_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %6 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end:                                           ; preds = %entry
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call3 = tail call ptr @ib_wc_status_msg(i32 noundef %7) #22
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %sessname, ptr noundef %call3) #20
  %state_lock.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i) #17
  %state.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch.i.i = icmp ult i32 %9, 2
  br i1 %switch.i.i, label %if.then.i, label %rtrs_srv_change_state.exit.i

rtrs_srv_change_state.exit.i:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %10 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %state.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  %11 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %close_work.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rtrs_srv_change_state.exit.i
  %12 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 2
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %do.end.i, !prof !415

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_srv_add_one(ptr nocapture noundef readnone %device) #0 align 64 {
entry:
  %sin.i = alloca %struct.sockaddr_in6, align 4
  %sib.i = alloca %struct.sockaddr_ib, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 2), i32 noundef 0) #17
  %0 = load i32, ptr getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @ib_ctx, align 4
  %2 = load i16, ptr getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 1), align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sin.i) #17
  %3 = getelementptr inbounds %struct.sockaddr_in6, ptr %sin.i, i32 0, i32 1
  %4 = getelementptr inbounds i8, ptr %sin.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 24)
  %6 = ptrtoint ptr %sin.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 10, ptr %sin.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %2, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %sib.i) #17
  %8 = ptrtoint ptr %sib.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 27, ptr %sib.i, align 8
  %sib_pkey.i = getelementptr inbounds %struct.sockaddr_ib, ptr %sib.i, i32 0, i32 1
  %9 = ptrtoint ptr %sib_pkey.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %sib_pkey.i, align 2
  %sib_flowinfo.i = getelementptr inbounds %struct.sockaddr_ib, ptr %sib.i, i32 0, i32 2
  %sib_sid.i = getelementptr inbounds %struct.sockaddr_ib, ptr %sib.i, i32 0, i32 4
  %conv.i = zext i16 %2 to i64
  %or.i = or i64 %conv.i, 20905984
  %10 = call ptr @memset(ptr %sib_flowinfo.i, i32 0, i32 20)
  %11 = ptrtoint ptr %sib_sid.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %or.i, ptr %sib_sid.i, align 8
  %sib_sid_mask.i = getelementptr inbounds %struct.sockaddr_ib, ptr %sib.i, i32 0, i32 5
  %12 = ptrtoint ptr %sib_sid_mask.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 -1, ptr %sib_sid_mask.i, align 8
  %sib_scope_id.i = getelementptr inbounds %struct.sockaddr_ib, ptr %sib.i, i32 0, i32 6
  %13 = ptrtoint ptr %sib_scope_id.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %sib_scope_id.i, align 8
  %call.i = call fastcc ptr @rtrs_srv_cm_init(ptr noundef %1, ptr noundef nonnull %sin.i, i32 noundef 262) #17
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.rtrs_srv_rdma_init.exit_crit_edge, label %if.end.i

if.end.rtrs_srv_rdma_init.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_rdma_init.exit

if.end.i:                                         ; preds = %if.end
  %call17.i = call fastcc ptr @rtrs_srv_cm_init(ptr noundef %1, ptr noundef nonnull %sib.i, i32 noundef 319) #17
  %cmp.i35.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35.i, label %if.then19.i, label %rtrs_srv_rdma_init.exit.thread

if.then19.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @rdma_destroy_id(ptr noundef %call.i) #17
  br label %rtrs_srv_rdma_init.exit

rtrs_srv_rdma_init.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %cm_id_ip.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %cm_id_ip.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %cm_id_ip.i, align 4
  %cm_id_ib.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %cm_id_ib.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17.i, ptr %cm_id_ib.i, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sib.i) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin.i) #17
  br label %out

rtrs_srv_rdma_init.exit:                          ; preds = %if.then19.i, %if.end.rtrs_srv_rdma_init.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call17.i, %if.then19.i ], [ %call.i, %if.end.rtrs_srv_rdma_init.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %sib.i) #17
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sin.i) #17
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #20
  br label %err_out

out:                                              ; preds = %rtrs_srv_rdma_init.exit.thread, %entry.out_crit_edge
  %16 = load i32, ptr getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 3), align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 3), align 4
  br label %err_out

err_out:                                          ; preds = %out, %rtrs_srv_rdma_init.exit
  %ret.1 = phi i32 [ 0, %out ], [ %retval.0.i, %rtrs_srv_rdma_init.exit ]
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 2)) #17
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_remove_one(ptr nocapture noundef readnone %device, ptr nocapture noundef readnone %client_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 2), i32 noundef 0) #17
  %0 = load i32, ptr getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 3), align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %1 = load ptr, ptr @ib_ctx, align 4
  %cm_id_ip = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %cm_id_ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_id_ip, align 4
  tail call void @rdma_destroy_id(ptr noundef %3) #17
  %cm_id_ib = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %cm_id_ib to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cm_id_ib, align 4
  tail call void @rdma_destroy_id(ptr noundef %5) #17
  br label %out

out:                                              ; preds = %if.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.rtrs_srv_ib_ctx, ptr @ib_ctx, i32 0, i32 2)) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rtrs_srv_cm_init(ptr noundef %ctx, ptr noundef %addr, i32 noundef %ps) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @rtrs_srv_rdma_cm_handler, ptr noundef %ctx, i32 noundef %ps, i32 noundef 2, ptr noundef nonnull @.str.71) #17
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %0 = ptrtoint ptr %call to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %0) #20
  br label %err_out

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @rdma_bind_addr(ptr noundef %call, ptr noundef %addr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, i32 noundef %call4) #20
  br label %err_cm

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @rdma_listen(ptr noundef %call, i32 noundef 64) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %do.end17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #19
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %call12) #20
  br label %err_cm

err_cm:                                           ; preds = %do.end17, %do.end8
  %ret.0 = phi i32 [ %call4, %do.end8 ], [ %call12, %do.end17 ]
  tail call void @rdma_destroy_id(ptr noundef %call) #17
  br label %err_out

err_out:                                          ; preds = %err_cm, %if.then
  %ret.1 = phi i32 [ %0, %if.then ], [ %ret.0, %err_cm ]
  %1 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end11.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %err_out ], [ %call, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtrs_srv_rdma_cm_handler(ptr noundef %cm_id, ptr nocapture noundef readonly %ev) #0 align 64 {
entry:
  %msg.i313.i = alloca %struct.rtrs_msg_conn_rsp, align 4
  %msg.i302.i = alloca %struct.rtrs_msg_conn_rsp, align 4
  %msg.i294.i = alloca %struct.rtrs_msg_conn_rsp, align 4
  %param.i.i = alloca %struct.rdma_conn_param, align 4
  %msg.i.i = alloca %struct.rtrs_msg_conn_rsp, align 4
  %str.i.i = alloca [255 x i8], align 1
  %path.i.i = alloca %struct.rtrs_addr, align 4
  %old.i.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ev, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.not = icmp eq i32 %1, 4
  br i1 %cmp.not, label %sw.bb, label %if.end

if.end:                                           ; preds = %entry
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %1, label %do.end11 [
    i32 11, label %if.end.sw.bb8_crit_edge
    i32 9, label %if.end.cleanup_crit_edge
    i32 8, label %if.end.do.end_crit_edge
    i32 6, label %if.end.do.end_crit_edge220
    i32 7, label %if.end.do.end_crit_edge221
    i32 10, label %if.end.sw.bb8_crit_edge222
    i32 14, label %if.end.sw.bb8_crit_edge223
    i32 15, label %if.end.sw.bb8_crit_edge224
  ]

if.end.sw.bb8_crit_edge224:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb8

if.end.sw.bb8_crit_edge223:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb8

if.end.sw.bb8_crit_edge222:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb8

if.end.do.end_crit_edge221:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end.do.end_crit_edge220:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.sw.bb8_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb8

sw.bb:                                            ; preds = %entry
  %param = getelementptr inbounds %struct.rdma_cm_event, ptr %ev, i32 0, i32 2
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param, align 8
  %private_data_len = getelementptr inbounds %struct.rdma_cm_event, ptr %ev, i32 0, i32 2, i32 0, i32 1
  %9 = ptrtoint ptr %private_data_len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %private_data_len, align 4
  %context.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 1
  %11 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %10)
  %cmp.i = icmp ult i8 %10, 56
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87) #20
  br label %reject_w_err.i

if.end.i:                                         ; preds = %sw.bb
  %magic.i = getelementptr inbounds %struct.rtrs_msg_conn_req, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %magic.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %magic.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -17125, i16 %14)
  %cmp1.not.i = icmp eq i16 %14, -17125
  br i1 %cmp1.not.i, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90) #20
  br label %reject_w_err.i

if.end9.i:                                        ; preds = %if.end.i
  %version10.i = getelementptr inbounds %struct.rtrs_msg_conn_req, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %version10.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %version10.i, align 2
  %17 = and i16 %16, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp12.not.i = icmp eq i16 %17, 2
  br i1 %cmp12.not.i, label %if.end22.i, label %do.end17.i

do.end17.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #19
  %18 = zext i16 %17 to i32
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, i32 noundef %18, i32 noundef 2) #20
  br label %reject_w_err.i

if.end22.i:                                       ; preds = %if.end9.i
  %cid_num.i = getelementptr inbounds %struct.rtrs_msg_conn_req, ptr %8, i32 0, i32 5
  %19 = ptrtoint ptr %cid_num.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cid_num.i, align 2
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #17
  %conv23.i = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 4096, i16 %21)
  %cmp24.i = icmp ugt i16 %21, 4096
  br i1 %cmp24.i, label %do.end29.i, label %if.end33.i

do.end29.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #19
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, i32 noundef %conv23.i) #20
  br label %reject_w_err.i

if.end33.i:                                       ; preds = %if.end22.i
  %cid34.i = getelementptr inbounds %struct.rtrs_msg_conn_req, ptr %8, i32 0, i32 4
  %22 = ptrtoint ptr %cid34.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %cid34.i, align 2
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #17
  %conv35.i = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %21)
  %cmp37.not.i = icmp ult i16 %24, %21
  br i1 %cmp37.not.i, label %if.end47.i, label %do.end42.i

do.end42.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, i32 noundef %conv35.i, i32 noundef %conv23.i) #20
  br label %reject_w_err.i

if.end47.i:                                       ; preds = %if.end33.i
  %recon_cnt48.i = getelementptr inbounds %struct.rtrs_msg_conn_req, ptr %8, i32 0, i32 6
  %25 = ptrtoint ptr %recon_cnt48.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %recon_cnt48.i, align 2
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #17
  %paths_uuid.i = getelementptr inbounds %struct.rtrs_msg_conn_req, ptr %8, i32 0, i32 8
  %first_conn.i = getelementptr inbounds %struct.rtrs_msg_conn_req, ptr %8, i32 0, i32 9
  %28 = ptrtoint ptr %first_conn.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %bf.load.i = load i8, ptr %first_conn.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool.i = icmp slt i8 %bf.load.i, 0
  %srv_mutex.i.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %12, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex.i.i, i32 noundef 0) #17
  %srv_list.i.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %12, i32 0, i32 4
  %29 = ptrtoint ptr %srv_list.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn110.i.i = load ptr, ptr %srv_list.i.i, align 4
  %cmp.not111.i.i = icmp eq ptr %.pn110.i.i, %srv_list.i.i
  br i1 %cmp.not111.i.i, label %if.end47.i.for.end.i.i_crit_edge, label %if.end47.i.for.body.i.i_crit_edge

if.end47.i.for.body.i.i_crit_edge:                ; preds = %if.end47.i
  br label %for.body.i.i

if.end47.i.for.end.i.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end47.i.for.body.i.i_crit_edge
  %.pn112.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn110.i.i, %if.end47.i.for.body.i.i_crit_edge ]
  %paths_uuid2.i.i = getelementptr i8, ptr %.pn112.i.i, i32 -24
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %paths_uuid2.i.i, ptr noundef dereferenceable(16) %paths_uuid.i, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp.i.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %refcount.i.i = getelementptr i8, ptr %.pn112.i.i, i32 -8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #17
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcount.i.i, i32 noundef 4) #17
  %30 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %refcount.i.i, align 4
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %land.lhs.true.i.i
  %32 = phi i32 [ %31, %land.lhs.true.i.i ], [ %asmresult3.i.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge ]
  %33 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %old.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i.i.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.i.i.i.i.i, label %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %do.cond.i.i.i.i.i

do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i.i

do.cond.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i
  %add.i.i.i.i.i = add i32 %32, 1
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i.i, i32 noundef 4) #17
  %call.i3.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i.i, i32 noundef 4) #17
  %34 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %old.i.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount.i.i, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i.i:                          ; preds = %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i.i
  %36 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i.i, ptr %refcount.i.i, i32 %35, i32 %add.i.i.i.i.i, ptr elementtype(i32) %refcount.i.i) #17, !srcloc !433
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 0
  %tobool.not.i.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i:   ; preds = %do.body.i.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %36, 1
  %cmp.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i.i, %35
  br i1 %cmp.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, !prof !415

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end4.i.i.i.i.i

if.end4.i.i.i.i.i:                                ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge, %do.body.i.i.i.i.i.if.end4.i.i.i.i.i_crit_edge
  %37 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %old.i.i.i.i.i, align 4
  %add5.i.i.i.i.i = add i32 %38, 1
  %39 = or i32 %add5.i.i.i.i.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %.not.i.i.i.i.i = icmp sgt i32 %39, -1
  br i1 %.not.i.i.i.i.i, label %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !415

if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge: ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %refcount_inc_not_zero.exit.i.i

if.then10.i.i.i.i.i:                              ; preds = %if.end4.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @refcount_warn_saturate(ptr noundef %refcount.i.i, i32 noundef 0) #17
  %40 = ptrtoint ptr %old.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr.i.i = load i32, ptr %old.i.i.i.i.i, align 4
  br label %refcount_inc_not_zero.exit.i.i

refcount_inc_not_zero.exit.i.i:                   ; preds = %if.then10.i.i.i.i.i, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge
  %41 = phi i32 [ %38, %if.end4.i.i.i.i.i.refcount_inc_not_zero.exit.i.i_crit_edge ], [ %.pr.i.i, %if.then10.i.i.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool12.i.i.i.not.i.i = icmp eq i32 %41, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i.i) #17
  br i1 %tobool12.i.i.i.not.i.i, label %refcount_inc_not_zero.exit.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

refcount_inc_not_zero.exit.i.i.for.inc.i.i_crit_edge: ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %refcount_inc_not_zero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %srv.0.le.i.i = getelementptr i8, ptr %.pn112.i.i, i32 -224
  br label %get_or_create_srv.exit.i

for.inc.i.i:                                      ; preds = %refcount_inc_not_zero.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %42 = ptrtoint ptr %.pn112.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i.i = load ptr, ptr %.pn112.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %srv_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end47.i.for.end.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %srv_mutex.i.i) #17
  br i1 %tobool.i, label %if.end19.i.i, label %if.then11.i.i

if.then11.i.i:                                    ; preds = %for.end.i.i
  %call12.i.i = call i32 @___ratelimit(ptr noundef nonnull @get_or_create_srv._rs, ptr noundef nonnull @__func__.get_or_create_srv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then11.i.i.if.then51.i_crit_edge, label %do.end.i.i

if.then11.i.i.if.then51.i_crit_edge:              ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then51.i

do.end.i.i:                                       ; preds = %if.then11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122) #20
  br label %if.then51.i

if.end19.i.i:                                     ; preds = %for.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3520, i32 noundef 1184) #21
  %tobool21.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool21.not.i.i, label %if.end19.i.i.if.then51.i_crit_edge, label %if.end24.i.i

if.end19.i.i.if.then51.i_crit_edge:               ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then51.i

if.end24.i.i:                                     ; preds = %if.end19.i.i
  %44 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i.i.i, ptr %call7.i.i.i.i, align 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %paths_mutex.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %paths_mutex.i.i, ptr noundef nonnull @.str.123, ptr noundef nonnull @get_or_create_srv.__key) #17
  %paths_ev_mutex.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %paths_ev_mutex.i.i, ptr noundef nonnull @.str.125, ptr noundef nonnull @get_or_create_srv.__key.124) #17
  %paths_uuid31.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 5
  %46 = call ptr @memcpy(ptr %paths_uuid31.i.i, ptr %paths_uuid.i, i32 16)
  %47 = load i32, ptr @sess_queue_depth, align 4
  %queue_depth.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 10
  %48 = ptrtoint ptr %queue_depth.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %queue_depth.i.i, align 4
  %ctx32.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %ctx32.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %12, ptr %ctx32.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 12
  call void @device_initialize(ptr noundef %dev.i.i) #17
  %release.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 12, i32 35
  %50 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @rtrs_srv_dev_release, ptr %release.i.i, align 4
  %51 = ptrtoint ptr %queue_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %queue_depth.i.i, align 4
  %53 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 4) #17
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !prof !416

kcalloc.exit.thread.i.i:                          ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %chunks106.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 11
  %55 = ptrtoint ptr %chunks106.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %chunks106.i.i, align 8
  br label %err_free_srv.i.i

if.end7.i.i.i.i:                                  ; preds = %if.end24.i.i
  %56 = extractvalue { i32, i1 } %53, 0
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3520) #24
  %chunks.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 11
  %57 = ptrtoint ptr %chunks.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call8.i.i.i.i, ptr %chunks.i.i, align 8
  %tobool37.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool37.not.i.i, label %if.end7.i.i.i.i.err_free_srv.i.i_crit_edge, label %for.cond40.preheader.i.i

if.end7.i.i.i.i.err_free_srv.i.i_crit_edge:       ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_srv.i.i

for.cond40.preheader.i.i:                         ; preds = %if.end7.i.i.i.i
  %58 = ptrtoint ptr %queue_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %queue_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp42113.not.i.i = icmp eq i32 %59, 0
  br i1 %cmp42113.not.i.i, label %for.cond40.preheader.i.i.for.end52.i.i_crit_edge, label %for.cond40.preheader.i.i.for.body43.i.i_crit_edge

for.cond40.preheader.i.i.for.body43.i.i_crit_edge: ; preds = %for.cond40.preheader.i.i
  br label %for.body43.i.i

for.cond40.preheader.i.i.for.end52.i.i_crit_edge: ; preds = %for.cond40.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end52.i.i

for.body43.i.i:                                   ; preds = %for.inc51.i.i.for.body43.i.i_crit_edge, %for.cond40.preheader.i.i.for.body43.i.i_crit_edge
  %i.0114.i.i = phi i32 [ %inc.i.i, %for.inc51.i.i.for.body43.i.i_crit_edge ], [ 0, %for.cond40.preheader.i.i.for.body43.i.i_crit_edge ]
  %60 = load ptr, ptr @chunk_pool, align 4
  %call44.i.i = call noalias ptr @mempool_alloc(ptr noundef %60, i32 noundef 3264) #17
  %61 = ptrtoint ptr %chunks.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %chunks.i.i, align 8
  %arrayidx.i.i = getelementptr ptr, ptr %62, i32 %i.0114.i.i
  %63 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call44.i.i, ptr %arrayidx.i.i, align 4
  %64 = load ptr, ptr %chunks.i.i, align 8
  %arrayidx47.i.i = getelementptr ptr, ptr %64, i32 %i.0114.i.i
  %65 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx47.i.i, align 4
  %tobool48.not.i.i = icmp eq ptr %66, null
  br i1 %tobool48.not.i.i, label %while.cond.preheader.i.i, label %for.inc51.i.i

while.cond.preheader.i.i:                         ; preds = %for.body43.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0114.i.i)
  %tobool58.not115.i.i = icmp eq i32 %i.0114.i.i, 0
  br i1 %tobool58.not115.i.i, label %while.cond.preheader.i.i.while.end.i.i_crit_edge, label %while.cond.preheader.i.i.while.body.i.i_crit_edge

while.cond.preheader.i.i.while.body.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  br label %while.body.i.i

while.cond.preheader.i.i.while.end.i.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i.i

for.inc51.i.i:                                    ; preds = %for.body43.i.i
  %inc.i.i = add nuw i32 %i.0114.i.i, 1
  %67 = ptrtoint ptr %queue_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %queue_depth.i.i, align 4
  %cmp42.i.i = icmp ult i32 %inc.i.i, %68
  br i1 %cmp42.i.i, label %for.inc51.i.i.for.body43.i.i_crit_edge, label %for.inc51.i.i.for.end52.i.i_crit_edge

for.inc51.i.i.for.end52.i.i_crit_edge:            ; preds = %for.inc51.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end52.i.i

for.inc51.i.i.for.body43.i.i_crit_edge:           ; preds = %for.inc51.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body43.i.i

for.end52.i.i:                                    ; preds = %for.inc51.i.i.for.end52.i.i_crit_edge, %for.cond40.preheader.i.i.for.end52.i.i_crit_edge
  %refcount53.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 6
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount53.i.i, i32 noundef 4) #17
  %69 = ptrtoint ptr %refcount53.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile i32 1, ptr %refcount53.i.i, align 8
  call void @mutex_lock_nested(ptr noundef %srv_mutex.i.i, i32 noundef 0) #17
  %ctx_list55.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 8
  %70 = ptrtoint ptr %srv_list.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %srv_list.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %ctx_list55.i.i, ptr noundef %srv_list.i.i, ptr noundef %71) #17
  br i1 %call.i.i.i.i, label %if.end.i.i104.i.i, label %for.end52.i.i.get_or_create_srv.exit.i_crit_edge

for.end52.i.i.get_or_create_srv.exit.i_crit_edge: ; preds = %for.end52.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_or_create_srv.exit.i

if.end.i.i104.i.i:                                ; preds = %for.end52.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ctx_list55.i.i, ptr %prev1.i.i.i.i, align 4
  %73 = ptrtoint ptr %ctx_list55.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %71, ptr %ctx_list55.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %call7.i.i.i.i, i32 0, i32 8, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %srv_list.i.i, ptr %prev3.i.i.i.i, align 4
  %75 = ptrtoint ptr %srv_list.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %ctx_list55.i.i, ptr %srv_list.i.i, align 4
  br label %get_or_create_srv.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.cond.preheader.i.i.while.body.i.i_crit_edge
  %i.1116.i.i = phi i32 [ %dec.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %i.0114.i.i, %while.cond.preheader.i.i.while.body.i.i_crit_edge ]
  %dec.i.i = add i32 %i.1116.i.i, -1
  %76 = ptrtoint ptr %chunks.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %chunks.i.i, align 8
  %arrayidx60.i.i = getelementptr ptr, ptr %77, i32 %dec.i.i
  %78 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx60.i.i, align 4
  %80 = load ptr, ptr @chunk_pool, align 4
  call void @mempool_free(ptr noundef %79, ptr noundef %80) #17
  %tobool58.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool58.not.i.i, label %while.body.i.i.while.end.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i

while.body.i.i.while.end.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.body.i.i.while.end.i.i_crit_edge, %while.cond.preheader.i.i.while.end.i.i_crit_edge
  %81 = ptrtoint ptr %chunks.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chunks.i.i, align 8
  call void @kfree(ptr noundef %82) #17
  br label %err_free_srv.i.i

err_free_srv.i.i:                                 ; preds = %while.end.i.i, %if.end7.i.i.i.i.err_free_srv.i.i_crit_edge, %kcalloc.exit.thread.i.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #17
  br label %if.then51.i

get_or_create_srv.exit.i:                         ; preds = %if.end.i.i104.i.i, %for.end52.i.i.get_or_create_srv.exit.i_crit_edge, %if.then.i.i
  %retval.0.i.i = phi ptr [ %srv.0.le.i.i, %if.then.i.i ], [ %call7.i.i.i.i, %if.end.i.i104.i.i ], [ %call7.i.i.i.i, %for.end52.i.i.get_or_create_srv.exit.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %srv_mutex.i.i) #17
  %cmp.i.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %get_or_create_srv.exit.i.if.then51.i_crit_edge, label %if.end58.i

get_or_create_srv.exit.i.if.then51.i_crit_edge:   ; preds = %get_or_create_srv.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then51.i

if.then51.i:                                      ; preds = %get_or_create_srv.exit.i.if.then51.i_crit_edge, %err_free_srv.i.i, %if.end19.i.i.if.then51.i_crit_edge, %do.end.i.i, %if.then11.i.i.if.then51.i_crit_edge
  %retval.0.i331.i = phi ptr [ %retval.0.i.i, %get_or_create_srv.exit.i.if.then51.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end19.i.i.if.then51.i_crit_edge ], [ inttoptr (i32 -6 to ptr), %if.then11.i.i.if.then51.i_crit_edge ], [ inttoptr (i32 -6 to ptr), %do.end.i.i ], [ inttoptr (i32 -12 to ptr), %err_free_srv.i.i ]
  %83 = ptrtoint ptr %retval.0.i331.i to i32
  %call57.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, i32 noundef %83) #20
  br label %reject_w_err.i

if.end58.i:                                       ; preds = %get_or_create_srv.exit.i
  %paths_mutex.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %retval.0.i.i, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %paths_mutex.i, i32 noundef 0) #17
  %sess_uuid.i = getelementptr inbounds %struct.rtrs_msg_conn_req, ptr %8, i32 0, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i228.i.for.cond.i.i_crit_edge, %if.end58.i
  %srv_path.0.in.i.i = phi ptr [ %retval.0.i.i, %if.end58.i ], [ %srv_path.0.i.i, %for.body.i228.i.for.cond.i.i_crit_edge ]
  %84 = ptrtoint ptr %srv_path.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %srv_path.0.i.i = load ptr, ptr %srv_path.0.in.i.i, align 8
  %cmp.not.i225.i = icmp eq ptr %srv_path.0.i.i, %retval.0.i.i
  br i1 %cmp.not.i225.i, label %for.cond.i.i.if.else.i_crit_edge, label %for.body.i228.i

for.cond.i.i.if.else.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

for.body.i228.i:                                  ; preds = %for.cond.i.i
  %uuid.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i.i, i32 0, i32 4
  %bcmp.i.i226.i = call i32 @bcmp(ptr noundef dereferenceable(16) %uuid.i.i, ptr noundef dereferenceable(16) %sess_uuid.i, i32 16) #23
  %cmp.i.i227.i = icmp eq i32 %bcmp.i.i226.i, 0
  br i1 %cmp.i.i227.i, label %__find_path.exit.i, label %for.body.i228.i.for.cond.i.i_crit_edge

for.body.i228.i.for.cond.i.i_crit_edge:           ; preds = %for.body.i228.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i.i

__find_path.exit.i:                               ; preds = %for.body.i228.i
  %tobool60.not.i = icmp eq ptr %srv_path.0.i.i, null
  br i1 %tobool60.not.i, label %__find_path.exit.i.if.else.i_crit_edge, label %if.then61.i

__find_path.exit.i.if.else.i_crit_edge:           ; preds = %__find_path.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.i

if.then61.i:                                      ; preds = %__find_path.exit.i
  call fastcc void @put_srv(ptr noundef %retval.0.i.i) #17
  %state.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.0.i.i, i32 0, i32 3
  %85 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp63.not.i = icmp eq i32 %86, 0
  br i1 %cmp63.not.i, label %if.end74.i, label %do.end68.i

do.end68.i:                                       ; preds = %if.then61.i
  %sessname.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i.i, i32 0, i32 3
  %switch.tableidx = add i32 %86, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %87 = icmp ult i32 %switch.tableidx, 3
  br i1 %87, label %switch.lookup, label %do.end68.i.rtrs_srv_state_str.exit.i_crit_edge

do.end68.i.rtrs_srv_state_str.exit.i_crit_edge:   ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_state_str.exit.i

switch.lookup:                                    ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #19
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.rtrs_srv_rdma_cm_handler, i32 0, i32 %switch.tableidx
  %88 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %88)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %rtrs_srv_state_str.exit.i

rtrs_srv_state_str.exit.i:                        ; preds = %switch.lookup, %do.end68.i.rtrs_srv_state_str.exit.i_crit_edge
  %retval.0.i230.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.15, %do.end68.i.rtrs_srv_state_str.exit.i_crit_edge ]
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef %sessname.i, ptr noundef nonnull %retval.0.i230.i) #20
  call void @mutex_unlock(ptr noundef %paths_mutex.i) #17
  br label %reject_w_err.i

if.end74.i:                                       ; preds = %if.then61.i
  %con_num76.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i.i, i32 0, i32 6
  %89 = ptrtoint ptr %con_num76.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %con_num76.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %conv23.i)
  %cmp77.not.i = icmp eq i32 %90, %conv23.i
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %conv35.i)
  %cmp81.not.i = icmp ugt i32 %90, %conv35.i
  %or.cond.i = select i1 %cmp77.not.i, i1 %cmp81.not.i, i1 false
  br i1 %or.cond.i, label %if.end94.i, label %do.end86.i

do.end86.i:                                       ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname88.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i.i, i32 0, i32 3
  %call92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %sessname88.i, i32 noundef %conv35.i, i32 noundef %conv23.i) #20
  call void @mutex_unlock(ptr noundef %paths_mutex.i) #17
  br label %reject_w_err.i

if.end94.i:                                       ; preds = %if.end74.i
  %con.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i.i, i32 0, i32 5
  %91 = ptrtoint ptr %con.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %con.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %92, i32 %conv35.i
  %93 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i, align 4
  %tobool95.not.i = icmp eq ptr %94, null
  br i1 %tobool95.not.i, label %if.end94.i.if.end121.i_crit_edge, label %do.end99.i

if.end94.i.if.end121.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121.i

do.end99.i:                                       ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname101.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i.i, i32 0, i32 3
  %call104.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %sessname101.i, i32 noundef %conv35.i) #20
  call void @mutex_unlock(ptr noundef %paths_mutex.i) #17
  br label %reject_w_err.i

if.else.i:                                        ; preds = %__find_path.exit.i.if.else.i_crit_edge, %for.cond.i.i.if.else.i_crit_edge
  %conv108.i = zext i16 %27 to i32
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %str.i.i) #17
  %95 = call ptr @memset(ptr %str.i.i, i32 255, i32 255)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %path.i.i) #17
  %96 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr inttoptr (i32 -1 to ptr), ptr %path.i.i, align 4, !annotation !425
  %97 = getelementptr inbounds %struct.rtrs_addr, ptr %path.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr inttoptr (i32 -1 to ptr), ptr %97, align 4, !annotation !425
  %paths_num.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %retval.0.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %paths_num.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %paths_num.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %100)
  %cmp.i231.i = icmp ugt i32 %100, 127
  br i1 %cmp.i231.i, label %if.else.i.err84.i.i_crit_edge, label %if.end.i.i

if.else.i.err84.i.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err84.i.i

if.end.i.i:                                       ; preds = %if.else.i
  %route.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4
  %101 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %srv_path.050.i.i.i = load ptr, ptr %retval.0.i.i, align 8
  %cmp.not51.i.i.i = icmp eq ptr %srv_path.050.i.i.i, %retval.0.i.i
  br i1 %cmp.not51.i.i.i, label %if.end.i.i.if.end3.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.if.end3.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %dst_addr4.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4, i32 0, i32 1
  %sin6_addr17.i.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1, i32 4
  %sin_addr6.i.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4, i32 0, i32 1, i32 0, i32 1
  %sin6_addr17.i31.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1, i32 4
  %sin_addr6.i26.i.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4, i32 0, i32 0, i32 0, i32 1
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %srv_path.052.i.i.i = phi ptr [ %srv_path.050.i.i.i, %for.body.lr.ph.i.i.i ], [ %srv_path.0.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %dst_addr.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.052.i.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %dst_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %dst_addr.i.i.i, align 2
  %104 = zext i16 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.189)
  switch i16 %103, label %for.body.i.i.i.for.inc.i.i.i_crit_edge [
    i16 27, label %sw.bb.i.i.i.i
    i16 2, label %sw.bb5.i.i.i.i
    i16 10, label %sw.bb16.i.i.i.i
  ]

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i

sw.bb.i.i.i.i:                                    ; preds = %for.body.i.i.i
  %sib_addr.i.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.052.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 4
  %bcmp37.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %sib_addr.i.i.i.i, ptr noundef dereferenceable(16) %sin6_addr17.i.i.i.i, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp37.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %bcmp37.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %sw.bb.i.i.i.i.land.lhs.true.i.i.i_crit_edge, label %sw.bb.i.i.i.i.sockaddr_cmp.exit.i.i.i_crit_edge

sw.bb.i.i.i.i.sockaddr_cmp.exit.i.i.i_crit_edge:  ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sockaddr_cmp.exit.i.i.i

sw.bb.i.i.i.i.land.lhs.true.i.i.i_crit_edge:      ; preds = %sw.bb.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i.i.i

sw.bb5.i.i.i.i:                                   ; preds = %for.body.i.i.i
  %sin_addr.i.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.052.i.i.i, i32 0, i32 1, i32 0, i32 1
  %bcmp35.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(4) %sin_addr.i.i.i.i, ptr noundef dereferenceable(4) %sin_addr6.i.i.i.i, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp35.i.i.i.i)
  %tobool8.not.i.i.i.i = icmp eq i32 %bcmp35.i.i.i.i, 0
  br i1 %tobool8.not.i.i.i.i, label %sw.bb5.i.i.i.i.land.lhs.true.i.i.i_crit_edge, label %sw.bb5.i.i.i.i.sockaddr_cmp.exit.i.i.i_crit_edge

sw.bb5.i.i.i.i.sockaddr_cmp.exit.i.i.i_crit_edge: ; preds = %sw.bb5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sockaddr_cmp.exit.i.i.i

sw.bb5.i.i.i.i.land.lhs.true.i.i.i_crit_edge:     ; preds = %sw.bb5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i.i.i

sw.bb16.i.i.i.i:                                  ; preds = %for.body.i.i.i
  %sin6_addr.i.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.052.i.i.i, i32 0, i32 1, i32 0, i32 1, i32 4
  %bcmp.i.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr.i.i.i.i, ptr noundef dereferenceable(16) %sin6_addr17.i.i.i.i, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i.i)
  %tobool19.not.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %tobool19.not.i.i.i.i, label %sw.bb16.i.i.i.i.land.lhs.true.i.i.i_crit_edge, label %sw.bb16.i.i.i.i.sockaddr_cmp.exit.i.i.i_crit_edge

sw.bb16.i.i.i.i.sockaddr_cmp.exit.i.i.i_crit_edge: ; preds = %sw.bb16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sockaddr_cmp.exit.i.i.i

sw.bb16.i.i.i.i.land.lhs.true.i.i.i_crit_edge:    ; preds = %sw.bb16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i.i.i

sockaddr_cmp.exit.i.i.i:                          ; preds = %sw.bb16.i.i.i.i.sockaddr_cmp.exit.i.i.i_crit_edge, %sw.bb5.i.i.i.i.sockaddr_cmp.exit.i.i.i_crit_edge, %sw.bb.i.i.i.i.sockaddr_cmp.exit.i.i.i_crit_edge
  %105 = ptrtoint ptr %dst_addr4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %dst_addr4.i.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %106, i16 %103)
  %cmp23.i.not.i.i.i = icmp eq i16 %106, %103
  br i1 %cmp23.i.not.i.i.i, label %sockaddr_cmp.exit.i.i.i.for.inc.i.i.i_crit_edge, label %sockaddr_cmp.exit.i.i.i.land.lhs.true.i.i.i_crit_edge

sockaddr_cmp.exit.i.i.i.land.lhs.true.i.i.i_crit_edge: ; preds = %sockaddr_cmp.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i.i.i

sockaddr_cmp.exit.i.i.i.for.inc.i.i.i_crit_edge:  ; preds = %sockaddr_cmp.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sockaddr_cmp.exit.i.i.i.land.lhs.true.i.i.i_crit_edge, %sw.bb16.i.i.i.i.land.lhs.true.i.i.i_crit_edge, %sw.bb5.i.i.i.i.land.lhs.true.i.i.i_crit_edge, %sw.bb.i.i.i.i.land.lhs.true.i.i.i_crit_edge
  %src_addr.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.052.i.i.i, i32 0, i32 2
  %107 = ptrtoint ptr %src_addr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %src_addr.i.i.i, align 2
  %109 = zext i16 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.190)
  switch i16 %108, label %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge [
    i16 27, label %sw.bb.i24.i.i.i
    i16 2, label %sw.bb5.i29.i.i.i
    i16 10, label %sw.bb16.i34.i.i.i
  ]

land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i

sw.bb.i24.i.i.i:                                  ; preds = %land.lhs.true.i.i.i
  %sib_addr.i20.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.052.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 4
  %bcmp37.i22.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %sib_addr.i20.i.i.i, ptr noundef dereferenceable(16) %sin6_addr17.i31.i.i.i, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp37.i22.i.i.i)
  %tobool.not.i23.i.i.i = icmp eq i32 %bcmp37.i22.i.i.i, 0
  br i1 %tobool.not.i23.i.i.i, label %sw.bb.i24.i.i.i.if.then1.i.i_crit_edge, label %sw.bb.i24.i.i.i.sockaddr_cmp.exit39.i.i.i_crit_edge

sw.bb.i24.i.i.i.sockaddr_cmp.exit39.i.i.i_crit_edge: ; preds = %sw.bb.i24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sockaddr_cmp.exit39.i.i.i

sw.bb.i24.i.i.i.if.then1.i.i_crit_edge:           ; preds = %sw.bb.i24.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then1.i.i

sw.bb5.i29.i.i.i:                                 ; preds = %land.lhs.true.i.i.i
  %sin_addr.i25.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.052.i.i.i, i32 0, i32 2, i32 0, i32 1
  %bcmp35.i27.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(4) %sin_addr.i25.i.i.i, ptr noundef dereferenceable(4) %sin_addr6.i26.i.i.i, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp35.i27.i.i.i)
  %tobool8.not.i28.i.i.i = icmp eq i32 %bcmp35.i27.i.i.i, 0
  br i1 %tobool8.not.i28.i.i.i, label %sw.bb5.i29.i.i.i.if.then1.i.i_crit_edge, label %sw.bb5.i29.i.i.i.sockaddr_cmp.exit39.i.i.i_crit_edge

sw.bb5.i29.i.i.i.sockaddr_cmp.exit39.i.i.i_crit_edge: ; preds = %sw.bb5.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sockaddr_cmp.exit39.i.i.i

sw.bb5.i29.i.i.i.if.then1.i.i_crit_edge:          ; preds = %sw.bb5.i29.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then1.i.i

sw.bb16.i34.i.i.i:                                ; preds = %land.lhs.true.i.i.i
  %sin6_addr.i30.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.052.i.i.i, i32 0, i32 2, i32 0, i32 1, i32 4
  %bcmp.i32.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(16) %sin6_addr.i30.i.i.i, ptr noundef dereferenceable(16) %sin6_addr17.i31.i.i.i, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i32.i.i.i)
  %tobool19.not.i33.i.i.i = icmp eq i32 %bcmp.i32.i.i.i, 0
  br i1 %tobool19.not.i33.i.i.i, label %sw.bb16.i34.i.i.i.if.then1.i.i_crit_edge, label %sw.bb16.i34.i.i.i.sockaddr_cmp.exit39.i.i.i_crit_edge

sw.bb16.i34.i.i.i.sockaddr_cmp.exit39.i.i.i_crit_edge: ; preds = %sw.bb16.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %sockaddr_cmp.exit39.i.i.i

sw.bb16.i34.i.i.i.if.then1.i.i_crit_edge:         ; preds = %sw.bb16.i34.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then1.i.i

sockaddr_cmp.exit39.i.i.i:                        ; preds = %sw.bb16.i34.i.i.i.sockaddr_cmp.exit39.i.i.i_crit_edge, %sw.bb5.i29.i.i.i.sockaddr_cmp.exit39.i.i.i_crit_edge, %sw.bb.i24.i.i.i.sockaddr_cmp.exit39.i.i.i_crit_edge
  %110 = ptrtoint ptr %route.i.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %route.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %111, i16 %108)
  %cmp23.i35.not.i.i.i = icmp eq i16 %111, %108
  br i1 %cmp23.i35.not.i.i.i, label %sockaddr_cmp.exit39.i.i.i.for.inc.i.i.i_crit_edge, label %sockaddr_cmp.exit39.i.i.i.if.then1.i.i_crit_edge

sockaddr_cmp.exit39.i.i.i.if.then1.i.i_crit_edge: ; preds = %sockaddr_cmp.exit39.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then1.i.i

sockaddr_cmp.exit39.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %sockaddr_cmp.exit39.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %sockaddr_cmp.exit39.i.i.i.for.inc.i.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i.i_crit_edge, %sockaddr_cmp.exit.i.i.i.for.inc.i.i.i_crit_edge, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %112 = ptrtoint ptr %srv_path.052.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %srv_path.0.i.i.i = load ptr, ptr %srv_path.052.i.i.i, align 8
  %cmp.not.i.i.i = icmp eq ptr %srv_path.0.i.i.i, %retval.0.i.i
  br i1 %cmp.not.i.i.i, label %for.inc.i.i.i.if.end3.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

for.inc.i.i.i.if.end3.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end3.i.i

if.then1.i.i:                                     ; preds = %sockaddr_cmp.exit39.i.i.i.if.then1.i.i_crit_edge, %sw.bb16.i34.i.i.i.if.then1.i.i_crit_edge, %sw.bb5.i29.i.i.i.if.then1.i.i_crit_edge, %sw.bb.i24.i.i.i.if.then1.i.i_crit_edge
  %call2.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.126) #20
  br label %err84.i.i

if.end3.i.i:                                      ; preds = %for.inc.i.i.i.if.end3.i.i_crit_edge, %if.end.i.i.if.end3.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %113 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i232.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %113, i32 noundef 3520, i32 noundef 1032) #21
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i232.i, null
  br i1 %tobool.not.i.i, label %if.end3.i.i.err84.i.i_crit_edge, label %if.end6.i.i

if.end3.i.i.err84.i.i_crit_edge:                  ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err84.i.i

if.end6.i.i:                                      ; preds = %if.end3.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %114 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i139.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %114, i32 noundef 3520, i32 noundef 176) #21
  %stats.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 15
  %115 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call7.i.i139.i.i, ptr %stats.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %call7.i.i139.i.i, null
  br i1 %tobool9.not.i.i, label %if.end6.i.i.err_free_sess.i.i_crit_edge, label %if.end11.i.i

if.end6.i.i.err_free_sess.i.i_crit_edge:          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_sess.i.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %srv_path13.i.i = getelementptr inbounds %struct.rtrs_srv_stats, ptr %call7.i.i139.i.i, i32 0, i32 2
  %116 = ptrtoint ptr %srv_path13.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call7.i.i.i232.i, ptr %srv_path13.i.i, align 8
  %queue_depth.i233.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %retval.0.i.i, i32 0, i32 10
  %117 = ptrtoint ptr %queue_depth.i233.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %queue_depth.i233.i, align 4
  %119 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %118, i32 4) #17
  %120 = extractvalue { i32, i1 } %119, 1
  br i1 %120, label %kcalloc.exit.thread.i234.i, label %if.end7.i.i.i265.i, !prof !416

kcalloc.exit.thread.i234.i:                       ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %dma_addr183.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 11
  %121 = ptrtoint ptr %dma_addr183.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %dma_addr183.i.i, align 8
  br label %err_free_stats.i.i

if.end7.i.i.i265.i:                               ; preds = %if.end11.i.i
  %122 = extractvalue { i32, i1 } %119, 0
  %call8.i.i.i264.i = call noalias align 128 ptr @__kmalloc(i32 noundef %122, i32 noundef 3520) #24
  %dma_addr.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 11
  %123 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call8.i.i.i264.i, ptr %dma_addr.i.i, align 8
  %tobool16.not.i.i = icmp eq ptr %call8.i.i.i264.i, null
  br i1 %tobool16.not.i.i, label %if.end7.i.i.i265.i.err_free_stats.i.i_crit_edge, label %if.end7.i.i173.i.i

if.end7.i.i.i265.i.err_free_stats.i.i_crit_edge:  ; preds = %if.end7.i.i.i265.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_stats.i.i

if.end7.i.i173.i.i:                               ; preds = %if.end7.i.i.i265.i
  %124 = shl nuw nsw i32 %conv23.i, 2
  %call8.i.i172.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %124, i32 noundef 3520) #24
  %con.i.i = getelementptr inbounds %struct.rtrs_path, ptr %call7.i.i.i232.i, i32 0, i32 5
  %125 = ptrtoint ptr %con.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call8.i.i172.i.i, ptr %con.i.i, align 8
  %tobool22.not.i.i = icmp eq ptr %call8.i.i172.i.i, null
  br i1 %tobool22.not.i.i, label %if.end7.i.i173.i.i.err_free_dma_addr.i.i_crit_edge, label %if.end24.i270.i

if.end7.i.i173.i.i.err_free_dma_addr.i.i_crit_edge: ; preds = %if.end7.i.i173.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_dma_addr.i.i

if.end24.i270.i:                                  ; preds = %if.end7.i.i173.i.i
  %state.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 3
  %126 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %state.i.i, align 8
  %srv25.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 1
  %127 = ptrtoint ptr %srv25.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %retval.0.i.i, ptr %srv25.i.i, align 8
  %cur_cq_vector.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 5
  %128 = ptrtoint ptr %cur_cq_vector.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %cur_cq_vector.i.i, align 8
  %dst_addr.i.i = getelementptr inbounds %struct.rtrs_path, ptr %call7.i.i.i232.i, i32 0, i32 1
  %dst_addr29.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cm_id, i32 0, i32 4, i32 0, i32 1
  %129 = call ptr @memcpy(ptr %dst_addr.i.i, ptr %dst_addr29.i.i, i32 128)
  %src_addr.i.i = getelementptr inbounds %struct.rtrs_path, ptr %call7.i.i.i232.i, i32 0, i32 2
  %130 = call ptr @memcpy(ptr %src_addr.i.i, ptr %route.i.i, i32 128)
  %131 = ptrtoint ptr %path.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %src_addr.i.i, ptr %path.i.i, align 4
  %132 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %dst_addr.i.i, ptr %97, align 4
  %call38.i.i = call i32 @rtrs_addr_to_str(ptr noundef nonnull %path.i.i, ptr noundef nonnull %str.i.i, i32 noundef 255) #17
  %sessname.i.i = getelementptr inbounds %struct.rtrs_path, ptr %call7.i.i.i232.i, i32 0, i32 3
  %call42.i.i = call i32 @strscpy(ptr noundef %sessname.i.i, ptr noundef nonnull %str.i.i, i32 noundef 255) #17
  %con_num44.i.i = getelementptr inbounds %struct.rtrs_path, ptr %call7.i.i.i232.i, i32 0, i32 6
  %133 = ptrtoint ptr %con_num44.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %conv23.i, ptr %con_num44.i.i, align 4
  %irq_con_num.i.i = getelementptr inbounds %struct.rtrs_path, ptr %call7.i.i.i232.i, i32 0, i32 7
  %134 = ptrtoint ptr %irq_con_num.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv23.i, ptr %irq_con_num.i.i, align 8
  %recon_cnt47.i.i = getelementptr inbounds %struct.rtrs_path, ptr %call7.i.i.i232.i, i32 0, i32 8
  %135 = ptrtoint ptr %recon_cnt47.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %conv108.i, ptr %recon_cnt47.i.i, align 4
  %uuid49.i.i = getelementptr inbounds %struct.rtrs_path, ptr %call7.i.i.i232.i, i32 0, i32 4
  %136 = call ptr @memcpy(ptr %uuid49.i.i, ptr %sess_uuid.i, i32 16)
  %state_lock.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %state_lock.i.i, ptr noundef nonnull @.str.128, ptr noundef nonnull @__alloc_path.__key, i16 noundef signext 3) #17
  %close_work.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 2
  call void @__init_work(ptr noundef %close_work.i.i, i32 noundef 0) #17
  %137 = ptrtoint ptr %close_work.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -64, ptr %close_work.i.i, align 4
  %lockdep_map.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 2, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.130, ptr noundef nonnull @__alloc_path.__key.129, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry58.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 2, i32 1
  %138 = ptrtoint ptr %entry58.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %entry58.i.i, ptr %entry58.i.i, align 8
  %prev.i.i268.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 2, i32 1, i32 1
  %139 = ptrtoint ptr %prev.i.i268.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %entry58.i.i, ptr %prev.i.i268.i, align 4
  %func.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 2, i32 2
  %140 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @rtrs_srv_close_work, ptr %func.i.i, align 8
  %141 = load ptr, ptr @rtrs_wq, align 4
  call void @rtrs_init_hb(ptr noundef nonnull %call7.i.i.i232.i, ptr noundef nonnull @io_comp_cqe, i32 noundef 5000, i32 noundef 5, ptr noundef nonnull @rtrs_srv_hb_err_handler, ptr noundef %141) #17
  %142 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cm_id, align 4
  %call62.i.i = call ptr @rtrs_ib_dev_find_or_add(ptr noundef %143, ptr noundef nonnull @dev_pd) #17
  %dev.i269.i = getelementptr inbounds %struct.rtrs_path, ptr %call7.i.i.i232.i, i32 0, i32 10
  %144 = ptrtoint ptr %dev.i269.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %call62.i.i, ptr %dev.i269.i, align 4
  %tobool66.not.i.i = icmp eq ptr %call62.i.i, null
  br i1 %tobool66.not.i.i, label %if.end24.i270.i.err_free_con.i.i_crit_edge, label %if.end68.i.i

if.end24.i270.i.err_free_con.i.i_crit_edge:       ; preds = %if.end24.i270.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free_con.i.i

if.end68.i.i:                                     ; preds = %if.end24.i270.i
  %145 = ptrtoint ptr %srv25.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %srv25.i.i, align 8
  %147 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i.i.i = icmp eq i8 %147, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %queue_depth.i.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %146, i32 0, i32 10
  %148 = ptrtoint ptr %queue_depth.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %queue_depth.i.i.i, align 4
  br label %if.end.i.i.i

if.else.i.i.i:                                    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %150 = ptrtoint ptr %call62.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %call62.i.i, align 4
  %max_fast_reg_page_list_len.i.i.i = getelementptr inbounds %struct.ib_device, ptr %151, i32 0, i32 22, i32 36
  %152 = ptrtoint ptr %max_fast_reg_page_list_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %max_fast_reg_page_list_len.i.i.i, align 8
  %queue_depth3.i.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %146, i32 0, i32 10
  %154 = ptrtoint ptr %queue_depth3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %queue_depth3.i.i.i, align 4
  %add.i.i.i = add i32 %155, -1
  %sub.i.i.i = add i32 %add.i.i.i, %153
  %div.i.i.i = udiv i32 %sub.i.i.i, %153
  %sub6.i.i.i = add i32 %add.i.i.i, %div.i.i.i
  %div7.i.i.i = udiv i32 %sub6.i.i.i, %div.i.i.i
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i.i, %if.then.i.i.i
  %mrs_num.0.i.i.i = phi i32 [ %149, %if.then.i.i.i ], [ %div.i.i.i, %if.else.i.i.i ]
  %chunks_per_mr.0.i.i.i = phi i32 [ 1, %if.then.i.i.i ], [ %div7.i.i.i, %if.else.i.i.i ]
  %156 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mrs_num.0.i.i.i, i32 32) #17
  %157 = extractvalue { i32, i1 } %156, 1
  br i1 %157, label %kcalloc.exit.thread.i.i.i, label %if.end7.i.i.i.i.i, !prof !416

kcalloc.exit.thread.i.i.i:                        ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %mrs237.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 9
  %158 = ptrtoint ptr %mrs237.i.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %mrs237.i.i.i, align 8
  br label %err_put_dev.i.i

if.end7.i.i.i.i.i:                                ; preds = %if.end.i.i.i
  %159 = extractvalue { i32, i1 } %156, 0
  %call8.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %159, i32 noundef 3520) #24
  %mrs.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 9
  %160 = ptrtoint ptr %mrs.i.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %call8.i.i.i.i.i, ptr %mrs.i.i.i, align 8
  %tobool9.not.i.i.i = icmp eq ptr %call8.i.i.i.i.i, null
  br i1 %tobool9.not.i.i.i, label %if.end7.i.i.i.i.i.err_put_dev.i.i_crit_edge, label %if.end11.i.i.i

if.end7.i.i.i.i.i.err_put_dev.i.i_crit_edge:      ; preds = %if.end7.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_put_dev.i.i

if.end11.i.i.i:                                   ; preds = %if.end7.i.i.i.i.i
  %mrs_num12.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 10
  %161 = ptrtoint ptr %mrs_num12.i.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %mrs_num.0.i.i.i, ptr %mrs_num12.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mrs_num.0.i.i.i)
  %cmp279.not.i.i.i = icmp eq i32 %mrs_num.0.i.i.i, 0
  br i1 %cmp279.not.i.i.i, label %if.end11.i.i.i.map_cont_bufs.exit.thread200.i.i_crit_edge, label %for.body.lr.ph.i179.i.i

if.end11.i.i.i.map_cont_bufs.exit.thread200.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %map_cont_bufs.exit.thread200.i.i

for.body.lr.ph.i179.i.i:                          ; preds = %if.end11.i.i.i
  %queue_depth18.i.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %146, i32 0, i32 10
  %chunks29.i.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %146, i32 0, i32 11
  br label %for.body.i180.i.i

for.body.i180.i.i:                                ; preds = %for.inc115.i.i.i.for.body.i180.i.i_crit_edge, %for.body.lr.ph.i179.i.i
  %chunks_per_mr.1282.i.i.i = phi i32 [ %chunks_per_mr.0.i.i.i, %for.body.lr.ph.i179.i.i ], [ %chunks_per_mr.2.i.i.i, %for.inc115.i.i.i.for.body.i180.i.i_crit_edge ]
  %mri.0280.i.i.i = phi i32 [ 0, %for.body.lr.ph.i179.i.i ], [ %inc116.i.i.i, %for.inc115.i.i.i.for.body.i180.i.i_crit_edge ]
  %162 = ptrtoint ptr %mrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mrs.i.i.i, align 8
  %arrayidx.i.i.i = getelementptr %struct.rtrs_srv_mr, ptr %163, i32 %mri.0280.i.i.i
  %sgt14.i.i.i = getelementptr %struct.rtrs_srv_mr, ptr %163, i32 %mri.0280.i.i.i, i32 1
  %mul.i.i.i = mul i32 %mri.0280.i.i.i, %chunks_per_mr.1282.i.i.i
  %164 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool16.not.i.i.i = icmp eq i8 %164, 0
  br i1 %tobool16.not.i.i.i, label %if.then17.i.i.i, label %for.body.i180.i.i.if.end21.i.i.i_crit_edge

for.body.i180.i.i.if.end21.i.i.i_crit_edge:       ; preds = %for.body.i180.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end21.i.i.i

if.then17.i.i.i:                                  ; preds = %for.body.i180.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %165 = ptrtoint ptr %queue_depth18.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %queue_depth18.i.i.i, align 4
  %sub19.i.i.i = sub i32 %166, %mul.i.i.i
  %167 = call i32 @llvm.smin.i32(i32 %chunks_per_mr.1282.i.i.i, i32 %sub19.i.i.i) #17
  br label %if.end21.i.i.i

if.end21.i.i.i:                                   ; preds = %if.then17.i.i.i, %for.body.i180.i.i.if.end21.i.i.i_crit_edge
  %chunks_per_mr.2.i.i.i = phi i32 [ %chunks_per_mr.1282.i.i.i, %for.body.i180.i.i.if.end21.i.i.i_crit_edge ], [ %167, %if.then17.i.i.i ]
  %call22.i.i.i = call i32 @sg_alloc_table(ptr noundef %sgt14.i.i.i, i32 noundef %chunks_per_mr.2.i.i.i, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i.i)
  %tobool23.not.i.i.i = icmp eq i32 %call22.i.i.i, 0
  br i1 %tobool23.not.i.i.i, label %if.end25.i.i.i, label %if.end21.i.i.i.while.cond.i.i.i_crit_edge

if.end21.i.i.i.while.cond.i.i.i_crit_edge:        ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond.i.i.i

if.end25.i.i.i:                                   ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chunks_per_mr.2.i.i.i)
  %cmp27273.i.i.i = icmp sgt i32 %chunks_per_mr.2.i.i.i, 0
  br i1 %cmp27273.i.i.i, label %for.body28.preheader.i.i.i, label %if.end25.i.i.i.for.end.i.i.i_crit_edge

if.end25.i.i.i.for.end.i.i.i_crit_edge:           ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i.i

for.body28.preheader.i.i.i:                       ; preds = %if.end25.i.i.i
  %168 = ptrtoint ptr %sgt14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %sgt14.i.i.i, align 4
  br label %for.body28.i.i.i

for.body28.i.i.i:                                 ; preds = %sg_set_page.exit.i.i.i.for.body28.i.i.i_crit_edge, %for.body28.preheader.i.i.i
  %s15.0275.i.i.i = phi ptr [ %call32.i.i.i, %sg_set_page.exit.i.i.i.for.body28.i.i.i_crit_edge ], [ %169, %for.body28.preheader.i.i.i ]
  %i.0274.i.i.i = phi i32 [ %inc.i.i.i, %sg_set_page.exit.i.i.i.for.body28.i.i.i_crit_edge ], [ 0, %for.body28.preheader.i.i.i ]
  %170 = ptrtoint ptr %chunks29.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %chunks29.i.i.i, align 8
  %add30.i.i.i = add i32 %i.0274.i.i.i, %mul.i.i.i
  %arrayidx31.i.i.i = getelementptr ptr, ptr %171, i32 %add30.i.i.i
  %172 = ptrtoint ptr %arrayidx31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %arrayidx31.i.i.i, align 4
  %174 = load i32, ptr @max_chunk_size, align 4
  %175 = ptrtoint ptr %s15.0275.i.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %s15.0275.i.i.i, align 4
  %177 = ptrtoint ptr %173 to i32
  %and2.i.i.i.i.i = and i32 %177, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i.i)
  %tobool.not.i.i.i.i271.i = icmp eq i32 %and2.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i271.i, label %do.body11.i.i.i.i.i, label %do.body5.i.i.i.i.i, !prof !415

do.body5.i.i.i.i.i:                               ; preds = %for.body28.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #17, !srcloc !434
  unreachable

do.body11.i.i.i.i.i:                              ; preds = %for.body28.i.i.i
  %and.i.i.i.i.i.i = and i32 %176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %sg_set_page.exit.i.i.i, label %do.body19.i.i.i.i.i, !prof !415

do.body19.i.i.i.i.i:                              ; preds = %do.body11.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #17, !srcloc !435
  unreachable

sg_set_page.exit.i.i.i:                           ; preds = %do.body11.i.i.i.i.i
  %and.i.i.i.i.i = and i32 %176, 3
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, %177
  %178 = ptrtoint ptr %s15.0275.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or.i.i.i.i.i, ptr %s15.0275.i.i.i, align 4
  %offset1.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s15.0275.i.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %offset1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %offset1.i.i.i.i, align 4
  %length.i.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s15.0275.i.i.i, i32 0, i32 2
  %180 = ptrtoint ptr %length.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %174, ptr %length.i.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.0274.i.i.i, 1
  %call32.i.i.i = call ptr @sg_next(ptr noundef %s15.0275.i.i.i) #17
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %chunks_per_mr.2.i.i.i
  br i1 %exitcond.not.i.i.i, label %sg_set_page.exit.i.i.i.for.end.i.i.i_crit_edge, label %sg_set_page.exit.i.i.i.for.body28.i.i.i_crit_edge

sg_set_page.exit.i.i.i.for.body28.i.i.i_crit_edge: ; preds = %sg_set_page.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body28.i.i.i

sg_set_page.exit.i.i.i.for.end.i.i.i_crit_edge:   ; preds = %sg_set_page.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %sg_set_page.exit.i.i.i.for.end.i.i.i_crit_edge, %if.end25.i.i.i.for.end.i.i.i_crit_edge
  %181 = ptrtoint ptr %dev.i269.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dev.i269.i, align 4
  %183 = ptrtoint ptr %182 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %182, align 4
  %185 = ptrtoint ptr %sgt14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sgt14.i.i.i, align 4
  %nents.i.i.i = getelementptr %struct.rtrs_srv_mr, ptr %163, i32 %mri.0280.i.i.i, i32 1, i32 1
  %187 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %nents.i.i.i, align 4
  %189 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %184, align 8
  %call2.i.i.i.i.i = call i32 @dma_map_sg_attrs(ptr noundef %190, ptr noundef %186, i32 noundef %188, i32 noundef 0, i32 noundef 0) #17
  %191 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i.i.i.i.i, i32 %192)
  %cmp39.i.i.i = icmp ult i32 %call2.i.i.i.i.i, %192
  br i1 %cmp39.i.i.i, label %if.then40.i.i.i, label %if.end46.i.i.i

if.then40.i.i.i:                                  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i.i.i)
  %cmp41.i.i.i = icmp slt i32 %call2.i.i.i.i.i, 0
  %spec.select.i.i.i = select i1 %cmp41.i.i.i, i32 %call2.i.i.i.i.i, i32 -22
  br label %free_sg.i.i.i

if.end46.i.i.i:                                   ; preds = %for.end.i.i.i
  %193 = ptrtoint ptr %dev.i269.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev.i269.i, align 4
  %ib_pd.i.i.i = getelementptr inbounds %struct.rtrs_ib_dev, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %ib_pd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %ib_pd.i.i.i, align 4
  %call50.i.i.i = call ptr @ib_alloc_mr(ptr noundef %196, i32 noundef 0, i32 noundef %192) #17
  %cmp.i.i.i.i = icmp ugt ptr %call50.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.then52.i.i.i, label %if.end54.i.i.i

if.then52.i.i.i:                                  ; preds = %if.end46.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %197 = ptrtoint ptr %call50.i.i.i to i32
  br label %unmap_sg.i.i.i

if.end54.i.i.i:                                   ; preds = %if.end46.i.i.i
  %198 = ptrtoint ptr %sgt14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sgt14.i.i.i, align 4
  %200 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %nents.i.i.i, align 4
  %202 = load i32, ptr @max_chunk_size, align 4
  %call57.i.i.i = call i32 @ib_map_mr_sg(ptr noundef %call50.i.i.i, ptr noundef %199, i32 noundef %201, ptr noundef null, i32 noundef %202) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i.i.i)
  %cmp58.i.i.i = icmp slt i32 %call57.i.i.i, 0
  br i1 %cmp58.i.i.i, label %if.end54.i.i.i.dereg_mr.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end54.i.i.i.dereg_mr.i.i.i_crit_edge:          ; preds = %if.end54.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dereg_mr.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end54.i.i.i
  %203 = ptrtoint ptr %nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call57.i.i.i, i32 %204)
  %cmp60.i.i.i = icmp ult i32 %call57.i.i.i, %204
  br i1 %cmp60.i.i.i, label %lor.lhs.false.i.i.i.dereg_mr.i.i.i_crit_edge, label %if.end67.i.i.i

lor.lhs.false.i.i.i.dereg_mr.i.i.i_crit_edge:     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dereg_mr.i.i.i

if.end67.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %205 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool68.not.i.i.i = icmp eq i8 %205, 0
  br i1 %tobool68.not.i.i.i, label %if.end67.i.i.i.if.end80.i.i.i_crit_edge, label %if.then69.i.i.i

if.end67.i.i.i.if.end80.i.i.i_crit_edge:          ; preds = %if.end67.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80.i.i.i

if.then69.i.i.i:                                  ; preds = %if.end67.i.i.i
  %206 = ptrtoint ptr %dev.i269.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev.i269.i, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 4
  %call73.i.i.i = call ptr @rtrs_iu_alloc(i32 noundef 1, i32 noundef 8, i32 noundef 3264, ptr noundef %209, i32 noundef 1, ptr noundef nonnull @rtrs_srv_rdma_done) #17
  %iu.i.i.i = getelementptr %struct.rtrs_srv_mr, ptr %163, i32 %mri.0280.i.i.i, i32 5
  %210 = ptrtoint ptr %iu.i.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call73.i.i.i, ptr %iu.i.i.i, align 4
  %tobool75.not.i.i.i = icmp eq ptr %call73.i.i.i, null
  br i1 %tobool75.not.i.i.i, label %if.then76.i.i.i, label %if.then69.i.i.i.if.end80.i.i.i_crit_edge

if.then69.i.i.i.if.end80.i.i.i_crit_edge:         ; preds = %if.then69.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80.i.i.i

if.then76.i.i.i:                                  ; preds = %if.then69.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %call78.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.131, ptr noundef %sessname.i.i, i32 noundef -12) #20
  br label %dereg_mr.i.i.i

if.end80.i.i.i:                                   ; preds = %if.then69.i.i.i.if.end80.i.i.i_crit_edge, %if.end67.i.i.i.if.end80.i.i.i_crit_edge
  %orig_nents.i.i.i = getelementptr %struct.rtrs_srv_mr, ptr %163, i32 %mri.0280.i.i.i, i32 1, i32 2
  %211 = ptrtoint ptr %orig_nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %orig_nents.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp83276.not.i.i.i = icmp eq i32 %212, 0
  br i1 %cmp83276.not.i.i.i, label %if.end80.i.i.i.for.inc115.i.i.i_crit_edge, label %for.body84.preheader.i.i.i

if.end80.i.i.i.for.inc115.i.i.i_crit_edge:        ; preds = %if.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc115.i.i.i

for.body84.preheader.i.i.i:                       ; preds = %if.end80.i.i.i
  %213 = ptrtoint ptr %sgt14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sgt14.i.i.i, align 4
  br label %for.body84.i.i.i

for.body84.i.i.i:                                 ; preds = %for.body84.i.i.i.for.body84.i.i.i_crit_edge, %for.body84.preheader.i.i.i
  %s15.1278.i.i.i = phi ptr [ %call89.i.i.i, %for.body84.i.i.i.for.body84.i.i.i_crit_edge ], [ %214, %for.body84.preheader.i.i.i ]
  %i.1277.i.i.i = phi i32 [ %inc88.i.i.i, %for.body84.i.i.i.for.body84.i.i.i_crit_edge ], [ 0, %for.body84.preheader.i.i.i ]
  %dma_address.i.i.i = getelementptr inbounds %struct.scatterlist, ptr %s15.1278.i.i.i, i32 0, i32 3
  %215 = ptrtoint ptr %dma_address.i.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %dma_address.i.i.i, align 4
  %217 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dma_addr.i.i, align 8
  %add85.i.i.i = add i32 %i.1277.i.i.i, %mul.i.i.i
  %arrayidx86.i.i.i = getelementptr i32, ptr %218, i32 %add85.i.i.i
  %219 = ptrtoint ptr %arrayidx86.i.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %216, ptr %arrayidx86.i.i.i, align 4
  %inc88.i.i.i = add nuw i32 %i.1277.i.i.i, 1
  %call89.i.i.i = call ptr @sg_next(ptr noundef %s15.1278.i.i.i) #17
  %220 = ptrtoint ptr %orig_nents.i.i.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %orig_nents.i.i.i, align 4
  %cmp83.i.i.i = icmp ult i32 %inc88.i.i.i, %221
  br i1 %cmp83.i.i.i, label %for.body84.i.i.i.for.body84.i.i.i_crit_edge, label %for.body84.i.i.i.for.inc115.i.i.i_crit_edge

for.body84.i.i.i.for.inc115.i.i.i_crit_edge:      ; preds = %for.body84.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc115.i.i.i

for.body84.i.i.i.for.body84.i.i.i_crit_edge:      ; preds = %for.body84.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body84.i.i.i

while.cond.i.i.i:                                 ; preds = %free_sg.i.i.i, %if.end21.i.i.i.while.cond.i.i.i_crit_edge
  %mri.1.i.i.i = phi i32 [ %mri.4.i.i.i, %free_sg.i.i.i ], [ %mri.0280.i.i.i, %if.end21.i.i.i.while.cond.i.i.i_crit_edge ]
  %err.0.i.i.i = phi i32 [ %err.3.i.i.i, %free_sg.i.i.i ], [ %call22.i.i.i, %if.end21.i.i.i.while.cond.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mri.1.i.i.i)
  %tobool94.not.i.i.i = icmp eq i32 %mri.1.i.i.i, 0
  br i1 %tobool94.not.i.i.i, label %map_cont_bufs.exit.i.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i.i.i = add i32 %mri.1.i.i.i, -1
  %222 = ptrtoint ptr %mrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mrs.i.i.i, align 8
  %arrayidx96.i.i.i = getelementptr %struct.rtrs_srv_mr, ptr %223, i32 %dec.i.i.i
  %sgt97.i.i.i = getelementptr %struct.rtrs_srv_mr, ptr %223, i32 %dec.i.i.i, i32 1
  %224 = ptrtoint ptr %arrayidx96.i.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %arrayidx96.i.i.i, align 4
  %iu99.i.i.i = getelementptr %struct.rtrs_srv_mr, ptr %223, i32 %dec.i.i.i, i32 5
  %226 = ptrtoint ptr %iu99.i.i.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %iu99.i.i.i, align 4
  %228 = ptrtoint ptr %dev.i269.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev.i269.i, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  call void @rtrs_iu_free(ptr noundef %227, ptr noundef %231, i32 noundef 1) #17
  br label %dereg_mr.i.i.i

dereg_mr.i.i.i:                                   ; preds = %while.body.i.i.i, %if.then76.i.i.i, %lor.lhs.false.i.i.i.dereg_mr.i.i.i_crit_edge, %if.end54.i.i.i.dereg_mr.i.i.i_crit_edge
  %mri.2.i.i.i = phi i32 [ %dec.i.i.i, %while.body.i.i.i ], [ %mri.0280.i.i.i, %if.then76.i.i.i ], [ %mri.0280.i.i.i, %if.end54.i.i.i.dereg_mr.i.i.i_crit_edge ], [ %mri.0280.i.i.i, %lor.lhs.false.i.i.i.dereg_mr.i.i.i_crit_edge ]
  %err.1.i.i.i = phi i32 [ %err.0.i.i.i, %while.body.i.i.i ], [ -12, %if.then76.i.i.i ], [ -22, %lor.lhs.false.i.i.i.dereg_mr.i.i.i_crit_edge ], [ %call57.i.i.i, %if.end54.i.i.i.dereg_mr.i.i.i_crit_edge ]
  %sgt.0.i.i.i = phi ptr [ %sgt97.i.i.i, %while.body.i.i.i ], [ %sgt14.i.i.i, %if.then76.i.i.i ], [ %sgt14.i.i.i, %if.end54.i.i.i.dereg_mr.i.i.i_crit_edge ], [ %sgt14.i.i.i, %lor.lhs.false.i.i.i.dereg_mr.i.i.i_crit_edge ]
  %mr.0.i.i.i = phi ptr [ %225, %while.body.i.i.i ], [ %call50.i.i.i, %if.then76.i.i.i ], [ %call50.i.i.i, %if.end54.i.i.i.dereg_mr.i.i.i_crit_edge ], [ %call50.i.i.i, %lor.lhs.false.i.i.i.dereg_mr.i.i.i_crit_edge ]
  %call.i.i.i272.i = call i32 @ib_dereg_mr_user(ptr noundef %mr.0.i.i.i, ptr noundef null) #17
  br label %unmap_sg.i.i.i

unmap_sg.i.i.i:                                   ; preds = %dereg_mr.i.i.i, %if.then52.i.i.i
  %mri.3.i.i.i = phi i32 [ %mri.2.i.i.i, %dereg_mr.i.i.i ], [ %mri.0280.i.i.i, %if.then52.i.i.i ]
  %err.2.i.i.i = phi i32 [ %err.1.i.i.i, %dereg_mr.i.i.i ], [ %197, %if.then52.i.i.i ]
  %sgt.1.i.i.i = phi ptr [ %sgt.0.i.i.i, %dereg_mr.i.i.i ], [ %sgt14.i.i.i, %if.then52.i.i.i ]
  %232 = ptrtoint ptr %dev.i269.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev.i269.i, align 4
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %233, align 4
  %236 = ptrtoint ptr %sgt.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %sgt.1.i.i.i, align 4
  %nents108.i.i.i = getelementptr inbounds %struct.sg_table, ptr %sgt.1.i.i.i, i32 0, i32 1
  %238 = ptrtoint ptr %nents108.i.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %nents108.i.i.i, align 4
  %240 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %235, align 8
  call void @dma_unmap_sg_attrs(ptr noundef %241, ptr noundef %237, i32 noundef %239, i32 noundef 0, i32 noundef 0) #17
  br label %free_sg.i.i.i

free_sg.i.i.i:                                    ; preds = %unmap_sg.i.i.i, %if.then40.i.i.i
  %mri.4.i.i.i = phi i32 [ %mri.3.i.i.i, %unmap_sg.i.i.i ], [ %mri.0280.i.i.i, %if.then40.i.i.i ]
  %err.3.i.i.i = phi i32 [ %err.2.i.i.i, %unmap_sg.i.i.i ], [ %spec.select.i.i.i, %if.then40.i.i.i ]
  %sgt.2.i.i.i = phi ptr [ %sgt.1.i.i.i, %unmap_sg.i.i.i ], [ %sgt14.i.i.i, %if.then40.i.i.i ]
  call void @sg_free_table(ptr noundef %sgt.2.i.i.i) #17
  br label %while.cond.i.i.i

for.inc115.i.i.i:                                 ; preds = %for.body84.i.i.i.for.inc115.i.i.i_crit_edge, %if.end80.i.i.i.for.inc115.i.i.i_crit_edge
  %rkey.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %call50.i.i.i, i32 0, i32 3
  %242 = ptrtoint ptr %rkey.i.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %rkey.i.i.i, align 4
  %and1.i.i.i.i = and i32 %243, -256
  %conv.i.i.i = add i32 %243, 1
  %lkey.i.i.i.i = getelementptr inbounds %struct.ib_mr, ptr %call50.i.i.i, i32 0, i32 2
  %244 = ptrtoint ptr %lkey.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %lkey.i.i.i.i, align 8
  %and.i233.i.i.i = and i32 %245, -256
  %conv.i.i.i.i = and i32 %conv.i.i.i, 255
  %or.i234.i.i.i = or i32 %and.i233.i.i.i, %conv.i.i.i.i
  store i32 %or.i234.i.i.i, ptr %lkey.i.i.i.i, align 8
  %or4.i.i.i.i = or i32 %conv.i.i.i.i, %and1.i.i.i.i
  store i32 %or4.i.i.i.i, ptr %rkey.i.i.i, align 4
  %246 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call50.i.i.i, ptr %arrayidx.i.i.i, align 4
  %inc116.i.i.i = add nuw nsw i32 %mri.0280.i.i.i, 1
  %exitcond311.not.i.i.i = icmp eq i32 %inc116.i.i.i, %mrs_num.0.i.i.i
  br i1 %exitcond311.not.i.i.i, label %for.inc115.i.i.i.map_cont_bufs.exit.thread200.i.i_crit_edge, label %for.inc115.i.i.i.for.body.i180.i.i_crit_edge

for.inc115.i.i.i.for.body.i180.i.i_crit_edge:     ; preds = %for.inc115.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i180.i.i

for.inc115.i.i.i.map_cont_bufs.exit.thread200.i.i_crit_edge: ; preds = %for.inc115.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %map_cont_bufs.exit.thread200.i.i

map_cont_bufs.exit.thread200.i.i:                 ; preds = %for.inc115.i.i.i.map_cont_bufs.exit.thread200.i.i_crit_edge, %if.end11.i.i.i.map_cont_bufs.exit.thread200.i.i_crit_edge
  %queue_depth118.i.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %146, i32 0, i32 10
  %247 = ptrtoint ptr %queue_depth118.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %queue_depth118.i.i.i, align 4
  %sub119.i.i.i = add i32 %248, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub119.i.i.i)
  %tobool.not.i.i235.i.i.i = icmp eq i32 %sub119.i.i.i, 0
  %249 = call i32 @llvm.ctlz.i32(i32 %sub119.i.i.i, i1 true) #17, !range !431
  %sub.i.op.i.neg.i.i.i.op = add nsw i32 %249, -4
  %sub140.i.i.i = select i1 %tobool.not.i.i235.i.i.i, i32 28, i32 %sub.i.op.i.neg.i.i.i.op
  %mem_bits.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %call7.i.i.i232.i, i32 0, i32 13
  %250 = ptrtoint ptr %mem_bits.i.i.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 %sub140.i.i.i, ptr %mem_bits.i.i.i, align 8
  br label %if.end72.i.i

map_cont_bufs.exit.i.i:                           ; preds = %while.cond.i.i.i
  %251 = ptrtoint ptr %mrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mrs.i.i.i, align 8
  call void @kfree(ptr noundef %252) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i.i)
  %tobool70.not.i.i = icmp eq i32 %err.0.i.i.i, 0
  br i1 %tobool70.not.i.i, label %map_cont_bufs.exit.i.i.if.end72.i.i_crit_edge, label %map_cont_bufs.exit.i.i.err_put_dev.i.i_crit_edge

map_cont_bufs.exit.i.i.err_put_dev.i.i_crit_edge: ; preds = %map_cont_bufs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_put_dev.i.i

map_cont_bufs.exit.i.i.if.end72.i.i_crit_edge:    ; preds = %map_cont_bufs.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end72.i.i

if.end72.i.i:                                     ; preds = %map_cont_bufs.exit.i.i.if.end72.i.i_crit_edge, %map_cont_bufs.exit.thread200.i.i
  %call73.i.i = call fastcc i32 @rtrs_srv_alloc_ops_ids(ptr noundef nonnull %call7.i.i.i232.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i.i)
  %tobool74.not.i.i = icmp eq i32 %call73.i.i, 0
  br i1 %tobool74.not.i.i, label %if.end76.i.i, label %err_unmap_bufs.i.i

if.end76.i.i:                                     ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @__add_path_to_srv(ptr noundef %retval.0.i.i, ptr noundef nonnull %call7.i.i.i232.i) #17
  br label %__alloc_path.exit.i

err_unmap_bufs.i.i:                               ; preds = %if.end72.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @unmap_cont_bufs(ptr noundef nonnull %call7.i.i.i232.i) #17
  br label %err_put_dev.i.i

err_put_dev.i.i:                                  ; preds = %err_unmap_bufs.i.i, %map_cont_bufs.exit.i.i.err_put_dev.i.i_crit_edge, %if.end7.i.i.i.i.i.err_put_dev.i.i_crit_edge, %kcalloc.exit.thread.i.i.i
  %err.0.i.i = phi i32 [ %err.0.i.i.i, %map_cont_bufs.exit.i.i.err_put_dev.i.i_crit_edge ], [ %call73.i.i, %err_unmap_bufs.i.i ], [ -12, %if.end7.i.i.i.i.i.err_put_dev.i.i_crit_edge ], [ -12, %kcalloc.exit.thread.i.i.i ]
  %253 = ptrtoint ptr %dev.i269.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev.i269.i, align 4
  %call79.i.i = call i32 @rtrs_ib_dev_put(ptr noundef %254) #17
  br label %err_free_con.i.i

err_free_con.i.i:                                 ; preds = %err_put_dev.i.i, %if.end24.i270.i.err_free_con.i.i_crit_edge
  %err.1.i.i = phi i32 [ %err.0.i.i, %err_put_dev.i.i ], [ -12, %if.end24.i270.i.err_free_con.i.i_crit_edge ]
  %255 = ptrtoint ptr %con.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %con.i.i, align 8
  call void @kfree(ptr noundef %256) #17
  br label %err_free_dma_addr.i.i

err_free_dma_addr.i.i:                            ; preds = %err_free_con.i.i, %if.end7.i.i173.i.i.err_free_dma_addr.i.i_crit_edge
  %err.2.i.i = phi i32 [ %err.1.i.i, %err_free_con.i.i ], [ -12, %if.end7.i.i173.i.i.err_free_dma_addr.i.i_crit_edge ]
  %257 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dma_addr.i.i, align 8
  call void @kfree(ptr noundef %258) #17
  br label %err_free_stats.i.i

err_free_stats.i.i:                               ; preds = %err_free_dma_addr.i.i, %if.end7.i.i.i265.i.err_free_stats.i.i_crit_edge, %kcalloc.exit.thread.i234.i
  %err.3.i.i = phi i32 [ %err.2.i.i, %err_free_dma_addr.i.i ], [ -12, %if.end7.i.i.i265.i.err_free_stats.i.i_crit_edge ], [ -12, %kcalloc.exit.thread.i234.i ]
  %259 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %stats.i.i, align 4
  call void @kfree(ptr noundef %260) #17
  br label %err_free_sess.i.i

err_free_sess.i.i:                                ; preds = %err_free_stats.i.i, %if.end6.i.i.err_free_sess.i.i_crit_edge
  %err.4.i.i = phi i32 [ %err.3.i.i, %err_free_stats.i.i ], [ -12, %if.end6.i.i.err_free_sess.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i232.i) #17
  br label %err84.i.i

err84.i.i:                                        ; preds = %err_free_sess.i.i, %if.end3.i.i.err84.i.i_crit_edge, %if.then1.i.i, %if.else.i.err84.i.i_crit_edge
  %err.5.i.i = phi i32 [ -17, %if.then1.i.i ], [ %err.4.i.i, %err_free_sess.i.i ], [ -12, %if.end3.i.i.err84.i.i_crit_edge ], [ -104, %if.else.i.err84.i.i_crit_edge ]
  %261 = inttoptr i32 %err.5.i.i to ptr
  br label %__alloc_path.exit.i

__alloc_path.exit.i:                              ; preds = %err84.i.i, %if.end76.i.i
  %retval.0.i273.i = phi ptr [ %261, %err84.i.i ], [ %call7.i.i.i232.i, %if.end76.i.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %path.i.i) #17
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %str.i.i) #17
  %cmp.i274.i = icmp ugt ptr %retval.0.i273.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274.i, label %if.then112.i, label %__alloc_path.exit.i.if.end121.i_crit_edge

__alloc_path.exit.i.if.end121.i_crit_edge:        ; preds = %__alloc_path.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end121.i

if.then112.i:                                     ; preds = %__alloc_path.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @mutex_unlock(ptr noundef %paths_mutex.i) #17
  call fastcc void @put_srv(ptr noundef %retval.0.i.i) #17
  %262 = ptrtoint ptr %retval.0.i273.i to i32
  %call119.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, i32 noundef %262) #20
  br label %reject_w_err.i

if.end121.i:                                      ; preds = %__alloc_path.exit.i.if.end121.i_crit_edge, %if.end94.i.if.end121.i_crit_edge
  %srv_path.0.i = phi ptr [ %retval.0.i273.i, %__alloc_path.exit.i.if.end121.i_crit_edge ], [ %srv_path.0.i.i, %if.end94.i.if.end121.i_crit_edge ]
  %srv1.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.0.i, i32 0, i32 1
  %263 = ptrtoint ptr %srv1.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %srv1.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %265 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i275.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %265, i32 noundef 3520, i32 noundef 84) #21
  %tobool.not.i276.i = icmp eq ptr %call7.i.i.i275.i, null
  br i1 %tobool.not.i276.i, label %if.end121.i.do.end128.i_crit_edge, label %do.body.i.i

if.end121.i.do.end128.i_crit_edge:                ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end128.i

do.body.i.i:                                      ; preds = %if.end121.i
  %rsp_wr_wait_lock.i.i = getelementptr inbounds %struct.rtrs_srv_con, ptr %call7.i.i.i275.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %rsp_wr_wait_lock.i.i, ptr noundef nonnull @.str.136, ptr noundef nonnull @create_con.__key, i16 noundef signext 3) #17
  %rsp_wr_wait_list.i.i = getelementptr inbounds %struct.rtrs_srv_con, ptr %call7.i.i.i275.i, i32 0, i32 1
  %266 = ptrtoint ptr %rsp_wr_wait_list.i.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store volatile ptr %rsp_wr_wait_list.i.i, ptr %rsp_wr_wait_list.i.i, align 8
  %prev.i.i277.i = getelementptr inbounds %struct.rtrs_srv_con, ptr %call7.i.i.i275.i, i32 0, i32 1, i32 1
  %267 = ptrtoint ptr %prev.i.i277.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %rsp_wr_wait_list.i.i, ptr %prev.i.i277.i, align 4
  %cm_id4.i.i = getelementptr inbounds %struct.rtrs_con, ptr %call7.i.i.i275.i, i32 0, i32 3
  %268 = ptrtoint ptr %cm_id4.i.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %cm_id, ptr %cm_id4.i.i, align 4
  %269 = ptrtoint ptr %call7.i.i.i275.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %srv_path.0.i, ptr %call7.i.i.i275.i, align 8
  %cid8.i.i = getelementptr inbounds %struct.rtrs_con, ptr %call7.i.i.i275.i, i32 0, i32 4
  %270 = ptrtoint ptr %cid8.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %conv35.i, ptr %cid8.i.i, align 8
  %wr_cnt.i.i = getelementptr inbounds %struct.rtrs_con, ptr %call7.i.i.i275.i, i32 0, i32 6
  %call.i.i.i278.i = call zeroext i1 @__kasan_check_write(ptr noundef %wr_cnt.i.i, i32 noundef 4) #17
  %271 = ptrtoint ptr %wr_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store volatile i32 1, ptr %wr_cnt.i.i, align 8
  %dev.i279.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i, i32 0, i32 10
  %272 = ptrtoint ptr %dev.i279.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %dev.i279.i, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %273, align 4
  %max_qp_wr.i.i = getelementptr inbounds %struct.ib_device, ptr %275, i32 0, i32 22, i32 8
  %276 = ptrtoint ptr %max_qp_wr.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %max_qp_wr.i.i, align 8
  %278 = ptrtoint ptr %cid8.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %cid8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %cmp.i280.i = icmp eq i32 %279, 0
  br i1 %cmp.i280.i, label %if.then13.i.i, label %if.else.i.i

if.then13.i.i:                                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %280 = call i32 @llvm.smin.i32(i32 %277, i32 1026) #17
  %queue_depth.i281.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %264, i32 0, i32 10
  %281 = ptrtoint ptr %queue_depth.i281.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %queue_depth.i281.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %282)
  %cmp16.i.i = icmp eq i32 %282, 0
  %283 = call i32 @llvm.umin.i32(i32 %282, i32 512) #17
  %cond31.i.i = select i1 %cmp16.i.i, i32 512, i32 %283
  %signal_interval.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i, i32 0, i32 9
  %284 = ptrtoint ptr %signal_interval.i.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %cond31.i.i, ptr %signal_interval.i.i, align 8
  br label %if.end54.i.i

if.else.i.i:                                      ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %285 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %285)
  %tobool32.not.i.i = icmp eq i8 %285, 0
  %queue_depth42.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %264, i32 0, i32 10
  %286 = ptrtoint ptr %queue_depth42.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %queue_depth42.i.i, align 4
  %..i.i = select i1 %tobool32.not.i.i, i32 3, i32 5
  %mul43.i.i = mul i32 %..i.i, %287
  %add44.i.i = add i32 %mul43.i.i, 1
  %288 = call i32 @llvm.smin.i32(i32 %277, i32 %add44.i.i) #17
  %add53.i.i = add i32 %287, 1
  br label %if.end54.i.i

if.end54.i.i:                                     ; preds = %if.else.i.i, %if.then13.i.i
  %max_recv_wr.0.i.i = phi i32 [ %280, %if.then13.i.i ], [ %add53.i.i, %if.else.i.i ]
  %max_send_wr.1.i.i = phi i32 [ %280, %if.then13.i.i ], [ %288, %if.else.i.i ]
  %add55.i.i = add i32 %max_send_wr.1.i.i, %max_recv_wr.0.i.i
  %sq_wr_avail.i.i = getelementptr inbounds %struct.rtrs_con, ptr %call7.i.i.i275.i, i32 0, i32 7
  %call.i.i174.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %sq_wr_avail.i.i, i32 noundef 4) #17
  %289 = ptrtoint ptr %sq_wr_avail.i.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store volatile i32 %max_send_wr.1.i.i, ptr %sq_wr_avail.i.i, align 4
  %cur_cq_vector.i.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.0.i, i32 0, i32 5
  %290 = ptrtoint ptr %cur_cq_vector.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %cur_cq_vector.i.i.i.i, align 8
  %call.i.i175.i.i = call i32 @cpumask_next(i32 noundef %291, ptr noundef nonnull @cq_affinity_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %292 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i175.i.i, i32 %292)
  %cmp.not.i.i.i.i = icmp ult i32 %call.i.i175.i.i, %292
  br i1 %cmp.not.i.i.i.i, label %lor.lhs.false.i.i.i.i, label %if.end54.i.i.if.then.i.i.i.i_crit_edge

if.end54.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end54.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end54.i.i
  %293 = ptrtoint ptr %dev.i279.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %dev.i279.i, align 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %294, align 4
  %num_comp_vectors.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %296, i32 0, i32 12
  %297 = ptrtoint ptr %num_comp_vectors.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %num_comp_vectors.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i175.i.i, i32 %298)
  %cmp2.not.i.i.i.i = icmp slt i32 %call.i.i175.i.i, %298
  br i1 %cmp2.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.rtrs_srv_get_next_cq_vector.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then.i.i.i.i

lor.lhs.false.i.i.i.i.rtrs_srv_get_next_cq_vector.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_get_next_cq_vector.exit.i.i

if.then.i.i.i.i:                                  ; preds = %lor.lhs.false.i.i.i.i.if.then.i.i.i.i_crit_edge, %if.end54.i.i.if.then.i.i.i.i_crit_edge
  %call.i.i.i.i282.i = call i32 @_find_first_bit_be(ptr noundef nonnull @cq_affinity_mask, i32 noundef %292) #17
  br label %rtrs_srv_get_next_cq_vector.exit.i.i

rtrs_srv_get_next_cq_vector.exit.i.i:             ; preds = %if.then.i.i.i.i, %lor.lhs.false.i.i.i.i.rtrs_srv_get_next_cq_vector.exit.i.i_crit_edge
  %v.0.i.i.i.i = phi i32 [ %call.i.i.i.i282.i, %if.then.i.i.i.i ], [ %call.i.i175.i.i, %lor.lhs.false.i.i.i.i.rtrs_srv_get_next_cq_vector.exit.i.i_crit_edge ]
  %299 = ptrtoint ptr %cur_cq_vector.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %v.0.i.i.i.i, ptr %cur_cq_vector.i.i.i.i, align 8
  %call60.i.i = call i32 @rtrs_cq_qp_create(ptr noundef %srv_path.0.i, ptr noundef nonnull %call7.i.i.i275.i, i32 noundef 1, i32 noundef %v.0.i.i.i.i, i32 noundef %add55.i.i, i32 noundef %max_send_wr.1.i.i, i32 noundef %max_recv_wr.0.i.i, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i.i)
  %tobool61.not.i.i = icmp eq i32 %call60.i.i, 0
  br i1 %tobool61.not.i.i, label %if.end68.i284.i, label %do.end65.i.i

do.end65.i.i:                                     ; preds = %rtrs_srv_get_next_cq_vector.exit.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname.i283.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i, i32 0, i32 3
  %call67.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %sessname.i283.i, i32 noundef %call60.i.i) #20
  br label %free_con.i.i

if.end68.i284.i:                                  ; preds = %rtrs_srv_get_next_cq_vector.exit.i.i
  %300 = ptrtoint ptr %cid8.i.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %cid8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %cmp71.i.i = icmp eq i32 %301, 0
  br i1 %cmp71.i.i, label %if.then72.i.i, label %if.end68.i284.i.if.end77.i.i_crit_edge

if.end68.i284.i.if.end77.i.i_crit_edge:           ; preds = %if.end68.i284.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77.i.i

if.then72.i.i:                                    ; preds = %if.end68.i284.i
  %302 = ptrtoint ptr %call7.i.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %call7.i.i.i275.i, align 8
  %dev.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %303, i32 0, i32 10
  %304 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load ptr, ptr %dev.i.i.i, align 4
  %306 = ptrtoint ptr %305 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %305, align 4
  %call2.i.i.i = call ptr @rtrs_iu_alloc(i32 noundef 1, i32 noundef 272, i32 noundef 3264, ptr noundef %307, i32 noundef 2, ptr noundef nonnull @rtrs_srv_info_req_done) #17
  %tobool.not.i.i285.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool.not.i.i285.i, label %if.then72.i.i.free_cqqp.i.i_crit_edge, label %if.end.i.i286.i

if.then72.i.i.free_cqqp.i.i_crit_edge:            ; preds = %if.then72.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_cqqp.i.i

if.end.i.i286.i:                                  ; preds = %if.then72.i.i
  %call4.i.i.i = call i32 @rtrs_iu_post_recv(ptr noundef nonnull %call7.i.i.i275.i, ptr noundef nonnull %call2.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end.i.i286.i.if.end77.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i286.i.if.end77.i.i_crit_edge:           ; preds = %if.end.i.i286.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end77.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i286.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname.i.i.i = getelementptr inbounds %struct.rtrs_path, ptr %303, i32 0, i32 3
  %call7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef %sessname.i.i.i, i32 noundef %call4.i.i.i) #20
  %308 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %dev.i.i.i, align 4
  %310 = ptrtoint ptr %309 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %309, align 4
  call void @rtrs_iu_free(ptr noundef nonnull %call2.i.i.i, ptr noundef %311, i32 noundef 1) #17
  br label %free_cqqp.i.i

if.end77.i.i:                                     ; preds = %if.end.i.i286.i.if.end77.i.i_crit_edge, %if.end68.i284.i.if.end77.i.i_crit_edge
  %con79.i.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i, i32 0, i32 5
  %312 = ptrtoint ptr %con79.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %con79.i.i, align 8
  %arrayidx.i287.i = getelementptr ptr, ptr %313, i32 %conv35.i
  %314 = ptrtoint ptr %arrayidx.i287.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %arrayidx.i287.i, align 4
  %tobool80.not.i.i = icmp eq ptr %315, null
  br i1 %tobool80.not.i.i, label %if.end77.i.i.if.end135.i_crit_edge, label %do.end92.i.i, !prof !415

if.end77.i.i.if.end135.i_crit_edge:               ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end135.i

do.end92.i.i:                                     ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1710, i32 noundef 9, ptr noundef null) #17
  br label %if.end135.i

free_cqqp.i.i:                                    ; preds = %do.end.i.i.i, %if.then72.i.i.free_cqqp.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ -12, %if.then72.i.i.free_cqqp.i.i_crit_edge ], [ %call4.i.i.i, %do.end.i.i.i ]
  call void @rtrs_cq_qp_destroy(ptr noundef nonnull %call7.i.i.i275.i) #17
  br label %free_con.i.i

free_con.i.i:                                     ; preds = %free_cqqp.i.i, %do.end65.i.i
  %err.0.i288.i = phi i32 [ %call60.i.i, %do.end65.i.i ], [ %retval.0.i.ph.i.i, %free_cqqp.i.i ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i275.i) #17
  br label %do.end128.i

do.end128.i:                                      ; preds = %free_con.i.i, %if.end121.i.do.end128.i_crit_edge
  %retval.0.i289.ph.i = phi i32 [ -12, %if.end121.i.do.end128.i_crit_edge ], [ %err.0.i288.i, %free_con.i.i ]
  %sessname131.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i, i32 0, i32 3
  %call133.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef %sessname131.i, i32 noundef %retval.0.i289.ph.i) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #17
  %.compoundliteral.sroa.5.0.msg.sroa_idx.i.i = getelementptr inbounds i8, ptr %msg.i.i, i32 6
  %316 = call ptr @memset(ptr %.compoundliteral.sroa.5.0.msg.sroa_idx.i.i, i32 0, i32 50)
  %conv.i.i = trunc i32 %retval.0.i289.ph.i to i16
  %317 = call i16 @llvm.bswap.i16(i16 %conv.i.i) #17
  %318 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %318)
  store i16 -17125, ptr %msg.i.i, align 4
  %.compoundliteral.sroa.3.0.msg.sroa_idx.i.i = getelementptr inbounds i8, ptr %msg.i.i, i32 2
  %319 = ptrtoint ptr %.compoundliteral.sroa.3.0.msg.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %319)
  store i16 2, ptr %.compoundliteral.sroa.3.0.msg.sroa_idx.i.i, align 2
  %.compoundliteral.sroa.4.0.msg.sroa_idx.i.i = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %320 = ptrtoint ptr %.compoundliteral.sroa.4.0.msg.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %320)
  store i16 %317, ptr %.compoundliteral.sroa.4.0.msg.sroa_idx.i.i, align 4
  %call.i.i = call i32 @rdma_reject(ptr noundef %cm_id, ptr noundef nonnull %msg.i.i, i8 noundef zeroext 56, i8 noundef zeroext 28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i290.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i290.i, label %do.end128.i.rtrs_rdma_do_reject.exit.i_crit_edge, label %do.end.i292.i

do.end128.i.rtrs_rdma_do_reject.exit.i_crit_edge: ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_rdma_do_reject.exit.i

do.end.i292.i:                                    ; preds = %do.end128.i
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i291.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %call.i.i) #20
  br label %rtrs_rdma_do_reject.exit.i

rtrs_rdma_do_reject.exit.i:                       ; preds = %do.end.i292.i, %do.end128.i.rtrs_rdma_do_reject.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #17
  br label %close_and_return_err.i

if.end135.i:                                      ; preds = %do.end92.i.i, %if.end77.i.i.if.end135.i_crit_edge
  %321 = ptrtoint ptr %con79.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %con79.i.i, align 8
  %arrayidx109.i.i = getelementptr ptr, ptr %322, i32 %conv35.i
  %323 = ptrtoint ptr %arrayidx109.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store ptr %call7.i.i.i275.i, ptr %arrayidx109.i.i, align 4
  %324 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %call7.i.i.i275.i, ptr %context.i, align 4
  %325 = ptrtoint ptr %srv1.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %srv1.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i294.i) #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %param.i.i) #17
  %327 = getelementptr inbounds i8, ptr %param.i.i, i32 8
  %328 = ptrtoint ptr %327 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 -16318209, ptr %327, align 4
  %329 = ptrtoint ptr %param.i.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %msg.i294.i, ptr %param.i.i, align 4
  %.compoundliteral.sroa.2.0.param.sroa_idx.i.i = getelementptr inbounds i8, ptr %param.i.i, i32 4
  %330 = ptrtoint ptr %.compoundliteral.sroa.2.0.param.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 56, ptr %.compoundliteral.sroa.2.0.param.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0.param.sroa_idx.i.i = getelementptr inbounds i8, ptr %param.i.i, i32 5
  %331 = ptrtoint ptr %.compoundliteral.sroa.3.0.param.sroa_idx.i.i to i32
  call void @__asan_storeN_noabort(i32 %331, i32 4)
  store i32 0, ptr %.compoundliteral.sroa.3.0.param.sroa_idx.i.i, align 1
  %.compoundliteral.sroa.99.0.param.sroa_idx.i.i = getelementptr inbounds i8, ptr %param.i.i, i32 12
  %332 = ptrtoint ptr %.compoundliteral.sroa.99.0.param.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 0, ptr %.compoundliteral.sroa.99.0.param.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.10.0.param.sroa_idx.i.i = getelementptr inbounds i8, ptr %param.i.i, i32 16
  %333 = ptrtoint ptr %.compoundliteral.sroa.10.0.param.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 0, ptr %.compoundliteral.sroa.10.0.param.sroa_idx.i.i, align 4
  %.compoundliteral2.sroa.7.0.msg.sroa_idx.i.i = getelementptr inbounds i8, ptr %msg.i294.i, i32 16
  %334 = call ptr @memset(ptr %.compoundliteral2.sroa.7.0.msg.sroa_idx.i.i, i32 0, i32 40)
  %queue_depth3.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %326, i32 0, i32 10
  %335 = ptrtoint ptr %queue_depth3.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %queue_depth3.i.i, align 4
  %conv.i296.i = trunc i32 %336 to i16
  %337 = call i16 @llvm.bswap.i16(i16 %conv.i296.i) #17
  %338 = load i32, ptr @max_chunk_size, align 4
  %sub.i.i = add i32 %338, -4096
  %339 = call i32 @llvm.bswap.i32(i32 %sub.i.i) #17
  %340 = ptrtoint ptr %msg.i294.i to i32
  call void @__asan_store2_noabort(i32 %340)
  store i16 -17125, ptr %msg.i294.i, align 4
  %.compoundliteral2.sroa.3.0.msg.sroa_idx.i.i = getelementptr inbounds i8, ptr %msg.i294.i, i32 2
  %341 = ptrtoint ptr %.compoundliteral2.sroa.3.0.msg.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %341)
  store i16 2, ptr %.compoundliteral2.sroa.3.0.msg.sroa_idx.i.i, align 2
  %.compoundliteral2.sroa.4.0.msg.sroa_idx.i.i = getelementptr inbounds i8, ptr %msg.i294.i, i32 4
  %342 = ptrtoint ptr %.compoundliteral2.sroa.4.0.msg.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %342)
  store i16 0, ptr %.compoundliteral2.sroa.4.0.msg.sroa_idx.i.i, align 4
  %.compoundliteral2.sroa.48.0.msg.sroa_idx.i.i = getelementptr inbounds i8, ptr %msg.i294.i, i32 6
  %343 = ptrtoint ptr %.compoundliteral2.sroa.48.0.msg.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 %337, ptr %.compoundliteral2.sroa.48.0.msg.sroa_idx.i.i, align 2
  %.compoundliteral2.sroa.5.0.msg.sroa_idx.i.i = getelementptr inbounds i8, ptr %msg.i294.i, i32 8
  %344 = ptrtoint ptr %.compoundliteral2.sroa.5.0.msg.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %344)
  store i32 %339, ptr %.compoundliteral2.sroa.5.0.msg.sroa_idx.i.i, align 4
  %.compoundliteral2.sroa.6.0.msg.sroa_idx.i.i = getelementptr inbounds i8, ptr %msg.i294.i, i32 12
  %345 = ptrtoint ptr %.compoundliteral2.sroa.6.0.msg.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 1048576, ptr %.compoundliteral2.sroa.6.0.msg.sroa_idx.i.i, align 4
  %346 = load i8, ptr @always_invalidate, align 1, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %346)
  %tobool.not.i297.i = icmp eq i8 %346, 0
  br i1 %tobool.not.i297.i, label %if.end135.i.if.end.i300.i_crit_edge, label %if.then.i298.i

if.end135.i.if.end.i300.i_crit_edge:              ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i300.i

if.then.i298.i:                                   ; preds = %if.end135.i
  call void @__sanitizer_cov_trace_pc() #19
  %347 = ptrtoint ptr %.compoundliteral2.sroa.7.0.msg.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 33554432, ptr %.compoundliteral2.sroa.7.0.msg.sroa_idx.i.i, align 4
  br label %if.end.i300.i

if.end.i300.i:                                    ; preds = %if.then.i298.i, %if.end135.i.if.end.i300.i_crit_edge
  %call.i299.i = call i32 @rdma_accept(ptr noundef %cm_id, ptr noundef nonnull %param.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i299.i)
  %tobool4.not.i.i = icmp eq i32 %call.i299.i, 0
  br i1 %tobool4.not.i.i, label %if.end148.i, label %do.end141.i

do.end141.i:                                      ; preds = %if.end.i300.i
  %call6.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %call.i299.i) #20
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %param.i.i) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i294.i) #17
  %sessname144.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.0.i, i32 0, i32 3
  %call146.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, ptr noundef %sessname144.i, i32 noundef %call.i299.i) #20
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i302.i) #17
  %.compoundliteral.sroa.5.0.msg.sroa_idx.i303.i = getelementptr inbounds i8, ptr %msg.i302.i, i32 6
  %348 = call ptr @memset(ptr %.compoundliteral.sroa.5.0.msg.sroa_idx.i303.i, i32 0, i32 50)
  %conv.i304.i = trunc i32 %call.i299.i to i16
  %349 = call i16 @llvm.bswap.i16(i16 %conv.i304.i) #17
  %350 = ptrtoint ptr %msg.i302.i to i32
  call void @__asan_store2_noabort(i32 %350)
  store i16 -17125, ptr %msg.i302.i, align 4
  %.compoundliteral.sroa.3.0.msg.sroa_idx.i305.i = getelementptr inbounds i8, ptr %msg.i302.i, i32 2
  %351 = ptrtoint ptr %.compoundliteral.sroa.3.0.msg.sroa_idx.i305.i to i32
  call void @__asan_store2_noabort(i32 %351)
  store i16 2, ptr %.compoundliteral.sroa.3.0.msg.sroa_idx.i305.i, align 2
  %.compoundliteral.sroa.4.0.msg.sroa_idx.i306.i = getelementptr inbounds i8, ptr %msg.i302.i, i32 4
  %352 = ptrtoint ptr %.compoundliteral.sroa.4.0.msg.sroa_idx.i306.i to i32
  call void @__asan_store2_noabort(i32 %352)
  store i16 %349, ptr %.compoundliteral.sroa.4.0.msg.sroa_idx.i306.i, align 4
  %call.i307.i = call i32 @rdma_reject(ptr noundef %cm_id, ptr noundef nonnull %msg.i302.i, i8 noundef zeroext 56, i8 noundef zeroext 28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307.i)
  %tobool.not.i308.i = icmp eq i32 %call.i307.i, 0
  br i1 %tobool.not.i308.i, label %do.end141.i.rtrs_rdma_do_reject.exit312.i_crit_edge, label %do.end.i310.i

do.end141.i.rtrs_rdma_do_reject.exit312.i_crit_edge: ; preds = %do.end141.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_rdma_do_reject.exit312.i

do.end.i310.i:                                    ; preds = %do.end141.i
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i309.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %call.i307.i) #20
  br label %rtrs_rdma_do_reject.exit312.i

rtrs_rdma_do_reject.exit312.i:                    ; preds = %do.end.i310.i, %do.end141.i.rtrs_rdma_do_reject.exit312.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i302.i) #17
  br label %close_and_return_err.i

if.end148.i:                                      ; preds = %if.end.i300.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %param.i.i) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i294.i) #17
  call void @mutex_unlock(ptr noundef %paths_mutex.i) #17
  br label %cleanup

reject_w_err.i:                                   ; preds = %if.then112.i, %do.end99.i, %do.end86.i, %rtrs_srv_state_str.exit.i, %if.then51.i, %do.end42.i, %do.end29.i, %do.end17.i, %do.end6.i, %do.end.i
  %err.0.i = phi i32 [ -104, %do.end.i ], [ -104, %do.end6.i ], [ -104, %do.end17.i ], [ -104, %do.end29.i ], [ -104, %do.end42.i ], [ %83, %if.then51.i ], [ %262, %if.then112.i ], [ -104, %rtrs_srv_state_str.exit.i ], [ -104, %do.end86.i ], [ -104, %do.end99.i ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i313.i) #17
  %.compoundliteral.sroa.5.0.msg.sroa_idx.i314.i = getelementptr inbounds i8, ptr %msg.i313.i, i32 6
  %353 = call ptr @memset(ptr %.compoundliteral.sroa.5.0.msg.sroa_idx.i314.i, i32 0, i32 50)
  %conv.i315.i = trunc i32 %err.0.i to i16
  %354 = call i16 @llvm.bswap.i16(i16 %conv.i315.i) #17
  %355 = ptrtoint ptr %msg.i313.i to i32
  call void @__asan_store2_noabort(i32 %355)
  store i16 -17125, ptr %msg.i313.i, align 4
  %.compoundliteral.sroa.3.0.msg.sroa_idx.i316.i = getelementptr inbounds i8, ptr %msg.i313.i, i32 2
  %356 = ptrtoint ptr %.compoundliteral.sroa.3.0.msg.sroa_idx.i316.i to i32
  call void @__asan_store2_noabort(i32 %356)
  store i16 2, ptr %.compoundliteral.sroa.3.0.msg.sroa_idx.i316.i, align 2
  %.compoundliteral.sroa.4.0.msg.sroa_idx.i317.i = getelementptr inbounds i8, ptr %msg.i313.i, i32 4
  %357 = ptrtoint ptr %.compoundliteral.sroa.4.0.msg.sroa_idx.i317.i to i32
  call void @__asan_store2_noabort(i32 %357)
  store i16 %354, ptr %.compoundliteral.sroa.4.0.msg.sroa_idx.i317.i, align 4
  %call.i318.i = call i32 @rdma_reject(ptr noundef %cm_id, ptr noundef nonnull %msg.i313.i, i8 noundef zeroext 56, i8 noundef zeroext 28) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i318.i)
  %tobool.not.i319.i = icmp eq i32 %call.i318.i, 0
  br i1 %tobool.not.i319.i, label %reject_w_err.i.rtrs_rdma_do_reject.exit323.i_crit_edge, label %do.end.i321.i

reject_w_err.i.rtrs_rdma_do_reject.exit323.i_crit_edge: ; preds = %reject_w_err.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_rdma_do_reject.exit323.i

do.end.i321.i:                                    ; preds = %reject_w_err.i
  call void @__sanitizer_cov_trace_pc() #19
  %call2.i320.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.164, i32 noundef %call.i318.i) #20
  br label %rtrs_rdma_do_reject.exit323.i

rtrs_rdma_do_reject.exit323.i:                    ; preds = %do.end.i321.i, %reject_w_err.i.rtrs_rdma_do_reject.exit323.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i313.i) #17
  br label %cleanup

close_and_return_err.i:                           ; preds = %rtrs_rdma_do_reject.exit312.i, %rtrs_rdma_do_reject.exit.i
  %err.1.i = phi i32 [ %retval.0.i289.ph.i, %rtrs_rdma_do_reject.exit.i ], [ 0, %rtrs_rdma_do_reject.exit312.i ]
  call void @mutex_unlock(ptr noundef %paths_mutex.i) #17
  %state_lock.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.0.i, i32 0, i32 4
  call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i.i) #17
  %state.i.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.0.i, i32 0, i32 3
  %358 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %359)
  %switch.i.i.i = icmp ult i32 %359, 2
  br i1 %switch.i.i.i, label %if.then.i325.i, label %rtrs_srv_change_state.exit.i.i

rtrs_srv_change_state.exit.i.i:                   ; preds = %close_and_return_err.i
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i.i) #17
  br label %if.end.i327.i

if.then.i325.i:                                   ; preds = %close_and_return_err.i
  call void @__sanitizer_cov_trace_pc() #19
  %360 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %360)
  store i32 2, ptr %state.i.i.i, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i.i) #17
  %361 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i324.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path.0.i, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %361, ptr noundef %close_work.i324.i) #17
  br label %if.end.i327.i

if.end.i327.i:                                    ; preds = %if.then.i325.i, %rtrs_srv_change_state.exit.i.i
  %362 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %363)
  %cmp.not.i326.i = icmp eq i32 %363, 2
  br i1 %cmp.not.i326.i, label %if.end.i327.i.cleanup_crit_edge, label %do.end.i328.i, !prof !415

if.end.i327.i.cleanup_crit_edge:                  ; preds = %if.end.i327.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i328.i:                                    ; preds = %if.end.i327.i
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

do.end:                                           ; preds = %if.end.do.end_crit_edge, %if.end.do.end_crit_edge220, %if.end.do.end_crit_edge221
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call6 = tail call ptr @rdma_event_msg(i32 noundef %1) #22
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %ev, i32 0, i32 1
  %364 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load i32, ptr %status, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %sessname, ptr noundef %call6, i32 noundef %365) #20
  br label %sw.bb8

sw.bb8:                                           ; preds = %do.end, %if.end.sw.bb8_crit_edge, %if.end.sw.bb8_crit_edge222, %if.end.sw.bb8_crit_edge223, %if.end.sw.bb8_crit_edge224
  %state_lock.i.i27 = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i27) #17
  %state.i.i28 = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 3
  %366 = ptrtoint ptr %state.i.i28 to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %state.i.i28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %367)
  %switch.i.i = icmp ult i32 %367, 2
  br i1 %switch.i.i, label %if.then.i, label %rtrs_srv_change_state.exit.i

rtrs_srv_change_state.exit.i:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i27) #17
  br label %if.end.i30

if.then.i:                                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #19
  %368 = ptrtoint ptr %state.i.i28 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 2, ptr %state.i.i28, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i27) #17
  %369 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 2
  %call.i.i29 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %369, ptr noundef %close_work.i) #17
  br label %if.end.i30

if.end.i30:                                       ; preds = %if.then.i, %rtrs_srv_change_state.exit.i
  %370 = ptrtoint ptr %state.i.i28 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %state.i.i28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %371)
  %cmp.not.i = icmp eq i32 %371, 2
  br i1 %cmp.not.i, label %if.end.i30.cleanup_crit_edge, label %do.end.i31, !prof !415

if.end.i30.cleanup_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.end.i31:                                       ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call14 = tail call ptr @rdma_event_msg(i32 noundef %1) #22
  %status15 = getelementptr inbounds %struct.rdma_cm_event, ptr %ev, i32 0, i32 1
  %372 = ptrtoint ptr %status15 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %status15, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %call14, i32 noundef %373) #20
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %do.end.i31, %if.end.i30.cleanup_crit_edge, %do.end.i328.i, %if.end.i327.i.cleanup_crit_edge, %rtrs_rdma_do_reject.exit323.i, %if.end148.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end11 ], [ 0, %if.end.cleanup_crit_edge ], [ %err.0.i, %rtrs_rdma_do_reject.exit323.i ], [ 0, %if.end148.i ], [ %err.1.i, %if.end.i327.i.cleanup_crit_edge ], [ %err.1.i, %do.end.i328.i ], [ 0, %if.end.i30.cleanup_crit_edge ], [ 0, %do.end.i31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_bind_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_listen(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_event_msg(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_srv(ptr noundef %srv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %refcount = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 6
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !436
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #17, !srcloc !437
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end23_crit_edge, label %if.then10.i.i.i, !prof !415

if.end5.i.i.i.if.end23_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #17
  br label %if.end23

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !438
  %ctx1 = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 7
  %1 = ptrtoint ptr %ctx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctx1, align 4
  %state_in_sysfs = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 12, i32 0, i32 8
  %3 = ptrtoint ptr %state_in_sysfs to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %state_in_sysfs, align 4
  %4 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %do.end, !prof !415

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1440, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %srv_mutex = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %2, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex, i32 noundef 0) #17
  %ctx_list = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ctx_list) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %11 = ptrtoint ptr %ctx_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %ctx_list, align 4
  %prev.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %srv_mutex) #17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #17
  %13 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %list_del.exit.if.end.i_crit_edge, label %do.end.i, !prof !415

list_del.exit.if.end.i_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

do.end.i:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1359, i32 noundef 9, ptr noundef null) #17
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %list_del.exit.if.end.i_crit_edge
  %queue_depth.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 10
  %15 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp30.not.i = icmp eq i32 %16, 0
  br i1 %cmp30.not.i, label %if.end.i.free_srv.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.free_srv.exit_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_srv.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %chunks.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 11
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %chunks.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chunks.i, align 8
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %i.031.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %21 = load ptr, ptr @chunk_pool, align 4
  tail call void @mempool_free(ptr noundef %20, ptr noundef %21) #17
  %inc.i = add nuw i32 %i.031.i, 1
  %22 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %queue_depth.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %23
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.free_srv.exit_crit_edge

for.body.i.free_srv.exit_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_srv.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

free_srv.exit:                                    ; preds = %for.body.i.free_srv.exit_crit_edge, %if.end.i.free_srv.exit_crit_edge
  %chunks20.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 11
  %24 = ptrtoint ptr %chunks20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chunks20.i, align 8
  tail call void @kfree(ptr noundef %25) #17
  %paths_mutex.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 4
  tail call void @mutex_destroy(ptr noundef %paths_mutex.i) #17
  %paths_ev_mutex.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %paths_ev_mutex.i) #17
  %dev.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 12
  tail call void @put_device(ptr noundef %dev.i) #17
  br label %if.end23

if.end23:                                         ; preds = %free_srv.exit, %if.then10.i.i.i, %if.end5.i.i.i.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -248
  tail call void @kfree(ptr noundef %add.ptr) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @mempool_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_addr_to_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_close_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -708
  tail call void @rtrs_srv_destroy_path_files(ptr noundef %add.ptr) #17
  tail call void @rtrs_stop_hb(ptr noundef %add.ptr) #17
  %con_num = getelementptr i8, ptr %work, i32 -168
  %0 = ptrtoint ptr %con_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %con_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp77.not = icmp eq i32 %1, 0
  br i1 %cmp77.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %con2 = getelementptr i8, ptr %work, i32 -172
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %con2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %con2, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.078
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %cm_id = getelementptr inbounds %struct.rtrs_con, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cm_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cm_id, align 4
  %call6 = tail call i32 @rdma_disconnect(ptr noundef %7) #17
  %qp = getelementptr inbounds %struct.rtrs_con, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qp, align 4
  tail call void @ib_drain_qp(ptr noundef %9) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.078, 1
  %10 = ptrtoint ptr %con_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %con_num, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ids_inflight_ref = getelementptr i8, ptr %work, i32 100
  tail call void @percpu_ref_kill_and_confirm(ptr noundef %ids_inflight_ref, ptr noundef null) #17
  %complete_done = getelementptr i8, ptr %work, i32 108
  tail call void @wait_for_completion(ptr noundef %complete_done) #17
  %srv1.i = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %srv1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %srv1.i, align 8
  %ctx2.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %ctx2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ctx2.i, align 4
  %established.i = getelementptr i8, ptr %work, i32 176
  %16 = ptrtoint ptr %established.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %established.i, align 4, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i, label %for.end.rtrs_srv_path_down.exit_crit_edge, label %if.end.i

for.end.rtrs_srv_path_down.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_path_down.exit

if.end.i:                                         ; preds = %for.end
  %18 = ptrtoint ptr %established.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %established.i, align 4
  %paths_ev_mutex.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %13, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %paths_ev_mutex.i, i32 noundef 0) #17
  %paths_up.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %paths_up.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %paths_up.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool4.not.i = icmp eq i32 %20, 0
  br i1 %tobool4.not.i, label %do.end.i, label %if.end.i.if.end20.i_crit_edge, !prof !416

if.end.i.if.end20.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end20.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 750, i32 noundef 9, ptr noundef null) #17
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i, %if.end.i.if.end20.i_crit_edge
  %21 = ptrtoint ptr %paths_up.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %paths_up.i, align 8
  %dec.i = add i32 %22, -1
  store i32 %dec.i, ptr %paths_up.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then28.i, label %if.end20.i.if.end29.i_crit_edge

if.end20.i.if.end29.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #19
  %link_ev.i = getelementptr inbounds %struct.rtrs_srv_ops, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %link_ev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %link_ev.i, align 4
  %priv.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %13, i32 0, i32 9
  %25 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv.i, align 8
  %call.i = tail call i32 %24(ptr noundef %13, i32 noundef 1, ptr noundef %26) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end20.i.if.end29.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %paths_ev_mutex.i) #17
  br label %rtrs_srv_path_down.exit

rtrs_srv_path_down.exit:                          ; preds = %if.end29.i, %for.end.rtrs_srv_path_down.exit_crit_edge
  tail call fastcc void @unmap_cont_bufs(ptr noundef %add.ptr)
  %ops_ids.i = getelementptr i8, ptr %work, i32 96
  %27 = ptrtoint ptr %ops_ids.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops_ids.i, align 4
  %tobool.not.i67 = icmp eq ptr %28, null
  br i1 %tobool.not.i67, label %rtrs_srv_path_down.exit.rtrs_srv_free_ops_ids.exit_crit_edge, label %for.cond.preheader.i

rtrs_srv_path_down.exit.rtrs_srv_free_ops_ids.exit_crit_edge: ; preds = %rtrs_srv_path_down.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_free_ops_ids.exit

for.cond.preheader.i:                             ; preds = %rtrs_srv_path_down.exit
  %29 = ptrtoint ptr %srv1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %srv1.i, align 8
  %queue_depth.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %queue_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp11.not.i = icmp eq i32 %32, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %free_id.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %free_id.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %ops_ids.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops_ids.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %34, i32 %i.012.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %for.body.i.free_id.exit.i_crit_edge, label %if.end.i.i

for.body.i.free_id.exit.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_id.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %36) #17
  br label %free_id.exit.i

free_id.exit.i:                                   ; preds = %if.end.i.i, %for.body.i.free_id.exit.i_crit_edge
  %inc.i = add nuw i32 %i.012.i, 1
  %37 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %queue_depth.i, align 4
  %cmp.i69 = icmp ult i32 %inc.i, %38
  br i1 %cmp.i69, label %free_id.exit.i.for.body.i_crit_edge, label %free_id.exit.i.for.end.i_crit_edge

free_id.exit.i.for.end.i_crit_edge:               ; preds = %free_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

free_id.exit.i.for.body.i_crit_edge:              ; preds = %free_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %free_id.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %39 = ptrtoint ptr %ops_ids.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops_ids.i, align 4
  tail call void @kfree(ptr noundef %40) #17
  %41 = ptrtoint ptr %ops_ids.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %ops_ids.i, align 4
  br label %rtrs_srv_free_ops_ids.exit

rtrs_srv_free_ops_ids.exit:                       ; preds = %for.end.i, %rtrs_srv_path_down.exit.rtrs_srv_free_ops_ids.exit_crit_edge
  %42 = ptrtoint ptr %con_num to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %con_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp1179.not = icmp eq i32 %43, 0
  br i1 %cmp1179.not, label %rtrs_srv_free_ops_ids.exit.for.end28_crit_edge, label %for.body12.lr.ph

rtrs_srv_free_ops_ids.exit.for.end28_crit_edge:   ; preds = %rtrs_srv_free_ops_ids.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end28

for.body12.lr.ph:                                 ; preds = %rtrs_srv_free_ops_ids.exit
  %con14 = getelementptr i8, ptr %work, i32 -172
  br label %for.body12

for.body12:                                       ; preds = %for.inc26.for.body12_crit_edge, %for.body12.lr.ph
  %i.180 = phi i32 [ 0, %for.body12.lr.ph ], [ %inc27, %for.inc26.for.body12_crit_edge ]
  %44 = ptrtoint ptr %con14 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %con14, align 8
  %arrayidx15 = getelementptr ptr, ptr %45, i32 %i.180
  %46 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %47, null
  br i1 %tobool16.not, label %for.body12.for.inc26_crit_edge, label %if.end18

for.body12.for.inc26_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc26

if.end18:                                         ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @rtrs_cq_qp_destroy(ptr noundef nonnull %47) #17
  %cm_id25 = getelementptr inbounds %struct.rtrs_con, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cm_id25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cm_id25, align 4
  tail call void @rdma_destroy_id(ptr noundef %49) #17
  tail call void @kfree(ptr noundef nonnull %47) #17
  br label %for.inc26

for.inc26:                                        ; preds = %if.end18, %for.body12.for.inc26_crit_edge
  %inc27 = add nuw i32 %i.180, 1
  %50 = ptrtoint ptr %con_num to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %con_num, align 4
  %cmp11 = icmp ult i32 %inc27, %51
  br i1 %cmp11, label %for.inc26.for.body12_crit_edge, label %for.inc26.for.end28_crit_edge

for.inc26.for.end28_crit_edge:                    ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end28

for.inc26.for.body12_crit_edge:                   ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body12

for.end28:                                        ; preds = %for.inc26.for.end28_crit_edge, %rtrs_srv_free_ops_ids.exit.for.end28_crit_edge
  %dev = getelementptr i8, ptr %work, i32 -152
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  %call30 = tail call i32 @rtrs_ib_dev_put(ptr noundef %53) #17
  %54 = ptrtoint ptr %srv1.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %srv1.i, align 8
  %tobool.not.i72 = icmp eq ptr %55, null
  br i1 %tobool.not.i72, label %do.end.i73, label %if.end24.i, !prof !416

do.end.i73:                                       ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1461, i32 noundef 9, ptr noundef null) #17
  br label %del_path_from_srv.exit

if.end24.i:                                       ; preds = %for.end28
  %paths_mutex.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %55, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %paths_mutex.i, i32 noundef 0) #17
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end24.i.list_del.exit.i_crit_edge

if.end24.i.list_del.exit.i_crit_edge:             ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i.i = getelementptr i8, ptr %work, i32 -704
  %56 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i, align 4
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end24.i.list_del.exit.i_crit_edge
  %62 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr, align 4
  %prev.i.i = getelementptr i8, ptr %work, i32 -704
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %paths_num.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %55, i32 0, i32 3
  %64 = ptrtoint ptr %paths_num.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %paths_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool27.not.i = icmp eq i32 %65, 0
  br i1 %tobool27.not.i, label %do.end45.i, label %list_del.exit.i.if.end51.i_crit_edge, !prof !416

list_del.exit.i.if.end51.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end51.i

do.end45.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1466, i32 noundef 9, ptr noundef null) #17
  br label %if.end51.i

if.end51.i:                                       ; preds = %do.end45.i, %list_del.exit.i.if.end51.i_crit_edge
  %66 = ptrtoint ptr %paths_num.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %paths_num.i, align 8
  %dec.i74 = add i32 %67, -1
  store i32 %dec.i74, ptr %paths_num.i, align 8
  tail call void @mutex_unlock(ptr noundef %paths_mutex.i) #17
  br label %del_path_from_srv.exit

del_path_from_srv.exit:                           ; preds = %if.end51.i, %do.end.i73
  %68 = ptrtoint ptr %srv1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %srv1.i, align 8
  tail call fastcc void @put_srv(ptr noundef %69)
  %70 = ptrtoint ptr %srv1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %srv1.i, align 8
  %state_lock.i = getelementptr i8, ptr %work, i32 48
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i) #17
  %state.i = getelementptr i8, ptr %work, i32 44
  %71 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %72)
  %cmp7.i = icmp eq i32 %72, 2
  br i1 %cmp7.i, label %if.then10.i, label %del_path_from_srv.exit.rtrs_srv_change_state.exit_crit_edge

del_path_from_srv.exit.rtrs_srv_change_state.exit_crit_edge: ; preds = %del_path_from_srv.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_change_state.exit

if.then10.i:                                      ; preds = %del_path_from_srv.exit
  call void @__sanitizer_cov_trace_pc() #19
  %73 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 3, ptr %state.i, align 8
  br label %rtrs_srv_change_state.exit

rtrs_srv_change_state.exit:                       ; preds = %if.then10.i, %del_path_from_srv.exit.rtrs_srv_change_state.exit_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i) #17
  %dma_addr = getelementptr i8, ptr %work, i32 172
  %74 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dma_addr, align 8
  tail call void @kfree(ptr noundef %75) #17
  %con34 = getelementptr i8, ptr %work, i32 -172
  %76 = ptrtoint ptr %con34 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %con34, align 8
  tail call void @kfree(ptr noundef %77) #17
  %state_in_sysfs.i = getelementptr i8, ptr %work, i32 316
  %78 = ptrtoint ptr %state_in_sysfs.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load.i = load i8, ptr %state_in_sysfs.i, align 4
  %79 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i75 = icmp eq i8 %79, 0
  br i1 %tobool.not.i75, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %rtrs_srv_change_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  %kobj.i = getelementptr i8, ptr %work, i32 184
  tail call void @kobject_del(ptr noundef %kobj.i) #17
  tail call void @kobject_put(ptr noundef %kobj.i) #17
  br label %free_path.exit

if.else.i:                                        ; preds = %rtrs_srv_change_state.exit
  call void @__sanitizer_cov_trace_pc() #19
  %stats.i = getelementptr i8, ptr %work, i32 320
  %80 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %stats.i, align 4
  tail call void @kfree(ptr noundef %81) #17
  tail call void @kfree(ptr noundef %add.ptr) #17
  br label %free_path.exit

free_path.exit:                                   ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtrs_ib_dev_find_or_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rtrs_srv_alloc_ops_ids(ptr noundef %srv_path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %srv1 = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 1
  %0 = ptrtoint ptr %srv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %srv1, align 8
  %queue_depth = getelementptr inbounds %struct.rtrs_srv_sess, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_depth, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #17
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !416

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %ops_ids31 = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 6
  %6 = ptrtoint ptr %ops_ids31 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %ops_ids31, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #24
  %ops_ids = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 6
  %8 = ptrtoint ptr %ops_ids to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %ops_ids, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  %9 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_depth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp36.not = icmp eq i32 %10, 0
  br i1 %cmp36.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 104) #21
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %for.body.err_crit_edge, label %if.end7

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %err

if.end7:                                          ; preds = %for.body
  %12 = ptrtoint ptr %ops_ids to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops_ids, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.037
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.037, 1
  %15 = ptrtoint ptr %queue_depth to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue_depth, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %ids_inflight_ref = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 7
  %call9 = tail call i32 @percpu_ref_init(ptr noundef %ids_inflight_ref, ptr noundef nonnull @rtrs_srv_inflight_ref_release, i32 noundef 0, i32 noundef 3264) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #20
  br label %err

if.end13:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %complete_done = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 8
  %17 = ptrtoint ptr %complete_done to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %complete_done, align 4
  %wait.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 8, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.135, ptr noundef nonnull @init_completion.__key) #17
  br label %cleanup

err:                                              ; preds = %do.end, %for.body.err_crit_edge
  %18 = ptrtoint ptr %ops_ids to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %ops_ids, align 4
  %tobool.not.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i, label %err.cleanup_crit_edge, label %for.cond.preheader.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader.i:                             ; preds = %err
  %19 = ptrtoint ptr %srv1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %srv1, align 8
  %queue_depth.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %queue_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp11.not.i = icmp eq i32 %22, 0
  br i1 %cmp11.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i:                                       ; preds = %free_id.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %free_id.exit.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %ops_ids to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops_ids, align 4
  %arrayidx.i = getelementptr ptr, ptr %24, i32 %i.012.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %for.body.i.free_id.exit.i_crit_edge, label %if.end.i.i29

for.body.i.free_id.exit.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %free_id.exit.i

if.end.i.i29:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %26) #17
  br label %free_id.exit.i

free_id.exit.i:                                   ; preds = %if.end.i.i29, %for.body.i.free_id.exit.i_crit_edge
  %inc.i = add nuw i32 %i.012.i, 1
  %27 = ptrtoint ptr %queue_depth.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %queue_depth.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %28
  br i1 %cmp.i, label %free_id.exit.i.for.body.i_crit_edge, label %free_id.exit.i.for.end.i_crit_edge

free_id.exit.i.for.end.i_crit_edge:               ; preds = %free_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

free_id.exit.i.for.body.i_crit_edge:              ; preds = %free_id.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %free_id.exit.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %29 = ptrtoint ptr %ops_ids to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops_ids, align 4
  tail call void @kfree(ptr noundef %30) #17
  %31 = ptrtoint ptr %ops_ids to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %ops_ids, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %err.cleanup_crit_edge, %if.end13, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -12, %err.cleanup_crit_edge ], [ -12, %for.end.i ], [ -12, %kcalloc.exit.thread ], [ -12, %if.end7.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__add_path_to_srv(ptr noundef %srv, ptr noundef %srv_path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %prev.i = getelementptr inbounds %struct.list_head, ptr %srv, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %srv_path, ptr noundef %1, ptr noundef %srv) #17
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %srv_path, ptr %prev.i, align 4
  %3 = ptrtoint ptr %srv_path to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %srv, ptr %srv_path, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %srv_path, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %srv_path, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %paths_num = getelementptr inbounds %struct.rtrs_srv_sess, ptr %srv, i32 0, i32 3
  %6 = ptrtoint ptr %paths_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %paths_num, align 8
  %inc = add i32 %7, 1
  store i32 %inc, ptr %paths_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %inc)
  %cmp = icmp ugt i32 %inc, 127
  br i1 %cmp, label %do.end, label %list_add_tail.exit.if.end_crit_edge, !prof !416

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1454, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %list_add_tail.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @unmap_cont_bufs(ptr nocapture noundef readonly %srv_path) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mrs_num = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 10
  %0 = ptrtoint ptr %mrs_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mrs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp17.not = icmp eq i32 %1, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mrs = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 9
  %dev = getelementptr inbounds %struct.rtrs_path, ptr %srv_path, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.018 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %mrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mrs, align 8
  %arrayidx = getelementptr %struct.rtrs_srv_mr, ptr %3, i32 %i.018
  %iu = getelementptr %struct.rtrs_srv_mr, ptr %3, i32 %i.018, i32 5
  %4 = ptrtoint ptr %iu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iu, align 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void @rtrs_iu_free(ptr noundef %5, ptr noundef %9, i32 noundef 1) #17
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @ib_dereg_mr_user(ptr noundef %11, ptr noundef null) #17
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %sgt = getelementptr %struct.rtrs_srv_mr, ptr %3, i32 %i.018, i32 1
  %16 = ptrtoint ptr %sgt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sgt, align 4
  %nents = getelementptr %struct.rtrs_srv_mr, ptr %3, i32 %i.018, i32 1, i32 1
  %18 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nents, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %21, ptr noundef %17, i32 noundef %19, i32 noundef 0, i32 noundef 0) #17
  tail call void @sg_free_table(ptr noundef %sgt) #17
  %inc = add nuw i32 %i.018, 1
  %22 = ptrtoint ptr %mrs_num to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mrs_num, align 4
  %cmp = icmp ult i32 %inc, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %mrs6 = getelementptr inbounds %struct.rtrs_srv_path, ptr %srv_path, i32 0, i32 9
  %24 = ptrtoint ptr %mrs6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mrs6, align 8
  tail call void @kfree(ptr noundef %25) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_ib_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_srv_destroy_path_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_cq_qp_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_stop_hb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_kill_and_confirm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_init_hb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_hb_err_handler(ptr nocapture noundef readonly %c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %state_lock.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %1, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i) #17
  %state.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch.i.i = icmp ult i32 %3, 2
  br i1 %switch.i.i, label %if.then.i, label %rtrs_srv_change_state.exit.i

rtrs_srv_change_state.exit.i:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %state.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  %5 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %close_work.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rtrs_srv_change_state.exit.i
  %6 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 2
  br i1 %cmp.not.i, label %if.end.i.close_path.exit_crit_edge, label %do.end.i, !prof !415

if.end.i.close_path.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %close_path.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %close_path.exit

close_path.exit:                                  ; preds = %do.end.i, %if.end.i.close_path.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_mr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rtrs_iu_alloc(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_iu_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dereg_mr_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @percpu_ref_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_inflight_ref_release(ptr noundef %ref) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @percpu_ref_exit(ptr noundef %ref) #17
  %complete_done = getelementptr i8, ptr %ref, i32 8
  tail call void @complete(ptr noundef %complete_done) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_ref_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_cq_qp_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_info_req_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %cid = getelementptr inbounds %struct.rtrs_con, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %cid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !415

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 903, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wc, align 8
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.end31, label %do.end26

do.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call29 = tail call ptr @ib_wc_status_msg(i32 noundef %11) #22
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef %sessname, ptr noundef %call29) #20
  br label %close

if.end31:                                         ; preds = %if.end
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %12 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %opcode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %13)
  %cmp33.not = icmp eq i32 %13, 128
  br i1 %cmp33.not, label %if.end31.if.end55_crit_edge, label %do.end49, !prof !415

if.end31.if.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end55

do.end49:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 911, i32 noundef 9, ptr noundef null) #17
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %if.end31.if.end55_crit_edge
  %byte_len = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 4
  %14 = ptrtoint ptr %byte_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %byte_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %15)
  %cmp63 = icmp ult i32 %15, 272
  br i1 %cmp63, label %do.end67, label %if.end73

do.end67:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #19
  %sessname69 = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef %sessname69, i32 noundef %15) #20
  br label %close

if.end73:                                         ; preds = %if.end55
  %dev = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 10
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %dma_addr = getelementptr inbounds %struct.rtrs_iu, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr, align 4
  %size = getelementptr inbounds %struct.rtrs_iu, ptr %9, i32 0, i32 3
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %25, i32 noundef %21, i32 noundef %23, i32 noundef 2) #17
  %buf = getelementptr inbounds %struct.rtrs_iu, ptr %9, i32 0, i32 2
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %buf, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp76.not = icmp eq i16 %29, 0
  br i1 %cmp76.not, label %if.end88, label %do.end81

do.end81:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  %conv75 = zext i16 %30 to i32
  %sessname83 = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef %sessname83, i32 noundef %conv75) #20
  br label %close

if.end88:                                         ; preds = %if.end73
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %con_num.i.i = getelementptr inbounds %struct.rtrs_path, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %con_num.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %con_num.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp25.not.i.i = icmp eq i32 %34, 0
  br i1 %cmp25.not.i.i, label %if.end88.if.end.i_crit_edge, label %for.body.lr.ph.i.i

if.end88.if.end.i_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %if.end88
  %srv1.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %srv1.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %srv1.i.i, align 8
  %queue_depth.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %36, i32 0, i32 10
  %con.i.i = getelementptr inbounds %struct.rtrs_path, ptr %32, i32 0, i32 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %cid.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cid.026.i.i)
  %cmp4.i.i = icmp eq i32 %cid.026.i.i, 0
  br i1 %cmp4.i.i, label %for.body.i.i.for.body.i.preheader.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.body.i.preheader.i.i_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %37 = ptrtoint ptr %queue_depth.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %queue_depth.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp4.not.i.i.i = icmp eq i32 %38, 0
  br i1 %cmp4.not.i.i.i, label %if.end.i.i.for.inc.i.i_crit_edge, label %if.end.i.i.for.body.i.preheader.i.i_crit_edge

if.end.i.i.for.body.i.preheader.i.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.preheader.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

for.body.i.preheader.i.i:                         ; preds = %if.end.i.i.for.body.i.preheader.i.i_crit_edge, %for.body.i.i.for.body.i.preheader.i.i_crit_edge
  %q_size.031.i.i = phi i32 [ %38, %if.end.i.i.for.body.i.preheader.i.i_crit_edge ], [ 512, %for.body.i.i.for.body.i.preheader.i.i_crit_edge ]
  %39 = ptrtoint ptr %con.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i.i = load ptr, ptr %con.i.i, align 8
  %.in.i.i = getelementptr ptr, ptr %.pn.i.i, i32 %cid.026.i.i
  %40 = ptrtoint ptr %.in.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.in.i.i, align 4
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %q_size.031.i.i
  br i1 %exitcond.not.i.i.i, label %for.cond.i.i.i.for.inc.i.i_crit_edge, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i.i

for.cond.i.i.i.for.inc.i.i_crit_edge:             ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.preheader.i.i
  %i.05.i.i.i = phi i32 [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i ]
  %call.i.i.i = tail call i32 @rtrs_post_recv_empty(ptr noundef %41, ptr noundef nonnull @io_comp_cqe) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.cond.i.i.i, label %do.end.i

for.inc.i.i:                                      ; preds = %for.cond.i.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %cid.026.i.i, 1
  %42 = ptrtoint ptr %con_num.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %con_num.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %43
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.i

do.end.i:                                         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %sessname.i.i = getelementptr inbounds %struct.rtrs_path, ptr %32, i32 0, i32 3
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef %sessname.i.i, i32 noundef %call.i.i.i) #20
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, ptr noundef %sessname.i.i, i32 noundef %call.i.i.i) #20
  br label %close

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %if.end88.if.end.i_crit_edge
  %pathname.i = getelementptr inbounds %struct.rtrs_msg_info_req, ptr %27, i32 0, i32 1
  %call4.i = tail call ptr @strchr(ptr noundef %pathname.i, i32 noundef 47) #17
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %if.end.i.do.end13.i_crit_edge

if.end.i.do.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %call8.i = tail call ptr @strchr(ptr noundef %pathname.i, i32 noundef 46) #17
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end18.i, label %lor.lhs.false.i.do.end13.i_crit_edge

lor.lhs.false.i.do.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end13.i

do.end13.i:                                       ; preds = %lor.lhs.false.i.do.end13.i_crit_edge, %if.end.i.do.end13.i_crit_edge
  %sessname15.i = getelementptr inbounds %struct.rtrs_path, ptr %32, i32 0, i32 3
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef %sessname15.i) #20
  br label %close

if.end18.i:                                       ; preds = %lor.lhs.false.i
  %srv.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %32, i32 0, i32 1
  %44 = ptrtoint ptr %srv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %srv.i, align 8
  %ctx.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctx.i, align 4
  %paths_uuid.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %45, i32 0, i32 5
  %srv_mutex.i.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %47, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %srv_mutex.i.i, i32 noundef 0) #17
  %srv_list.i.i = getelementptr inbounds %struct.rtrs_srv_ctx, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %srv_list.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn68.i.i = load ptr, ptr %srv_list.i.i, align 4
  %cmp.not70.i.i = icmp eq ptr %.pn68.i.i, %srv_list.i.i
  br i1 %cmp.not70.i.i, label %if.end18.i.if.end33.i_crit_edge, label %if.end18.i.for.body.i190.i_crit_edge

if.end18.i.for.body.i190.i_crit_edge:             ; preds = %if.end18.i
  br label %for.body.i190.i

if.end18.i.if.end33.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i

for.body.i190.i:                                  ; preds = %for.inc33.i.i.for.body.i190.i_crit_edge, %if.end18.i.for.body.i190.i_crit_edge
  %.pn71.i.i = phi ptr [ %.pn.i193.i, %for.inc33.i.i.for.body.i190.i_crit_edge ], [ %.pn68.i.i, %if.end18.i.for.body.i190.i_crit_edge ]
  %srv.072.i.i = getelementptr i8, ptr %.pn71.i.i, i32 -224
  %paths_mutex.i.i = getelementptr i8, ptr %.pn71.i.i, i32 -116
  tail call void @mutex_lock_nested(ptr noundef %paths_mutex.i.i, i32 noundef 0) #17
  %paths_uuid.i.i = getelementptr i8, ptr %.pn71.i.i, i32 -24
  %bcmp.i.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %paths_uuid.i.i, ptr noundef dereferenceable(16) %paths_uuid.i, i32 16) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %cmp.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i190.i.for.inc33.i.i_crit_edge, label %for.cond7.preheader.i.i

for.body.i190.i.for.inc33.i.i_crit_edge:          ; preds = %for.body.i190.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc33.i.i

for.cond7.preheader.i.i:                          ; preds = %for.body.i190.i
  %49 = ptrtoint ptr %srv.072.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %srv_path.065.i.i = load ptr, ptr %srv.072.i.i, align 8
  %cmp10.not66.i.i = icmp eq ptr %srv_path.065.i.i, %srv.072.i.i
  br i1 %cmp10.not66.i.i, label %for.cond7.preheader.i.i.for.inc33.i.i_crit_edge, label %for.body12.lr.ph.i.i

for.cond7.preheader.i.i.for.inc33.i.i_crit_edge:  ; preds = %for.cond7.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc33.i.i

for.body12.lr.ph.i.i:                             ; preds = %for.cond7.preheader.i.i
  %call15.i.i = tail call i32 @strlen(ptr noundef %pathname.i) #23
  br label %for.body12.i.i

for.body12.i.i:                                   ; preds = %for.inc.i192.i.for.body12.i.i_crit_edge, %for.body12.lr.ph.i.i
  %srv_path.067.i.i = phi ptr [ %srv_path.065.i.i, %for.body12.lr.ph.i.i ], [ %srv_path.0.i.i, %for.inc.i192.i.for.body12.i.i_crit_edge ]
  %sessname.i191.i = getelementptr inbounds %struct.rtrs_path, ptr %srv_path.067.i.i, i32 0, i32 3
  %call14.i.i = tail call i32 @strlen(ptr noundef %sessname.i191.i) #23
  call void @__sanitizer_cov_trace_cmp4(i32 %call14.i.i, i32 %call15.i.i)
  %cmp16.i.i = icmp eq i32 %call14.i.i, %call15.i.i
  br i1 %cmp16.i.i, label %land.lhs.true.i.i, label %for.body12.i.i.for.inc.i192.i_crit_edge

for.body12.i.i.for.inc.i192.i_crit_edge:          ; preds = %for.body12.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i192.i

land.lhs.true.i.i:                                ; preds = %for.body12.i.i
  %call20.i.i = tail call i32 @strcmp(ptr noundef %sessname.i191.i, ptr noundef %pathname.i) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool.not.i.i, label %do.end26.i, label %land.lhs.true.i.i.for.inc.i192.i_crit_edge

land.lhs.true.i.i.for.inc.i192.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i192.i

for.inc.i192.i:                                   ; preds = %land.lhs.true.i.i.for.inc.i192.i_crit_edge, %for.body12.i.i.for.inc.i192.i_crit_edge
  %50 = ptrtoint ptr %srv_path.067.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %srv_path.0.i.i = load ptr, ptr %srv_path.067.i.i, align 8
  %cmp10.not.i.i = icmp eq ptr %srv_path.0.i.i, %srv.072.i.i
  br i1 %cmp10.not.i.i, label %for.inc.i192.i.for.inc33.i.i_crit_edge, label %for.inc.i192.i.for.body12.i.i_crit_edge

for.inc.i192.i.for.body12.i.i_crit_edge:          ; preds = %for.inc.i192.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body12.i.i

for.inc.i192.i.for.inc33.i.i_crit_edge:           ; preds = %for.inc.i192.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc33.i.i

for.inc33.i.i:                                    ; preds = %for.inc.i192.i.for.inc33.i.i_crit_edge, %for.cond7.preheader.i.i.for.inc33.i.i_crit_edge, %for.body.i190.i.for.inc33.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %paths_mutex.i.i) #17
  %51 = ptrtoint ptr %.pn71.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pn.i193.i = load ptr, ptr %.pn71.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i193.i, %srv_list.i.i
  br i1 %cmp.not.i.i, label %for.inc33.i.i.if.end33.i_crit_edge, label %for.inc33.i.i.for.body.i190.i_crit_edge

for.inc33.i.i.for.body.i190.i_crit_edge:          ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i190.i

for.inc33.i.i.if.end33.i_crit_edge:               ; preds = %for.inc33.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end33.i

do.end26.i:                                       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %paths_mutex.i.i) #17
  tail call void @mutex_unlock(ptr noundef %srv_mutex.i.i) #17
  %sessname28.i = getelementptr inbounds %struct.rtrs_path, ptr %32, i32 0, i32 3
  %call32.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.155, ptr noundef %sessname28.i, ptr noundef %pathname.i) #20
  br label %close

if.end33.i:                                       ; preds = %for.inc33.i.i.if.end33.i_crit_edge, %if.end18.i.if.end33.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %srv_mutex.i.i) #17
  %sessname35.i = getelementptr inbounds %struct.rtrs_path, ptr %32, i32 0, i32 3
  %call39.i = tail call i32 @strscpy(ptr noundef %sessname35.i, ptr noundef %pathname.i, i32 noundef 255) #17
  %mrs_num.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %32, i32 0, i32 10
  %52 = ptrtoint ptr %mrs_num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mrs_num.i, align 4
  %54 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %53, i32 56) #17
  %55 = extractvalue { i32, i1 } %54, 1
  br i1 %55, label %if.end33.i.close_crit_edge, label %if.end7.i.i.i, !prof !416

if.end33.i.close_crit_edge:                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %close

if.end7.i.i.i:                                    ; preds = %if.end33.i
  %56 = extractvalue { i32, i1 } %54, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %56, i32 noundef 3520) #24
  %tobool41.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool41.not.i, label %if.end7.i.i.i.close_crit_edge, label %if.end43.i

if.end7.i.i.i.close_crit_edge:                    ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %close

if.end43.i:                                       ; preds = %if.end7.i.i.i
  %57 = ptrtoint ptr %mrs_num.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mrs_num.i, align 4
  %mul.i = shl i32 %58, 4
  %add.i = or i32 %mul.i, 8
  %dev.i = getelementptr inbounds %struct.rtrs_path, ptr %32, i32 0, i32 10
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %call46.i = tail call ptr @rtrs_iu_alloc(i32 noundef 1, i32 noundef %add.i, i32 noundef 3264, ptr noundef %62, i32 noundef 1, ptr noundef nonnull @rtrs_srv_info_rsp_done) #17
  %tobool47.not.i = icmp eq ptr %call46.i, null
  br i1 %tobool47.not.i, label %if.end43.i.process_info_req.exit.thread126_crit_edge, label %if.end49.i

if.end43.i.process_info_req.exit.thread126_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %process_info_req.exit.thread126

if.end49.i:                                       ; preds = %if.end43.i
  %buf.i = getelementptr inbounds %struct.rtrs_iu, ptr %call46.i, i32 0, i32 2
  %63 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buf.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 256, ptr %64, align 8
  %66 = ptrtoint ptr %mrs_num.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mrs_num.i, align 4
  %conv.i = trunc i32 %67 to i16
  %68 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #17
  %sg_cnt.i = getelementptr inbounds %struct.rtrs_msg_info_rsp, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %sg_cnt.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %sg_cnt.i, align 2
  %70 = ptrtoint ptr %mrs_num.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mrs_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp211.not.i = icmp eq i32 %71, 0
  br i1 %cmp211.not.i, label %if.end49.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end49.i.for.end.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end49.i
  %mrs.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %32, i32 0, i32 9
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %mri.0212.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %mrs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mrs.i, align 8
  %arrayidx.i = getelementptr %struct.rtrs_srv_mr, ptr %73, i32 %mri.0212.i
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i, align 4
  %iova.i = getelementptr inbounds %struct.ib_mr, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %iova.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %iova.i, align 8
  %78 = tail call i64 @llvm.bswap.i64(i64 %77) #17
  %arrayidx54.i = getelementptr %struct.rtrs_msg_info_rsp, ptr %64, i32 0, i32 3, i32 %mri.0212.i
  %79 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %arrayidx54.i, align 8
  %rkey.i = getelementptr inbounds %struct.ib_mr, ptr %75, i32 0, i32 3
  %80 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rkey.i, align 4
  %82 = tail call i32 @llvm.bswap.i32(i32 %81) #17
  %key.i = getelementptr %struct.rtrs_msg_info_rsp, ptr %64, i32 0, i32 3, i32 %mri.0212.i, i32 1
  %83 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %key.i, align 8
  %length.i = getelementptr inbounds %struct.ib_mr, ptr %75, i32 0, i32 5
  %84 = ptrtoint ptr %length.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %length.i, align 8
  %conv57.i = trunc i64 %85 to i32
  %86 = tail call i32 @llvm.bswap.i32(i32 %conv57.i) #17
  %len.i = getelementptr %struct.rtrs_msg_info_rsp, ptr %64, i32 0, i32 3, i32 %mri.0212.i, i32 2
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mri.0212.i)
  %tobool60.not.i = icmp eq i32 %mri.0212.i, 0
  %sub.i = add i32 %mri.0212.i, -1
  %arrayidx61.i = getelementptr %struct.ib_reg_wr, ptr %call8.i.i.i, i32 %sub.i
  %cond.i = select i1 %tobool60.not.i, ptr null, ptr %arrayidx61.i
  %arrayidx62.i = getelementptr %struct.ib_reg_wr, ptr %call8.i.i.i, i32 %mri.0212.i
  %88 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %cond.i, ptr %arrayidx62.i, align 8
  %opcode.i = getelementptr inbounds %struct.ib_send_wr, ptr %arrayidx62.i, i32 0, i32 4
  %89 = ptrtoint ptr %opcode.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 32, ptr %opcode.i, align 8
  %90 = getelementptr inbounds %struct.ib_send_wr, ptr %arrayidx62.i, i32 0, i32 1
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @local_reg_cqe, ptr %90, align 8
  %num_sge.i = getelementptr inbounds %struct.ib_send_wr, ptr %arrayidx62.i, i32 0, i32 3
  %92 = ptrtoint ptr %num_sge.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %num_sge.i, align 4
  %send_flags.i = getelementptr inbounds %struct.ib_send_wr, ptr %arrayidx62.i, i32 0, i32 5
  %93 = ptrtoint ptr %send_flags.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %send_flags.i, align 4
  %mr73.i = getelementptr %struct.ib_reg_wr, ptr %call8.i.i.i, i32 %mri.0212.i, i32 1
  %94 = ptrtoint ptr %mr73.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %75, ptr %mr73.i, align 8
  %95 = ptrtoint ptr %rkey.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rkey.i, align 4
  %key76.i = getelementptr %struct.ib_reg_wr, ptr %call8.i.i.i, i32 %mri.0212.i, i32 2
  %97 = ptrtoint ptr %key76.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %key76.i, align 4
  %access.i = getelementptr %struct.ib_reg_wr, ptr %call8.i.i.i, i32 %mri.0212.i, i32 3
  %98 = ptrtoint ptr %access.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 3, ptr %access.i, align 8
  %inc.i = add nuw i32 %mri.0212.i, 1
  %99 = ptrtoint ptr %mrs_num.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mrs_num.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %100
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end49.i.for.end.i_crit_edge
  %reg_wr.0.lcssa.i = phi ptr [ null, %if.end49.i.for.end.i_crit_edge ], [ %arrayidx62.i, %for.body.i.for.end.i_crit_edge ]
  %call80.i = tail call i32 @rtrs_srv_create_path_files(ptr noundef %32) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %tobool81.not.i = icmp eq i32 %call80.i, 0
  br i1 %tobool81.not.i, label %if.end83.i, label %for.end.i.iu_free.i_crit_edge

for.end.i.iu_free.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %iu_free.i

if.end83.i:                                       ; preds = %for.end.i
  %kobj.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %32, i32 0, i32 14
  %call84.i = tail call ptr @kobject_get(ptr noundef %kobj.i) #17
  %101 = ptrtoint ptr %srv.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %srv.i, align 8
  %dev86.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %102, i32 0, i32 12
  %call87.i = tail call ptr @get_device(ptr noundef %dev86.i) #17
  %state_lock.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %32, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i) #17
  %state.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %32, i32 0, i32 3
  %103 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp.i194.i = icmp eq i32 %104, 0
  br i1 %cmp.i194.i, label %if.then10.i.i, label %if.end83.i.rtrs_srv_change_state.exit.i_crit_edge

if.end83.i.rtrs_srv_change_state.exit.i_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_change_state.exit.i

if.then10.i.i:                                    ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #19
  %105 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %state.i.i, align 8
  br label %rtrs_srv_change_state.exit.i

rtrs_srv_change_state.exit.i:                     ; preds = %if.then10.i.i, %if.end83.i.rtrs_srv_change_state.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  tail call void @rtrs_start_hb(ptr noundef %32) #17
  %106 = ptrtoint ptr %srv.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %srv.i, align 8
  %ctx2.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %107, i32 0, i32 7
  %108 = ptrtoint ptr %ctx2.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ctx2.i.i, align 4
  %paths_ev_mutex.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %107, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %paths_ev_mutex.i.i, i32 noundef 0) #17
  %paths_up.i.i = getelementptr inbounds %struct.rtrs_srv_sess, ptr %107, i32 0, i32 1
  %110 = ptrtoint ptr %paths_up.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %paths_up.i.i, align 8
  %inc.i196.i = add i32 %111, 1
  store i32 %inc.i196.i, ptr %paths_up.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp.i197.i = icmp eq i32 %111, 0
  br i1 %cmp.i197.i, label %if.then.i.i, label %rtrs_srv_change_state.exit.i.rtrs_srv_path_up.exit.i_crit_edge

rtrs_srv_change_state.exit.i.rtrs_srv_path_up.exit.i_crit_edge: ; preds = %rtrs_srv_change_state.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rtrs_srv_path_up.exit.i

if.then.i.i:                                      ; preds = %rtrs_srv_change_state.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %link_ev.i.i = getelementptr inbounds %struct.rtrs_srv_ops, ptr %109, i32 0, i32 1
  %112 = ptrtoint ptr %link_ev.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %link_ev.i.i, align 4
  %call.i.i = tail call i32 %113(ptr noundef %107, i32 noundef 0, ptr noundef null) #17
  br label %rtrs_srv_path_up.exit.i

rtrs_srv_path_up.exit.i:                          ; preds = %if.then.i.i, %rtrs_srv_change_state.exit.i.rtrs_srv_path_up.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %paths_ev_mutex.i.i) #17
  %established.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %32, i32 0, i32 12
  %114 = ptrtoint ptr %established.i.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %established.i.i, align 4
  %115 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %116, align 4
  %dma_addr.i = getelementptr inbounds %struct.rtrs_iu, ptr %call46.i, i32 0, i32 1
  %119 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dma_addr.i, align 4
  %size.i = getelementptr inbounds %struct.rtrs_iu, ptr %call46.i, i32 0, i32 3
  %121 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %size.i, align 4
  %123 = ptrtoint ptr %118 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %118, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %124, i32 noundef %120, i32 noundef %122, i32 noundef 1) #17
  %call94.i = tail call i32 @rtrs_iu_post_send(ptr noundef %3, ptr noundef nonnull %call46.i, i32 noundef %add.i, ptr noundef %reg_wr.0.lcssa.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94.i)
  %tobool95.not.i = icmp eq i32 %call94.i, 0
  br i1 %tobool95.not.i, label %process_info_req.exit, label %do.end99.i

do.end99.i:                                       ; preds = %rtrs_srv_path_up.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %call103.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef %sessname35.i, i32 noundef %call94.i) #20
  br label %iu_free.i

iu_free.i:                                        ; preds = %do.end99.i, %for.end.i.iu_free.i_crit_edge
  %125 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  tail call void @rtrs_iu_free(ptr noundef nonnull %call46.i, ptr noundef %128, i32 noundef 1) #17
  br label %process_info_req.exit.thread126

process_info_req.exit.thread126:                  ; preds = %iu_free.i, %if.end43.i.process_info_req.exit.thread126_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #17
  br label %close

process_info_req.exit:                            ; preds = %rtrs_srv_path_up.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #17
  br label %out

out:                                              ; preds = %do.end.i122, %if.end.i121.out_crit_edge, %process_info_req.exit
  %dev94 = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 10
  %129 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev94, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %130, align 4
  tail call void @rtrs_iu_free(ptr noundef %9, ptr noundef %132, i32 noundef 1) #17
  ret void

close:                                            ; preds = %process_info_req.exit.thread126, %if.end7.i.i.i.close_crit_edge, %if.end33.i.close_crit_edge, %do.end26.i, %do.end13.i, %do.end.i, %do.end81, %do.end67, %do.end26
  %state_lock.i.i117 = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i117) #17
  %state.i.i118 = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 3
  %133 = ptrtoint ptr %state.i.i118 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %state.i.i118, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %134)
  %switch.i.i = icmp ult i32 %134, 2
  br i1 %switch.i.i, label %if.then.i, label %rtrs_srv_change_state.exit.i119

rtrs_srv_change_state.exit.i119:                  ; preds = %close
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i117) #17
  br label %if.end.i121

if.then.i:                                        ; preds = %close
  call void @__sanitizer_cov_trace_pc() #19
  %135 = ptrtoint ptr %state.i.i118 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 2, ptr %state.i.i118, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i117) #17
  %136 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 2
  %call.i.i120 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %136, ptr noundef %close_work.i) #17
  br label %if.end.i121

if.end.i121:                                      ; preds = %if.then.i, %rtrs_srv_change_state.exit.i119
  %137 = ptrtoint ptr %state.i.i118 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %state.i.i118, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %138)
  %cmp.not.i = icmp eq i32 %138, 2
  br i1 %cmp.not.i, label %if.end.i121.out_crit_edge, label %do.end.i122, !prof !415

if.end.i121.out_crit_edge:                        ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

do.end.i122:                                      ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 454, i32 noundef 9, ptr noundef null) #17
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_iu_post_recv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rtrs_srv_info_rsp_done(ptr nocapture noundef readnone %cq, ptr nocapture noundef readonly %wc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp_context, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %wc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wc, align 8
  %dev = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void @rtrs_iu_free(ptr noundef %7, ptr noundef %11, i32 noundef 1) #17
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  %sessname = getelementptr inbounds %struct.rtrs_path, ptr %5, i32 0, i32 3
  %call5 = tail call ptr @ib_wc_status_msg(i32 noundef %13) #22
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.162, ptr noundef %sessname, ptr noundef %call5) #20
  %state_lock.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %state_lock.i.i) #17
  %state.i.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %switch.i.i = icmp ult i32 %15, 2
  br i1 %switch.i.i, label %if.then.i, label %rtrs_srv_change_state.exit.i

rtrs_srv_change_state.exit.i:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %state.i.i, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %state_lock.i.i) #17
  %17 = load ptr, ptr @rtrs_wq, align 4
  %close_work.i = getelementptr inbounds %struct.rtrs_srv_path, ptr %5, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %close_work.i) #17
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %rtrs_srv_change_state.exit.i
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 2
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.cleanup.sink.split_crit_edge, !prof !415

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %opcode = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 2
  %20 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opcode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.not = icmp eq i32 %21, 0
  br i1 %cmp7.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge, !prof !415

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 454, %if.end.i.cleanup.sink.split_crit_edge ], [ 721, %if.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_srv_create_path_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtrs_iu_post_send(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_start_hb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_reject(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_accept(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtrs_rdma_dev_pd_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_create(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mempool_alloc_pages(i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mempool_free_pages(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 199)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind readnone willreturn }
attributes #23 = { nobuiltin nounwind }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !42, !44, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !93, !94, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !191, !192, !193, !195, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !281, !282, !284, !285, !287, !288, !290, !291, !292, !293, !295, !296, !298, !299, !301, !302, !303, !304, !306, !307, !308, !309, !311, !312, !314, !315, !317, !318, !319, !320, !322, !324, !325, !326, !327, !329, !330, !331, !332, !334, !335, !336, !338, !339, !340, !342, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !361, !362, !364, !365, !366, !367, !369, !370, !371, !372, !374, !375, !376, !377, !379, !380, !381, !382, !383, !385, !386, !387, !389, !390, !392, !394, !395, !396, !397, !399, !400, !401, !403, !404}
!llvm.named.register.sp = !{!405}
!llvm.module.flags = !{!406, !407, !408, !409, !410, !411, !412, !413}
!llvm.ident = !{!414}

!0 = !{ptr @__UNIQUE_ID_description502, !1, !"__UNIQUE_ID_description502", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_file503, !3, !"__UNIQUE_ID_file503", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_license504, !3, !"__UNIQUE_ID_license504", i1 false, i1 false}
!5 = !{ptr @__param_always_invalidate, !6, !"__param_always_invalidate", i1 false, i1 false}
!6 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 41, i32 1}
!7 = !{ptr @__UNIQUE_ID_always_invalidatetype505, !6, !"__UNIQUE_ID_always_invalidatetype505", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_always_invalidate506, !9, !"__UNIQUE_ID_always_invalidate506", i1 false, i1 false}
!9 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 42, i32 1}
!10 = !{ptr @__param_max_chunk_size, !11, !"__param_max_chunk_size", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 45, i32 1}
!12 = !{ptr @__UNIQUE_ID_max_chunk_sizetype507, !11, !"__UNIQUE_ID_max_chunk_sizetype507", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_max_chunk_size508, !14, !"__UNIQUE_ID_max_chunk_size508", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 46, i32 1}
!15 = !{ptr @__param_sess_queue_depth, !16, !"__param_sess_queue_depth", i1 false, i1 false}
!16 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 50, i32 1}
!17 = !{ptr @__UNIQUE_ID_sess_queue_depthtype509, !16, !"__UNIQUE_ID_sess_queue_depthtype509", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_sess_queue_depth510, !19, !"__UNIQUE_ID_sess_queue_depth510", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 51, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 454, i32 2}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 501, i32 3}
!24 = !{ptr @rtrs_srv_resp_rdma._rs, !23, !"_rs", i1 false, i1 false}
!25 = !{ptr @__func__.rtrs_srv_resp_rdma, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @rtrs_srv_resp_rdma._entry, !23, !"_entry", i1 false, i1 false}
!28 = !{ptr @rtrs_srv_resp_rdma._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 513, i32 3}
!31 = !{ptr @rtrs_srv_resp_rdma._entry.3, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @rtrs_srv_resp_rdma._entry_ptr.5, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @rtrs_srv_resp_rdma._rs.6, !34, !"_rs", i1 false, i1 false}
!34 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 529, i32 3}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @rtrs_srv_resp_rdma._entry.7, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @rtrs_srv_resp_rdma._entry_ptr.9, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @__ksymtab_rtrs_srv_resp_rdma, !39, !"__ksymtab_rtrs_srv_resp_rdma", i1 false, i1 false}
!39 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 537, i32 1}
!40 = !{ptr @__ksymtab_rtrs_srv_set_sess_priv, !41, !"__ksymtab_rtrs_srv_set_sess_priv", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 548, i32 1}
!42 = !{ptr @__ksymtab_rtrs_srv_get_path_name, !43, !"__ksymtab_rtrs_srv_get_path_name", i1 false, i1 false}
!43 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1317, i32 1}
!44 = !{ptr @__ksymtab_rtrs_srv_get_queue_depth, !45, !"__ksymtab_rtrs_srv_get_queue_depth", i1 false, i1 false}
!45 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1327, i32 1}
!46 = !{ptr @rtrs_srv_open.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2175, i32 2}
!48 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__ksymtab_rtrs_srv_open, !50, !"__ksymtab_rtrs_srv_open", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2187, i32 1}
!51 = !{ptr @__ksymtab_rtrs_srv_close, !52, !"__ksymtab_rtrs_srv_close", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2223, i32 1}
!53 = !{ptr @__initcall__kmod_rtrs_server__523_2302_rtrs_server_init6, !54, !"__initcall__kmod_rtrs_server__523_2302_rtrs_server_init6", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2302, i32 1}
!55 = !{ptr @__exitcall_rtrs_server_exit, !56, !"__exitcall_rtrs_server_exit", i1 false, i1 false}
!56 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2303, i32 1}
!57 = !{ptr @dev_pd, !58, !"dev_pd", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 32, i32 32}
!59 = !{ptr @chunk_pool, !60, !"chunk_pool", i1 false, i1 false}
!60 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 33, i32 19}
!61 = !{ptr @rtrs_dev_class, !62, !"rtrs_dev_class", i1 false, i1 false}
!62 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 34, i32 15}
!63 = !{ptr @ib_ctx, !64, !"ib_ctx", i1 false, i1 false}
!64 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 35, i32 31}
!65 = !{ptr @rtrs_wq, !66, !"rtrs_wq", i1 false, i1 false}
!66 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 58, i32 33}
!67 = !{ptr @__param_str_always_invalidate, !6, !"__param_str_always_invalidate", i1 false, i1 false}
!68 = !{ptr @always_invalidate, !69, !"always_invalidate", i1 false, i1 false}
!69 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 40, i32 13}
!70 = !{ptr @__param_str_max_chunk_size, !11, !"__param_str_max_chunk_size", i1 false, i1 false}
!71 = !{ptr @max_chunk_size, !72, !"max_chunk_size", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 37, i32 26}
!73 = !{ptr @__param_str_sess_queue_depth, !16, !"__param_str_sess_queue_depth", i1 false, i1 false}
!74 = !{ptr @sess_queue_depth, !75, !"sess_queue_depth", i1 false, i1 false}
!75 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 38, i32 26}
!76 = !{ptr @.str.11, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 461, i32 10}
!78 = !{ptr @.str.12, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 463, i32 10}
!80 = !{ptr @.str.13, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 465, i32 10}
!82 = !{ptr @.str.14, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 467, i32 10}
!84 = !{ptr @.str.15, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 469, i32 10}
!86 = distinct !{null, !87, !"__already_done", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 377, i32 5}
!88 = !{ptr @send_io_resp_imm._rs, !89, !"_rs", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 444, i32 3}
!90 = !{ptr @__func__.send_io_resp_imm, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.16, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @send_io_resp_imm._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @send_io_resp_imm._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @io_comp_cqe, !95, !"io_comp_cqe", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 124, i32 22}
!96 = !{ptr @.str.17, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1211, i32 4}
!98 = !{ptr @.str.18, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @rtrs_srv_rdma_done._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @rtrs_srv_rdma_done._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.20, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1230, i32 4}
!103 = !{ptr @rtrs_srv_rdma_done._entry.19, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @rtrs_srv_rdma_done._entry_ptr.21, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.23, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1243, i32 5}
!107 = !{ptr @rtrs_srv_rdma_done._entry.22, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @rtrs_srv_rdma_done._entry_ptr.24, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.26, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1255, i32 6}
!111 = !{ptr @rtrs_srv_rdma_done._entry.25, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @rtrs_srv_rdma_done._entry_ptr.27, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.29, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1271, i32 4}
!115 = !{ptr @rtrs_srv_rdma_done._entry.28, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @rtrs_srv_rdma_done._entry_ptr.30, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1287, i32 3}
!119 = !{ptr @rtrs_srv_rdma_done._entry.31, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @rtrs_srv_rdma_done._entry_ptr.33, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1153, i32 3}
!123 = !{ptr @.str.35, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @rtrs_srv_inv_rkey_done._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @rtrs_srv_inv_rkey_done._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.36, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1129, i32 3}
!128 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @process_io_req._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @process_io_req._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @process_write._rs, !132, !"_rs", i1 false, i1 false}
!132 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1070, i32 3}
!133 = !{ptr @__func__.process_write, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.38, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @process_write._entry, !132, !"_entry", i1 false, i1 false}
!136 = !{ptr @process_write._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @process_write._rs.39, !138, !"_rs", i1 false, i1 false}
!138 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1088, i32 3}
!139 = !{ptr @.str.41, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @process_write._entry.40, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @process_write._entry_ptr.42, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @process_write._rs.43, !143, !"_rs", i1 false, i1 false}
!143 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1099, i32 3}
!144 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @process_write._entry.44, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @process_write._entry_ptr.46, !143, !"_entry_ptr", i1 false, i1 false}
!147 = distinct !{null, !148, !"__warned", i1 false, i1 false}
!148 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!149 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.48, !148, !"<string literal>", i1 false, i1 false}
!151 = distinct !{null, !152, !"__warned", i1 false, i1 false}
!152 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!153 = !{ptr @.str.49, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @process_read._rs, !155, !"_rs", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1012, i32 3}
!156 = !{ptr @__func__.process_read, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.50, !155, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @process_read._entry, !155, !"_entry", i1 false, i1 false}
!159 = !{ptr @process_read._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @process_read._rs.51, !161, !"_rs", i1 false, i1 false}
!161 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1018, i32 3}
!162 = !{ptr @.str.53, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @process_read._entry.52, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @process_read._entry_ptr.54, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @process_read._rs.55, !166, !"_rs", i1 false, i1 false}
!166 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1036, i32 3}
!167 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @process_read._entry.56, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @process_read._entry_ptr.58, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @process_read._rs.59, !171, !"_rs", i1 false, i1 false}
!171 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1047, i32 3}
!172 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @process_read._entry.60, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @process_read._entry_ptr.62, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @local_reg_cqe, !176, !"local_reg_cqe", i1 false, i1 false}
!176 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 197, i32 22}
!177 = !{ptr @.str.63, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 190, i32 3}
!179 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @rtrs_srv_reg_mr_done._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @rtrs_srv_reg_mr_done._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.65, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 235, i32 3}
!184 = !{ptr @.str.66, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @rdma_write_sg._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @rdma_write_sg._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = distinct !{null, !188, !"__already_done", i1 false, i1 false}
!188 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 250, i32 3}
!189 = !{ptr @.str.68, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 328, i32 3}
!191 = !{ptr @rdma_write_sg._entry.67, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @rdma_write_sg._entry_ptr.69, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @alloc_srv_ctx.__key, !194, !"__key", i1 false, i1 false}
!194 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2080, i32 2}
!195 = !{ptr @.str.70, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.71, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2152, i32 10}
!198 = !{ptr @rtrs_srv_client, !199, !"rtrs_srv_client", i1 false, i1 false}
!199 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2151, i32 25}
!200 = !{ptr @.str.72, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2114, i32 3}
!202 = !{ptr @.str.73, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @rtrs_srv_add_one._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @rtrs_srv_add_one._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.74, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2003, i32 3}
!207 = !{ptr @.str.75, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @rtrs_srv_cm_init._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @rtrs_srv_cm_init._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.77, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2009, i32 3}
!212 = !{ptr @rtrs_srv_cm_init._entry.76, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @rtrs_srv_cm_init._entry_ptr.78, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.80, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2014, i32 3}
!216 = !{ptr @rtrs_srv_cm_init._entry.79, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @rtrs_srv_cm_init._entry_ptr.81, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.82, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1974, i32 3}
!220 = !{ptr @.str.83, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @rtrs_srv_rdma_cm_handler._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @rtrs_srv_rdma_cm_handler._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.85, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1984, i32 3}
!225 = !{ptr @rtrs_srv_rdma_cm_handler._entry.84, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @rtrs_srv_rdma_cm_handler._entry_ptr.86, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.87, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1837, i32 3}
!229 = !{ptr @.str.88, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @rtrs_rdma_connect._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @rtrs_rdma_connect._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.90, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1841, i32 3}
!234 = !{ptr @rtrs_rdma_connect._entry.89, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @rtrs_rdma_connect._entry_ptr.91, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.93, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1846, i32 3}
!238 = !{ptr @rtrs_rdma_connect._entry.92, !237, !"_entry", i1 false, i1 false}
!239 = !{ptr @rtrs_rdma_connect._entry_ptr.94, !237, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.96, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1853, i32 3}
!242 = !{ptr @rtrs_rdma_connect._entry.95, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @rtrs_rdma_connect._entry_ptr.97, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.99, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1859, i32 3}
!246 = !{ptr @rtrs_rdma_connect._entry.98, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @rtrs_rdma_connect._entry_ptr.100, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.102, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1866, i32 3}
!250 = !{ptr @rtrs_rdma_connect._entry.101, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @rtrs_rdma_connect._entry_ptr.103, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.105, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1878, i32 4}
!254 = !{ptr @rtrs_rdma_connect._entry.104, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @rtrs_rdma_connect._entry_ptr.106, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.108, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1887, i32 4}
!258 = !{ptr @rtrs_rdma_connect._entry.107, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @rtrs_rdma_connect._entry_ptr.109, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.111, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1893, i32 4}
!262 = !{ptr @rtrs_rdma_connect._entry.110, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @rtrs_rdma_connect._entry_ptr.112, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.114, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1905, i32 4}
!266 = !{ptr @rtrs_rdma_connect._entry.113, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @rtrs_rdma_connect._entry_ptr.115, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.117, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1911, i32 3}
!270 = !{ptr @rtrs_rdma_connect._entry.116, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @rtrs_rdma_connect._entry_ptr.118, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.120, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1922, i32 3}
!274 = !{ptr @rtrs_rdma_connect._entry.119, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @rtrs_rdma_connect._entry_ptr.121, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @get_or_create_srv._rs, !277, !"_rs", i1 false, i1 false}
!277 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1390, i32 3}
!278 = !{ptr @__func__.get_or_create_srv, !277, !"<string literal>", i1 false, i1 false}
!279 = !{ptr @.str.122, !277, !"<string literal>", i1 false, i1 false}
!280 = !{ptr @get_or_create_srv._entry, !277, !"_entry", i1 false, i1 false}
!281 = !{ptr @get_or_create_srv._entry_ptr, !277, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @get_or_create_srv.__key, !283, !"__key", i1 false, i1 false}
!283 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1400, i32 2}
!284 = !{ptr @.str.123, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @get_or_create_srv.__key.124, !286, !"__key", i1 false, i1 false}
!286 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1401, i32 2}
!287 = !{ptr @.str.125, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.126, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1747, i32 3}
!290 = !{ptr @.str.127, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @__alloc_path._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @__alloc_path._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @__alloc_path.__key, !294, !"__key", i1 false, i1 false}
!294 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1787, i32 2}
!295 = !{ptr @.str.128, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @__alloc_path.__key.129, !297, !"__key", i1 false, i1 false}
!297 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1788, i32 2}
!298 = !{ptr @.str.130, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @.str.131, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 644, i32 5}
!301 = !{ptr @.str.132, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @map_cont_bufs._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @map_cont_bufs._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.133, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 161, i32 3}
!306 = !{ptr @.str.134, !305, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @rtrs_srv_alloc_ops_ids._entry, !305, !"_entry", i1 false, i1 false}
!308 = !{ptr @rtrs_srv_alloc_ops_ids._entry_ptr, !305, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @init_completion.__key, !310, !"__key", i1 false, i1 false}
!310 = !{!"../include/linux/completion.h", i32 87, i32 2}
!311 = !{ptr @.str.135, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @create_con.__key, !313, !"__key", i1 false, i1 false}
!313 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1656, i32 2}
!314 = !{ptr @.str.136, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @.str.137, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1702, i32 3}
!317 = !{ptr @.str.138, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @create_con._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @create_con._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @cq_affinity_mask, !321, !"cq_affinity_mask", i1 false, i1 false}
!321 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 56, i32 18}
!322 = !{ptr @.str.139, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 953, i32 3}
!324 = !{ptr @.str.140, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @post_recv_info_req._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @post_recv_info_req._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.141, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 907, i32 3}
!329 = !{ptr @.str.142, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @rtrs_srv_info_req_done._entry, !328, !"_entry", i1 false, i1 false}
!331 = !{ptr @rtrs_srv_info_req_done._entry_ptr, !328, !"_entry_ptr", i1 false, i1 false}
!332 = !{ptr @.str.144, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 914, i32 3}
!334 = !{ptr @rtrs_srv_info_req_done._entry.143, !333, !"_entry", i1 false, i1 false}
!335 = !{ptr @rtrs_srv_info_req_done._entry_ptr.145, !333, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.147, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 922, i32 3}
!338 = !{ptr @rtrs_srv_info_req_done._entry.146, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @rtrs_srv_info_req_done._entry_ptr.148, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.149, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 805, i32 3}
!342 = !{ptr @.str.150, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @process_info_req._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @process_info_req._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.152, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 810, i32 3}
!347 = !{ptr @process_info_req._entry.151, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @process_info_req._entry_ptr.153, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.155, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 816, i32 3}
!351 = !{ptr @process_info_req._entry.154, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @process_info_req._entry_ptr.156, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.158, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 884, i32 3}
!355 = !{ptr @process_info_req._entry.157, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @process_info_req._entry_ptr.159, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.160, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 989, i32 4}
!359 = !{ptr @.str.161, !358, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @post_recv_path._entry, !358, !"_entry", i1 false, i1 false}
!361 = !{ptr @post_recv_path._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.162, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 716, i32 3}
!364 = !{ptr @.str.163, !363, !"<string literal>", i1 false, i1 false}
!365 = !{ptr @rtrs_srv_info_rsp_done._entry, !363, !"_entry", i1 false, i1 false}
!366 = !{ptr @rtrs_srv_info_rsp_done._entry_ptr, !363, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.164, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1620, i32 3}
!369 = !{ptr @.str.165, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @rtrs_rdma_do_reject._entry, !368, !"_entry", i1 false, i1 false}
!371 = !{ptr @rtrs_rdma_do_reject._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.166, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 1602, i32 3}
!374 = !{ptr @.str.167, !373, !"<string literal>", i1 false, i1 false}
!375 = !{ptr @rtrs_rdma_do_accept._entry, !373, !"_entry", i1 false, i1 false}
!376 = !{ptr @rtrs_rdma_do_accept._entry_ptr, !373, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.168, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2256, i32 2}
!379 = !{ptr @.str.169, !378, !"<string literal>", i1 false, i1 false}
!380 = !{ptr @rtrs_server_init._entry, !378, !"_entry", i1 false, i1 false}
!381 = !{ptr @rtrs_server_init._entry_ptr, !378, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @.str.170, !378, !"<string literal>", i1 false, i1 false}
!383 = !{ptr @.str.172, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2265, i32 3}
!385 = !{ptr @rtrs_server_init._entry.171, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @rtrs_server_init._entry_ptr.173, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @rtrs_server_init.__key, !388, !"__key", i1 false, i1 false}
!388 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2273, i32 19}
!389 = !{ptr @.str.174, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @.str.175, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2278, i32 28}
!392 = !{ptr @.str.176, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2228, i32 3}
!394 = !{ptr @.str.177, !393, !"<string literal>", i1 false, i1 false}
!395 = !{ptr @check_module_params._entry, !393, !"_entry", i1 false, i1 false}
!396 = !{ptr @check_module_params._entry_ptr, !393, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.179, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2233, i32 3}
!399 = !{ptr @check_module_params._entry.178, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @check_module_params._entry_ptr.180, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.182, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/infiniband/ulp/rtrs/rtrs-srv.c", i32 2244, i32 3}
!403 = !{ptr @check_module_params._entry.181, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @check_module_params._entry_ptr.183, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{!"sp"}
!406 = !{i32 1, !"wchar_size", i32 2}
!407 = !{i32 1, !"min_enum_size", i32 4}
!408 = !{i32 8, !"branch-target-enforcement", i32 0}
!409 = !{i32 8, !"sign-return-address", i32 0}
!410 = !{i32 8, !"sign-return-address-all", i32 0}
!411 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!412 = !{i32 7, !"uwtable", i32 1}
!413 = !{i32 7, !"frame-pointer", i32 2}
!414 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!415 = !{!"branch_weights", i32 2000, i32 1}
!416 = !{!"branch_weights", i32 1, i32 2000}
!417 = !{i8 0, i8 2}
!418 = !{i64 2148484697}
!419 = !{i64 2148399406, i64 2148399438, i64 2148399467, i64 2148399501, i64 2148399532, i64 2148399555}
!420 = !{i64 2148484926}
!421 = !{i64 2148396221, i64 2148396247, i64 2148396276, i64 2148396310, i64 2148396341, i64 2148396364}
!422 = !{i64 2148481656}
!423 = !{i64 2148396941, i64 2148396973, i64 2148397002, i64 2148397036, i64 2148397067, i64 2148397090}
!424 = !{i64 2148481885}
!425 = !{!"auto-init"}
!426 = !{i64 2149412380}
!427 = !{i64 799921, i64 799982}
!428 = !{i64 802653}
!429 = !{i64 802938}
!430 = !{i64 2149412646}
!431 = !{i32 0, i32 33}
!432 = !{i64 2148169909}
!433 = !{i64 880754, i64 880778, i64 880799, i64 880816, i64 880833}
!434 = !{i64 2154520385, i64 2154520877, i64 2154520422, i64 2154520478, i64 2154520512, i64 2154520536, i64 2154520577, i64 2154520598, i64 2154520626, i64 2154520660}
!435 = !{i64 2154521995, i64 2154522487, i64 2154522032, i64 2154522088, i64 2154522122, i64 2154522146, i64 2154522187, i64 2154522208, i64 2154522236, i64 2154522270}
!436 = !{i64 2148485776}
!437 = !{i64 2148400216, i64 2148400248, i64 2148400277, i64 2148400311, i64 2148400342, i64 2148400365}
!438 = !{i64 2149361890}
