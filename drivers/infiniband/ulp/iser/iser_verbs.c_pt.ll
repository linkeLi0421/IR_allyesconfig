; ModuleID = '/llk/IR_all_yes/drivers/infiniband/ulp/iser/iser_verbs.c_pt.bc'
source_filename = "../drivers/infiniband/ulp/iser/iser_verbs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iser_global = type { %struct.mutex, %struct.list_head, %struct.mutex, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.ib_conn = type { ptr, ptr, ptr, i32, ptr, %struct.iser_fr_pool, i8, %struct.ib_cqe }
%struct.iser_fr_pool = type { %struct.list_head, %struct.spinlock, i32, %struct.list_head }
%struct.ib_cqe = type { ptr }
%struct.iser_device = type { ptr, ptr, %struct.ib_event_handler, %struct.list_head, i32 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.178, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.178 = type { %struct.ib_core_device }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.169 }
%struct.anon.169 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.iser_fr_desc = type { %struct.list_head, %struct.iser_reg_resources, i8, %struct.list_head }
%struct.iser_reg_resources = type { ptr, ptr, i8 }
%struct.iser_conn = type { %struct.ib_conn, ptr, ptr, i32, i32, i16, [64 x i8], %struct.work_struct, %struct.mutex, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, %struct.iser_login_desc, ptr, i32, i16, i16, i8 }
%struct.iser_login_desc = type <{ ptr, ptr, i64, i64, %struct.ib_sge, %struct.ib_cqe }>
%struct.ib_sge = type { i64, i32, i32 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.170 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.165 }
%struct.anon.165 = type { i64, i64 }
%union.anon.170 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.rdma_conn_param = type { ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.iser_cm_hdr = type { i8, [3 x i8] }
%struct.rdma_cm_id = type { ptr, ptr, ptr, ptr, %struct.rdma_route, i32, i32, i32 }
%struct.rdma_route = type { %struct.rdma_addr, ptr, i32 }
%struct.rdma_addr = type { %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, %struct.rdma_dev_addr }
%struct.__kernel_sockaddr_storage = type { %union.anon.180 }
%union.anon.180 = type { ptr, [124 x i8] }
%struct.rdma_dev_addr = type { [32 x i8], [32 x i8], [32 x i8], i16, i32, i32, ptr, ptr, i32, i32 }
%struct.rdma_cm_event = type { i32, i32, %union.anon.179, %struct.rdma_ucm_ece }
%union.anon.179 = type { %struct.rdma_ud_param }
%struct.rdma_ud_param = type { ptr, i8, %struct.rdma_ah_attr, i32, i32 }
%struct.rdma_ucm_ece = type { i32, i32 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.ib_recv_wr = type { ptr, %union.anon.168, ptr, i32 }
%union.anon.168 = type { i64 }
%struct.iser_rx_desc = type <{ %struct.iser_ctrl, %struct.iscsi_hdr, [128 x i8], i64, %struct.ib_sge, %struct.ib_cqe, [24 x i8] }>
%struct.iser_ctrl = type <{ i8, [3 x i8], i32, i64, i32, i64 }>
%struct.iscsi_hdr = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, [12 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iser_tx_desc = type { %struct.iser_ctrl, %struct.iscsi_hdr, i32, i64, [2 x %struct.ib_sge], i32, %struct.ib_cqe, i8, %struct.ib_reg_wr, %struct.ib_send_wr, %struct.ib_send_wr }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.166, ptr, i32, i32, i32, %union.anon.167 }
%union.anon.166 = type { i64 }
%union.anon.167 = type { i32 }
%struct.ib_mr_status = type { i32, %struct.ib_sig_err }
%struct.ib_sig_err = type { i32, i32, i32, i64, i32 }
%struct.iscsi_iser_task = type { %struct.iser_tx_desc, ptr, i32, ptr, i32, [2 x i32], [2 x %struct.iser_mem_reg], [2 x %struct.iser_data_buf], [2 x %struct.iser_data_buf] }
%struct.iser_mem_reg = type { %struct.ib_sge, i32, ptr }
%struct.iser_data_buf = type { ptr, i32, i32, i32 }
%struct.scsi_cmnd = type { %struct.scsi_request, ptr, %struct.list_head, %struct.delayed_work, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, i32, ptr, %struct.scsi_data_buffer, ptr, i32, i32, ptr, %struct.scsi_pointer, ptr, i32, i32, i32, i32 }
%struct.scsi_request = type { [16 x i8], ptr, i16, i32, i32, i32, i32, ptr }
%struct.scsi_data_buffer = type { %struct.sg_table, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scsi_pointer = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_device = type <{ ptr, ptr, %struct.list_head, %struct.list_head, %struct.sbitmap, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.list_head, i16, i16, i16, i16, i32, i32, i32, i32, i32, i64, i32, i32, ptr, i8, i8, i8, i8, %struct.mutex, i8, [3 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i8], i64, i32, i48, i32, i8, [3 x i8], %struct.atomic_t, [1 x i32], [1 x i32], %struct.list_head, %struct.work_struct, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, [4 x i8], %struct.device, %struct.device, %struct.execute_work, %struct.work_struct, ptr, ptr, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.mutex, i32, ptr, [0 x i32], [4 x i8] }>
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.execute_work = type { %struct.work_struct }
%struct.ib_wc = type { %union.anon.144, i32, i32, i32, i32, ptr, %union.anon.145, i32, i32, i32, i16, i8, i8, i32, [6 x i8], i16, i8 }
%union.anon.144 = type { i64 }
%union.anon.145 = type { i32 }
%struct.ib_event = type { ptr, %union.anon.136, i32 }
%union.anon.136 = type { ptr }

@iser_alloc_fastreg_pool.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&fr_pool->lock\00", [17 x i8] zeroinitializer }, align 32
@iser_debug_level = external dso_local local_unnamed_addr global i32, align 4
@iser_free_fastreg_pool._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016iser: %s: freeing conn %p fr pool\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iser_free_fastreg_pool\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/infiniband/ulp/iser/iser_verbs.c\00", [55 x i8] zeroinitializer }, align 32
@iser_free_fastreg_pool._entry_ptr = internal global ptr @iser_free_fastreg_pool._entry, section ".printk_index", align 4
@iser_free_fastreg_pool._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014iser: %s: pool still has %d regions registered\0A\00", [46 x i8] zeroinitializer }, align 32
@iser_free_fastreg_pool._entry_ptr.6 = internal global ptr @iser_free_fastreg_pool._entry.4, section ".printk_index", align 4
@ig = external dso_local global %struct.iser_global, align 4
@iser_conn_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014iser: %s: iser conn %p state %d, expected state down.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iser_conn_release\00", [46 x i8] zeroinitializer }, align 32
@iser_conn_release._entry_ptr = internal global ptr @iser_conn_release._entry, section ".printk_index", align 4
@iser_conn_terminate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016iser: %s: iser_conn %p state %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iser_conn_terminate\00", [44 x i8] zeroinitializer }, align 32
@iser_conn_terminate._entry_ptr = internal global ptr @iser_conn_terminate._entry, section ".printk_index", align 4
@iser_conn_terminate._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013iser: %s: Failed to disconnect, conn: 0x%p err %d\0A\00", [43 x i8] zeroinitializer }, align 32
@iser_conn_terminate._entry_ptr.13 = internal global ptr @iser_conn_terminate._entry.11, section ".printk_index", align 4
@iser_conn_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&iser_conn->state_mutex\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pISp\00", [26 x i8] zeroinitializer }, align 32
@iser_connect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 775, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016iser: %s: connecting to: %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iser_connect\00", [19 x i8] zeroinitializer }, align 32
@iser_connect._entry_ptr = internal global ptr @iser_connect._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ib_iser\00", [24 x i8] zeroinitializer }, align 32
@iser_connect._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.3, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013iser: %s: rdma_create_id failed: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@iser_connect._entry_ptr.21 = internal global ptr @iser_connect._entry.19, section ".printk_index", align 4
@iser_connect._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.3, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013iser: %s: rdma_resolve_addr failed: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@iser_connect._entry_ptr.24 = internal global ptr @iser_connect._entry.22, section ".printk_index", align 4
@iser_post_recvl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013iser: %s: ib_post_recv login failed ret=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iser_post_recvl\00", [16 x i8] zeroinitializer }, align 32
@iser_post_recvl._entry_ptr = internal global ptr @iser_post_recvl._entry, section ".printk_index", align 4
@iser_post_recvm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013iser: %s: ib_post_recv failed ret=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iser_post_recvm\00", [16 x i8] zeroinitializer }, align 32
@iser_post_recvm._entry_ptr = internal global ptr @iser_post_recvm._entry, section ".printk_index", align 4
@iser_post_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 899, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013iser: %s: ib_post_send failed, ret:%d opcode:%d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iser_post_send\00", [17 x i8] zeroinitializer }, align 32
@iser_post_send._entry_ptr = internal global ptr @iser_post_send._entry, section ".printk_index", align 4
@iser_check_task_pi_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013iser: %s: ib_check_mr_status failed, ret %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iser_check_task_pi_status\00", [38 x i8] zeroinitializer }, align 32
@iser_check_task_pi_status._entry_ptr = internal global ptr @iser_check_task_pi_status._entry, section ".printk_index", align 4
@iser_check_task_pi_status._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013iser: %s: PI error found type %d at sector %llx expected %x vs actual %x\0A\00", [52 x i8] zeroinitializer }, align 32
@iser_check_task_pi_status._entry_ptr.35 = internal global ptr @iser_check_task_pi_status._entry.33, section ".printk_index", align 4
@iser_err_comp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013iser: %s: %s failure: %s (%d) vend_err %#x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iser_err_comp\00", [18 x i8] zeroinitializer }, align 32
@iser_err_comp._entry_ptr = internal global ptr @iser_err_comp._entry, section ".printk_index", align 4
@iser_err_comp._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017iser: %s: %s failure: %s (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@iser_err_comp._entry_ptr.40 = internal global ptr @iser_err_comp._entry.38, section ".printk_index", align 4
@iser_create_fastreg_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013iser: %s: Failed to allocate ib_fast_reg_mr err=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iser_create_fastreg_desc\00", [39 x i8] zeroinitializer }, align 32
@iser_create_fastreg_desc._entry_ptr = internal global ptr @iser_create_fastreg_desc._entry, section ".printk_index", align 4
@iser_create_fastreg_desc._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013iser: %s: Failed to allocate sig_mr err=%d\0A\00", [50 x i8] zeroinitializer }, align 32
@iser_create_fastreg_desc._entry_ptr.45 = internal global ptr @iser_create_fastreg_desc._entry.43, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iser_free_ib_conn_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 400, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016iser: %s: freeing conn %p cma_id %p qp %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iser_free_ib_conn_res\00", [42 x i8] zeroinitializer }, align 32
@iser_free_ib_conn_res._entry_ptr = internal global ptr @iser_free_ib_conn_res._entry, section ".printk_index", align 4
@iser_device_try_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016iser: %s: device %p refcount %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iser_device_try_release\00", [40 x i8] zeroinitializer }, align 32
@iser_device_try_release._entry_ptr = internal global ptr @iser_device_try_release._entry, section ".printk_index", align 4
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@iser_cma_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016iser: %s: %s (%d): status %d conn %p id %p\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iser_cma_handler\00", [47 x i8] zeroinitializer }, align 32
@iser_cma_handler._entry_ptr = internal global ptr @iser_cma_handler._entry, section ".printk_index", align 4
@iser_cma_handler._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016iser: %s: Connection rejected: %s\0A\00", [59 x i8] zeroinitializer }, align 32
@iser_cma_handler._entry_ptr.57 = internal global ptr @iser_cma_handler._entry.55, section ".printk_index", align 4
@iser_cma_handler._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013iser: %s: Unexpected RDMA CM event: %s (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@iser_cma_handler._entry_ptr.60 = internal global ptr @iser_cma_handler._entry.58, section ".printk_index", align 4
@iser_addr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.3, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013iser: %s: device lookup/creation failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iser_addr_handler\00", [46 x i8] zeroinitializer }, align 32
@iser_addr_handler._entry_ptr = internal global ptr @iser_addr_handler._entry, section ".printk_index", align 4
@iser_pi_enable = external dso_local local_unnamed_addr global i8, align 1
@iser_addr_handler._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014iser: %s: T10-PI requested but not supported on %s, continue without T10-PI\0A\00", [49 x i8] zeroinitializer }, align 32
@iser_addr_handler._entry_ptr.65 = internal global ptr @iser_addr_handler._entry.63, section ".printk_index", align 4
@iser_max_sectors = external dso_local local_unnamed_addr global i32, align 4
@iser_addr_handler._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.3, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013iser: %s: resolve route failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@iser_addr_handler._entry_ptr.68 = internal global ptr @iser_addr_handler._entry.66, section ".printk_index", align 4
@iser_create_device_ib_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013iser: %s: IB device does not support memory registrations\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iser_create_device_ib_res\00", [38 x i8] zeroinitializer }, align 32
@iser_create_device_ib_res._entry_ptr = internal global ptr @iser_create_device_ib_res._entry, section ".printk_index", align 4
@iser_always_reg = external dso_local local_unnamed_addr global i8, align 1
@iser_create_device_ib_res._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 88, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013iser: %s: failed to allocate an IB resource\0A\00", [49 x i8] zeroinitializer }, align 32
@iser_create_device_ib_res._entry_ptr.73 = internal global ptr @iser_create_device_ib_res._entry.71, section ".printk_index", align 4
@iser_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013iser: %s: async event %s (%d) on device %s port %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iser_event_handler\00", [45 x i8] zeroinitializer }, align 32
@iser_event_handler._entry_ptr = internal global ptr @iser_event_handler._entry, section ".printk_index", align 4
@iser_route_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013iser: %s: failure connecting: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iser_route_handler\00", [45 x i8] zeroinitializer }, align 32
@iser_route_handler._entry_ptr = internal global ptr @iser_route_handler._entry, section ".printk_index", align 4
@iser_create_ib_conn_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016iser: %s: setting conn %p cma_id %p qp %p max_send_wr %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iser_create_ib_conn_res\00", [40 x i8] zeroinitializer }, align 32
@iser_create_ib_conn_res._entry_ptr = internal global ptr @iser_create_ib_conn_res._entry, section ".printk_index", align 4
@iser_create_ib_conn_res._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.3, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013iser: %s: unable to alloc mem or create resource, err %d\0A\00", [36 x i8] zeroinitializer }, align 32
@iser_create_ib_conn_res._entry_ptr.82 = internal global ptr @iser_create_ib_conn_res._entry.80, section ".printk_index", align 4
@iser_qp_event_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013iser: %s: qp event %s (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iser_qp_event_callback\00", [41 x i8] zeroinitializer }, align 32
@iser_qp_event_callback._entry_ptr = internal global ptr @iser_qp_event_callback._entry, section ".printk_index", align 4
@iser_connected_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 644, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016iser: %s: remote qpn:%x my qpn:%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iser_connected_handler\00", [41 x i8] zeroinitializer }, align 32
@iser_connected_handler._entry_ptr = internal global ptr @iser_connected_handler._entry, section ".printk_index", align 4
@iser_connected_handler._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.86, ptr @.str.3, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016iser: %s: conn %p: negotiated %s invalidation\0A\00", [47 x i8] zeroinitializer }, align 32
@iser_connected_handler._entry_ptr.89 = internal global ptr @iser_connected_handler._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remote\00", [25 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@iser_disconnected_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.3, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013iser: %s: iscsi_iser connection isn't bound\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iser_disconnected_handler\00", [38 x i8] zeroinitializer }, align 32
@iser_disconnected_handler._entry_ptr = internal global ptr @iser_disconnected_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15]
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 183, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 218, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 227, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 434, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 471, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 485, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 756, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 773, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 775, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 782, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 786, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 792, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 840, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 859, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 898, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 918, i32 4 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 930, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 956, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 964, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 127, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 135, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 399, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 340, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 3498, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 87, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 694, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 710, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 738, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 557, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 568, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 581, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 73, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 88, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 56, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 622, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 286, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 293, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 49, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 644, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 652, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.404 = private constant [44 x i8] c"../drivers/infiniband/ulp/iser/iser_verbs.c\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.404, i32 668, i32 4 }
@llvm.compiler.used = appending global [139 x ptr] [ptr @iser_addr_handler._entry, ptr @iser_addr_handler._entry.63, ptr @iser_addr_handler._entry.66, ptr @iser_addr_handler._entry_ptr, ptr @iser_addr_handler._entry_ptr.65, ptr @iser_addr_handler._entry_ptr.68, ptr @iser_check_task_pi_status._entry, ptr @iser_check_task_pi_status._entry.33, ptr @iser_check_task_pi_status._entry_ptr, ptr @iser_check_task_pi_status._entry_ptr.35, ptr @iser_cma_handler._entry, ptr @iser_cma_handler._entry.55, ptr @iser_cma_handler._entry.58, ptr @iser_cma_handler._entry_ptr, ptr @iser_cma_handler._entry_ptr.57, ptr @iser_cma_handler._entry_ptr.60, ptr @iser_conn_release._entry, ptr @iser_conn_release._entry_ptr, ptr @iser_conn_terminate._entry, ptr @iser_conn_terminate._entry.11, ptr @iser_conn_terminate._entry_ptr, ptr @iser_conn_terminate._entry_ptr.13, ptr @iser_connect._entry, ptr @iser_connect._entry.19, ptr @iser_connect._entry.22, ptr @iser_connect._entry_ptr, ptr @iser_connect._entry_ptr.21, ptr @iser_connect._entry_ptr.24, ptr @iser_connected_handler._entry, ptr @iser_connected_handler._entry.87, ptr @iser_connected_handler._entry_ptr, ptr @iser_connected_handler._entry_ptr.89, ptr @iser_create_device_ib_res._entry, ptr @iser_create_device_ib_res._entry.71, ptr @iser_create_device_ib_res._entry_ptr, ptr @iser_create_device_ib_res._entry_ptr.73, ptr @iser_create_fastreg_desc._entry, ptr @iser_create_fastreg_desc._entry.43, ptr @iser_create_fastreg_desc._entry_ptr, ptr @iser_create_fastreg_desc._entry_ptr.45, ptr @iser_create_ib_conn_res._entry, ptr @iser_create_ib_conn_res._entry.80, ptr @iser_create_ib_conn_res._entry_ptr, ptr @iser_create_ib_conn_res._entry_ptr.82, ptr @iser_device_try_release._entry, ptr @iser_device_try_release._entry_ptr, ptr @iser_disconnected_handler._entry, ptr @iser_disconnected_handler._entry_ptr, ptr @iser_err_comp._entry, ptr @iser_err_comp._entry.38, ptr @iser_err_comp._entry_ptr, ptr @iser_err_comp._entry_ptr.40, ptr @iser_event_handler._entry, ptr @iser_event_handler._entry_ptr, ptr @iser_free_fastreg_pool._entry, ptr @iser_free_fastreg_pool._entry.4, ptr @iser_free_fastreg_pool._entry_ptr, ptr @iser_free_fastreg_pool._entry_ptr.6, ptr @iser_free_ib_conn_res._entry, ptr @iser_free_ib_conn_res._entry_ptr, ptr @iser_post_recvl._entry, ptr @iser_post_recvl._entry_ptr, ptr @iser_post_recvm._entry, ptr @iser_post_recvm._entry_ptr, ptr @iser_post_send._entry, ptr @iser_post_send._entry_ptr, ptr @iser_qp_event_callback._entry, ptr @iser_qp_event_callback._entry_ptr, ptr @iser_route_handler._entry, ptr @iser_route_handler._entry_ptr, ptr @iser_alloc_fastreg_pool.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @iser_conn_init.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @init_completion.__key, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_alloc_fastreg_pool.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_free_fastreg_pool._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_free_fastreg_pool._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_conn_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_conn_terminate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_conn_terminate._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_conn_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_connect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_connect._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_connect._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_post_recvl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_post_recvm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_post_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_check_task_pi_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_check_task_pi_status._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_err_comp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_err_comp._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_create_fastreg_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_create_fastreg_desc._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_free_ib_conn_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_device_try_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_cma_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_cma_handler._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_cma_handler._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_addr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_addr_handler._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_addr_handler._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_create_device_ib_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_create_device_ib_res._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_route_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_create_ib_conn_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_create_ib_conn_res._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_qp_event_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_connected_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_connected_handler._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iser_disconnected_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_alloc_fastreg_pool(ptr noundef %ib_conn, i32 noundef %cmds_max, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 4
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %fr_pool2 = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5
  %2 = ptrtoint ptr %fr_pool2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %fr_pool2, ptr %fr_pool2, align 4
  %prev.i = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fr_pool2, ptr %prev.i, align 4
  %all_list = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %all_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %all_list, ptr %all_list, align 4
  %prev.i31 = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %all_list, ptr %prev.i31, align 4
  %lock = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @iser_alloc_fastreg_pool.__key, i16 noundef signext 3) #8
  %size3 = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5, i32 2
  %6 = ptrtoint ptr %size3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %size3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmds_max)
  %cmp42.not = icmp eq i32 %cmds_max, 0
  br i1 %cmp42.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pd = getelementptr inbounds %struct.iser_device, ptr %1, i32 0, i32 1
  %pi_support = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit38.for.body_crit_edge, %for.body.lr.ph
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc12, %list_add_tail.exit38.for.body_crit_edge ]
  %7 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pd, align 4
  %9 = ptrtoint ptr %pi_support to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pi_support, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then_crit_edge, label %if.end.i

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %12, i32 0, i32 22, i32 9
  %14 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %device_cap_flags.i, align 8
  %and.i = lshr i64 %15, 32
  %16 = trunc i64 %and.i to i32
  %17 = and i32 %16, 1
  %call5.i = tail call ptr @ib_alloc_mr(ptr noundef %8, i32 noundef %17, i32 noundef %size) #8
  %rsc.i = getelementptr inbounds %struct.iser_fr_desc, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %rsc.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i, ptr %rsc.i, align 8
  %cmp.i.i = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then9.i, label %if.end14.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call5.i to i32
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %19) #12
  br label %err_alloc_mr.i

if.end14.i:                                       ; preds = %if.end.i
  br i1 %tobool.not, label %if.end14.i.if.end32.i_crit_edge, label %if.then16.i

if.end14.i.if.end32.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then16.i:                                      ; preds = %if.end14.i
  %call17.i = tail call ptr @ib_alloc_mr_integrity(ptr noundef %8, i32 noundef %size, i32 noundef %size) #8
  %sig_mr.i = getelementptr inbounds %struct.iser_fr_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %sig_mr.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17.i, ptr %sig_mr.i, align 4
  %cmp.i56.i = icmp ugt ptr %call17.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56.i, label %if.then22.i, label %if.then16.i.if.end32.i_crit_edge

if.then16.i.if.end32.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then22.i:                                      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call17.i to i32
  %call30.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef %21) #12
  %22 = ptrtoint ptr %rsc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rsc.i, align 8
  %call.i.i = tail call i32 @ib_dereg_mr_user(ptr noundef %23, ptr noundef null) #8
  br label %err_alloc_mr.i

if.end32.i:                                       ; preds = %if.then16.i.if.end32.i_crit_edge, %if.end14.i.if.end32.i_crit_edge
  %mr_valid.i = getelementptr inbounds %struct.iser_fr_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %mr_valid.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %mr_valid.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %mr_valid.i, align 8
  br label %iser_create_fastreg_desc.exit

err_alloc_mr.i:                                   ; preds = %if.then22.i, %if.then9.i
  %ret.0.i = phi i32 [ %19, %if.then9.i ], [ %21, %if.then22.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  %25 = inttoptr i32 %ret.0.i to ptr
  br label %iser_create_fastreg_desc.exit

iser_create_fastreg_desc.exit:                    ; preds = %err_alloc_mr.i, %if.end32.i
  %retval.0.i = phi ptr [ %25, %err_alloc_mr.i ], [ %call7.i.i.i, %if.end32.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %iser_create_fastreg_desc.exit.if.then_crit_edge, label %if.end

iser_create_fastreg_desc.exit.if.then_crit_edge:  ; preds = %iser_create_fastreg_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %iser_create_fastreg_desc.exit.if.then_crit_edge, %for.body.if.then_crit_edge
  %retval.0.i41 = phi ptr [ %retval.0.i, %iser_create_fastreg_desc.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.body.if.then_crit_edge ]
  %26 = ptrtoint ptr %retval.0.i41 to i32
  tail call void @iser_free_fastreg_pool(ptr noundef %ib_conn)
  br label %cleanup

if.end:                                           ; preds = %iser_create_fastreg_desc.exit
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i33 = tail call zeroext i1 @__list_add_valid(ptr noundef %retval.0.i, ptr noundef %28, ptr noundef %fr_pool2) #8
  br i1 %call.i.i33, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i, ptr %prev.i, align 4
  %30 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %fr_pool2, ptr %retval.0.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %retval.0.i, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %all_list9 = getelementptr inbounds %struct.iser_fr_desc, ptr %retval.0.i, i32 0, i32 3
  %33 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i31, align 4
  %call.i.i35 = tail call zeroext i1 @__list_add_valid(ptr noundef %all_list9, ptr noundef %34, ptr noundef %all_list) #8
  br i1 %call.i.i35, label %if.end.i.i37, label %list_add_tail.exit.list_add_tail.exit38_crit_edge

list_add_tail.exit.list_add_tail.exit38_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit38

if.end.i.i37:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %prev.i31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %all_list9, ptr %prev.i31, align 4
  %36 = ptrtoint ptr %all_list9 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %all_list, ptr %all_list9, align 4
  %prev3.i.i36 = getelementptr inbounds %struct.iser_fr_desc, ptr %retval.0.i, i32 0, i32 3, i32 1
  %37 = ptrtoint ptr %prev3.i.i36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i36, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %all_list9, ptr %34, align 4
  br label %list_add_tail.exit38

list_add_tail.exit38:                             ; preds = %if.end.i.i37, %list_add_tail.exit.list_add_tail.exit38_crit_edge
  %39 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size3, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %size3, align 4
  %inc12 = add nuw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc12, %cmds_max
  br i1 %exitcond.not, label %list_add_tail.exit38.cleanup_crit_edge, label %list_add_tail.exit38.for.body_crit_edge

list_add_tail.exit38.for.body_crit_edge:          ; preds = %list_add_tail.exit38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_add_tail.exit38.cleanup_crit_edge:           ; preds = %list_add_tail.exit38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit38.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %list_add_tail.exit38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_free_fastreg_pool(ptr noundef %ib_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %all_list = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5, i32 3
  %0 = ptrtoint ptr %all_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %all_list, align 4
  %cmp.i.not = icmp eq ptr %1, %all_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %2 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %do.body.do.end10_crit_edge, !prof !191

do.body.do.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %ib_conn) #12
  br label %do.end10

do.end10:                                         ; preds = %do.end, %do.body.do.end10_crit_edge
  %3 = ptrtoint ptr %all_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %all_list, align 4
  %cmp20.not66 = icmp eq ptr %4, %all_list
  br i1 %cmp20.not66, label %do.end10.for.end_crit_edge, label %do.end10.for.body_crit_edge

do.end10.for.body_crit_edge:                      ; preds = %do.end10
  br label %for.body

do.end10.for.end_crit_edge:                       ; preds = %do.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %iser_destroy_fastreg_desc.exit.for.body_crit_edge, %do.end10.for.body_crit_edge
  %.pn.in68 = phi ptr [ %.pn, %iser_destroy_fastreg_desc.exit.for.body_crit_edge ], [ %4, %do.end10.for.body_crit_edge ]
  %i.067 = phi i32 [ %inc, %iser_destroy_fastreg_desc.exit.for.body_crit_edge ], [ 0, %do.end10.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in68, i32 -24
  %5 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in68, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in68) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in68, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn.in68, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %.pn.in68 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in68, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in68, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %rsc.i = getelementptr i8, ptr %.pn.in68, i32 -16
  %14 = ptrtoint ptr %rsc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rsc.i, align 4
  %call.i.i65 = tail call i32 @ib_dereg_mr_user(ptr noundef %15, ptr noundef null) #8
  %sig_mr.i = getelementptr i8, ptr %.pn.in68, i32 -12
  %16 = ptrtoint ptr %sig_mr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sig_mr.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %list_del.exit.iser_destroy_fastreg_desc.exit_crit_edge, label %if.then.i

list_del.exit.iser_destroy_fastreg_desc.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_destroy_fastreg_desc.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i8.i = tail call i32 @ib_dereg_mr_user(ptr noundef nonnull %17, ptr noundef null) #8
  %18 = ptrtoint ptr %sig_mr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %sig_mr.i, align 4
  br label %iser_destroy_fastreg_desc.exit

iser_destroy_fastreg_desc.exit:                   ; preds = %if.then.i, %list_del.exit.iser_destroy_fastreg_desc.exit_crit_edge
  tail call void @kfree(ptr noundef %desc.0) #8
  %inc = add i32 %i.067, 1
  %cmp20.not = icmp eq ptr %.pn, %all_list
  br i1 %cmp20.not, label %iser_destroy_fastreg_desc.exit.for.end_crit_edge, label %iser_destroy_fastreg_desc.exit.for.body_crit_edge

iser_destroy_fastreg_desc.exit.for.body_crit_edge: ; preds = %iser_destroy_fastreg_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

iser_destroy_fastreg_desc.exit.for.end_crit_edge: ; preds = %iser_destroy_fastreg_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %iser_destroy_fastreg_desc.exit.for.end_crit_edge, %do.end10.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %do.end10.for.end_crit_edge ], [ %inc, %iser_destroy_fastreg_desc.exit.for.end_crit_edge ]
  %size = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 5, i32 2
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %i.0.lcssa)
  %cmp29 = icmp sgt i32 %20, %i.0.lcssa
  br i1 %cmp29, label %do.body31, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body31:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %21 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp32 = icmp sgt i32 %21, 0
  br i1 %cmp32, label %do.end42, label %do.body31.cleanup_crit_edge, !prof !191

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end42:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %sub = sub i32 %20, %i.0.lcssa
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.2, i32 noundef %sub) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %do.body31.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_release_work(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -176
  %stop_completion = getelementptr i8, ptr %work, i32 136
  tail call void @wait_for_completion(ptr noundef %stop_completion) #8
  %ib_completion = getelementptr i8, ptr %work, i32 192
  tail call void @wait_for_completion(ptr noundef %ib_completion) #8
  %state_mutex = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #8
  %state = getelementptr i8, ptr %work, i32 -76
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %state_mutex) #8
  tail call void @iser_conn_release(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_conn_release(ptr noundef %iser_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 2), i32 noundef 0) #8
  %conn_list = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %conn_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %conn_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %conn_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %conn_list, align 4
  %prev.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 2)) #8
  %state_mutex = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #8
  %state = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 3
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp.not = icmp eq i32 %9, 4
  br i1 %cmp.not, label %list_del.exit.if.end10_crit_edge, label %do.body

list_del.exit.if.end10_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body:                                          ; preds = %list_del.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %10 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp sgt i32 %10, 0
  br i1 %cmp2, label %do.end, label %do.body.do.end8_crit_edge, !prof !191

do.body.do.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %iser_conn, i32 noundef %9) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %do.body.do.end8_crit_edge
  %ep = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 2
  %11 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ep, align 4
  tail call void @iscsi_destroy_endpoint(ptr noundef %12) #8
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %state, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %list_del.exit.if.end10_crit_edge
  tail call fastcc void @iser_free_ib_conn_res(ptr noundef %iser_conn, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %state_mutex) #8
  %14 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iser_conn, align 4
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rdma_destroy_id(ptr noundef nonnull %15) #8
  %16 = ptrtoint ptr %iser_conn to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %iser_conn, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end10.if.end16_crit_edge
  tail call void @kfree(ptr noundef %iser_conn) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_destroy_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iser_free_ib_conn_res(ptr noundef %iser_conn, i1 noundef zeroext %destroy) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 4
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %2 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge, !prof !191

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iser_conn, align 4
  %qp = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 1
  %5 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qp, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %iser_conn, ptr noundef %4, ptr noundef %6) #12
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %qp7 = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 1
  %7 = ptrtoint ptr %qp7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qp7, align 4
  %tobool8.not = icmp eq ptr %8, null
  br i1 %tobool8.not, label %do.end6.if.end12_crit_edge, label %if.then9

do.end6.if.end12_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then9:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iser_conn, align 4
  tail call void @rdma_destroy_qp(ptr noundef %10) #8
  %cq = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 2
  %11 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cq, align 4
  %cq_size = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 3
  %13 = ptrtoint ptr %cq_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cq_size, align 4
  tail call void @ib_cq_pool_put(ptr noundef %12, i32 noundef %14) #8
  %15 = ptrtoint ptr %qp7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %qp7, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end6.if.end12_crit_edge
  br i1 %destroy, label %if.then14, label %if.end12.if.end22_crit_edge

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then14:                                        ; preds = %if.end12
  %rx_descs = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 14
  %16 = ptrtoint ptr %rx_descs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_descs, align 4
  %tobool15.not = icmp eq ptr %17, null
  br i1 %tobool15.not, label %if.then14.if.end17_crit_edge, label %if.then16

if.then14.if.end17_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iser_free_rx_descriptors(ptr noundef %iser_conn) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.then14.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %1, null
  br i1 %tobool18.not, label %if.end17.if.end22_crit_edge, label %if.then19

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then19:                                        ; preds = %if.end17
  tail call void @mutex_lock_nested(ptr noundef nonnull @ig, i32 noundef 0) #8
  %refcount.i = getelementptr inbounds %struct.iser_device, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %refcount.i, align 4
  %dec.i = add i32 %19, -1
  store i32 %dec.i, ptr %refcount.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %20 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.i = icmp sgt i32 %20, 1
  br i1 %cmp.i, label %do.end.i, label %if.then19.do.end4.i_crit_edge, !prof !191

if.then19.do.end4.i_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4.i

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull %1, i32 noundef %dec.i) #12
  %21 = ptrtoint ptr %refcount.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr.i = load i32, ptr %refcount.i, align 4
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.then19.do.end4.i_crit_edge
  %22 = phi i32 [ %dec.i, %if.then19.do.end4.i_crit_edge ], [ %.pr.i, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool6.not.i = icmp eq i32 %22, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %do.end4.i.iser_device_try_release.exit_crit_edge

do.end4.i.iser_device_try_release.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_device_try_release.exit

if.then7.i:                                       ; preds = %do.end4.i
  %event_handler.i.i = getelementptr inbounds %struct.iser_device, ptr %1, i32 0, i32 2
  tail call void @ib_unregister_event_handler(ptr noundef %event_handler.i.i) #8
  %pd.i.i = getelementptr inbounds %struct.iser_device, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pd.i.i, align 4
  %call.i.i.i = tail call i32 @ib_dealloc_pd_user(ptr noundef %24, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then7.i.iser_free_device_ib_res.exit.i_crit_edge, label %land.rhs.i.i.i

if.then7.i.iser_free_device_ib_res.exit.i_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_free_device_ib_res.exit.i

land.rhs.i.i.i:                                   ; preds = %if.then7.i
  %.b38.i.i.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i.i.i, label %land.rhs.i.i.i.iser_free_device_ib_res.exit.i_crit_edge, label %if.then.i.i.i, !prof !192

land.rhs.i.i.i.iser_free_device_ib_res.exit.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_free_device_ib_res.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.50, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.51) #8
  br label %iser_free_device_ib_res.exit.i

iser_free_device_ib_res.exit.i:                   ; preds = %if.then.i.i.i, %land.rhs.i.i.i.iser_free_device_ib_res.exit.i_crit_edge, %if.then7.i.iser_free_device_ib_res.exit.i_crit_edge
  %25 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %pd.i.i, align 4
  %ig_list.i = getelementptr inbounds %struct.iser_device, ptr %1, i32 0, i32 3
  %call.i.i15.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ig_list.i) #8
  br i1 %call.i.i15.i, label %if.end.i.i.i, label %iser_free_device_ib_res.exit.i.list_del.exit.i_crit_edge

iser_free_device_ib_res.exit.i.list_del.exit.i_crit_edge: ; preds = %iser_free_device_ib_res.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %iser_free_device_ib_res.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.iser_device, ptr %1, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %28 = ptrtoint ptr %ig_list.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ig_list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %iser_free_device_ib_res.exit.i.list_del.exit.i_crit_edge
  %32 = ptrtoint ptr %ig_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %ig_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.iser_device, ptr %1, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %iser_device_try_release.exit

iser_device_try_release.exit:                     ; preds = %list_del.exit.i, %do.end4.i.iser_device_try_release.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ig) #8
  %34 = ptrtoint ptr %device2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %device2, align 4
  br label %if.end22

if.end22:                                         ; preds = %iser_device_try_release.exit, %if.end17.if.end22_crit_edge, %if.end12.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_conn_terminate(ptr noundef %iser_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 3
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %state.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %3 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %do.end, label %do.body.do.end9_crit_edge, !prof !191

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef %iser_conn, i32 noundef %5) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %iscsi_conn = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 1
  %6 = ptrtoint ptr %iscsi_conn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iscsi_conn, align 4
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %do.end9.if.end13_crit_edge, label %if.then11

do.end9.if.end13_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iscsi_suspend_queue(ptr noundef nonnull %7) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %do.end9.if.end13_crit_edge
  %8 = ptrtoint ptr %iser_conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iser_conn, align 4
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %call17 = tail call i32 @rdma_disconnect(ptr noundef nonnull %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then15.if.end25_crit_edge, label %do.end22

if.then15.if.end25_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end22:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %iser_conn, i32 noundef %call17) #12
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %if.then15.if.end25_crit_edge
  %qp = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 1
  %10 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qp, align 4
  tail call void @ib_drain_sq(ptr noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end25 ], [ 1, %if.end13.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_suspend_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_drain_sq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_conn_init(ptr noundef %iser_conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %state, align 4
  %stop_completion = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 9
  %1 = ptrtoint ptr %stop_completion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %stop_completion, align 4
  %wait.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #8
  %ib_completion = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 10
  %2 = ptrtoint ptr %ib_completion to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ib_completion, align 4
  %wait.i8 = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 10, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i8, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #8
  %up_completion = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 11
  %3 = ptrtoint ptr %up_completion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %up_completion, align 4
  %wait.i9 = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i9, ptr noundef nonnull @.str.52, ptr noundef nonnull @init_completion.__key) #8
  %conn_list = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 12
  %4 = ptrtoint ptr %conn_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %conn_list, ptr %conn_list, align 4
  %prev.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %conn_list, ptr %prev.i, align 4
  %state_mutex = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %state_mutex, ptr noundef nonnull @.str.14, ptr noundef nonnull @iser_conn_init.__key) #8
  %reg_cqe = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 7
  %6 = ptrtoint ptr %reg_cqe to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @iser_reg_comp, ptr %reg_cqe, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_reg_comp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_connect(ptr noundef %iser_conn, ptr noundef %src_addr, ptr noundef %dst_addr, i32 noundef %non_blocking) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state_mutex = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #8
  %name = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 6
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.15, ptr noundef %dst_addr)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %0 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge, !prof !191

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %name) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %device = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 4
  %1 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %device, align 4
  %state = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 3
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %state, align 4
  %call9 = tail call ptr @__rdma_create_kernel_id(ptr noundef nonnull @init_net, ptr noundef nonnull @iser_cma_handler, ptr noundef %iser_conn, i32 noundef 262, i32 noundef 2, ptr noundef nonnull @.str.18) #8
  %3 = ptrtoint ptr %iser_conn to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9, ptr %iser_conn, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end20

if.then12:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call9 to i32
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef %4) #12
  %5 = ptrtoint ptr %iser_conn to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %iser_conn, align 4
  br label %addr_failure

if.end20:                                         ; preds = %do.end8
  %call22 = tail call i32 @rdma_resolve_addr(ptr noundef %call9, ptr noundef %src_addr, ptr noundef %dst_addr, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.17, i32 noundef %call22) #12
  br label %addr_failure

if.end30:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %non_blocking)
  %tobool31.not = icmp eq i32 %non_blocking, 0
  br i1 %tobool31.not, label %if.then32, label %if.end30.if.end38_crit_edge

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then32:                                        ; preds = %if.end30
  %up_completion = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 11
  %call33 = tail call i32 @wait_for_completion_interruptible(ptr noundef %up_completion) #8
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp35.not = icmp eq i32 %7, 2
  br i1 %cmp35.not, label %if.then32.if.end38_crit_edge, label %if.then32.connect_failure_crit_edge

if.then32.connect_failure_crit_edge:              ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %connect_failure

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  tail call void @mutex_unlock(ptr noundef %state_mutex) #8
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 2), i32 noundef 0) #8
  %conn_list = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %conn_list, ptr noundef getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3), ptr noundef %8) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end38.list_add.exit_crit_edge

if.end38.list_add.exit_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %conn_list, ptr %prev1.i.i, align 4
  %10 = ptrtoint ptr %conn_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %conn_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3), ptr %prev3.i.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3) to i32))
  store volatile ptr %conn_list, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 3), align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end38.list_add.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 2)) #8
  br label %cleanup

addr_failure:                                     ; preds = %do.end27, %if.then12
  %err.0 = phi i32 [ %4, %if.then12 ], [ %call22, %do.end27 ]
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %state, align 4
  br label %connect_failure

connect_failure:                                  ; preds = %addr_failure, %if.then32.connect_failure_crit_edge
  %err.1 = phi i32 [ %err.0, %addr_failure ], [ -5, %if.then32.connect_failure_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %state_mutex) #8
  tail call void @iser_conn_release(ptr noundef %iser_conn)
  br label %cleanup

cleanup:                                          ; preds = %connect_failure, %list_add.exit
  %retval.0 = phi i32 [ %err.1, %connect_failure ], [ 0, %list_add.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__rdma_create_kernel_id(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iser_cma_handler(ptr noundef %cma_id, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  %attr.i = alloca %struct.ib_qp_attr, align 8
  %init_attr.i = alloca %struct.ib_qp_init_attr, align 4
  %init_attr.i.i = alloca %struct.ib_qp_init_attr, align 4
  %conn_param.i = alloca %struct.rdma_conn_param, align 4
  %req_hdr.i = alloca %struct.iser_cm_hdr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 1
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %2 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end8_crit_edge, !prof !191

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %event, align 8
  %call = tail call ptr @rdma_event_msg(i32 noundef %4) #13
  %status = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, ptr noundef %call, i32 noundef %4, i32 noundef %6, ptr noundef %1, ptr noundef %cma_id) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %state_mutex = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %state_mutex, i32 noundef 0) #8
  %7 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %event, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %do.end41 [
    i32 0, label %sw.bb
    i32 2, label %sw.bb10
    i32 9, label %sw.bb11
    i32 8, label %do.body13
    i32 1, label %do.end8.sw.bb32_crit_edge
    i32 3, label %do.end8.sw.bb32_crit_edge102
    i32 6, label %do.end8.sw.bb32_crit_edge103
    i32 7, label %do.end8.sw.bb32_crit_edge104
    i32 10, label %do.end8.sw.bb33_crit_edge
    i32 14, label %do.end8.sw.bb33_crit_edge105
    i32 15, label %do.end8.sw.bb33_crit_edge106
    i32 11, label %sw.bb34
  ]

do.end8.sw.bb33_crit_edge106:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

do.end8.sw.bb33_crit_edge105:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

do.end8.sw.bb33_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33

do.end8.sw.bb32_crit_edge104:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

do.end8.sw.bb32_crit_edge103:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

do.end8.sw.bb32_crit_edge102:                     ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

do.end8.sw.bb32_crit_edge:                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

sw.bb:                                            ; preds = %do.end8
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %state.i = getelementptr inbounds %struct.iser_conn, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  tail call void @mutex_lock_nested(ptr noundef nonnull @ig, i32 noundef 0) #8
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i
  %.pn.in.i.i = phi ptr [ getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1), %if.end.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %14 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1)
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %device.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -24
  %15 = ptrtoint ptr %device.0.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device.0.i.i, align 4
  %node_guid.i.i = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 17
  %17 = ptrtoint ptr %node_guid.i.i to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %node_guid.i.i, align 8
  %19 = ptrtoint ptr %cma_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cma_id, align 4
  %node_guid2.i.i = getelementptr inbounds %struct.ib_device, ptr %20, i32 0, i32 17
  %21 = ptrtoint ptr %node_guid2.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %node_guid2.i.i, align 8
  %cmp3.i.i = icmp eq i64 %18, %22
  br i1 %cmp3.i.i, label %iser_device_find_by_ib_device.exit.i.loopexit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 36) #11
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %for.end.i.i.iser_device_find_by_ib_device.exit.thread.i_crit_edge, label %if.end9.i.i

for.end.i.i.iser_device_find_by_ib_device.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_device_find_by_ib_device.exit.thread.i

if.end9.i.i:                                      ; preds = %for.end.i.i
  %24 = ptrtoint ptr %cma_id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cma_id, align 4
  %26 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %call7.i.i.i.i, align 8
  %device_cap_flags.i.i.i = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 22, i32 9
  %27 = ptrtoint ptr %device_cap_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %device_cap_flags.i.i.i, align 8
  %and.i.i.i = and i64 %28, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end9.i.i.if.then14.i.i_crit_edge, label %if.end.i.i.i

if.end9.i.i.if.then14.i.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i.i

if.end.i.i.i:                                     ; preds = %if.end9.i.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @iser_always_reg to i32))
  %29 = load i8, ptr @iser_always_reg, align 1, !range !190
  %30 = xor i8 %29, 1
  %31 = zext i8 %30 to i32
  %call2.i.i.i = tail call ptr @__ib_alloc_pd(ptr noundef %25, i32 noundef %31, ptr noundef nonnull @.str.18) #8
  %pd.i.i.i = getelementptr inbounds %struct.iser_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %pd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call2.i.i.i, ptr %pd.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %call2.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.i, label %if.end.i.i.i.if.then14.i.i_crit_edge, label %if.end15.i.i

if.end.i.i.i.if.then14.i.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.end.i.i.i.if.then14.i.i_crit_edge, %if.end9.i.i.if.then14.i.i_crit_edge
  %.str.72.sink.i.i = phi ptr [ @.str.69, %if.end9.i.i.if.then14.i.i_crit_edge ], [ @.str.72, %if.end.i.i.i.if.then14.i.i_crit_edge ]
  %call18.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.72.sink.i.i, ptr noundef nonnull @.str.70) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #8
  br label %iser_device_find_by_ib_device.exit.thread.i

if.end15.i.i:                                     ; preds = %if.end.i.i.i
  %event_handler.i.i.i = getelementptr inbounds %struct.iser_device, ptr %call7.i.i.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %event_handler.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %25, ptr %event_handler.i.i.i, align 8
  %handler.i.i.i = getelementptr inbounds %struct.iser_device, ptr %call7.i.i.i.i, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %handler.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @iser_event_handler, ptr %handler.i.i.i, align 4
  %list.i.i.i = getelementptr inbounds %struct.iser_device, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %list.i.i.i, ptr %list.i.i.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.iser_device, ptr %call7.i.i.i.i, i32 0, i32 2, i32 2, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %list.i.i.i, ptr %prev.i.i.i.i, align 4
  tail call void @ib_register_event_handler(ptr noundef %event_handler.i.i.i) #8
  %ig_list16.i.i = getelementptr inbounds %struct.iser_device, ptr %call7.i.i.i.i, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1), align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ig_list16.i.i, ptr noundef getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1), ptr noundef %37) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end15.i.i.iser_device_find_by_ib_device.exit.i_crit_edge

if.end15.i.i.iser_device_find_by_ib_device.exit.i_crit_edge: ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_device_find_by_ib_device.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ig_list16.i.i, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %ig_list16.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %ig_list16.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.iser_device, ptr %call7.i.i.i.i, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1), ptr %prev3.i.i.i.i, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1) to i32))
  store volatile ptr %ig_list16.i.i, ptr getelementptr inbounds (%struct.iser_global, ptr @ig, i32 0, i32 1), align 4
  br label %iser_device_find_by_ib_device.exit.i

iser_device_find_by_ib_device.exit.thread.i:      ; preds = %if.then14.i.i, %for.end.i.i.iser_device_find_by_ib_device.exit.thread.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ig) #8
  br label %do.end.i

iser_device_find_by_ib_device.exit.i.loopexit:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %device.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -24
  br label %iser_device_find_by_ib_device.exit.i

iser_device_find_by_ib_device.exit.i:             ; preds = %iser_device_find_by_ib_device.exit.i.loopexit, %if.end.i.i.i.i, %if.end15.i.i.iser_device_find_by_ib_device.exit.i_crit_edge
  %device.1.i.i = phi ptr [ %call7.i.i.i.i, %if.end15.i.i.iser_device_find_by_ib_device.exit.i_crit_edge ], [ %call7.i.i.i.i, %if.end.i.i.i.i ], [ %device.0.i.i.le, %iser_device_find_by_ib_device.exit.i.loopexit ]
  %refcount.i.i = getelementptr inbounds %struct.iser_device, ptr %device.1.i.i, i32 0, i32 4
  %41 = ptrtoint ptr %refcount.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %refcount.i.i, align 4
  %inc.i.i = add i32 %42, 1
  store i32 %inc.i.i, ptr %refcount.i.i, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @ig) #8
  %tobool.not.i = icmp eq ptr %device.1.i.i, null
  br i1 %tobool.not.i, label %iser_device_find_by_ib_device.exit.i.do.end.i_crit_edge, label %if.end4.i

iser_device_find_by_ib_device.exit.i.do.end.i_crit_edge: ; preds = %iser_device_find_by_ib_device.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %iser_device_find_by_ib_device.exit.i.do.end.i_crit_edge, %iser_device_find_by_ib_device.exit.thread.i
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.62) #12
  br label %cleanup.sink.split.i

if.end4.i:                                        ; preds = %iser_device_find_by_ib_device.exit.i
  %device5.i = getelementptr inbounds %struct.ib_conn, ptr %11, i32 0, i32 4
  %43 = ptrtoint ptr %device5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %device.1.i.i, ptr %device5.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @iser_pi_enable to i32))
  %44 = load i8, ptr @iser_pi_enable, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool6.not.i = icmp eq i8 %44, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end28.i_crit_edge, label %if.then7.i

if.end4.i.if.end28.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then7.i:                                       ; preds = %if.end4.i
  %45 = ptrtoint ptr %device.1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %device.1.i.i, align 4
  %device_cap_flags.i = getelementptr inbounds %struct.ib_device, ptr %46, i32 0, i32 22, i32 9
  %47 = ptrtoint ptr %device_cap_flags.i to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %device_cap_flags.i, align 8
  %and.i = and i64 %48, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool8.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool8.not.i, label %do.body10.i, label %if.then7.i.if.end28.sink.split.i_crit_edge

if.then7.i.if.end28.sink.split.i_crit_edge:       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.sink.split.i

do.body10.i:                                      ; preds = %if.then7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %49 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp11.i = icmp sgt i32 %49, 0
  br i1 %cmp11.i, label %do.end17.i, label %do.body10.i.if.end28.sink.split.i_crit_edge, !prof !191

do.body10.i.if.end28.sink.split.i_crit_edge:      ; preds = %do.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.sink.split.i

do.end17.i:                                       ; preds = %do.body10.i
  %init_name.i.i = getelementptr inbounds %struct.ib_device, ptr %46, i32 0, i32 13, i32 0, i32 0, i32 3
  %50 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i53.i = icmp eq ptr %51, null
  br i1 %tobool.not.i53.i, label %if.end.i.i, label %do.end17.i.dev_name.exit.i_crit_edge

do.end17.i.dev_name.exit.i_crit_edge:             ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = getelementptr inbounds %struct.ib_device, ptr %46, i32 0, i32 13
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end17.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %54, %if.end.i.i ], [ %51, %do.end17.i.dev_name.exit.i_crit_edge ]
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.62, ptr noundef %retval.0.i.i) #12
  br label %if.end28.sink.split.i

if.end28.sink.split.i:                            ; preds = %dev_name.exit.i, %do.body10.i.if.end28.sink.split.i_crit_edge, %if.then7.i.if.end28.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %dev_name.exit.i ], [ 0, %do.body10.i.if.end28.sink.split.i_crit_edge ], [ 1, %if.then7.i.if.end28.sink.split.i_crit_edge ]
  %pi_support.i = getelementptr inbounds %struct.ib_conn, ptr %11, i32 0, i32 6
  %55 = ptrtoint ptr %pi_support.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %.sink.i, ptr %pi_support.i, align 4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.sink.split.i, %if.end4.i.if.end28.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_max_sectors to i32))
  %56 = load i32, ptr @iser_max_sectors, align 4
  %57 = ptrtoint ptr %device5.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device5.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %device_cap_flags.i.i = getelementptr inbounds %struct.ib_device, ptr %60, i32 0, i32 22, i32 9
  %61 = ptrtoint ptr %device_cap_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %device_cap_flags.i.i, align 8
  %and.i.i = lshr i64 %62, 32
  %63 = trunc i64 %and.i.i to i32
  %64 = and i32 %63, 1
  %65 = xor i32 %64, 1
  %pi_support.i.i = getelementptr inbounds %struct.ib_conn, ptr %11, i32 0, i32 6
  %66 = ptrtoint ptr %pi_support.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pi_support.i.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool3.not.i.i = icmp eq i8 %67, 0
  %max_pi_fast_reg_page_list_len.i.i = getelementptr inbounds %struct.ib_device, ptr %60, i32 0, i32 22, i32 37
  %max_fast_reg_page_list_len.i.i = getelementptr inbounds %struct.ib_device, ptr %60, i32 0, i32 22, i32 36
  %max_num_sg.0.in.i.i = select i1 %tobool3.not.i.i, ptr %max_fast_reg_page_list_len.i.i, ptr %max_pi_fast_reg_page_list_len.i.i
  %68 = ptrtoint ptr %max_num_sg.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %max_num_sg.0.i.i = load i32, ptr %max_num_sg.0.in.i.i, align 4
  %mul.i.i = shl i32 %56, 9
  %sub.i.i = add i32 %mul.i.i, 4095
  %div39.i.i = lshr i32 %sub.i.i, 12
  %sub8.i.i = sub i32 %max_num_sg.0.i.i, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub8.i.i)
  %cmp.i.i = icmp ugt i32 %sub8.i.i, 4096
  %phi.cast40.i.i = and i32 %sub8.i.i, 65535
  %cond.i.i = select i1 %cmp.i.i, i32 4096, i32 %phi.cast40.i.i
  %conv12.i.i = and i32 %div39.i.i, 65535
  %69 = tail call i32 @llvm.umin.i32(i32 %conv12.i.i, i32 %cond.i.i) #8
  %conv22.i.i = trunc i32 %69 to i16
  %scsi_sg_tablesize.i.i = getelementptr inbounds %struct.iser_conn, ptr %11, i32 0, i32 16
  %70 = ptrtoint ptr %scsi_sg_tablesize.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv22.i.i, ptr %scsi_sg_tablesize.i.i, align 4
  %add26.i.i = add nuw nsw i32 %69, %65
  %conv27.i.i = trunc i32 %add26.i.i to i16
  %pages_per_mr.i.i = getelementptr inbounds %struct.iser_conn, ptr %11, i32 0, i32 17
  %71 = ptrtoint ptr %pages_per_mr.i.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv27.i.i, ptr %pages_per_mr.i.i, align 2
  %call29.i = tail call i32 @rdma_resolve_route(ptr noundef %cma_id, i32 noundef 1000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.sw.epilog_crit_edge, label %do.end34.i

if.end28.i.sw.epilog_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end34.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.62, i32 noundef %call29.i) #12
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %do.end34.i, %do.end.i
  %72 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %context, align 4
  %state.i55.i = getelementptr inbounds %struct.iser_conn, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %state.i55.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 3, ptr %state.i55.i, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %conn_param.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req_hdr.i) #8
  %75 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %context, align 4
  %device.i = getelementptr inbounds %struct.ib_conn, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %device.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %state.i68 = getelementptr inbounds %struct.iser_conn, ptr %76, i32 0, i32 3
  %81 = ptrtoint ptr %state.i68 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp.not.i69 = icmp eq i32 %82, 1
  br i1 %cmp.not.i69, label %if.end.i71, label %sw.bb10.iser_route_handler.exit_crit_edge

sw.bb10.iser_route_handler.exit_crit_edge:        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_route_handler.exit

if.end.i71:                                       ; preds = %sw.bb10
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %init_attr.i.i) #8
  %83 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %device.i, align 4
  %cmp.i.i70 = icmp eq ptr %84, null
  br i1 %cmp.i.i70, label %do.body3.i.i, label %do.end8.i.i, !prof !191

do.body3.i.i:                                     ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/infiniband/ulp/iser/iser_verbs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 245, 0\0A.popsection", ""() #8, !srcloc !193
  unreachable

do.end8.i.i:                                      ; preds = %if.end.i71
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %pi_support.i.i72 = getelementptr inbounds %struct.ib_conn, ptr %76, i32 0, i32 6
  %87 = ptrtoint ptr %pi_support.i.i72 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pi_support.i.i72, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool10.not.i.i = icmp eq i8 %88, 0
  %..i.i = select i1 %tobool10.not.i.i, i32 4619, i32 3083
  %max_qp_wr.i.i = getelementptr inbounds %struct.ib_device, ptr %86, i32 0, i32 22, i32 8
  %89 = ptrtoint ptr %max_qp_wr.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %max_qp_wr.i.i, align 8
  %91 = tail call i32 @llvm.umin.i32(i32 %..i.i, i32 %90) #8
  %add.i.i = add nuw nsw i32 %91, 512
  %call14.i.i = tail call ptr @ib_cq_pool_get(ptr noundef %86, i32 noundef %add.i.i, i32 noundef -1, i32 noundef 0) #8
  %cq.i.i = getelementptr inbounds %struct.ib_conn, ptr %76, i32 0, i32 2
  %92 = ptrtoint ptr %cq.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call14.i.i, ptr %cq.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call14.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %iser_create_ib_conn_res.exit.i, label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end8.i.i
  %cq_size21.i.i = getelementptr inbounds %struct.ib_conn, ptr %76, i32 0, i32 3
  %93 = ptrtoint ptr %cq_size21.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %add.i.i, ptr %cq_size21.i.i, align 4
  %94 = getelementptr inbounds i8, ptr %init_attr.i.i, i32 16
  %95 = call ptr @memset(ptr %94, i32 0, i32 56)
  %96 = ptrtoint ptr %init_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @iser_qp_event_callback, ptr %init_attr.i.i, align 4
  %qp_context.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %qp_context.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %76, ptr %qp_context.i.i, align 4
  %send_cq.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %send_cq.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call14.i.i, ptr %send_cq.i.i, align 4
  %recv_cq.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %recv_cq.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call14.i.i, ptr %recv_cq.i.i, align 4
  %cap.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 6
  %max_recv_wr.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 6, i32 1
  %100 = ptrtoint ptr %max_recv_wr.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 512, ptr %max_recv_wr.i.i, align 4
  %max_send_sge.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 6, i32 2
  %101 = ptrtoint ptr %max_send_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 2, ptr %max_send_sge.i.i, align 4
  %max_recv_sge.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 6, i32 3
  %102 = ptrtoint ptr %max_recv_sge.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 1, ptr %max_recv_sge.i.i, align 4
  %sq_sig_type.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 7
  %103 = ptrtoint ptr %sq_sig_type.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %sq_sig_type.i.i, align 4
  %qp_type.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 8
  %104 = ptrtoint ptr %qp_type.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %qp_type.i.i, align 4
  %105 = ptrtoint ptr %cap.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %91, ptr %cap.i.i, align 4
  %106 = ptrtoint ptr %pi_support.i.i72 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %pi_support.i.i72, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool29.not.i.i = icmp eq i8 %107, 0
  br i1 %tobool29.not.i.i, label %if.end20.i.i.if.end31.i.i_crit_edge, label %if.then30.i.i

if.end20.i.i.if.end31.i.i_crit_edge:              ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i.i

if.then30.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %create_flags.i.i = getelementptr inbounds %struct.ib_qp_init_attr, ptr %init_attr.i.i, i32 0, i32 9
  %108 = ptrtoint ptr %create_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %create_flags.i.i, align 4
  %or.i.i = or i32 %109, 64
  store i32 %or.i.i, ptr %create_flags.i.i, align 4
  br label %if.end31.i.i

if.end31.i.i:                                     ; preds = %if.then30.i.i, %if.end20.i.i.if.end31.i.i_crit_edge
  %sub33.i.i = add nsw i32 %91, -11
  %div.i.i = udiv i32 %sub33.i.i, 9
  %conv.i.i = trunc i32 %div.i.i to i16
  %max_cmds.i.i = getelementptr inbounds %struct.iser_conn, ptr %76, i32 0, i32 5
  %110 = ptrtoint ptr %max_cmds.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i.i, ptr %max_cmds.i.i, align 4
  %111 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %76, align 4
  %pd.i.i = getelementptr inbounds %struct.iser_device, ptr %84, i32 0, i32 1
  %113 = ptrtoint ptr %pd.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %pd.i.i, align 4
  %call34.i.i = call i32 @rdma_create_qp(ptr noundef %112, ptr noundef %114, ptr noundef nonnull %init_attr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %tobool35.not.i.i = icmp eq i32 %call34.i.i, 0
  br i1 %tobool35.not.i.i, label %if.end37.i.i, label %iser_create_ib_conn_res.exit.thread28.i

if.end37.i.i:                                     ; preds = %if.end31.i.i
  %115 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %76, align 4
  %qp.i.i = getelementptr inbounds %struct.rdma_cm_id, ptr %116, i32 0, i32 2
  %117 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %qp.i.i, align 4
  %qp39.i.i = getelementptr inbounds %struct.ib_conn, ptr %76, i32 0, i32 1
  %119 = ptrtoint ptr %qp39.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %qp39.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %120 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp41.i.i = icmp sgt i32 %120, 1
  br i1 %cmp41.i.i, label %do.end52.i.i, label %if.end37.i.i.iser_create_ib_conn_res.exit.thread.i_crit_edge, !prof !191

if.end37.i.i.iser_create_ib_conn_res.exit.thread.i_crit_edge: ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_create_ib_conn_res.exit.thread.i

do.end52.i.i:                                     ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %121 = ptrtoint ptr %qp.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %qp.i.i, align 4
  %call57.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, ptr noundef %76, ptr noundef %116, ptr noundef %122, i32 noundef %91) #12
  br label %iser_create_ib_conn_res.exit.thread.i

iser_create_ib_conn_res.exit.thread28.i:          ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %123 = ptrtoint ptr %cq.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %cq.i.i, align 4
  %125 = ptrtoint ptr %cq_size21.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cq_size21.i.i, align 4
  call void @ib_cq_pool_put(ptr noundef %124, i32 noundef %126) #8
  %call67.i30.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef %call34.i.i) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %init_attr.i.i) #8
  br label %failure.i

iser_create_ib_conn_res.exit.thread.i:            ; preds = %do.end52.i.i, %if.end37.i.i.iser_create_ib_conn_res.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %init_attr.i.i) #8
  %127 = getelementptr inbounds i8, ptr %conn_param.i, i32 4
  %128 = call ptr @memset(ptr %127, i32 0, i32 16)
  %max_qp_rd_atom.i = getelementptr inbounds %struct.ib_device, ptr %80, i32 0, i32 22, i32 17
  %129 = ptrtoint ptr %max_qp_rd_atom.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_qp_rd_atom.i, align 4
  %conv.i = trunc i32 %130 to i8
  %responder_resources.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i, i32 0, i32 2
  %131 = ptrtoint ptr %responder_resources.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv.i, ptr %responder_resources.i, align 1
  %initiator_depth.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i, i32 0, i32 3
  %132 = ptrtoint ptr %initiator_depth.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %initiator_depth.i, align 2
  %retry_count.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i, i32 0, i32 5
  %133 = ptrtoint ptr %retry_count.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 7, ptr %retry_count.i, align 4
  %rnr_retry_count.i = getelementptr inbounds %struct.rdma_conn_param, ptr %conn_param.i, i32 0, i32 6
  %134 = ptrtoint ptr %rnr_retry_count.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 6, ptr %rnr_retry_count.i, align 1
  %135 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -2147483648, ptr %req_hdr.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @iser_always_reg to i32))
  %136 = load i8, ptr @iser_always_reg, align 1, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool4.not.i = icmp eq i8 %136, 0
  %spec.store.select.i = select i1 %tobool4.not.i, i8 -64, i8 -128
  %137 = ptrtoint ptr %req_hdr.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %spec.store.select.i, ptr %req_hdr.i, align 4
  %138 = ptrtoint ptr %conn_param.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %req_hdr.i, ptr %conn_param.i, align 4
  %139 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 4, ptr %127, align 4
  %call10.i = call i32 @rdma_connect_locked(ptr noundef %cma_id, ptr noundef nonnull %conn_param.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %iser_create_ib_conn_res.exit.thread.i.iser_route_handler.exit_crit_edge, label %do.end.i73

iser_create_ib_conn_res.exit.thread.i.iser_route_handler.exit_crit_edge: ; preds = %iser_create_ib_conn_res.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_route_handler.exit

iser_create_ib_conn_res.exit.i:                   ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %call14.i.i to i32
  %call67.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.79, i32 noundef %140) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %init_attr.i.i) #8
  br label %failure.i

do.end.i73:                                       ; preds = %iser_create_ib_conn_res.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef %call10.i) #12
  br label %failure.i

failure.i:                                        ; preds = %do.end.i73, %iser_create_ib_conn_res.exit.i, %iser_create_ib_conn_res.exit.thread28.i
  %141 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %context, align 4
  %state.i.i = getelementptr inbounds %struct.iser_conn, ptr %142, i32 0, i32 3
  %143 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 3, ptr %state.i.i, align 4
  br label %iser_route_handler.exit

iser_route_handler.exit:                          ; preds = %failure.i, %iser_create_ib_conn_res.exit.thread.i.iser_route_handler.exit_crit_edge, %sw.bb10.iser_route_handler.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req_hdr.i) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %conn_param.i) #8
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end8
  %param = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 2
  %144 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %param, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attr.i) #8
  %146 = call ptr @memset(ptr %attr.i, i32 255, i32 216)
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %init_attr.i) #8
  %147 = call ptr @memset(ptr %init_attr.i, i32 255, i32 72)
  %148 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %context, align 4
  %state.i75 = getelementptr inbounds %struct.iser_conn, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %state.i75 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %state.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp.not.i76 = icmp eq i32 %151, 1
  br i1 %cmp.not.i76, label %if.end.i77, label %sw.bb11.iser_connected_handler.exit_crit_edge

sw.bb11.iser_connected_handler.exit_crit_edge:    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_connected_handler.exit

if.end.i77:                                       ; preds = %sw.bb11
  %qp.i = getelementptr inbounds %struct.rdma_cm_id, ptr %cma_id, i32 0, i32 2
  %152 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %qp.i, align 4
  %call.i = call i32 @ib_query_qp(ptr noundef %153, ptr noundef nonnull %attr.i, i32 noundef -1, ptr noundef nonnull %init_attr.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %154 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %154)
  %cmp1.i = icmp sgt i32 %154, 1
  br i1 %cmp1.i, label %do.end.i78, label %if.end.i77.do.end9.i_crit_edge, !prof !191

if.end.i77.do.end9.i_crit_edge:                   ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9.i

do.end.i78:                                       ; preds = %if.end.i77
  call void @__sanitizer_cov_trace_pc() #10
  %dest_qp_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %attr.i, i32 0, i32 7
  %155 = ptrtoint ptr %dest_qp_num.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dest_qp_num.i, align 4
  %157 = ptrtoint ptr %qp.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %qp.i, align 4
  %qp_num.i = getelementptr inbounds %struct.ib_qp, ptr %158, i32 0, i32 19
  %159 = ptrtoint ptr %qp_num.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %qp_num.i, align 4
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, i32 noundef %156, i32 noundef %160) #12
  br label %do.end9.i

do.end9.i:                                        ; preds = %do.end.i78, %if.end.i77.do.end9.i_crit_edge
  %tobool10.not.i = icmp eq ptr %145, null
  br i1 %tobool10.not.i, label %do.end9.i.do.body16.i_crit_edge, label %if.then11.i

do.end9.i.do.body16.i_crit_edge:                  ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16.i

if.then11.i:                                      ; preds = %do.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %145 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %145, align 1
  %snd_w_inv.i = getelementptr inbounds %struct.iser_conn, ptr %149, i32 0, i32 18
  %163 = lshr i8 %162, 6
  %.lobit.i = and i8 %163, 1
  %164 = xor i8 %.lobit.i, 1
  %165 = ptrtoint ptr %snd_w_inv.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %164, ptr %snd_w_inv.i, align 4
  br label %do.body16.i

do.body16.i:                                      ; preds = %if.then11.i, %do.end9.i.do.body16.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %166 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %166)
  %cmp17.i = icmp sgt i32 %166, 1
  br i1 %cmp17.i, label %do.end28.i, label %do.body16.i.do.end36.i_crit_edge, !prof !191

do.body16.i.do.end36.i_crit_edge:                 ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36.i

do.end28.i:                                       ; preds = %do.body16.i
  call void @__sanitizer_cov_trace_pc() #10
  %snd_w_inv30.i = getelementptr inbounds %struct.iser_conn, ptr %149, i32 0, i32 18
  %167 = ptrtoint ptr %snd_w_inv30.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %snd_w_inv30.i, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool31.not.i = icmp eq i8 %168, 0
  %cond.i = select i1 %tobool31.not.i, ptr @.str.91, ptr @.str.90
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, ptr noundef %149, ptr noundef nonnull %cond.i) #12
  br label %do.end36.i

do.end36.i:                                       ; preds = %do.end28.i, %do.body16.i.do.end36.i_crit_edge
  %169 = ptrtoint ptr %state.i75 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 2, ptr %state.i75, align 4
  %up_completion.i = getelementptr inbounds %struct.iser_conn, ptr %149, i32 0, i32 11
  call void @complete(ptr noundef %up_completion.i) #8
  br label %iser_connected_handler.exit

iser_connected_handler.exit:                      ; preds = %do.end36.i, %sw.bb11.iser_connected_handler.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %init_attr.i) #8
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr.i) #8
  br label %sw.epilog

do.body13:                                        ; preds = %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %170 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cmp14 = icmp sgt i32 %170, 1
  br i1 %cmp14, label %do.end24, label %do.body13.sw.bb32_crit_edge, !prof !191

do.body13.sw.bb32_crit_edge:                      ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32

do.end24:                                         ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %status26 = getelementptr inbounds %struct.rdma_cm_event, ptr %event, i32 0, i32 1
  %171 = ptrtoint ptr %status26 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %status26, align 4
  %call27 = tail call ptr @rdma_reject_msg(ptr noundef %cma_id, i32 noundef %172) #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, ptr noundef %call27) #12
  br label %sw.bb32

sw.bb32:                                          ; preds = %do.end24, %do.body13.sw.bb32_crit_edge, %do.end8.sw.bb32_crit_edge, %do.end8.sw.bb32_crit_edge102, %do.end8.sw.bb32_crit_edge103, %do.end8.sw.bb32_crit_edge104
  %173 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %context, align 4
  %state.i80 = getelementptr inbounds %struct.iser_conn, ptr %174, i32 0, i32 3
  %175 = ptrtoint ptr %state.i80 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 3, ptr %state.i80, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %do.end8.sw.bb33_crit_edge, %do.end8.sw.bb33_crit_edge105, %do.end8.sw.bb33_crit_edge106
  %176 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %context, align 4
  %call.i.i = tail call i32 @iser_conn_terminate(ptr noundef %177) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i82 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i82, label %sw.bb33.iser_cleanup_handler.exit_crit_edge, label %if.then.i.i

sw.bb33.iser_cleanup_handler.exit_crit_edge:      ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_cleanup_handler.exit

if.then.i.i:                                      ; preds = %sw.bb33
  %iscsi_conn.i.i = getelementptr inbounds %struct.iser_conn, ptr %177, i32 0, i32 1
  %178 = ptrtoint ptr %iscsi_conn.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %iscsi_conn.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %179, null
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iscsi_conn_failure(ptr noundef nonnull %179, i32 noundef 1011) #8
  br label %iser_cleanup_handler.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #12
  br label %iser_cleanup_handler.exit

iser_cleanup_handler.exit:                        ; preds = %do.end.i.i, %if.then2.i.i, %sw.bb33.iser_cleanup_handler.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %180 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %180)
  %cmp.i = icmp sgt i32 %180, 1
  br i1 %cmp.i, label %do.end.i96, label %iser_cleanup_handler.exit.do.end6.i_crit_edge, !prof !191

iser_cleanup_handler.exit.do.end6.i_crit_edge:    ; preds = %iser_cleanup_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i

do.end.i96:                                       ; preds = %iser_cleanup_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  %181 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %177, align 4
  %qp.i94 = getelementptr inbounds %struct.ib_conn, ptr %177, i32 0, i32 1
  %183 = ptrtoint ptr %qp.i94 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %qp.i94, align 4
  %call.i95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %177, ptr noundef %182, ptr noundef %184) #12
  br label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i96, %iser_cleanup_handler.exit.do.end6.i_crit_edge
  %qp7.i = getelementptr inbounds %struct.ib_conn, ptr %177, i32 0, i32 1
  %185 = ptrtoint ptr %qp7.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %qp7.i, align 4
  %tobool8.not.i97 = icmp eq ptr %186, null
  br i1 %tobool8.not.i97, label %do.end6.i.iser_free_ib_conn_res.exit_crit_edge, label %if.then9.i

do.end6.i.iser_free_ib_conn_res.exit_crit_edge:   ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_free_ib_conn_res.exit

if.then9.i:                                       ; preds = %do.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %187 = ptrtoint ptr %177 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %177, align 4
  tail call void @rdma_destroy_qp(ptr noundef %188) #8
  %cq.i = getelementptr inbounds %struct.ib_conn, ptr %177, i32 0, i32 2
  %189 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %cq.i, align 4
  %cq_size.i = getelementptr inbounds %struct.ib_conn, ptr %177, i32 0, i32 3
  %191 = ptrtoint ptr %cq_size.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cq_size.i, align 4
  tail call void @ib_cq_pool_put(ptr noundef %190, i32 noundef %192) #8
  %193 = ptrtoint ptr %qp7.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr null, ptr %qp7.i, align 4
  br label %iser_free_ib_conn_res.exit

iser_free_ib_conn_res.exit:                       ; preds = %if.then9.i, %do.end6.i.iser_free_ib_conn_res.exit_crit_edge
  %ib_completion.i = getelementptr inbounds %struct.iser_conn, ptr %177, i32 0, i32 10
  tail call void @complete(ptr noundef %ib_completion.i) #8
  br label %sw.epilog

sw.bb34:                                          ; preds = %do.end8
  %194 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %context, align 4
  %call.i.i84 = tail call i32 @iser_conn_terminate(ptr noundef %195) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %tobool.not.i.i85 = icmp eq i32 %call.i.i84, 0
  br i1 %tobool.not.i.i85, label %sw.bb34.iser_cleanup_handler.exit93_crit_edge, label %if.then.i.i88

sw.bb34.iser_cleanup_handler.exit93_crit_edge:    ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #10
  br label %iser_cleanup_handler.exit93

if.then.i.i88:                                    ; preds = %sw.bb34
  %iscsi_conn.i.i86 = getelementptr inbounds %struct.iser_conn, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %iscsi_conn.i.i86 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %iscsi_conn.i.i86, align 4
  %tobool1.not.i.i87 = icmp eq ptr %197, null
  br i1 %tobool1.not.i.i87, label %do.end.i.i91, label %if.then2.i.i89

if.then2.i.i89:                                   ; preds = %if.then.i.i88
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iscsi_conn_failure(ptr noundef nonnull %197, i32 noundef 1011) #8
  br label %iser_cleanup_handler.exit93

do.end.i.i91:                                     ; preds = %if.then.i.i88
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93) #12
  br label %iser_cleanup_handler.exit93

iser_cleanup_handler.exit93:                      ; preds = %do.end.i.i91, %if.then2.i.i89, %sw.bb34.iser_cleanup_handler.exit93_crit_edge
  tail call fastcc void @iser_free_ib_conn_res(ptr noundef %195, i1 noundef zeroext true) #8
  %ib_completion.i92 = getelementptr inbounds %struct.iser_conn, ptr %195, i32 0, i32 10
  tail call void @complete(ptr noundef %ib_completion.i92) #8
  %state = getelementptr inbounds %struct.iser_conn, ptr %1, i32 0, i32 3
  %198 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %199)
  %cmp35.not = icmp eq i32 %199, 4
  br i1 %cmp35.not, label %iser_cleanup_handler.exit93.sw.epilog_crit_edge, label %if.then36

iser_cleanup_handler.exit93.sw.epilog_crit_edge:  ; preds = %iser_cleanup_handler.exit93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then36:                                        ; preds = %iser_cleanup_handler.exit93
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %1, align 4
  br label %sw.epilog

do.end41:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call44 = tail call ptr @rdma_event_msg(i32 noundef %8) #13
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54, ptr noundef %call44, i32 noundef %8) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end41, %if.then36, %iser_cleanup_handler.exit93.sw.epilog_crit_edge, %iser_free_ib_conn_res.exit, %sw.bb32, %iser_connected_handler.exit, %iser_route_handler.exit, %cleanup.sink.split.i, %if.end28.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %do.end41 ], [ 1, %if.then36 ], [ 0, %iser_cleanup_handler.exit93.sw.epilog_crit_edge ], [ 0, %iser_free_ib_conn_res.exit ], [ 0, %sw.bb32 ], [ 0, %iser_connected_handler.exit ], [ 0, %iser_route_handler.exit ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.end28.i.sw.epilog_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @mutex_unlock(ptr noundef %state_mutex) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_post_recvl(ptr noundef %iser_conn) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %wr = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr) #8
  %0 = call ptr @memset(ptr %wr, i32 255, i32 16)
  %rsp_dma = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 3
  %1 = ptrtoint ptr %rsp_dma to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %rsp_dma, align 1
  %sge = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 4
  %3 = ptrtoint ptr %sge to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %2, ptr %sge, align 1
  %length = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 4, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_storeN_noabort(i32 %4, i32 4)
  store i32 8268, ptr %length, align 1
  %device = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 4
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %pd = getelementptr inbounds %struct.iser_device, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pd, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %lkey = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 4, i32 2
  %11 = ptrtoint ptr %lkey to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %lkey, align 1
  %cqe = getelementptr inbounds %struct.iser_conn, ptr %iser_conn, i32 0, i32 13, i32 5
  %12 = ptrtoint ptr %cqe to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store ptr @iser_login_rsp, ptr %cqe, align 1
  %13 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cqe, ptr %13, align 8
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 2
  %15 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %sge, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 3
  %16 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_sge, align 4
  %17 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %wr, align 8
  %qp = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 1
  %18 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %20 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !194
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 1, i32 7
  %23 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %post_recv.i, align 4
  %call.i = call i32 %24(ptr noundef %19, ptr noundef nonnull %wr, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !192

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %call.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr) #8
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_login_rsp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_post_recvm(ptr nocapture noundef readonly %iser_conn, ptr noundef %rx_desc) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  %wr = alloca %struct.ib_recv_wr, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %wr) #8
  %0 = call ptr @memset(ptr %wr, i32 255, i32 16)
  %cqe = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc, i32 0, i32 5
  %1 = ptrtoint ptr %cqe to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store ptr @iser_task_rsp, ptr %cqe, align 1
  %2 = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cqe, ptr %2, align 8
  %rx_sg = getelementptr inbounds %struct.iser_rx_desc, ptr %rx_desc, i32 0, i32 4
  %sg_list = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 2
  %4 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx_sg, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.ib_recv_wr, ptr %wr, i32 0, i32 3
  %5 = ptrtoint ptr %num_sge to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_sge, align 4
  %6 = ptrtoint ptr %wr to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %wr, align 8
  %qp = getelementptr inbounds %struct.ib_conn, ptr %iser_conn, i32 0, i32 1
  %7 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %9 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !194
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %8, align 4
  %post_recv.i = getelementptr inbounds %struct.ib_device, ptr %11, i32 0, i32 1, i32 7
  %12 = ptrtoint ptr %post_recv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %post_recv.i, align 4
  %call.i = call i32 %13(ptr noundef %8, ptr noundef nonnull %wr, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !192

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %call.i) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %wr) #8
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_task_rsp(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iser_post_send(ptr nocapture noundef readonly %ib_conn, ptr noundef %tx_desc) local_unnamed_addr #0 align 64 {
entry:
  %dummy.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %send_wr = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 9
  %device = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 4
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dma_addr = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 3
  %4 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dma_addr, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %conv.i = trunc i64 %5 to i32
  tail call void @dma_sync_single_for_device(ptr noundef %7, i32 noundef %conv.i, i32 noundef 76, i32 noundef 1) #8
  %8 = ptrtoint ptr %send_wr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %send_wr, align 8
  %cqe = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 6
  %9 = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cqe, ptr %9, align 8
  %tx_sg = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 4
  %sg_list = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 9, i32 2
  %11 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %tx_sg, ptr %sg_list, align 8
  %num_sge = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 5
  %12 = ptrtoint ptr %num_sge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_sge, align 8
  %num_sge1 = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 9, i32 3
  %14 = ptrtoint ptr %num_sge1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %num_sge1, align 4
  %opcode = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 9, i32 4
  %15 = ptrtoint ptr %opcode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %opcode, align 8
  %send_flags = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 9, i32 5
  %16 = ptrtoint ptr %send_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %send_flags, align 4
  %inv_wr = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 10
  %17 = ptrtoint ptr %inv_wr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %inv_wr, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.else, label %entry.if.end11_crit_edge

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reg_wr = getelementptr inbounds %struct.iser_tx_desc, ptr %tx_desc, i32 0, i32 8
  %19 = ptrtoint ptr %reg_wr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_wr, align 8
  %tobool6.not = icmp eq ptr %20, null
  %send_wr.reg_wr = select i1 %tobool6.not, ptr %send_wr, ptr %reg_wr
  br label %if.end11

if.end11:                                         ; preds = %if.else, %entry.if.end11_crit_edge
  %first_wr.0 = phi ptr [ %inv_wr, %entry.if.end11_crit_edge ], [ %send_wr.reg_wr, %if.else ]
  %qp = getelementptr inbounds %struct.ib_conn, ptr %ib_conn, i32 0, i32 1
  %21 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #8
  %23 = ptrtoint ptr %dummy.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -1 to ptr), ptr %dummy.i, align 4, !annotation !194
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %22, align 4
  %post_send.i = getelementptr inbounds %struct.ib_device, ptr %25, i32 0, i32 1, i32 6
  %26 = ptrtoint ptr %post_send.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %post_send.i, align 4
  %call.i = call i32 %27(ptr noundef %22, ptr noundef %first_wr.0, ptr noundef nonnull %dummy.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end11.if.end18_crit_edge, label %do.end, !prof !192

if.end11.if.end18_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %opcode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %opcode, align 8
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i32 noundef %call.i, i32 noundef %29) #12
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end11.if.end18_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iser_check_task_pi_status(ptr nocapture noundef readonly %iser_task, i32 noundef %cmd_dir, ptr nocapture noundef writeonly %sector) local_unnamed_addr #0 align 64 {
entry:
  %mr_status = alloca %struct.ib_mr_status, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_h = getelementptr %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 6, i32 %cmd_dir, i32 2
  %0 = ptrtoint ptr %mem_h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem_h, align 4
  %sc = getelementptr inbounds %struct.iscsi_iser_task, ptr %iser_task, i32 0, i32 3
  %2 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sc, align 8
  %device = getelementptr inbounds %struct.scsi_cmnd, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %sector_size1 = getelementptr inbounds %struct.scsi_device, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %sector_size1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sector_size1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %mr_status) #8
  %8 = call ptr @memset(ptr %mr_status, i32 255, i32 40)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup213_crit_edge, label %land.lhs.true

entry.cleanup213_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup213

land.lhs.true:                                    ; preds = %entry
  %sig_protected = getelementptr inbounds %struct.iser_fr_desc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %sig_protected to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sig_protected, align 4, !range !190
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup213_crit_edge, label %if.then

land.lhs.true.cleanup213_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup213

if.then:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %sig_protected to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %sig_protected, align 4
  %sig_mr = getelementptr inbounds %struct.iser_fr_desc, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %sig_mr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sig_mr, align 4
  %call = call i32 @ib_check_mr_status(ptr noundef %13, i32 noundef 1, ptr noundef nonnull %mr_status) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %call) #12
  %14 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %sector, align 8
  br label %cleanup213

if.end:                                           ; preds = %if.then
  %15 = ptrtoint ptr %mr_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mr_status, align 8
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end.cleanup213_crit_edge, label %if.then8

if.end.cleanup213_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup213

if.then8:                                         ; preds = %if.end
  %sig_err = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1
  %sig_err_offset = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %sig_err_offset to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %sig_err_offset, align 8
  %add = add i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %18)
  %cmp180 = icmp ult i64 %18, 4294967296
  br i1 %cmp180, label %if.then184, label %if.else190, !prof !192

if.then184:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %conv185 = trunc i64 %18 to i32
  %div188 = udiv i32 %conv185, %add
  %conv189 = zext i32 %div188 to i64
  br label %if.end194

if.else190:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %19 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %18) #14, !srcloc !195
  %asmresult1.i = extractvalue { i64, i64 } %19, 1
  br label %if.end194

if.end194:                                        ; preds = %if.else190, %if.then184
  %sector_off.0 = phi i64 [ %conv189, %if.then184 ], [ %asmresult1.i, %if.else190 ]
  %20 = ptrtoint ptr %sc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sc, align 8
  %__sector.i.i = getelementptr i8, ptr %21, i32 -152
  %22 = ptrtoint ptr %__sector.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %__sector.i.i, align 8
  %add198 = add i64 %23, %sector_off.0
  %24 = ptrtoint ptr %sector to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add198, ptr %sector, align 8
  %25 = ptrtoint ptr %sig_err to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sig_err, align 8
  %expected = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %expected, align 4
  %actual = getelementptr inbounds %struct.ib_mr_status, ptr %mr_status, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %actual to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %actual, align 8
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.32, i32 noundef %26, i64 noundef %add198, i32 noundef %28, i32 noundef %30) #12
  %31 = ptrtoint ptr %sig_err to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sig_err, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %33 = icmp ult i32 %32, 3
  br i1 %33, label %switch.lookup, label %if.end194.cleanup213_crit_edge

if.end194.cleanup213_crit_edge:                   ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup213

switch.lookup:                                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast = trunc i32 %32 to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 131841, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  br label %cleanup213

cleanup213:                                       ; preds = %switch.lookup, %if.end194.cleanup213_crit_edge, %if.end.cleanup213_crit_edge, %do.end, %land.lhs.true.cleanup213_crit_edge, %entry.cleanup213_crit_edge
  %retval.1 = phi i8 [ 1, %do.end ], [ %switch.masked, %switch.lookup ], [ 0, %if.end194.cleanup213_crit_edge ], [ 0, %if.end.cleanup213_crit_edge ], [ 0, %land.lhs.true.cleanup213_crit_edge ], [ 0, %entry.cleanup213_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %mr_status) #8
  ret i8 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_check_mr_status(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iser_err_comp(ptr nocapture noundef readonly %wc, ptr noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.not = icmp eq i32 %1, 5
  br i1 %cmp.not, label %do.body7, label %if.then

if.then:                                          ; preds = %entry
  %qp = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 5
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 8
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_context, align 4
  %call2 = tail call ptr @ib_wc_status_msg(i32 noundef %1) #13
  %vendor_err = getelementptr inbounds %struct.ib_wc, ptr %wc, i32 0, i32 3
  %6 = ptrtoint ptr %vendor_err to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vendor_err, align 8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef %type, ptr noundef %call2, i32 noundef %1, i32 noundef %7) #12
  %iscsi_conn = getelementptr inbounds %struct.iser_conn, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %iscsi_conn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iscsi_conn, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then.if.end23_crit_edge, label %if.then5

if.then.if.end23_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iscsi_conn_failure(ptr noundef nonnull %9, i32 noundef 1011) #8
  br label %if.end23

do.body7:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @iser_debug_level to i32))
  %10 = load i32, ptr @iser_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp8 = icmp sgt i32 %10, 2
  br i1 %cmp8, label %do.end14, label %do.body7.if.end23_crit_edge, !prof !191

do.body7.if.end23_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

do.end14:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call ptr @ib_wc_status_msg(i32 noundef 5) #13
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, ptr noundef %type, ptr noundef %call17, i32 noundef 5) #12
  br label %if.end23

if.end23:                                         ; preds = %do.end14, %do.body7.if.end23_crit_edge, %if.then5, %if.then.if.end23_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_wc_status_msg(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_failure(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_mr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_mr_integrity(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dereg_mr_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_destroy_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_cq_pool_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iser_free_rx_descriptors(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_event_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_event_msg(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @rdma_reject_msg(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_resolve_route(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iser_event_handler(ptr nocapture noundef readnone %handler, ptr nocapture noundef readonly %event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %event1 = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 2
  %0 = ptrtoint ptr %event1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event1, align 4
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event, align 4
  %init_name.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13, i32 0, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %call = tail call ptr @ib_event_msg(i32 noundef %1) #13
  %element = getelementptr inbounds %struct.ib_event, ptr %event, i32 0, i32 1
  %9 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %element, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef %call, i32 noundef %1, ptr noundef %retval.0.i, i32 noundef %10) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_register_event_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local ptr @ib_event_msg(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_connect_locked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_cq_pool_get(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iser_qp_event_callback(ptr nocapture noundef readonly %cause, ptr nocapture noundef readnone %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.ib_event, ptr %cause, i32 0, i32 2
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 4
  %call = tail call ptr @ib_event_msg(i32 noundef %1) #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef %call, i32 noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_create_qp(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !176, !178, !179, !180}
!llvm.module.flags = !{!181, !182, !183, !184, !185, !186, !187, !188}
!llvm.ident = !{!189}

!0 = !{ptr @iser_alloc_fastreg_pool.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 183, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 218, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @iser_free_fastreg_pool._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @iser_free_fastreg_pool._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 227, i32 3}
!11 = !{ptr @iser_free_fastreg_pool._entry.4, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @iser_free_fastreg_pool._entry_ptr.6, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 434, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @iser_conn_release._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @iser_conn_release._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 471, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @iser_conn_terminate._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @iser_conn_terminate._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 485, i32 4}
!25 = !{ptr @iser_conn_terminate._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @iser_conn_terminate._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @iser_conn_init.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 756, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 773, i32 27}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 775, i32 2}
!34 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @iser_connect._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @iser_connect._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 782, i32 20}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 786, i32 3}
!41 = !{ptr @iser_connect._entry.19, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @iser_connect._entry_ptr.21, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 792, i32 3}
!45 = !{ptr @iser_connect._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @iser_connect._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 840, i32 3}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @iser_post_recvl._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @iser_post_recvl._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 859, i32 3}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @iser_post_recvm._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @iser_post_recvm._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 898, i32 3}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @iser_post_send._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @iser_post_send._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 918, i32 4}
!64 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @iser_check_task_pi_status._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @iser_check_task_pi_status._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 930, i32 4}
!69 = !{ptr @iser_check_task_pi_status._entry.33, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @iser_check_task_pi_status._entry_ptr.35, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 956, i32 3}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @iser_err_comp._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @iser_err_comp._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 964, i32 3}
!78 = !{ptr @iser_err_comp._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @iser_err_comp._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 127, i32 3}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @iser_create_fastreg_desc._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @iser_create_fastreg_desc._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 135, i32 4}
!87 = !{ptr @iser_create_fastreg_desc._entry.43, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @iser_create_fastreg_desc._entry_ptr.45, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.46, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 399, i32 2}
!91 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @iser_free_ib_conn_res._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @iser_free_ib_conn_res._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 340, i32 2}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @iser_device_try_release._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @iser_device_try_release._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = distinct !{null, !100, !"__already_done", i1 false, i1 false}
!100 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!101 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @init_completion.__key, !104, !"__key", i1 false, i1 false}
!104 = !{!"../include/linux/completion.h", i32 87, i32 2}
!105 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 694, i32 2}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @iser_cma_handler._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @iser_cma_handler._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 710, i32 3}
!113 = !{ptr @iser_cma_handler._entry.55, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @iser_cma_handler._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 738, i32 3}
!117 = !{ptr @iser_cma_handler._entry.58, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @iser_cma_handler._entry_ptr.60, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 557, i32 3}
!121 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @iser_addr_handler._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @iser_addr_handler._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 568, i32 4}
!126 = !{ptr @iser_addr_handler._entry.63, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @iser_addr_handler._entry_ptr.65, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 581, i32 3}
!130 = !{ptr @iser_addr_handler._entry.66, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @iser_addr_handler._entry_ptr.68, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 73, i32 3}
!134 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @iser_create_device_ib_res._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @iser_create_device_ib_res._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 88, i32 2}
!139 = !{ptr @iser_create_device_ib_res._entry.71, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @iser_create_device_ib_res._entry_ptr.73, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 56, i32 2}
!143 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @iser_event_handler._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @iser_event_handler._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 622, i32 3}
!148 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @iser_route_handler._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @iser_route_handler._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 286, i32 2}
!153 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @iser_create_ib_conn_res._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @iser_create_ib_conn_res._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.81, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 293, i32 2}
!158 = !{ptr @iser_create_ib_conn_res._entry.80, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @iser_create_ib_conn_res._entry_ptr.82, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.83, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 49, i32 2}
!162 = !{ptr @.str.84, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @iser_qp_event_callback._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @iser_qp_event_callback._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 644, i32 2}
!167 = !{ptr @.str.86, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @iser_connected_handler._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @iser_connected_handler._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 652, i32 2}
!172 = !{ptr @iser_connected_handler._entry.87, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @iser_connected_handler._entry_ptr.89, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.92, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/infiniband/ulp/iser/iser_verbs.c", i32 668, i32 4}
!178 = !{ptr @.str.93, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @iser_disconnected_handler._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @iser_disconnected_handler._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{i32 1, !"wchar_size", i32 2}
!182 = !{i32 1, !"min_enum_size", i32 4}
!183 = !{i32 8, !"branch-target-enforcement", i32 0}
!184 = !{i32 8, !"sign-return-address", i32 0}
!185 = !{i32 8, !"sign-return-address-all", i32 0}
!186 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!187 = !{i32 7, !"uwtable", i32 1}
!188 = !{i32 7, !"frame-pointer", i32 2}
!189 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!190 = !{i8 0, i8 2}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{!"branch_weights", i32 2000, i32 1}
!193 = !{i64 2158424368, i64 2158424873, i64 2158424405, i64 2158424461, i64 2158424495, i64 2158424519, i64 2158424560, i64 2158424581, i64 2158424609, i64 2158424643}
!194 = !{!"auto-init"}
!195 = !{i64 2148624042, i64 2148624322, i64 2148624656, i64 2148624990}
